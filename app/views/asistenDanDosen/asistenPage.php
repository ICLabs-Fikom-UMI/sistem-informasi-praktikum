
<div class="content d-flex flex-column">
    <div class="tambah-asisten d-flex justify-content-end mb-4 p-2">
        <a href="#"><button type="button" class="btn btn-primary">Tambah Asisten</button></a>
    </div>

    <div class="tabel-asisten border p-2 rounded" style="width: 100%">
      <table id="dataTable" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Total Frekuensi</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data['asisten'] as $asisten) : ?>
                <tr>
                    <td><?= $asisten['nim']?></td>
                    <td><?= $asisten['nama']?></td>
                    <td><?= $asisten['email']?></td>
                    <td><?= $asisten['total_frekuensi']?></td>
                    <td>-</td>
                </tr>
            <?php endforeach;?>
        </tbody>
        <tfoot>
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Total Frekuensi</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
    </div>
</div>