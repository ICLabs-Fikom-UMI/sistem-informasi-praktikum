
<div class="content d-flex flex-column">
    <div class="tambah-asisten d-flex justify-content-between mb-4 p-2">
        <div class="row">
            <div class="col-lg-6">
                <?php Flasher::flash(); ?>
            </div>
        </div>
        <button type="button" class="btn btn-primary" data-bs-dismis="modal" data-bs-toggle="modal" data-bs-target="#formAddAsistenModal">Tambah Asisten</button>
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
                    <td>
                        <div class="d-flex flex-row align-items-center gap-3">
                            <a href="<?= BASEURL?>/"><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                            <a class="btn" role="button" onclick="deleteData('asistendandosen', 'deleteasisten', '<?= $asisten['id_user']?>')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
                            <a class="btn" role="button" onclick="resetPassword('asistendandosen', 'resetpassword', '<?= $asisten['id_user']?>', 'asisten')" data-bs-toggle="modal" data-bs-target="#modalConfirm"><img src="<?= BASEURL;?>/icons/reset.svg" alt=""></a>
                        </div>
                    </td>
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


<!-- Modal -->
<div class="modal fade" id="formAddAsistenModal" tabindex="-1" role="dialog" aria-labelledby="formAddAsistenModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Dan Akun Asisten</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/asistendandosen/addasisten" method="post">
          <input type="hidden" name="id" id="id">
          <div class="form-group">
            <label for="nim">NIM</label>
            <input type="number" class="form-control" id="nim" name="nim" autocomplete="off" required>
          </div>

          <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" autocomplete="off">
          </div>

          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="email@umi.ac.id">
          </div>

      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>
      </div>
    </div>
  </div>
</div>