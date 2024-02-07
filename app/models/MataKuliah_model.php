<?php

class Matakuliah_model {
    private $table = 'mata_kuliah';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getTable() {
        return $this->table;
    }

    public function getAllMataKuliah() {
        $this->db->query('SELECT * FROM ' . $this->table);
        
        return $this->db->resultSet();
    }

    public function getDataGroupByMatkulKelas() {
        $query = 'SELECT * FROM vw_data_matkul_group_by_matkul_kelas';

        $this->db->query($query);
        
        return $this->db->resultSet();
    }
}