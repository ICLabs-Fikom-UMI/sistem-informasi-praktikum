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
        $query = 'SELECT ' . $this->tabel . '.id_' . $this->tabel . ', ' . $this->tabel . '.nim, ' . $this->tabel . '.nama, ' . $this->tabel . '.email, COUNT(*) AS total_frekuensi
                    FROM ' . $this->tabel . '
                    LEFT JOIN frekuensi ON ' . $this->tabel . '.id_' . $this->tabel . ' = frekuensi.id_' . $this->tabel . '1 OR ' . $this->tabel . '.id_' . $this->tabel . ' = frekuensi.id_' . $this->tabel . '2
                    GROUP BY ' . $this->tabel . '.nama;';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getSeveralAsistenWithFrekuensi($limit) {
        $query = 'SELECT ' . $this->table . '.nama, COUNT(*) AS total_frekuensi
                    FROM ' . $this->table . '
                    LEFT JOIN frekuensi ON ' . $this->table . '.id_asisten = frekuensi.id_asisten1 OR ' . $this->table . '.id_asisten = frekuensi.id_asisten2
                    GROUP BY ' . $this->table . '.nama LIMIT ' . $limit . ';';
        $this->db->query($query);
        
        return $this->db->resultSet();
    }

}