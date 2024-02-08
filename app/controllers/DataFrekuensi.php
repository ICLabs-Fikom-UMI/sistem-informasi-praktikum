<?php

class DataFrekuensi extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Data Frekuensi';
        $data['header'] = 'Daftar Frekuensi';
        $data['detail'] = 'Dapat mengedit data Frekuensi';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getAllDataFrekuensi();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/index', $data);
        $this->view('templates/footer');
    }

    public function tambah() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Tambah Frekuensi';
        $data['header'] = 'Tambah Frekuensi';
        $data['detail'] = 'Dapat menambahkan Frekuensi';

        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();
        $data['dosen'] = $this->model('Dosen_model')->getAllDosen();
        $data['asisten'] = $this->model('Asisten_model')->getAllAsisten();
        $data['laboratorium'] = $this->model('Laboratorium_model')->getAllLaboratorium();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/tambah', $data);
        $this->view('templates/footer');
    }
}