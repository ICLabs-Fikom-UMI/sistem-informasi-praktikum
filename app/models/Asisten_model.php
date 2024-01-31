<?php

class Asisten_model {
    private $table = 'asisten';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getTable() {
        return $this->table;
    }

    public function numOfData() {
        $this->db->query('SELECT count(*) as total FROM ' . $this->table);
        return $this->db->single();
    }

    public function getDataByIdUser($id_user) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_user = :id_user';

        $this->db->query($query);
        $this->db->bind('id_user', $id_user);

        return $this->db->single();
    }

    public function getAllAsisten() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    public function getSeveralAsisten($limit) {
        $this->db->query('SELECT * FROM ' . $this->table . ' LIMIT ' . $limit);
        return $this->db->resultSet();
    }

    public function addAsistenWithUser($data) {
        $passwordDefault = 'asisten';
        $role = 'asisten';

        $query = 'CALL add_asisten_with_user(:nim, :nama, :email, :password_default, :role)';
        
        $this->db->query($query);
        $this->db->bind('nim', $data['nim']);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('password_default', $passwordDefault);
        $this->db->bind('role', $role);

        $this->db->execute();
        
        return $this->db->rowCount();
    }

    public function deleteAsistenWithUser($id_user) {
        $query = 'CALL delete_asisten_with_user(:id_user)';

        $this->db->query($query);
        $this->db->bind('id_user', $id_user);
        
        $this->db->execute();

        return $this->db->rowCount();
    }

    public function getAllAsistenWithFrekuensi() {
        $query = 'SELECT ' . $this->table . '.id_user, ' . $this->table . '.id_asisten, ' . $this->table . '.nim, ' . $this->table . '.nama, ' . $this->table . '.email, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_asisten = frekuensi.id_asisten1 OR ' . $this->table . '.id_asisten = frekuensi.id_asisten2
                    GROUP BY ' . $this->table . '.id_asisten;';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getSeveralAsistenWithFrekuensi($limit) {
        $query = 'SELECT ' . $this->table . '.id_asisten, ' . $this->table . '.nim, ' . $this->table . '.nama, ' . $this->table . '.email, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_asisten = frekuensi.id_asisten1 OR ' . $this->table . '.id_asisten = frekuensi.id_asisten2
                    GROUP BY ' . $this->table . '.id_asisten LIMIT ' . $limit . ';';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function editData($data) {
        try {
            $query = 'CALL edit_asisten_with_user(:id_user, :nim, :email, :nama)';
    
            $this->db->query($query);
            $this->db->bind('id_user', $data['id']);
            $this->db->bind('nim', $data['nim']);
            $this->db->bind('email', $data['email']);
            $this->db->bind('nama', $data['nama']);
    
            $this->db->execute();
    
            return $this->db->rowCount();
        }
        catch (Exception $e) {
            echo 'Error : ' . $e->getMessage();
        }
    }
}