<?php 
//defined('BASEPATH') OR exit('No direct script access allowed');
class Vyuh extends CI_Controller
{
    function __construct() {
        parent::__construct();
        $this->load->model('level');
    }
    
    public function index() {
		$this->load->view('dashboard');
	}

    function dashboard() {
    	$this->load->view('dashboard');
    }
    
    function play_game(){
        
        $email = $this->session->userdata('email');
        
        $row = $this->level->get_next_question_for_user($email);
        
        $data['question'] = $row->question;
        
        $data['level_no'] = $row->level_no;
        
        $this->load->view('game', $data);
    }
}

