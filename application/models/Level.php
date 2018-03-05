<?php

   
class Level extends CI_Model {
    
        public $id;
        public $level_no;
        public $question;
        public $answer;
        public $type;
        public $date;

        public function __construct()
        {
                $this->load->database();
        }


        public function retrieve_level_data_admin() {
            $this->db->select('*');
            $this->db->from('level');
            $this->db->order_by("level_no", "asc");
            //$this->db->limit(50);

            $query = $this->db->get();
            $result = $query->result_array();
            return $result;
        }

        public function add_level_data_admin($data = array()) {
            $this->db->insert('level', $data);
            return true;
        }
        
        public function get_next_question_for_user($email){
            
            $sql = "SELECT level_no,question FROM `user` `u` JOIN `level` `l` ON `u`.`level`+1 = `l`.`id` WHERE `u`.`email` = '$email' ";
            
            $query = $this->db->query($sql, array($email));
            
            $row = $query->row();
            
            return $row;
            
        }

        
}