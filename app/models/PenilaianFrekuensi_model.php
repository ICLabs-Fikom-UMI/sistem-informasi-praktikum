<?php

class PenilaianFrekuensi_model {
    private $table = 'penilaian_frekuensi';
    private $db;
    
    public function __construct() {
        $this->db = new Database;
    }

    public function getAllData() {
        $query = 'SELECT * FROM ' . $this->table;

        $this->db->query($query);

        return $this->db->resultSet();
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

    public function getAllMergerData($id_matkul) {
        $query = 'SELECT * FROM vw_nilai_mahasiswa' . (isset($id_matkul) ? ' WHERE id_matkul = ' . $id_matkul : '');

        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function updateData($column, $id_penilaian, $new_value) {
        $query = 'UPDATE ' . $this-> table . ' 
                        SET ' . $column . ' = :new_value
                        WHERE id_penilaian_frekuensi = :id_penilaian';

        $this->db->query($query);
        $this->db->bind('new_value', $new_value);
        $this->db->bind('id_penilaian', $id_penilaian);

        $this->db->execute();

        return $this->db->rowCount();
    }

    public function getDataPenilaianByIdFreks($id_frek) {
        $query = 'SELECT * FROM vw_nilai_mahasiswa WHERE id_frekuensi IN ' . $id_frek;

        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getDataPenilaianByMhs($keyword) {
        $keywords = array_map('trim', explode(',', $keyword));
        $likeConditions = '';

        foreach ($keywords as $key => $kw) {
            if ($key > 0) {
                $likeConditions .= ' AND ';
            }
            $likeConditions .= ' CONCAT_WS("",
                                    nim,
                                    nama
                                ) LIKE :keyword' . $key;
        }

        $query = 'SELECT * FROM vw_nilai_mahasiswa WHERE ' . $likeConditions;

        $this->db->query($query);

        foreach ($keywords as $key => $kw) {
            $this->db->bind('keyword' . $key, "%" . $kw . "%");
        }
        $data_penilaian = $this->db->resultSet();
        
        $query = 'SELECT * FROM vw_nilai_mahasiswa WHERE ' . $likeConditions . ' GROUP BY id_frekuensi';
        
        $this->db->query($query);
        
        foreach ($keywords as $key => $kw) {
            $this->db->bind('keyword' . $key, "%" . $kw . "%");
        }
        $unique_id_frek = $this->db->resultSet();
        
        $data = [ 
            'data' => $data_penilaian,
            'unique_id_frek' => $unique_id_frek
        ];

        return $data;
    }
}