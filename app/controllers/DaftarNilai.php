<?php

class DaftarNilai extends Controller {
    public function index() {
        $data['title'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('daftarNilai/index', $data);
        $this->view('templates/footer');
    }
}