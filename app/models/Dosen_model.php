<?php

class Dosen_model {
    private $table = 'dosen';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllDosen() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }


    public function getSeveralDosen($limit) {
        $this->db->query('SELECT * FROM ' . $this->table . ' LIMIT ' . $limit);
        return $this->db->resultSet();
    }
}