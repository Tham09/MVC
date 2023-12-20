<?php
class User{
    private $id;
    private $fullname;
    private $email;
    public function __construct($id, $fullname, $email){
        $this->id = $id;
        $this->fullname = $fullname;
        $this->email = $email;
    }
    public function getId(){
        return $this->id;
    }
    public function setId($id){
        $this->id = $id;
    }

    public function getFullname(){
        return $this->fullname;
    }
    public function setFullname($fullname){
        $this->fullname = $fullname;
    }

    public function getEmail(){
        return $this->email;
    }
    public function setEmail($email){
        $this->email = $email;
    }

}