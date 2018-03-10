<?php


class History extends CI_Model {

        public $history_id;
        public $user_id;
        public $type;
        public $details;
        public $date;
        public $current_level;
        public $ip;

        public function __construct()//$user_id,$type,$current_level,$ip
        {

//                $this->user_id = "10254";// $user_id;
//                $this->type = "";//$type;
//                $this->date = date('Y-m-d H:i:s');
//                $this->current_level = "";//$current_level;
//                $this->ip = "";//$ip;

        }
        
//        public function __construct($user_id,$type,$current_level,$ip)
//        {
//
//                $this->user_id = "10254";// $user_id;
//                $this->type = $type;
//                $this->date = date('Y-m-d H:i:s');
//                $this->current_level = $current_level;
//                $this->ip = $ip;
//
//        }

        public function log_user_activity($user_history){
                //echo $this->user_id;
                //echo "log user activity";
                //print_r($user_history);
                $this->db->insert('history',$user_history);

        }
        
        public function get_accuracy(){
            $userData['id'] = $this->session->userdata('id');
            $userData['level'] = $this->session->userdata('level');
            
            $this->db->select('*');
            $this->db->from('history');
            $this->db->where("type", "INPUT_ANSWER");
            $this->db->where("user_id", $userData['id']);
            $query = $this->db->get();

            $result = $query->num_rows();
            $accuracy = ($userData['level'] / $result) * 100;
            return substr($accuracy,0,4);

        }


        public function get_all_logs(){



        }

        public function get_all_logs_for_user($userId){



        }

}
