<?php


class Hint extends CI_Model {

        public $hint_id;
        public $level_id;
        public $hint;
        public $active;

        public function __construct()
        {
                $this->load->database();
        }


        public get_hints_for_level($level_no){


        
        }


        public get_all_hints(){



        }

        public add_hint($level_no, $hint){



        }


}
