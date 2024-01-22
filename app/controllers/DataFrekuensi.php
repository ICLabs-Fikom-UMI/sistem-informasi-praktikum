<?php

class DataFrekuensi extends Controller {
    public function index() {
        $data['title'] = 'Data Frekuensi';
        $data['header'] = 'Daftar Frekuensi';
        $data['detail'] = 'Dapat mengedit data Frekuensi';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensi();
        
        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/index', $data);
        $this->view('templates/footer');
    }

}