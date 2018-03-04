<?php

class Trials extends CI_Model {

        public $trial_id;
        public $user_id;
        public $level_id;
        public $user_input;
        public $malicious;
        public $ip;

        public function __construct()
        {
                $this->load->database();
        }

        public function log_user_inputs($user_id ){
            
        }
}
