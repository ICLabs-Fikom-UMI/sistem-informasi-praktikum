<?php

class DaftarNilai extends Controller {
    public function index() {
        $data['title'] = 'Daftar Nilai';
        $data['header'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdMatkul(10);
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('daftarNilai/index', $data);
        $this->view('templates/footer');
    }

    public function selectMatkul($id_matkul) {
        $data['title'] = 'Daftar Nilai';
        $data['header'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdMatkul($id_matkul);
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('daftarNilai/index', $data);
        $this->view('templates/footer');
    }
}