<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Authentication extends CI_Controller
{
    function __construct() {
        parent::__construct();

        // Load facebook library
        $this->load->library('facebook');

        //Load user model
        $this->load->model('user');
        $this->load->model('history');
        // $this->load->model('history');

        $this->config->load('facebook');

        $this->load->library('session');
    }

    public function index(){

        echo "session: ",$this->session->userdata('email');
        if(!$this->session->userdata('email')) {
            //echo $this->config->item('facebook_app_id');

            $fb = new Facebook\Facebook([
              'app_id' => $this->config->item('facebook_app_id'), // Replace {app-id} with your app id
              'app_secret' => $this->config->item('facebook_app_secret'),
              'default_graph_version' => $this->config->item('facebook_graph_version'),
            ]);

            $helper = $fb->getRedirectLoginHelper();
            $permissions = ['email']; // Optional permissions
            $loginUrl = $helper->getLoginUrl('http://localhost/vyuh/index.php/user_authentication/login', $permissions);

            echo '<a href="' . htmlspecialchars($loginUrl) . '">Log in with Facebook!</a>';
        } else {
            redirect('http://localhost/vyuh/index.php/dashboard', 'location');
        }
    }


    public function login() {

        if($this->session->userdata('email')) {
            echo $this->session->userdata('email');
            echo "<br>logged in already | Login</br>";
            redirect('http://localhost/vyuh/index.php/dashboard', 'location');
        }else {

            $userData = array();

            // Check if user is logged in
            if($this->facebook->is_authenticated()){

                // Get user facebook profile details
                $userProfile = $this->facebook->request('get', '/me?fields=id,first_name,last_name,email,gender,locale,picture');

                echo "auth success<br>",$userProfile['email'];

                $userData['name'] = $userProfile['first_name'] . " " . $userProfile['last_name'];
                $userData['email'] = $userProfile['email'];
                $userData['profile_picture'] = $userProfile['picture']['data']['url'];
                
                //$history = {"Status : LOGIN", "email" : $userData['email']};
                
                // If already registered
                $userData = $this->user->user_registered($userData);
                print_r($userData);
                if($userData['regn_status']) {//['email']

                    $user_history['user_id'] = $userData['id'];
                    $user_history['type'] = "LOGIN";
                    $user_history['date'] = date("h:i:sa");
                    $user_history['current_level'] = "0";
                    $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
                    
                    $this->history->log_user_activity($user_history);

                    $this->session->set_userdata($userData);
                    redirect('http://localhost/vyuh/index.php/dashboard', 'location');

            } else {
                $user_history['user_id'] = $userData['id'];
                $user_history['type'] = "SIGNUP";
                $user_history['date'] = date("h:i:sa");
                $user_history['current_level'] = "0";
                $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
                
                $this->history->log_user_activity($user_history);
                
                $this->session->set_userdata($userData);
                redirect('http://localhost/vyuh/index.php/profile', 'location');
            }
            
            }else{
                $user_history['type'] = "LOGIN_FAILED";
                $user_history['date'] = date("h:i:sa");
                $user_history['ip'] = $_SERVER['REMOTE_ADDR'];

                $this->history->log_user_activity($user_history);
                echo "auth failed";
            }
        }
    }

    public function logout() {
        $user_history['user_id'] = 0;
        $user_history['type'] = "LOGOUT";
        $user_history['date'] = date("h:i:sa");
        $user_history['current_level'] = "0";
        $user_history['ip'] = $_SERVER['REMOTE_ADDR'];
        
        $this->history->log_user_activity($user_history);
        
        // Remove local Facebook session
        $this->facebook->destroy_session();

        // Remove user data from session
        $this->session->unset_userdata('email');

        // Check if session deleted
        // echo $this->session->userdata('email');

        // Redirect to login page
        redirect('/user_authentication');
    }

}
