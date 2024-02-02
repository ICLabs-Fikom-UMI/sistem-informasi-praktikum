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

    public function addDataFrekuensi() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Tambah Frekuensi';
        $data['header'] = 'Tambah Frekuensi';
        $data['detail'] = 'Dapat menambahkan Frekuensi';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/addfrekuensi');
        $this->view('templates/footer');
    }
}