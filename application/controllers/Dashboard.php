<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct() {
        parent::__construct();

        $this->load->library('session');

        //Load dashboard model
        //$this->load->model('dashboard');

    }

    // Load Dashboard view
    public function index(){
        $email = $this->session->userdata('email');
        if ($email) {
            $this->load->view('user/dashboard');
        }
    }
    
}