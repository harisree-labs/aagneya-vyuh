<?php


class History extends CI_Model {

        public $history_id;
        public $user_id;
        public $type;
        public $date;
        public $current_level;
        public $ip;

        public function __construct($user_id,$type,$current_level,$ip)
        {

                $this->$user_id = $user_id;
                $this->$type = $actionS_type;
                $this->$date = date('Y-m-d H:i:s');
                $this->$current_level = $current_level;
                $this->$ip = $ip;

        }

        public function log_user_activity($user_history){

                this->db->insert($user_history);

        }


        public function get_all_logs(){



        }

        public function get_all_logs($userId){



        }

}
