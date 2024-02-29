<div class="container border p-2 rounded d-flex flex-rowi w-100 h-100 gap-5">
    <div class="data-perkuliahan border rounded p-2 flex-fill d-flex flex-column">
        <div class="text-center mb-5">
            <h3>Data Perkuliahan</h3>
        </div>

        <div class="perkuliahan-form">

        <form action="<?= BASEURL; ?>/daftarperkuliahan/tambahdata" method="post">
        <input type="hidden" name="id" id="id">
        <div class="form-group mb-3">
            <label for="nama_dosen">Nama Dosen</label>
            <select class="form-select" id="dosen" name="nama_dosen" aria-label="Default select example">
                <option selected>Pilih dosen</option>
                <?php foreach($data['dosen'] as $dosen): ?>
                <option value="<?= $dosen['id_dosen']?>"><?= $dosen['nama']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="mata_kuliah">Mata Kuliah</label>
            <select class="form-select" id="mata_kuliah" name="mata_kuliah" aria-label="Default select example">
                <option selected>Pilih matakuliah</option>
                <?php foreach($data['mata_kuliah'] as $mata_kuliah): ?>
                <option value="<?= $mata_kuliah['id_matkul']?>"><?= $mata_kuliah['kode_matkul']?> - <?= $mata_kuliah['nama_matkul']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="kelas">Kelas</label>
            <input type="text" class="form-control" id="kelas" name="kelas" placeholder="A1">
        </div>

        <div class="form-group mb-3">
            <label for="daftar_mahasiswa">Stambuk Mahasiswa</label>
            <textarea class="form-control" id="daftar_mahasiswa" name="daftar_mahasiswa" rows="13" placeholder="13020210134
13020210001
13020210002
dst"></textarea>
        </div>

    </div>
    <div class="modal-footer d-flex justify-content-center align-items-center gap-3">
        <button type="button" class="btn btn-secondary w-25" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary w-25">Tambah Data</button>
    </div>
</form>
    </div>
    <div class="data-perkuliahan border rounded p-2 flex-fill d-flex flex-column">
        <div class="text-center mb-5">
            <h3>Daftar Mahasiswa</h3>
        </div>

      <table id="dataTable" class="table table-striped daftar-mahasiswa" style="width:100%">
        <thead>
            <tr>
                <th>No</th>
                <th>NIM</th>
                <th>Nama Lengkap</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody></tbody>
        <tfoot>
            <tr>
                <th>No</th>
                <th>NIM</th>
                <th>Nama Lengkap</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
    </div>
</div>