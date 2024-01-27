<?php

class Laboratorium_model {
    private $table = 'laboratorium';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getTable() {
        return $this->table;
    }

    public function getAllLaboratorium() {
        $this->db->query('SELECT * FROM ' . $this->table);
        
        return $this->db->resultSet();
    }

    public function addLaboratorium($data) {
        $query = 'INSERT INTO ' . $this->table . '(nama_laboratorium, kapasitas)
                    VALUE (:nama_laboratorium, :kapasitas)';
        
        $this->db->query($query);
        $this->db->bind('nama_laboratorium', $data['nama_laboratorium']);
        $this->db->bind('kapasitas', $data['kapasitas']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}