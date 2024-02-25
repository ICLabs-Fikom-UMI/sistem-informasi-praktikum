<div class="container border p-2 rounded d-flex flex-rowi w-100 h-100 gap-5">
    <div class="data-perkuliahan border rounded p-2 flex-fill d-flex flex-column">
        <div class="text-center mb-5">
            <h3>Data Frekuensi</h3>
        </div>

        <div class="perkuliahan-form">

        <form action="<?= BASEURL; ?>/datafrekuensi/tambahdata" method="post">
        <input type="hidden" name="id" id="id">
        
        <div class="form-group mb-3">
            <label for="mata_kuliah">Mata Kuliah</label>
            <select class="form-select" id="mata_kuliah" name="mata_kuliah" aria-label="Default select example" required>
                <option value="" selected>Pilih matakuliah</option>
                <?php foreach($data['mata_kuliah'] as $mata_kuliah): ?>
                    <option value="<?= $mata_kuliah['id_matkul']?>"><?= $mata_kuliah['kode_matkul']?> - <?= $mata_kuliah['nama_matkul']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="kode_frekuensi">Kode Frekuensi</label>
            <input type="text" class="form-control" id="kode_frekuensi" name="kode_frekuensi" readonly>
        </div>

        <div class="form-group mb-3">
            <label for="dosen">Nama Dosen</label>
            <select class="form-select" id="dosen" name="dosen" aria-label="Default select example" required>
                <option value="" selected>Pilih dosen</option>
                <?php foreach($data['dosen'] as $dosen): ?>
                <option value="<?= $dosen['id_dosen']?>"><?= $dosen['nama']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="asisten_1">Nama Asisten 1</label>
            <select class="form-select" id="asisten_1" name="asisten_1" aria-label="Default select example" required>
                <option value="" selected>Pilih Asisten 1</option>
                <?php foreach($data['asisten'] as $asisten): ?>
                <option value="<?= $asisten['id_asisten']?>"><?= $asisten['nama']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="asisten_2">Nama Asisten 2</label>
            <select class="form-select" id="asisten_2" name="asisten_2" aria-label="Default select example" required>
                <option value="" selected>Pilih Asisten 2</option>
                <?php foreach($data['asisten'] as $asisten): ?>
                <option value="<?= $asisten['id_asisten']?>"><?= $asisten['nama']?></option>
                <?php endforeach?>
            </select>
        </div>

        <div class="form-group mb-3">
            <label for="laboratorium">Laboratorium</label>
            <select class="form-select" id="laboratorium" name="laboratorium" aria-label="Default select example" required>
                <option value="" selected>Pilih Laboratorium</option>
                <?php foreach($data['laboratorium'] as $laboratorium): ?>
                    <option value="<?= $laboratorium['id_laboratorium']?>"><?= $laboratorium['nama_laboratorium']?></option>
                <?php endforeach?>
            </select>
        </div>
        
        <div class="form-group mb-3">
            <div class="form-group">
                <label for="kapasitas">Kapasitas</label>
                <input type="number" class="form-control" id="kapasitas" name="kapasitas">
            </div>
        </div>

        <div class="form-group mb-3 d-flex gap-3">
            <div class="form-group flex-fill">
                <label for="hari">Hari</label>
                <select class="form-select" id="hari" name="hari" aria-label="Default select example">
                    <option value="" selected>Pilih Hari</option>
                    <option value="Senin">Senin</option>
                    <option value="Selasa">Selasa</option>
                    <option value="Rabu">Rabu</option>
                    <option value="Kamis">Kamis</option>
                    <option value="Jumat">Jumat</option>
                    <option value="Sabtu">Sabtu</option>
                    <option value="Minggu">Minggu</option>
                </select>
            </div>
            <div class="form-group flex-fill">
                <label for="jam">Jam</label>
                <select class="form-select" id="jam" name="jam" aria-label="Default select example">
                    <option value="" selected>Pilih Jam</option>
                    <option value="08:00:00 - 10:00:00">08:00 - 10:00</option>
                    <option value="10:00:00 - 12:00:00">10:00 - 12:00</option>
                    <option value="13:00:00 - 15:00:00">13:00 - 15:00</option>
                    <option value="16:00:00 - 18:00:00">16:00 - 18:00</option>
                </select>
            </div>
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

      <table id="dataTable" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>No</th>
                <th>NIM</th>
                <th>Nama Lengkap</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
                <tr>
                    <td>Ha</td>
                    <td>Ha</td>
                    <td>Ha</td>
                    <td>
                        <a class="btn btnEditDataDosen" role="button" data-bs-toggle="modal" data-bs-target="#formModal" data-id="<?= $dosen['id_user']?>"><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                        <a class="btn" role="button" onclick="deleteData('asistendandosen', 'deletedosen', '<?= $dosen['id_user']?>')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
                        <a class="btn" role="button" onclick="resetPassword('asistendandosen', 'resetpassword', '<?= $dosen['id_user']?>', 'asisten')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/detail.svg" alt=""></a>
                    </td>
                </tr>
            <?php foreach($data['perkuliahan'] as $perkuliahan) : ?>
                <tr>
                    <td><?= $perkuliahan['mata_kuliah']?></td>
                    <td><?= $perkuliahan['kelas']?></td>
                    <td><?= $perkuliahan['total_mahasisa']?></td>
                    <td>
                        <a class="btn btnEditDataDosen" role="button" data-bs-toggle="modal" data-bs-target="#formModal" data-id="<?= $dosen['id_user']?>"><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                        <a class="btn" role="button" onclick="deleteData('asistendandosen', 'deletedosen', '<?= $dosen['id_user']?>')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
                        <a class="btn" role="button" onclick="resetPassword('asistendandosen', 'resetpassword', '<?= $dosen['id_user']?>', 'asisten')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/detail.svg" alt=""></a>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
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