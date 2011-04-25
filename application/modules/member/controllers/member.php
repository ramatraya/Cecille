<?php

class Member extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if(!$this->ion_auth->logged_in()) redirect('member/login');
        $this->tpl['profile'] = $this->ion_auth->profile();
    }

    function index() {
        $this->tpl['content'] = $this->load->view('member_index', $this->tpl, true);
        $this->load->view('member/body', $this->tpl);
    }

    function logout() {
        $this->ion_auth->logout();
        $this->session->set_flashdata('message', 'Succesfully logout');
        redirect('member/login', 'refresh');
    }


}