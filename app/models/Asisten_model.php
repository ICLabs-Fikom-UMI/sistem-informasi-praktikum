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

    public function getAllAsisten() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    public function getSeveralAsisten($limit) {
        $this->db->query('SELECT * FROM ' . $this->table . ' LIMIT ' . $limit);
        return $this->db->resultSet();
    }

    public function getAllAsistenWithFrekuensi() {
        $query = 'SELECT ' . $this->table . '.id_asisten, ' . $this->table . '.nim, ' . $this->table . '.nama, ' . $this->table . '.email, COUNT(*) AS total_frekuensi
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

}