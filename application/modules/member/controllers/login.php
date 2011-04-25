<?php

class Login extends CI_Controller {

    protected $tpl;
    protected $url_if_login;

    function __construct() {
        parent::__construct();
        $this->url_if_login = '/member/profile';
        $this->load->library('ion_auth');
        if($this->ion_auth->logged_in()) redirect($this->url_if_login);
    }

    function index() {
        $this->load->config('facebook');
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email Address', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if($this->form_validation->run() == true) {
            //check for "remember me"
            $remember = (bool) $this->input->post('remember');
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            if($this->ion_auth_model->login($email, $password, $remember)) {
                redirect('/member/');
            } else {
                $this->session->set_flashdata('message', 'There was an error with your E-Mail/Password combination. Please try again.');
                redirect('member/login', 'refresh');
            }
        } else {
            $this->tpl['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->tpl['backendstpl'] = 1;
            $this->tpl['content'] = $this->load->view('login_index', $this->tpl, true);
            $this->load->view('member/body', $this->tpl);
        }
    }

    function twitter() {
        $this->load->library('tweet');
        if(!$this->tweet->logged_in()) {
            $this->tweet->set_callback(site_url('member/login/twitter'));
            $this->tweet->login();
        } else {
            $twitter = $this->tweet->call('get', 'account/verify_credentials');
            $twitter_id = $twitter->id;
            $meta = 'meta';
            $this->db->where('twitter_id' , $twitter_id);
            $this->db->limit(1);
            $res = $this->db->get($meta)->row();
            if($res) {
                $user_twitter = $this->ion_auth->get_user($res->user_id);
                xdebug($user_twitter);
                die;
                $session_data = array(
                    'email' => $user_twitter->email,
                    'id' => $user_twitter->id, //kept for backwards compatibility
                    'user_id' => $user_twitter->id, //everyone likes to overwrite id so we'll use user_id
                    'group_id' => $user_twitter->group_id,
                    'group' => $user_twitter->group
                );
                $this->session->set_userdata($session_data);
                redirect($this->url_if_login);
                //set session
            }else {
                //lempar ke registrasi
                $this->session->set_flashdata('message', 'Can\'t Find Your Twitter accounts mapping to our database member. Please Register With Us');
                redirect('member/registration/twitter');
            }
        }
    }

    function fb() {
        $this->load->config('facebook');
        include_once APPPATH . 'third_party/facebook.php';
        $facebook = new Facebook(array(
                'appId' => $this->config->item('facebook_app_id'),
                'secret' => $this->config->item('facebook_api_secret'),
                'cookie' => true,
        ));
        $session = $facebook->getSession();
        if(isset($session['uid'])) {
            $me = $facebook->api('/me');
            // kalo login fb apakah ada user ini
            $rows = $this->db->get_where('meta',array('fb_id'=>$session['uid']))->row();
            if($rows) {
                $row = $this->ion_auth->get_user_by_email($me['email']);
                $this->ion_auth_model->update_last_login($row->id);
                $session_data = array(
                    'email' => $row->email,
                    'id' => $row->id, //kept for backwards compatibility
                    'user_id' => $row->id, //everyone likes to overwrite id so we'll use user_id
                    'group_id' => $row->group_id,
                    'group' => $row->group
                );
                $this->session->set_userdata($session_data);
                redirect($this->url_if_login);
            }else {
                $this->session->set_flashdata('message', 'Can\'t Find Your FB accounts mapping to our database member');
                redirect('member/registration/');
            }

        }else {
            $this->session->set_flashdata('message', 'Please Login To Your Facebook First');
            redirect('member/login', 'refresh');
        }
    }
}
