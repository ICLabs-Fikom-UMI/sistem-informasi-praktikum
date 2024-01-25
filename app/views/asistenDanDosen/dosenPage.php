<div class="content d-flex flex-column">
    <div class="tambah-asisten d-flex justify-content-end mb-4 p-2">
        <a href="#"><button type="button" class="btn btn-primary">Tambah Dosen</button></a>
    </div>

    <div class="tabel-dosen border p-2 rounded" style="width: 100%">
      <table id="dataTable" class="table table-striped">
        <thead>
            <tr>
                <th>NIDN</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Total Frekuensi</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data['dosen'] as $dosen) : ?>
                <tr>
                    <td><?= $dosen['nidn']?></td>
                    <td><?= $dosen['nama']?></td>
                    <td><?= $dosen['email']?></td>
                    <td><?= $dosen['total_frekuensi']?></td>
                    <td>
                        <div class="d-flex flex-row align-items-center gap-3">
                            <a href=""><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                            <a href=""><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
                            <a href=""><img src="<?= BASEURL;?>/icons/reset.svg" alt=""></a>
                        </div>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
        <tfoot>
            <tr>
                <th>NIDN</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Total Frekuensi</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
    </div>
</div>