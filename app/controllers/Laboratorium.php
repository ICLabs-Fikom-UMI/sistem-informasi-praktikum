<?php

class Laboratorium extends Controller {
    public function index() {
        $data['title'] = 'Laboratorium';
        $data['header'] = 'Daftar Laboratorium';
        $data['detail'] = 'Dapat mengedit data laboratorium';
        $data['laboratorium'] = $this->model('Laboratorium_model')->getAllLaboratorium();

        if (!isset($_SESSION['id_user'])) {
            header('Location: ' . BASEURL . '/login');
            exit;
        }
        else {
            if ($_SESSION['role_user'] != 'admin') {
                header('Location: ' . BASEURL . '/daftarnilai');
                exit;
            }
        }

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('laboratorium/index', $data);
        $this->view('templates/footer');
    }
}