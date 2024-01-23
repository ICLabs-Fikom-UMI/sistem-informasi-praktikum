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
        $query = 'SELECT ' . $this->table . '.nama, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_asisten = frekuensi.id_asisten1 OR ' . $this->table . '.id_asisten = frekuensi.id_asisten2
                    GROUP BY ' . $this->table . '.nama;';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getSeveralDosenWithFrekuensi($limit) {
        $query = 'SELECT ' . $this->table . '.nama, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_dosen = frekuensi.id_dosen
                    GROUP BY ' . $this->table . '.nama LIMIT ' . $limit . ';';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }
}