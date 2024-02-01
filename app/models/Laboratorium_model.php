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

    public function getDataById($id_laboratorium) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_laboratorium = :id_laboratorium';

        $this->db->query($query);
        $this->db->bind('id_laboratorium', $id_laboratorium);

        return $this->db->single();
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

    public function deleteLaboratorium($id_laboratorium) {
        $query = 'CALL delete_laboratorium(:id_laboratorium)';

        $this->db->query($query);
        $this->db->bind('id_laboratorium', $id_laboratorium);

        $this->db->execute();

        return $this->db->rowCount();
    }

    public function editData($data) {
        $query = 'CALL edit_laboratorium(:id_laboratorium, :nama_laboratorium, :kapasitas)';

        $this->db->query($query); 
        $this->db->bind('nama_laboratorium', $data['nama_laboratorium']);
        $this->db->bind('kapasitas', $data['kapasitas']);
        $this->db->bind('id_laboratorium', $data['id']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}