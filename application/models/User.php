<?php


class User extends CI_Model {

        public $user_id;
        public $email;
        public $mobile;
        public $name;
        public $college;
        public $branch;
        public $semester;
        public $city;
        public $level;
        public $lastlogin;
        public $lifeline;
        public $score;
        public $status;
        public $profile_image;

        public function __construct()
        {
                $this->load->database();
        }

        // if user is registered, return userID | else insert available data and return False
        public function user_registered($data = array()) {
            $this->db->select('id');
            $this->db->from('user');
            $this->db->where(array('email'=>$data['email']));

            $prevQuery = $this->db->get();
            $prevCheck = $prevQuery->num_rows();
            
            if($prevCheck > 0){
                $prevResult = $prevQuery->row_array();
                $userID = $prevResult['id'];
            } else{
              
                $this->db->insert('user',$data);
            }
            return $userID?$userID:FALSE;
        }

        // update user profile on db
        public function update_profile($data = array()) {
            $email = $this->session->userdata('email');
            $this->db->where('email', $email);
            $this->db->update('user', $data);
            return true;
        }

        // retrieve user data from db
        public function retrieve_user_data($email) {
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where(array('email'=>$email));

            $prevQuery = $this->db->get();
            $prevCheck = $prevQuery->num_rows();
            
            if($prevCheck > 0){
                $userData = $prevQuery->row_array();
                return($userData);
            }
        }

        public function get_ranklist() {
            $this->db->select('*');
            $this->db->from('user');
            $this->db->order_by("level", "desc");
            $this->db->limit(50);

            $query = $this->db->get();

            $result = $query->result_array();
            
            return $result;

            
        }


}
