<?php
session_start();

class DaftarNilai extends Controller {
    public function index() {
        $this->checkLoginSession();

        $data['title'] = 'Daftar Nilai';
        $data['header'] = 'Daftar Nilai Praktikum';
        $data['detail'] = 'Semua Daftar Nilai';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getDataFrekuensiByIdMatkul(10);
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();
        $data['penilaian'] = $this->model('PenilaianFrekuensi_model')->getAllMergerData(10);
        var_dump($data['penilaian']);

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
        $data['penilaian'] = $this->model('PenilaianFrekuensi_model')->getAllMergerData($id_matkul);

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

    public function updatenilai() {
        $this->model($_POST['model'])->updateData($_POST['column'], $_POST['id'], $_POST['new_value']);
    }
}