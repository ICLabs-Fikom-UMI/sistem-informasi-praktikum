<?php

class Dosen_model {
    private $table = 'dosen';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getTable() {
        return $this->table;
    }

    public function addDosenWithUser($data) {
        $passwordDefault = 'dosen';
        $role = 'dosen';

        $query = 'CALL add_dosen_with_user(:nidn, :nama, :email, :password_default, :role)';
        
        $this->db->query($query);
        $this->db->bind('nidn', $data['nidn']);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('password_default', $passwordDefault);
        $this->db->bind('role', $role);

        $this->db->execute();
        
        return $this->db->rowCount();
    }


    public function getNamaDosenByIdUser($id_user) {
        $this->db->query('SELECT nama FROM ' . $this->table . ' WHERE id_user = :id_user');
        $this->db->bind('id_user', $id_user);

        return $this->db->single();
    }

    public function getIdDosen($id_user) {
        $this->db->query('SELECT id_dosen FROM ' . $this->table . ' WHERE id_user = :id_user');
        $this->db->bind('id_user', $id_user);

        return $this->db->single();
    }

    public function numOfData() {
        $this->db->query('SELECT count(*) as total FROM ' . $this->table);
        return $this->db->single();
    }

    public function getAllDosen() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }
    
    public function getSeveralDosen($limit) {
        $this->db->query('SELECT * FROM ' . $this->table . ' LIMIT ' . $limit);
        return $this->db->resultSet();
    }

    public function getAllDosenWithFrekuensi() {
        $query = 'SELECT ' . $this->table . '.id_dosen, ' . $this->table . '.nidn, ' . $this->table . '.nama, ' . $this->table . '.email, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_dosen = frekuensi.id_dosen
                    GROUP BY ' . $this->table . '.id_dosen;';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getSeveralDosenWithFrekuensi($limit) {
        $query = 'SELECT ' . $this->table . '.id_dosen, ' . $this->table . '.nidn, ' . $this->table . '.nama, ' . $this->table . '.email, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_dosen = frekuensi.id_dosen
                    GROUP BY ' . $this->table . '.id_dosen LIMIT ' . $limit . ';';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }
}