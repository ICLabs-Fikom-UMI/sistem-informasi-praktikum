<div class="content d-flex flex-column">
    <div class="tambah-lab d-flex justify-content-between mb-4 p-2">
        <div class="row">
            <div class="col-lg-6">
                <?php Flasher::flash(); ?>
            </div>
        </div>
        <button type="button" class="btn btn-primary" data-bs-dismis="modal" data-bs-toggle="modal" data-bs-target="#formAddLabModal">Tambah Laboratorium</button>
    </div>
    <div class="laboratorium-card">
        <div class="row d-flex align-items-stretch">
            <?php foreach($data['laboratorium'] as $lab) : ?>
            <div class="col-sm-4 mb-4 min-">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title d-flex justify-content-between p-2">
                            <h4><?= $lab['nama_laboratorium'];?></h4>
                            
                            <div class="icon-action d-flex">
                                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#deleteLabModal">
                                    <a href="<?= BASEURL?>/"><img src="<?= BASEURL;?>/icons/edit.svg" alt=""></a>
                                </button>
                                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#deleteLabModal">
                                    <img src="<?= BASEURL;?>/icons/delete.svg" alt="">
                                </button>
                            </div>
                        </div>
                        <div class="card-text d-flex justify-content-between p-2">
                            <span class="kapasitas-text">Kapasitas</span>
                            <span class="kapasitas-value text-bold"><?= $lab['kapasitas'];?> Orang</span>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach;?>
        </div>
    </div>
</div>

<!-- Modal Tambah -->
<div class="modal fade" id="formAddLabModal" tabindex="-1" role="dialog" aria-labelledby="formAddLabModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Laboratorium</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?= BASEURL; ?>/laboratorium/addlaboratorium" method="post">
          <input type="hidden" name="id" id="id">

          <div class="form-group">
            <label for="nama_laboratorium">Nama Laboratorium</label>
            <input type="text" class="form-control" id="nama_laboratorium" name="nama_laboratorium" autocomplete="off" required>
          </div>

          <div class="form-group">
            <label for="kapasitas">Kapastias</label>
            <input type="number" class="form-control" id="kapasitas" name="kapasitas" autocomplete="off">
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

<!-- Modal Konfirmasi Hapus Data -->
<div class="modal fade" id="deleteLabModal" tabindex="-1" aria-labelledby="deleteLabModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body text-center">
            <span>Apakah anda yakin ingin menghapus data ini?</span>
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-secondary w-25" data-bs-dismiss="modal">Close</button>
        <a href="<?= BASEURL?>/laboratorium/deletelaboratorium/<?= $lab['id_laboratorium']?>" class="btn btn-primary w-25">
            Ya
        </a>
      </div>
    </div>
  </div>
</div>