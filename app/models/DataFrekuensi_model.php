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

    public function getAllDataFrekuensi($id_frekuensi) {
        $query = 'SELECT * FROM vw_frek_data';

        if (isset($id_frekuensi)) {
            $condition = ' WHERE id_frekuensi IN ' . $id_frekuensi;
            $query .= $condition;
        }

        $this->db->query($query);

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
    
    public function addData($data) {
        $jam = explode(' - ', $data['jam']);
        $jam_mulai = $jam[0];
        $jam_selesai = $jam[1];

        $query = 'INSERT INTO ' . $this->table . '(kode_frekuensi, id_dosen, id_asisten1, id_asisten2, id_laboratorium, id_matkul, hari, jam_mulai, jam_selesai)
                    VALUES (:kode_frekuensi, :id_dosen, :id_asisten1, :id_asisten2, :id_laboratorium, :id_matkul, :hari, :jam_mulai, :jam_selesai)';
        
        $this->db->query($query);
        $this->db->bind('kode_frekuensi', $data['kode_frekuensi']);
        $this->db->bind('id_dosen', $data['dosen']);
        $this->db->bind('id_asisten1', $data['asisten_1']);
        $this->db->bind('id_asisten2', $data['asisten_2']);
        $this->db->bind('id_laboratorium', $data['laboratorium']);
        $this->db->bind('id_matkul', $data['mata_kuliah']);
        $this->db->bind('hari', $data['hari']);
        $this->db->bind('jam_mulai', $jam_mulai);
        $this->db->bind('jam_selesai', $jam_selesai);
        $this->db->execute();

        return $this->db->rowCount();
    }

    public function getDataByKodeFrekuensi($kode_frekuensi) {
        $query = 'SELECT * FROM ' . $this->table .
                    ' WHERE kode_frekuensi = :kode_frekuensi';
        
        $this->db->query($query);
        $this->db->bind('kode_frekuensi', $kode_frekuensi);

        return $this->db->single();
    }

    public function deleteData($id_frekuensi) {
        $this->db->query('SET foreign_key_checks = 0');
        $this->db->execute();

        $query = 'DELETE FROM ' . $this->table . ' WHERE id_frekuensi = :id_frekuensi';
        
        $this->db->query($query);
        $this->db->bind('id_frekuensi', $id_frekuensi);
        $this->db->execute();
        $result = $this->db->rowCount();

        $this->db->query('SET foreign_key_checks = 1');
        $this->db->execute();

        return $result;
    }

    public function getDataFrekuensiByKeyword($keyword) {
        $keywords = array_map('trim', explode(',', $keyword));
        $likeConditions = '';

        foreach ($keywords as $key => $kw) {
            if ($key > 0) {
                $likeConditions .= ' AND ';
            }
            $likeConditions .= ' CONCAT_WS("",
                                    kode_frekuensi,
                                    nama_dosen,
                                    asisten1,
                                    asisten2,
                                    nama_laboratorium,
                                    hari,
                                    jam_mulai,
                                    jam_selesai,
                                    status
                                ) LIKE :keyword' . $key;
        }

        $query = 'SELECT * FROM vw_frek_data WHERE ' . $likeConditions;

        $this->db->query($query);

        foreach ($keywords as $key => $kw) {
            $this->db->bind('keyword' . $key, "%" . $kw . "%");
        }

        return $this->db->resultSet();
    }
}