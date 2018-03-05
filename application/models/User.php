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

        // return user details and regn_status (LOGIN | SIGNUP)
        public function user_registered($data = array()) {
            
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where(array('email'=>$data['email']));
            $query = $this->db->get();
            
            $noOfRows = $query->num_rows();
            
            if($noOfRows > 0){
                $result = $query->row_array();
                $result['regn_status'] = TRUE;
            } else{
                $this->db->insert('user',$data);
                
                $this->db->select('*');
                $this->db->from('user');
                $this->db->where(array('email'=>$data['email']));
                $query = $this->db->get();
                
                $result = $query->row_array();
                $result['regn_status'] = FALSE;
            }
            return $result;
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

            $query = $this->db->get();
            
            $userData = $query->row_array();
            return $userData;
            
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
