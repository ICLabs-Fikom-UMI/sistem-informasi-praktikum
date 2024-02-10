<?php

class Mahasiswa_model {
    private $table = 'mahasiswa';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllMahasiswa() {
        $query = 'SELECT * FROM ' . $this->table;
        
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getDataByNIM($nim) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE nim = :nim';

        $this->db->query($query);
        $this->db->bind('nim', $nim);

        return $this->db->single();
    }

}