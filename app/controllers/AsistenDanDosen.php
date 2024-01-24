<?php

class AsistenDanDosen extends Controller {
    public function index() {
        $data['title'] = 'Asisten dan Dosen';
        $data['header'] = 'Daftar Dosen dan Asisten Laboratorium';
        $data['detail'] = 'Dapat mengedit data Dosen dan Asisten Laboratorium';
        $data['dosen'] = $this->model('Dosen_model')->getSeveralDosenWithFrekuensi(5);
        $data['asisten'] = $this->model('Asisten_model')->getSeveralAsistenWithFrekuensi(5);
        $data['total_dosen'] = $this->model('Dosen_model')->numOfData();
        $data['total_asisten'] = $this->model('Asisten_model')->numOfData();

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
        $this->view('asistenDanDosen/index', $data);
        $this->view('templates/footer');
    }

    public function dosenPage() {
        $data['title'] = 'Daftar Dosen';
        $data['header'] = 'Daftar Dosen';
        $data['detail'] = 'Dapat mengedit data Dosen';
        $data['dosen'] = $this->model('Dosen_model')->getAllDosenWithFrekuensi();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('asistenDanDosen/dosenPage', $data);
        $this->view('templates/footer');
    }

    public function asistenPage() {
        $data['title'] = 'Daftar Asisten';
        $data['header'] = 'Daftar Asisten';
        $data['detail'] = 'Dapat mengedit data Asisten';
        $data['asisten'] = $this->model('Asisten_model')->getAllAsistenWithFrekuensi();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('asistenDanDosen/asistenPage', $data);
        $this->view('templates/footer');
    }
}