<?php

class Settings extends Controller {
    public function index() {
        $data['title'] = 'Settings';
        $data['header'] = 'Settings';
        $data['detail'] = 'Dapat mengatur bobot penilaian dan dokuman';

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
        $this->view('settings/index');
        $this->view('templates/footer');
    }
}