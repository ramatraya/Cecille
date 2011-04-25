<?php

/**
 * Backends For Member
 *
 * @author erwin handoko <bhasunjaya@gmail.com>
 */
class Backends extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if (!$this->ion_auth->is_admin())
            redirect('backends/login');
        $this->tpl['profile'] = $this->ion_auth->profile();
        $this->tpl['javascripts'][] = base_url() . 'js/backends/backends/member.js';
        $this->tpl['breadcrumbs'][] = anchor(site_url(), 'Dashboard');
        $this->tpl['breadcrumbs'][] = anchor(site_url('member/backends'), 'Members');
    }

    function index() {
        $offset = $this->uri->segment(4, 0);
        $limit = 2;
        $users['data'] = $this->ion_auth_model->get_users(false, $limit, $offset)->result();
        $users['total'] = $this->ion_auth_model->get_users()->num_rows();

        $this->tpl['users'] = $users;
        $this->tpl['pagination'] = create_pagination('member/backends/index/',$users['total'],$limit,4);
        $this->tpl['breadcrumbs'][] = 'Data Members';
        $this->tpl['content'] = $this->load->view('backends_index', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }

    function searchsubmit() {
        
    }

    function search() {
        
    }

    function status() {
        //this is call and straight to redirection
        redirect('member/backends/index');
    }

}
