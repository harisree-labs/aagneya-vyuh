<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct() {
        parent::__construct();

        $this->load->library('session');

        $this->load->helper('url');
        
        $this->load->model('user');
        $this->load->model('history');

        //Load dashboard model
        //$this->load->model('dashboard');

    }

    // Load Dashboard view
    public function index(){
        $email = $this->session->userdata('email');
        //echo $email;
        if ($email) {
            $data['rank'] = $this->user->get_rank();
            $data['accuracy'] = $this->history->get_accuracy();
            $data['level'] = $this->session->userdata('level');
            $data['remaining_levels'] = 25 - $data['level'];
            $data['percentage'] = ($data['level'] / 25) * 100;
            if ($data['percentage'] < 30)
                $data['experience'] = "Novice :)";
            elseif ($data['percentage'] < 60)
                $data['experience'] = "Intermediate :)";
            else
                $data['experience'] = "Ninja!";
            
            
            
//            $data['remaining_levels'] = $this->session->userdata('remaining_levels');
            //echo $data['rank'];
            $this->load->view('user/header');
            $this->load->view('user/dashboard', $data);
        } else {
            redirect('http://localhost/vyuh/index.php/user_authentication', 'location');
        }

        //redirect('http://localhost/vyuh/index.php/user_authentication', 'location');
    }
    
}