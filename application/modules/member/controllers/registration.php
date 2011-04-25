<?php

class Registration extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        $this->tpl['backendstpl'] = 1;
    }

    function index() {
        $this->load->config('facebook');
        $this->load->library('form_validation');
        $this->form_validation->set_rules('fullname', 'Full Name', 'required|xss_clean');
        $this->form_validation->set_rules('email', 'Email Address', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', 'Password Confirmation', 'required');

        include_once APPPATH . 'third_party/facebook.php';
        $facebook = new Facebook(array(
                'appId' => $this->config->item('facebook_app_id'),
                'secret' => $this->config->item('facebook_api_secret'),
                'cookie' => true,
        ));
        $param = array('next' => site_url('/member/registration/fb'));
        $this->tpl['fb_login_url'] = $facebook->getLoginUrl($param);

        if ($this->form_validation->run() == true) {
            $username = strtolower($this->input->post('fullname'));
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            $additional_data = array(
                'fullname' => $this->input->post('fullname')
            );
        }

        if ($this->form_validation->run() == true && $this->ion_auth->register($username, $password, $email, $additional_data)) {
            $this->session->set_flashdata('message', "User Created");
            die('redirect to sumthin lah');
        } else {
            $this->tpl['message'] = validation_errors() ? validation_errors() : $this->ion_auth->errors();
            $this->tpl['content'] = $this->load->view('registration_index', $this->tpl, true);
            $this->load->view('member/body', $this->tpl);
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
        $signed = $facebook->getSignedRequest();
        if (isset($signed['registration'])) {
            $username = $signed['registration']['name'];
            $password = $signed['registration']['password'];
            $email = $signed['registration']['email'];

            $additional_data = array(
                'fullname' => $username,
                'fb_id' => $signed['user_id'],
                'fb_oauth_token' => $signed['oauth_token'],
                'avatar' => 'http://graph.facebook.com/' . $signed['user_id'] . '/picture'
            );

            $registration = $this->ion_auth->register($username, $password, $email, $additional_data);

            if ($registration) {
                //langsung auto login lah
                if ($this->ion_auth->login($email, $password)) {
                    redirect('/member/');
                    return;
                } else {
                    echo 'successfully registered but no login';
                    return;
                }
            } else {
                $this->tpl['error'] = $this->ion_auth->errors();
            }
        }
        $this->tpl['content'] = $this->load->view('registration_fb', $this->tpl, true);
        $this->load->view('member/body', $this->tpl);
    }

    function twitter() {
        $this->load->library('tweet');
        if (!$this->tweet->logged_in()) {
            $this->tweet->set_callback(current_url());
            $this->tweet->login();
        }


        $twitter = $this->tweet->call('get', 'account/verify_credentials');
        $this->tpl['twitter'] = $twitter;

        $this->load->library('form_validation');
        $this->form_validation->set_rules('fullname', 'Full Name', 'required|xss_clean');
        $this->form_validation->set_rules('email', 'Email Address', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', 'Password Confirmation', 'required');


        if ($this->form_validation->run() == true) {
            $username = strtolower($this->input->post('fullname'));
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            $tokens = $this->tweet->get_tokens();
            $additional_data = array(
                'fullname' => $this->input->post('fullname'),
                'twitter_id' => $twitter->id,
                'twitter_username' => $twitter->screen_name,
                'twitter_oauth_token' => $tokens['oauth_token'],
                'twitter_oauth_token_secret' => $tokens['oauth_token_secret'],
                'avatar' => $twitter->profile_image_url
            );
        }
        if ($this->form_validation->run() == true && $this->ion_auth->register($username, $password, $email, $additional_data)) {
            //langsung auto login lah
            if ($this->ion_auth->login($email, $password)) {
                redirect('/member/');
                return;
            } else {
                echo 'successfully registered but no login';
                return;
            }
        } else {
            $this->tpl['message'] = validation_errors() ? validation_errors() : $this->ion_auth->errors();
            $this->tpl['content'] = $this->load->view('registration_twitter', $this->tpl, true);
            $this->load->view('member/body', $this->tpl);
        }
    }

}

