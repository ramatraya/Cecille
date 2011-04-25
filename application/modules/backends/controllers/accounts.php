<?php

class Accounts extends CI_Controller {

    protected $tpl;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if (!$this->ion_auth->is_admin())
            redirect('backends/login');
        $this->tpl['profile'] = $this->ion_auth->profile();
        $this->tpl['javascripts'][] = base_url() . 'js/backends/backends/accounts.js';
    }

    function index() {
        $offset = $this->uri->segment(4, 0);
        $limit = 10;
        $group = false;
        $users['data'] = $this->ion_auth_model->get_users($group, $limit, $offset)->result();
        $users['total'] = $this->ion_auth_model->get_users($group)->num_rows();

        $this->tpl['pagination'] = create_pagination('backends/accounts/index/', $users['total'], $limit, 4);
        $this->tpl['users'] = $users;
        $this->tpl['content'] = $this->load->view('accounts_index', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }

    function deactivate() {
        $id = $this->uri->segment(4, 0);
        if($id === '1'){
            die('error');
        }
        $user = $this->ion_auth->get_user($id);
        if ($user->active) {
            $this->ion_auth->deactivate($id);
        } else {
            $this->ion_auth->activate($id);
        }
        echo $id;
    }

    function activate() {
        $id = $this->uri->segment(4, 0);
        echo $id;
    }

    function searchsubmit(){
        $q = $this->input->post('q',true);
        $key = md5($q);
        $this->session->set_userdata($key,$q);
        redirect('backends/accounts/search/'.$key);
    }

    function search(){
        $key = $this->uri->segment(4,0);
        $q = $this->session->userdata($key);
        $offset = $this->uri->segment(5, 0);
        $limit = 10;


        $this->db->select('*','users.id');
        $this->db->join('meta','meta.user_id=users.id','left');
        $this->db->or_like('meta.fullname',$q);
        $this->db->or_like('users.email',$q);
        $this->db->limit($limit,$offset);
        $users['data'] = $this->db->get('users')->result();

        $this->db->join('meta','meta.user_id=users.id','left');
        $this->db->or_like('meta.fullname',$q);
        $this->db->or_like('users.email',$q);
        $users['total'] = $this->db->get('users')->num_rows();

        $this->tpl['pagination'] = create_pagination('backends/accounts/search/'.$key, $users['total'], $limit, 5);
        $this->tpl['users'] = $users;
        $this->tpl['content'] = $this->load->view('accounts_index', $this->tpl, true);
        $this->load->view('backends/body', $this->tpl);
    }

}