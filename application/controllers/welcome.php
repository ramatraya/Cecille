<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {


    public function index() {
        $this->load->library('ion_auth');
        //$this->ion_auth->register('root','silahkanmasuk','root@local.com',array());
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */