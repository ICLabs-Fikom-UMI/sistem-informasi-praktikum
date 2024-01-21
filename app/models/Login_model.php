<?php

class Login_model {
    private table = 'user';
    private $db;

    public __construct() {
        $this->db = new Database();
    }

    public function getRole($email) {
        $query = 'SELECT role FROM ' . $this->table . ' WHERE email=:email';
        
        $this->db->query($query);
        $this->db->bind('email', $email);
        
        $tis->db->execute();
        
        return $this->db->single();
    }
}