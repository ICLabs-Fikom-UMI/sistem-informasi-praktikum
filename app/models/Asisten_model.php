<?php

class Asisten_model {
    private $table = 'asisten';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllAsisten() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }


    public function getSeveralAsisten($limit) {
        $this->db->query('SELECT * FROM ' . $this->table . ' LIMIT ' . $limit);
        return $this->db->resultSet();
    }
}