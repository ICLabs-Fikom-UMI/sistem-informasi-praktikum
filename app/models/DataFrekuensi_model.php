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

    public function getDataFrekuensi() {
        $query = 'SELECT
                    ' . $this->table . '.kode_frekuensi,
                    dosen.nama AS nama_dosen,
                    asisten1.nama AS asisten1,
                    asisten2.nama AS asisten2,
                    laboratorium.nama_laboratorium,
                    mata_kuliah.nama_matkul,
                    ' . $this->table . '.hari,
                    ' . $this->table . '.jam_mulai,
                    ' . $this->table . '.jam_selesai,
                    ' . $this->table . '.status
                FROM
                    ' . $this->table . '
                JOIN
                    dosen ON ' . $this->table . '.id_dosen = dosen.id_dosen
                JOIN
                    asisten AS asisten1 ON ' . $this->table . '.id_asisten1 = asisten1.id_asisten
                JOIN
                    asisten AS asisten2 ON ' . $this->table . '.id_asisten2 = asisten2.id_asisten
                JOIN
                    laboratorium ON ' . $this->table . '.id_laboratorium = laboratorium.id_laboratorium
                JOIN
                    mata_kuliah ON ' . $this->table . '.id_matkul = mata_kuliah.id_matkul;';
        
        $this->db->query($query);
        
        return $this->db->resultSet();
    }
}