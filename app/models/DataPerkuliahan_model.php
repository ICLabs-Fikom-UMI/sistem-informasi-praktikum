<?php

class DataPerkuliahan_model {
    private $table = 'kuliah';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllDataPerkuliahan() {
        $query = 'SELECT * FROM ' . $this->table;

        $this->db->query($query);
        
        return $this->db->resultSet();
    }

    public function getDataPerkuliahanById($id) {
        $query = 'SELECT * FROM ' . $this->table . ' WHERE id_kuliah = :id_kuliah';

        $this->db->query($query);
        $this->db->bind('id_kuliah', $id);
        
        return $this->db->single();
    }

    public function addData($data, $daftar_nim_mhs) {
        $query = 'INSERT INTO kuliah(id_mahasiswa, id_dosen, id_matkul, kelas)
                    VALUE (:id_mahasiswa, :id_dosen, :id_matkul, :kelas)';

        foreach($daftar_nim_mhs as $nim):
            echo $nim . '<br>';        

        // foreach($daftar_nim_mhs as $nim):
        //     echo $nim . ' ';
        //     echo $data['nama_dosen'] . ' ';
        //     echo $data['mata_kuliah'] . ' ';
        //     echo $data['kelas'] . '<br>';
        endforeach;
    }
}