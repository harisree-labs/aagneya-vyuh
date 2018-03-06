<?php 
//defined('BASEPATH') OR exit('No direct script access allowed');
class Vyuh extends CI_Controller
{
    function __construct() {
        parent::__construct();
        $this->load->model('level');
        $this->load->model('history');
        $this->load->model('user');
        
//        $user_history['user_id'] = $this->session->userdata('id');
//        $user_history['current_level'] = $this->session->userdata('level');
//        $user_history['date'] = date("h:i:sa");
//        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
    }
    
    public function index() {
        $this->load->view('dashboard');
    }

    function dashboard() {
    	$this->load->view('dashboard');
    }
    
    function play_game(){
        
        $email = $this->session->userdata('email');
        
        $data = $this->level->get_next_question_for_user($email);

        $user_history['user_id'] = $this->session->userdata('id');
        $user_history['current_level'] = $this->session->userdata('level');
        $user_history['date'] = date("h:i:sa");
        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
        
        $user_history['type'] = "PLAY_GAME";
        $user_history['details'] = json_encode($data);

        $this->history->log_user_activity($user_history);
        
        $this->load->view('game', $data);
        

    }
    
    function answer(){
        
        $inputAnswer = $_POST['answer'];
        $email = $this->session->userdata('email');
        
        $data = $this->level->get_next_answer_for_user($email);

        $user_history['user_id'] = $this->session->userdata('id');
        $user_history['type'] = "INPUT_ANSWER";
        $user_history['date'] = date("h:i:sa");
        $user_history['current_level'] = $this->session->userdata('level');
        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
        $user_history['details'] = escapeshellarg($inputAnswer);

        $this->history->log_user_activity($user_history);
        
        if ($inputAnswer == $data->answer) {
            echo "Right Answer!";
            $level = $this->session->userdata('level');
            $this->session->set_userdata('level',$level+1);
            $userData['level'] = $this->session->userdata('level');
            $this->user->level_up($userData);
            $user_history['type'] = "LEVEL_UP";
            $user_history['current_level'] = $userData['level'];
            $this->history->log_user_activity($user_history);
//            echo $this->session->userdata('level');
        } else{
            echo "Wrong Answer!";
        }
        //$this->load->view('success', $data);
//        $this->load->view('error', $data);
        

    }
}

