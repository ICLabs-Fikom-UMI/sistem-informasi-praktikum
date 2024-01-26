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

    public function addDosen() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $addAccount = $this->model('Dosen_model')->addDosenWithUser($_POST);

        if ($addAccount > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
            header('Location: ' . BASEURL . '/asistendandosen/dosenpage');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            header('Location: ' . BASEURL . '/asistendandosen/dosenpage');
            exit;
        }

    }


    public function addAsisten() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $addAccount = $this->model('Asisten_model')->addAsistenWithUser($_POST);

        if ($addAccount > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
            header('Location: ' . BASEURL . '/asistendandosen/asistenpage');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            header('Location: ' . BASEURL . '/asistendandosen/asistenpage');
            exit;
        }
    }

    public function deleteDosen($id_user) {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $deleteAccount = $this->model('Dosen_model')->deleteDosenWithUser($id_user);

        if ($deleteAccount > 0) {
            Flasher::setFlash('berhasil', 'dihapus', 'success');
            header('Location: ' . BASEURL . '/asistendandosen/dosenpage');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'dihapus', 'danger');
            header('Location: ' . BASEURL . '/asistendandosen/dosenpage');
            exit;
        }
    }

    public function deleteAsisten($id_user) {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $deleteAccount = $this->model('Asisten_model')->deleteAsistenWithUser($id_user);

        if ($deleteAccount > 0) {
            Flasher::setFlash('berhasil', 'dihapus', 'success');
            header('Location: ' . BASEURL . '/asistendandosen/asistenpage');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'dihapus', 'danger');
            header('Location: ' . BASEURL . '/asistendandosen/asistenpage');
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