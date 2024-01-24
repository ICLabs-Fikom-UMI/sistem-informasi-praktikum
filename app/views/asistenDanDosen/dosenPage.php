<div class="content d-flex">
    <div class="tambah-dosen">
    </div>
    <div class="tabel-dosen" style="width: 100%">
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
                    <td>-</td>
                    <td>-</td>
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