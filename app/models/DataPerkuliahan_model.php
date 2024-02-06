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

    public function addData($data, $id_mahasiswa) {
        $query = 'INSERT INTO kuliah(id_mahasiswa, id_dosen, id_matkul, kelas)
                    VALUES (:id_mahasiswa, :id_dosen, :id_matkul, :kelas)';

        $this->db->query($query);
        $this->db->bind('id_mahasiswa', $id_mahasiswa);
        $this->db->bind('id_dosen', $data['nama_dosen']);
        $this->db->bind('id_matkul', $data['mata_kuliah']);
        $this->db->bind('kelas', $data['kelas']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}