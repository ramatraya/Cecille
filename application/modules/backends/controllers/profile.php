<?php

class Profile extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if (!$this->ion_auth->is_admin())
            redirect('backends/login');
        $this->tpl['profile'] = $this->ion_auth->profile();
        $this->tpl['javascripts'][] = base_url() . 'js/backends/backends/profile.js';
    }

    function index() {
        $this->load->library('form_validation');
        $groups = $this->ion_auth_model->get_groups('dropdown');

        $this->tpl['groups'] = $groups;
        $this->tpl['content'] = $this->load->view('profile_index', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }

    function edit() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('fullname', 'Full Name', 'trim|required');
        $this->form_validation->set_rules('old', 'Password', 'trim');
        $this->form_validation->set_rules('new', 'Password', 'trim|matches[confirm]');
        if ($this->form_validation->run()) {

            $old = $this->input->post('old');
            $new = $this->input->post('new');
            $success = true;

            if ($old) {
                //change the password
                $success = $this->ion_auth->change_password($this->tpl['profile']->email, $old, $new);
            }
            if ($success) {
                $data['fullname'] = $this->input->post('fullname', true);
                $this->ion_auth->update_user($this->tpl['profile']->id, $data);
                redirect('backends/profile');
            }else{
                $this->tpl['errors'] = $this->ion_auth->errors();
            }
        }

        $this->tpl['content'] = $this->load->view('profile_edit', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }

}