<div class="content d-flex flex-column">
    <div class="tambah-frekuensi d-flex justify-content-between mb-4 p-2">
        <div class="row">
            <div class="col-lg-6">
                <?php Flasher::flash(); ?>
            </div>
        </div>
        <a id="btnAddDataFrekuensi" href="<?= BASEURL?>/datafrekuensi/adddatafrekuensi" type="button" class="btn btn-primary">Tambah Frekuensi</a>
    </div>

    <div class="tabel-dosen">
      <table id="dataTable" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>Kode Frekuensi</th>
                <th>Mata Kuliah</th>
                <th>Jadwal</th>
                <th>Ruangan</th>
                <th>Dosen</th>
                <th>Asisten 1</th>
                <th>Asisten 2</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data['frekuensi'] as $frekuensi) : ?>
                <tr>
                    <td><?= $frekuensi['kode_frekuensi']?></td>
                    <td><?= $frekuensi['nama_matkul']?></td>
                    <td><?= $frekuensi['hari'] . ',' . $frekuensi['jam_mulai'] . ' - ' . $frekuensi['jam_selesai'];?></td>
                    <td><?= $frekuensi['nama_laboratorium']?></td>
                    <td><?= $frekuensi['nama_dosen']?></td>
                    <td><?= $frekuensi['asisten1']?></td>
                    <td><?= $frekuensi['asisten2']?></td>
                    <td><?= $frekuensi['status']?></td>
                    <td>
                        <div class="d-flex flex-row align-items-center gap-3">
                            <a class="btn btnEditDataFrekuensi" role="button" data-bs-toggle="modal" data-bs-target="#formModal" data-id="<?= $frekuensi['id_frekuensi']?>"><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                            <a class="btn" role="button" onclick="deleteData('datafrekuensi', 'deletedata', '<?= $frekuensi['id_frekuensi']?>')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
                        </div>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
        <tfoot>
            <tr>
                <th>Kode Frekuensi</th>
                <th>Mata Kuliah</th>
                <th>Jadwal</th>
                <th>Ruangan</th>
                <th>Dosen</th>
                <th>Asisten 1</th>
                <th>Asisten 2</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
    </div>
</div>