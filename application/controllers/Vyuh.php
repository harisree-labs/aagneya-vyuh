<?php 
//defined('BASEPATH') OR exit('No direct script access allowed');
class Vyuh extends CI_Controller
{
    private $email;
    function __construct() {
        parent::__construct();
        $this->load->model('level');
        $this->load->model('history');
        $this->load->model('trials');
        $this->load->model('user');
        $this->load->helper('url');
        
//        $user_history['user_id'] = $this->session->userdata('id');
//        $user_history['current_level'] = $this->session->userdata('level');
//        $user_history['date'] = date("h:i:sa");
//        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
        @$email = $this->session->userdata('email');
        @$college = $this->session->userdata('college');
        if (!$email) {
            redirect('user_authentication', 'location');
        }
        if (!$college) {
            redirect('profile', 'location');
        }
        if ($this->session->userdata('status') == "TERMINATED") {
            redirect('user_authentication/blocked', 'location');
        }
    }
    
    public function index() {
        //$this->load->view('user/login');
        redirect('user_authentication', 'location');
    }

    function dashboard() {
    	$this->load->view('user/dashboard');
    }
    
    function game(){
        $email = $this->session->userdata('email');
        $data = $this->level->get_next_question_for_user($email);
            
        $user_history['user_id'] = $this->session->userdata('id');
        $user_history['current_level'] = $this->session->userdata('level');
        $user_history['date'] = date("h:i:sa");
        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
        
        $user_history['type'] = "PLAY_GAME";
        $user_history['details'] = json_encode($data);

        $this->history->log_user_activity($user_history);
        
//        $this->load->view('user/game');
        $this->load->view('user/header');
        $this->load->view('game', $data);
        
    }
    
    function answer(){
        
        $user_trials['user_id'] = $this->session->userdata('id');
        
        $inputAnswer = $_POST['answer'];
        $re = '/[$&+,:;=?@#|\'<>~`.-^*()%!]/';
        preg_match_all($re, $inputAnswer, $matches, PREG_SET_ORDER, 0);
        
        if (sizeof($matches) == 0) {
            $user_trials['malicious'] = 0;
            //echo sizeof($matches);
        } else {
            $user_trials['malicious'] = 1;
            $sql = "UPDATE `user` SET malicious = malicious + 1 WHERE id = ".$user_trials['user_id'];
            $query = $this->db->query($sql);    
            //echo sizeof($matches);
        }
        
        $email = $this->session->userdata('email');
        
        $data = $this->level->get_next_answer_for_user($email);

        $user_trials['level_no'] = $this->session->userdata('level');
        $user_trials['date'] = date("Y-m-d H:i:s");
        $user_trials['ip'] = $_SERVER['REMOTE_ADDR'];
        $user_trials['user_input'] = escapeshellarg($inputAnswer);

        $this->trials->log_user_inputs($user_trials);
        
        if ($inputAnswer == $data->answer) {
            echo "Right Answer!";
            $level = $this->session->userdata('level');
            $this->session->set_userdata('level',$level+1);
//            $userData['level'] = $this->session->userdata('level');
//            $userData['level_pass_time'] = date("Y-m-d H:i:s");
//            $this->user->level_up($userData);
//            $user_history['type'] = "LEVEL_UP";
//            $user_history['current_level'] = $userData['level'];
//            $this->history->log_user_activity($user_history);
            redirect('vyuh/right_answer', 'location');
//            echo $this->session->userdata('level');
        } else{
           // echo "Wrong Answer!";
            redirect('vyuh/wrong_answer', 'location');
        }
        //$this->load->view('success', $data);
//        $this->load->view('error', $data);
        

    }
    
    function right_answer(){
        
        $this->load->view('user/header');
        $this->load->view('user/right_answer');
        
        header('Refresh:5; url= '. base_url().'/index.php/vyuh/game'); 
        
    }
    
    function wrong_answer(){
        
        $this->load->view('user/header');
        $this->load->view('user/wrong_answer');

        header('Refresh:5; url= '. base_url().'/index.php/vyuh/game'); 
        
    }
}

