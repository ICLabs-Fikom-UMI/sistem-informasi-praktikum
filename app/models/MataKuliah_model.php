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
        try {
            $query = 'SELECT dosen.id_dosen, dosen.nama as nama_dosen, mata_kuliah.id_matkul, mata_kuliah.nama_matkul, count(*) as total_mhs FROM kuliah 
                    JOIN dosen ON dosen.id_dosen = kuliah.id_dosen
                    JOIN mata_kuliah on mata_kuliah.id_matkul = kuliah.id_matkul
                    GROUP BY kuliah.id_matkul, kuliah.kelas';

            $this->db->query($query);

            // Check if the query execution was successful
            if (!$this->db->execute()) {
                throw new Exception('Failed to execute query: ' . $this->db->getError());
            }

            return $this->db->resultSet();
        } catch (Exception $e) {
            echo 'Error : ' . $e->getMessage();
        }
    }

}