<?php

class AsistenDanDosen extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Asisten dan Dosen';
        $data['header'] = 'Daftar Dosen dan Asisten Laboratorium';
        $data['detail'] = 'Dapat mengedit data Dosen dan Asisten Laboratorium';
        $data['dosen'] = $this->model('Dosen_model')->getSeveralDosenWithFrekuensi(5);
        $data['asisten'] = $this->model('Asisten_model')->getSeveralAsistenWithFrekuensi(5);
        $data['total_dosen'] = $this->model('Dosen_model')->numOfData();
        $data['total_asisten'] = $this->model('Asisten_model')->numOfData();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('asistenDanDosen/index', $data);
        $this->view('templates/footer');
    }

    public function tambahDosen() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        if ($this->model('Dosen_model')->addDosenWithUser($_POST) > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
            header('Location: ' . BASEURL . '/asistendandosen/dosenPage');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            header('Location: ' . BASEURL . '/asistendandosen/dosenPage');
            exit;
        }

    }

    public function dosenPage() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

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
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

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