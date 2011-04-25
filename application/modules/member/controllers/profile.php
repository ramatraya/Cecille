<?php

class Profile extends CI_Controller {

    protected $tpl;
    protected $profile;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if (!$this->ion_auth->logged_in())
            redirect('member/login');

        $profile = $this->ion_auth->profile();
        $this->tpl['profile'] = $profile;
        $this->profile = $profile;

        //clear the
    }

    function index() {
        $this->tpl['javascripts'][] = base_url() . '/js/member/member.profile.js';
        $this->tpl['content'] = $this->load->view('profile_index', $this->tpl, true);
        $this->load->view('member/body', $this->tpl);
    }

    function disconnect($type='twitter') {
        switch ($type) {
            case 'facebook':
                $db['fb_id'] = NULL;
                $db['fb_oauth_token'] = NULL;
                $this->db->where('user_id',$this->profile->id);
                $this->db->update('meta',$db);
                break;
            case 'twitter':
            default:
                $db['twitter_id'] = NULL;
                $db['twitter_username'] = NULL;
                $db['twitter_oauth_token'] = NULL;
                $db['twitter_oauth_token_secret'] = NULL;
                $this->db->where('user_id',$this->profile->id);
                $this->db->update('meta',$db);
                break;
        }
        redirect('member/profile');
    }

    function edit() {
        $change = false;
        $this->load->library('form_validation');
        $this->form_validation->set_rules('fullname','Full Name','trim|required');
        $this->form_validation->set_rules('new','Password','trim|matches[confirm]');
        if($this->form_validation->run()) {
            $change = true;
            $password = $this->input->post('new');
            $old = $this->input->post('old');
            $fullname = $this->input->post('fullname');
            if($old && $password) {
                $change = $this->ion_auth->change_password($this->profile->id,$old,$password);
            }
        }
        if($this->form_validation->run() && $change) {
            $data = array(
                'fullname' => $fullname
            );
            $this->ion_auth->update_user($this->profile->id, $data);
            redirect('member/profile');
        }
        $this->tpl['content'] = $this->load->view('profile_edit', $this->tpl, true);
        $this->load->view('member/body', $this->tpl);
    }

    function connect_twitter() {
        $this->load->library('tweet');
        if (!$this->tweet->logged_in()) {
            $this->tweet->set_callback(site_url('member/profile/connect_twitter'));
            $this->tweet->login();
        } else {
            $user = $this->tweet->call('get', 'account/verify_credentials');
            $twitter_id = $user->id_str;

            //cek apakah twitter id ini sudah terkonekan
            $twitter_user  = $this->db->get_where('meta',array('twitter_id'=>$twitter_id))->row();
            if ($twitter_user) {
                $this->tpl['message'] = 'This Twitter Account Already Registered';
                $this->tpl['content'] = $this->load->view('profile_error_msg', $this->tpl, true);
                $this->load->view('member/body', $this->tpl);
            } else {
                $tokens = $this->tweet->get_tokens();
                $tw['twitter_oauth_token'] = $tokens['oauth_token'];
                $tw['twitter_oauth_token_secret'] = $tokens['oauth_token_secret'];
                $tw['twitter_id'] = $twitter_id;
                $tw['twitter_username'] = $user->screen_name;

                $return = $this->ion_auth->update_user($this->profile->id, $tw);

                $this->tweet->logout();
                redirect('member/profile');
            }
        }
    }

    function connect_facebook() {
        $this->load->config('facebook');
        include_once APPPATH . 'third_party/facebook.php';
        $fbparam = array(
            'appId' => $this->config->item('fb_app_id'),
            'secret' => $this->config->item('fb_app_secret'),
            'cookie' => true,
        );
        $facebook = new Facebook($fbparam);
        $session = $facebook->getSession();
        if (!$session) {
            /*
             * The parameters:
             * - next: the url to go to after a successful login
             * - cancel_url: the url to go to after the user cancels
             * - req_perms: comma separated list of requested extended perms
             * - display: can be "page" (default, full page) or "popup"
            */
            $login_param = array(
                'next' => current_url(),
            );
            $url = $facebook->getLoginUrl($login_param);
            redirect($url);
        } else {
            $fbid = $facebook->getUser();
            $fbuser = $this->ion_auth_model->get_user_by_socmed('fb_id', $fbid);


            if ($fbuser) {
                $this->tpl['message'] = 'This Facebook Account Already Registered';
                $this->tpl['content'] = $this->load->view('profile_connect_facebook', $this->tpl, true);
                $this->load->view('public/body_member', $this->tpl);
            } else {
                $fbdata = array(
                    'fb_id' => $session['uid'],
                    'fb_oauth_token' => $session['access_token'],
                );
                $this->ion_auth->update_user($this->profile->id, $fbdata);
                redirect('member/profile');
            }
        }
    }

}