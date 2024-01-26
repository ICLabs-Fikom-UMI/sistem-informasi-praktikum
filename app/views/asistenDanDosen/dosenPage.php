<div class="content d-flex flex-column">
    <div class="tambah-dosen d-flex justify-content-between mb-4 p-2">
        <div class="row">
            <div class="col-lg-6">
                <?php Flasher::flash(); ?>
            </div>
        </div>
        <button type="button" class="btn btn-primary" data-bs-dismis="modal" data-bs-toggle="modal" data-bs-target="#formModal">Tambah Dosen</button>
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
                            <a href="<?= BASEURL?>/asistendandosen/deletedosen/<?= $dosen['id_user']?>"><img src="<?= BASEURL;?>/icons/delete.svg" alt=""></a>
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

<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Dan Akun Dosen</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/asistendandosen/adddosen" method="post">
          <input type="hidden" name="id" id="id">
          <div class="form-group">
            <label for="nidn">NIDN</label>
            <input type="number" class="form-control" id="nidn" name="nidn" autocomplete="off" required>
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