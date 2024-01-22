<?php

class DaftarNilai extends Controller {
    public function index() {
        $data['title'] = 'Daftar Nilai';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('daftarNilai/index');
        $this->view('templates/footer');
    }
}