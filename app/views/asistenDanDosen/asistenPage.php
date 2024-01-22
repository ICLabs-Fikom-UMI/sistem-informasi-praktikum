
<div class="content d-flex">
    <div class="tambah-asisten">
    </div>
    <div class="tabel-asisten">
      <table id="example" class="table table-striped" style="width:100%">
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
                    <td>-</td>
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