<?php

class DataFrekuensi extends Controller {
    public function index() {
        $data['title'] = 'Data Frekuensi';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('dataFrekuensi/index');
        $this->view('templates/footer');
    }
}