<?php

class DataPerkuliahan_model {
    private $table = 'kuliah';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllDataPerkuliahan() {
        $query = 'SELECT * FROM ' . $this->table;

        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getDataPerkuliahanById($id) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_kuliah = :id_kuliah';

        $this->db->query($query);
        $this->db->bind('id_kuliah', $id);
        
        return $this->db->single();
    }
}