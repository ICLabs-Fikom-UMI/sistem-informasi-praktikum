<div class="content d-flex">
    <div class="tambah-dosen">
    </div>
    <div class="tabel-dosen">
      <table id="example" class="table table-striped" style="width:100%">
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