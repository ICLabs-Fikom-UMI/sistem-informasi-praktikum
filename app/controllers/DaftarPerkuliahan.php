<?php

class DaftarPerkuliahan extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('dosen', '/daftarnilai');

        $data['title'] = 'Perkuliahan';
        $data['header'] = 'Data Perkuliahan';
        $data['detail'] = 'Daftar Matakuliah, Kelas, dan Mahasiswa yang diampu';
        $data['perkuliahan'] = $this->model('DataPerkuliahan_model')->getAllDataPerkuliahan();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataperkuliahan/index', $data);
        $this->view('templates/footer');
    }
}