<?php
session_start();

class DaftarNilai extends Controller {
    public function index() {
        $this->checkLoginSession();

        $data['title'] = 'Daftar Nilai';
        $data['header'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdMatkul(10);
        $data['frekuensi']['penilaian_frekuensi'] = $this->model('PenilaianPraktikum_model')->getAllData();
        $data['frekuensi']['kehadiran'] = $this->model('Kehadiran_model')->getAllData();
        $data['frekuensi']['tugas'] = $this->model('Tugas_model')->getAllData();
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();

        // var_dump($_SESSION); var_dump($_GET['url']);
        
        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        if ($_SESSION['role_user'] == 'dosen') {
            $id_dosen = $this->model('Dosen_model')->getIdDosen($_SESSION['id_user']);
            $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdDosen($id_dosen['id_dosen']);
        }
        $this->view('daftarNilai/index', $data);
        $this->view('templates/footer');
    }

    public function selectMatkul($id_matkul) {
        $this->checkLoginSession();

        $data['title'] = 'Daftar Nilai';
        $data['header'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdMatkul($id_matkul);
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('daftarNilai/index', $data);
        $this->view('templates/footer');
    }

    public function changeStatus($id_frek) {
        if ($this->model('DataFrekuensi_model')->changeStatus($id_frek) > 0) {
            Flasher::setFlash('berhasil', 'diganti', 'success');
            header('Location: ' . BASEURL . '/daftarnilai');
            exit;
        }
        else {
            Flasher::setFlash('gagal', 'diganti', 'danger');
            header('Location: ' . BASEURL . '/daftarnilai');
            exit;
        }
    }
}