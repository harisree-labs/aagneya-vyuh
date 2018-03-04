<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manage_levels extends CI_Controller
{
    function __construct() {
        parent::__construct();

        $this->load->library('session');

        //Load dashboard model
        $this->load->model('level');

    }

    // retrieve available questions from db and load question view
    public function index(){
        $email = $this->session->userdata('email');
        if ($email) {
            // $levelData_admin = array();
            $data['levelData_admin'] = $this->level->retrieve_level_data_admin();
            $this->load->view('admin/level', $data);
        }
    }

    // profile.js function for ajax request | update profile on db
    public function add() {
        $email = $this->session->userdata('email');
        if ($email) {
            $levelData = array();
            $levelData['serial_number'] = $_POST['name'];
            $levelData['question'] = $_POST['name'];
            $levelData['answer'] = $_POST['name'];
            $levelData['active'] = $_POST['name'];
            $levelData['type'] = $_POST['name'];
            @$levelData['hint'] = $_POST['name'];
            @$levelData['hint_status'] = $_POST['name'];

            $this->user->add_level_data_admin($levelData);
            //print_r($userData);
        }
    }
}