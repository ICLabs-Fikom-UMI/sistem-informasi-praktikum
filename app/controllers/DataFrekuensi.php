<?php

class DataFrekuensi extends Controller {
    public function index() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Data Frekuensi';
        $data['header'] = 'Daftar Frekuensi';
        $data['detail'] = 'Dapat mengedit data Frekuensi';
        $data['frekuensi'] = $this->model('DataFrekuensi_model')->getAllDataFrekuensi();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/index', $data);
        $this->view('templates/footer');
    }

    public function tambah() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $data['title'] = 'Tambah Frekuensi';
        $data['header'] = 'Tambah Frekuensi';
        $data['detail'] = 'Dapat menambahkan Frekuensi';

        $data['mata_kuliah'] = $this->model('MataKuliah_model')->getAllMataKuliah();
        $data['dosen'] = $this->model('Dosen_model')->getAllDosen();
        $data['asisten'] = $this->model('Asisten_model')->getAllAsisten();
        $data['laboratorium'] = $this->model('Laboratorium_model')->getAllLaboratorium();

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('dataFrekuensi/tambah', $data);
        $this->view('templates/footer');
    }

    public function tambahData() {
        $this->checkLoginSession();
        $this->checkRoleAndRedirect('admin', '/daftarnilai');

        $inserted = $this->model('DataFrekuensi_model')->addData($_POST);
        
        if (!($inserted > 0)) {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            exit;
        }
        $last_inserted = $this->model('DataFrekuensi_model')->getDataByKodeFrekuensi($_POST['kode_frekuensi']);
        $kuliah_data = $this->model('DataPerkuliahan_model')->getDataForPenilaian($last_inserted['id_matkul'], $last_inserted['id_dosen'], $_POST['kapasitas']);

        if (empty($kuliah_data)) {
            $deleted = $this->model('DataFrekuensi_model')->deleteData($last_inserted['id_frekuensi']);
            Flasher::setFlash('gagal', 'ditambah', 'danger');
        }
        else {
            // insert data tabel penilaian, kehadiran, tugas
            foreach ($kuliah_data as $kuliah):
                try {
                    $penilaian = $this->model('PenilaianFrekuensi_model')->addData($last_inserted['id_frekuensi'], $kuliah['id_mahasiswa'], $_POST['kapasitas']);
                    $kehadiran = $this->model('Kehadiran_model')->addData($last_inserted['id_frekuensi'], $kuliah['id_mahasiswa'], $_POST['kapasitas']);
                    $tugas = $this->model('Tugas_model')->addData($last_inserted['id_frekuensi'], $kuliah['id_mahasiswa'], $_POST['kapasitas']);
                }
                catch (Exception $e) {
                    echo 'Fail Insert data : ' . $last_inserted['id_frekuensi'] . ' : ' . $kuliah['id_mahasiswa'] . 'Error : ' . $e->getMessage() . '<br>';
                }
            endforeach;

            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
        }
        header('Location: ' . BASEURL . '/datafrekuensi');
        exit;
    }

    public function getDataByIdMatkul() {
        echo json_encode($this->model('DataFrekuensi_model')->getNumOfDataByIdMatkul($_POST['id']));
    }
}