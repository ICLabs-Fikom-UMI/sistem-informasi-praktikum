<?php

class DataFrekuensi_model {
    private $table = 'frekuensi';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getTable() {
        return $this->table;
    }

    public function getAllFrekuensi() {
        $this->db->query('SELECT * FROM ' . $this->table);

        return $this->db->resultSet();
    }

    public function getAllDataFrekuensi() {
        $this->db->query('SELECT * FROM vw_frek_data');

        return $this->db->resultSet();
    }

    public function getAllFrekuensiByIdMatkul($id_matkul) {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id_matkul = :id_matkul');

        $this->db->bind('id_matkul', $id_matkul);

        return $this->db->resultSet();
    }

    public function getDataFrekuensiByIdMatkul($id_matkul) {
        $query = 'CALL proc_frek_filter_id_matkul(:id_matkul)';
        
        $this->db->query($query);
        $this->db->bind('id_matkul', $id_matkul);
        
        return $this->db->resultSet();
    }


    public function getDataFrekuensiByIdDosen($id_dosen) {
        $query = 'CALL proc_frek_filter_id_dosen(:id_dosen)';
        
        $this->db->query($query);
        $this->db->bind('id_dosen', $id_dosen);
        
        return $this->db->resultSet();
    }

    public function changeStatus($id_frekuensi) {
        $query = 'UPDATE ' . $this->table . ' SET status = IF(status = "Belum", "Selesai", "Belum") WHERE id_frekuensi = :id_frekuensi';

        $this->db->query($query);
        $this->db->bind('id_frekuensi', $id_frekuensi);
        $this->db->execute();
        
        return $this->db->rowCount();
    }

    public function getNumOfDataByIdMatkul($id_matkul) {
        $query = 'SELECT count(*) as total FROM ' . $this->table . ' WHERE id_matkul = :id_matkul';

        $this->db->query($query);
        $this->db->bind('id_matkul', $id_matkul);

        return $this->db->single();
    }
}