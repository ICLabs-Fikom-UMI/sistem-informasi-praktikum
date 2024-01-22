<?php

class Laboratorium_model {
    private $table = 'laboratorium';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllLaboratorium() {
        $this->db->query('SELECT * FROM ' . $this->table);
        
        return $this->db->resultSet();
    }
}