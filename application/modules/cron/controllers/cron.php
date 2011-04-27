<?php
include APPPATH.'third_party/EPI/EpiCurl.php';
include APPPATH.'third_party/EPI/EpiOAuth.php';
include APPPATH.'third_party/EPI/EpiTwitter.php';

class Cron extends CI_Controller {

    protected $consumer_key;
    protected $consumer_secret;

    function __construct() {
        parent::__construct();
        $this->load->config('tweet');
        $this->consumer_key = $this->config->item('tweet_consumer_key');
        $this->consumer_secret = $this->config->item('tweet_consumer_secret');
    }

    function index() {
        $this->db->limit(1);
        $res = $this->db->get('twitter_accounts')->result();

        foreach($res as $r) {
            $token = $r->twitter_account_token;
            $secret = $r->twitter_account_secret;
            $twitterObj = new EpiTwitter($this->consumer_key, $this->consumer_secret, $token, $secret);

            $creds = $twitterObj->get('/followers/ids.json',array('cursor'=>-1));
            if($creds->code == 200) {
                $paging =array_paging($creds->response['ids'],100);
                $followerdata = array();
                foreach($paging as $r) {
                    $creds = $twitterObj->get('/users/lookup.json',array('user_id'=>implode(',', $r)));
                    $followerdata = array_merge($followerdata,$creds->response);
                }
                foreach($followerdata as $r) {
                    //cek and update data;
                    $this->db->where('twitter_id',$r['id_str']);
                    $row = $this->db->get('twitter_users')->row();
                    $dbfollower['twitter_id'] = $r['id_str'];
                    $dbfollower['screen_name'] = $r['screen_name'];
                    $dbfollower['name'] = isset($r['location']) ? $r['location'] : '';
                    $dbfollower['location'] = isset($r['location']) ? $r['location'] : '';
                    $dbfollower['description'] = isset($r['description']) ? $r['description'] : '';
                    $dbfollower['profile_image_url'] = isset($r['profile_image_url']) ? $r['profile_image_url'] : '';
                    $dbfollower['update_timestamp'] = time();
                    if($row) {
                        $this->db->where('twitter_id',$r['id_str']);
                        $this->db->update('twitter_users',$dbfollower);
                    }else {
                        $this->db->insert('twitter_users',$dbfollower);
                    }
                }
            }else {
                show_error('status code no 200');
            }
        }
    }
}

