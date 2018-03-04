<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller
{
    function __construct() {
        parent::__construct();

        $this->load->library('session');

        //Load dashboard model
        $this->load->model('user');

    }

    // retrieve available user data from db and load profile view
    public function index(){
        @$email = $this->session->userdata('email');
        if (!$email) {
            $userData = array();
            $userData = $this->user->retrieve_user_data($email);
            // print_r($userData);
            $this->load->view('profile', $userData);
        }
    }

    // profile.js function for ajax request | update profile on db
    public function profile_update() {
        $email = $this->session->userdata('email');
        if ($email) {
            $userData = array();
            $userData['name'] = $_POST['name'];
            //$userData['gender'] = $_POST['gender'];
            //$userData['email'] = $_POST['email'];
            $userData['mobile'] = $_POST['mobile'];
            $userData['semester'] = $_POST['semester'];
            $userData['branch'] = $_POST['branch'];
            $userData['college'] = $_POST['college'];
            $userData['city'] = $_POST['city'];
            @$userData['profile_picture'] = $_POST['profilepicture'];
            $this->user->update_profile($userData);
            //print_r($userData);
        }
    }
}