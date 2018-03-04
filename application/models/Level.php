<?php



class Level extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }


        public function retrieve_level_data_admin() {
            $this->db->select('*');
            $this->db->from('level');
            $this->db->order_by("serial_number", "asc");
            //$this->db->limit(50);

            $query = $this->db->get();
            $result = $query->result_array();
            return $result;
        }

        public function add_level_data_admin($data = array()) {
            $this->db->insert('level', $data);
            return true;
        }

        
}