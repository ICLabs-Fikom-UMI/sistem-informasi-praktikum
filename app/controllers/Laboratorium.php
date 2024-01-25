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
}