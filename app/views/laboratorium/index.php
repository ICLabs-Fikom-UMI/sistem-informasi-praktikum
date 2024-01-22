<div class="content">
    <div class="tambah-lab">
        <button type="button" class="btn btn-primary">Tambah Lab</button>
    </div>
    <div class="laboratorium-card">
        <div class="row d-flex align-items-stretch">
            <?php foreach($data['laboratorium'] as $lab) : ?>
            <div class="col-sm-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title d-flex justify-content-between p-2">
                            <h4><?= $lab['nama_laboratorium'];?></h4>
                            <button type="button" class="btn btn-primary">O</button>
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
