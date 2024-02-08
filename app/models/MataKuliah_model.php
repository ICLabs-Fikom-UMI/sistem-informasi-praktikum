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

    public function getDataById($id_matkul) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_matkul = :id_matkul';
        
        $this->db->query($query);
        $this->db->bind('id_matkul', $id_matkul);

        return $this->db->single();
    }

    public function getAllMataKuliah() {
        $this->db->query('SELECT * FROM ' . $this->table);
        
        return $this->db->resultSet();
    }

    public function getDataGroupByMatkulKelas($id_dosen) {
        $query = 'SELECT * FROM vw_data_matkul_group_by_matkul_kelas';
        
        $this->db->query($query);
        
        if (isset($id_dosen)) {
            $query = $query . ' WHERE id_dosen = :id_dosen';
            $this->db->query($query);
            $this->db->bind('id_dosen', $id_dosen);
        }
        
        return $this->db->resultSet();
    }
}