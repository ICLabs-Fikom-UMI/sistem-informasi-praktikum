
<div class="content d-flex flex-column">
    <div class="tambah-perkuliahan d-flex justify-content-between mb-4 p-2">
        <div class="row">
            <div class="col-lg-6">
                <?php Flasher::flash(); ?>
            </div>
        </div>
        <a id="btnAddDataPerkuliahan" href="<?= BASEURL?>/daftarperkuliahan/tambah" type="button" class="btn btn-primary">Tambah Perkuliahan</a>
    </div>

    <div class="tabel-perkuliahan">
      <table id="dataTable" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>No</th>
                <?php if ($_SESSION['role_user'] == 'admin') echo '<th>Nama Dosen</th>';?>
                <th>Mata Kuliah</th>
                <th>Kelas</th>
                <th>Total Mahasiswa</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $i = 1; 
                foreach($data['perkuliahan'] as $perkuliahan) : ?>
                <tr>
                    <td><?= $i++?></td>
                    <?php if ($_SESSION['role_user'] == 'admin'):?>
                        <td><?= $perkuliahan['nama_dosen']?></td>
                    <?php endif?>
                    <td><?= $perkuliahan['nama_matkul']?></td>
                    <td><?= $perkuliahan['kelas']?></td>
                    <td><?= $perkuliahan['total_mhs']?></td>
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
                <?php if ($_SESSION['role_user'] == 'admin') echo '<th>Nama Dosen</th>';?>
                <th>Mata Kuliah</th>
                <th>Kelas</th>
                <th>Total Mahasiswa</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
    </div>
</div>