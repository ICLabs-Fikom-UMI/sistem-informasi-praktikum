<?php

class Laboratorium extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Laboratorium';
        $data['header'] = 'Daftar Laboratorium';
        $data['detail'] = 'Dapat mengedit data laboratorium';
        $data['laboratorium'] = $this->model('Laboratorium_model')->getAllLaboratorium();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('laboratorium/index', $data);
        $this->view('templates/footer');
    }

    public function addLaboratorium() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $addLab = $this->model('Laboratorium_model')->addLaboratorium($_POST);

        if ($addLab > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
            header('Location: ' . BASEURL . '/laboratorium');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            header('Location: ' . BASEURL . '/laboratorium');
            exit;
        }
    }


    public function deleteLaboratorium($id_laboratorium) {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $deleteLab = $this->model('Laboratorium_model')->deleteLaboratorium($id_laboratorium);

        if ($deleteLab > 0) {
            Flasher::setFlash('berhasil', 'dihapus', 'success');
            header('Location: ' . BASEURL . '/laboratorium');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'dihapus', 'danger');
            header('Location: ' . BASEURL . '/laboratorium');
            exit;
        }
    }

    public function getDataById() {
        echo json_encode($this->model('Laboratorium_model')->getDataById($_POST['id']));
    }

    public function editData() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $edited = $this->model('Laboratorium_model')->editData($_POST);
        
        if ($edited > 0) {
            Flasher::setFlash('berhasil', 'diubah', 'success');
        } else {
            Flasher::setFlash('gagal', 'diubah', 'danger');
        }

        header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit;
    }

}