<?php

class AsistenDanDosen extends Controller {
    public function index() {
        $data['title'] = 'Asisten dan Dosen';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('asistenDanDosen/index');
        $this->view('templates/footer');
    }
}