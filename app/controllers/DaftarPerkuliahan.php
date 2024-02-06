<?php

class DaftarPerkuliahan extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('dosen', '/daftarnilai');

        $data['title'] = 'Perkuliahan';
        $data['header'] = 'Data Perkuliahan';
        $data['detail'] = 'Daftar Matakuliah, Kelas, dan Mahasiswa yang diampu';
        // $data['perkuliahan'] = $this->model('DataPerkuliahan_model')->getAllDataPerkuliahan();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataperkuliahan/index', $data);
        $this->view('templates/footer');
    }

    public function tambah() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('dosen', '/daftarnilai');

        $data['title'] = 'Tambah Perkuliahan';
        $data['header'] = 'Data Perkuliahan';
        $data['detail'] = 'Menambahkan Data Perkuliahan';
        $data['dosen'] = $this->model('Dosen_model')->getAllDosen();
        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataperkuliahan/tambah', $data);
        $this->view('templates/footer');
    }

    public function tambahData() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('dosen', '/daftarnilai');

        $daftar_nim_mhs = preg_split('/\s+/', $_POST['daftar_mahasiswa']);
        $list_id_mhs = [];

        foreach ($daftar_nim_mhs as $nim):
            try {
                $mhs = $this->model('Mahasiswa_model')->getDataByNIM($nim);
                echo $mhs['id_mahasiswa'];
                $added = $this->model('DataPerkuliahan_model')->addData($_POST, $mhs['id_mahasiswa']);
            }
            catch (Exception $e) {
                continue;
            }
        endforeach;

        header('Location: ' . $_SERVER['HTTP_REFERER']);
    }
}