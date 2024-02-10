<?php

class Tugas_model {
    private $table = 'tugas';
    private $db;
    
    public function __construct() {
        $this->db = new Database;
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
}