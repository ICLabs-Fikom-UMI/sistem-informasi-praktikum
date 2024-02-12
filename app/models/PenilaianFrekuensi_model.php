<?php

class PenilaianFrekuensi_model {
    private $table = 'penilaian_frekuensi';
    private $db;
    
    public function __construct() {
        $this->db = new Database;
    }

    public function getAllData() {
        $query = 'SELECT * FROM ' . $this->table;

        $this->db->query($query);

        return $this->db->resultSet();
    }

    public function addData($id_frekuensi, $id_mahasiswa) {
        $query = 'INSERT INTO ' . $this->table . '(id_frekuensi, id_mahasiswa)
                    VALUES (:id_frekuensi, :id_mahasiswa)';
        
        $this->db->query($query);
        $this->db->bind('id_frekuensi', $id_frekuensi);
        $this->db->bind('id_mahasiswa', $id_mahasiswa);

        $this->db->execute();

        return $this->db->rowCount();
    }

    public function getAllMergerData($id_matkul) {
        $query = 'SELECT * FROM vw_temp' . (isset($id_matkul) ? ' WHERE id_matkul = ' . $id_matkul : '');

        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function updateData($column, $id_penilaian, $new_value) {
        $query = 'UPDATE ' . $this-> table . ' 
                        SET ' . $column . ' = :new_value
                        WHERE id_penilaian_frekuensi = :id_penilaian';

        $this->db->query($query);
        $this->db->bind('new_value', $new_value);
        $this->db->bind('id_penilaian', $id_penilaian);

        $this->db->execute();

        return $this->db->rowCount();
    }
}