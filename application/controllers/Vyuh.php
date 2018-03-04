<?php 
//defined('BASEPATH') OR exit('No direct script access allowed');
class Vyuh extends CI_Controller
{
    function __construct() {
        parent::__construct();
    }
    
    public function index() {
		$this->load->view('dashboard');
	}

    function dashboard() {
    	$this->load->view('dashboard');
    }
}

