<?php

class Backends extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
    }

    function index() {
        if (!$this->ion_auth->is_admin()) {
            redirect('backends/login');
        }
        $this->tpl['profile'] = $this->ion_auth->profile();
        $this->tpl['content'] = $this->load->view('backends_index', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }


    function login() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email Address', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == true) {
            //check for "remember me"
            $remember = (bool) $this->input->post('remember');
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            if ($this->ion_auth_model->login($email, $password, $remember)) {
                //redirect them back to the home page
                //$this->session->set_flashdata('message', $this->ion_auth->messages());
                redirect('/backends/');
            } else {
                $this->session->set_flashdata('message', 'There was an error with your E-Mail/Password combination. Please try again.');
                redirect('backends/login', 'refresh'); //use redirects instead of loading views for compatibility with MY_Controller libraries
            }
        } else {
            $this->tpl['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->tpl['backendstpl'] = 1;
            $this->tpl['content'] = $this->load->view('backends/login', $this->tpl, true);
            $this->load->view('backends/body', $this->tpl);
        }
    }

    function logout() {
        $identity = $this->config->item('identity', 'ion_auth');
        $this->session->unset_userdata($identity);
        $this->session->unset_userdata('group');
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('user_id');

        //delete the remember me cookies if they exist
        if (get_cookie('identity')) {
            delete_cookie('identity');
        }
        if (get_cookie('remember_code')) {
            delete_cookie('remember_code');
        }
        $this->session->set_flashdata('message', 'succesfully logout');
        $this->session->sess_destroy();
        redirect('backends/login', 'refresh');
    }

}