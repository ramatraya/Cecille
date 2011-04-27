<?php
class Twilitics extends CI_Controller {

    protected $tpl;
    protected $profile;

    function __construct() {
        parent::__construct();
        $this->load->library('ion_auth');
        if(!$this->ion_auth->logged_in()) redirect('member/login');
        $this->tpl['profile'] = $this->ion_auth->profile();
        $this->profile = $this->ion_auth->profile();
    }

    function index($offset=0) {
        // get data
        $limit = 10;
        $this->db->limit($limit,$offset);
        $accounts['data'] = $this->db->get('twitter_accounts')->result();
        $accounts['total'] = $this->db->get('twitter_accounts')->num_rows();

        $this->tpl['pagination'] = create_pagination('twilitics/index', $accounts['total'], $limit, 3);
        $this->tpl['accounts'] = $accounts;
        $this->tpl['content'] = $this->load->view('twilitics_index', $this->tpl, true);
        $this->load->view('member/body', $this->tpl);
    }

    function register() {
        $this->load->library('tweet');
        $this->tweet->logout();
        if(!$this->tweet->logged_in()) {
            $this->tweet->set_callback(site_url('twilitics/post_register'));
            $this->tweet->login();
        }
    }

    function post_register() {
        $this->load->library('tweet');
        $tokens = $this->tweet->get_tokens();
        if($tokens) {
            $twitter = $this->tweet->call('get', 'account/verify_credentials');
            $twitter_id = $twitter->id;
            $ada = $this->db->get_where('twitter_accounts',array('twitter_id'=>$twitter_id))->row();
            if(!$ada) {
                //add to database
                $ta['twitter_id'] = $twitter_id;
                $ta['twitter_userdata'] = serialize($twitter);
                $ta['twitter_account_token'] = $tokens['oauth_token'];
                $ta['twitter_account_secret'] = $tokens['oauth_token_secret'];
                $ta['twitter_register_date'] = time();
                $this->db->insert('twitter_accounts',$ta);
            }elseif($ada->twitter_account_token != $tokens['oauth_token']) {
                $ta['twitter_account_token'] = $tokens['oauth_token'];
                $ta['twitter_account_secret'] = $tokens['oauth_token_secret'];
                $this->db->where('id',$ada->id);
                $this->db->update('twitter_accounts',$ta);
            }else{
                redirect('twilitics');
            }
        }else {
            show_error('session kemungkinan expire, harap ke halaman utama dan refresh');
        }
    }
}
