<div class="content d-flex justify-content-around p-5 gap-3">
    <!-- List Dosen -->
    <div class="list-dosen mr-2 mb-3 w-100", style="max-width: 510px">
        <div class="card border-dark">
            <div class="d-flex justify-content-between card-header align-items-center">
                <div class="d-flex flex-column">
                    <h4>Dosen</h4>
                    <span class="jumlah-frekuensi"><?= $data['total_dosen']['total']?> Dosen</span>
                </div>
                <a href="<?= BASEURL;?>/AsistenDanDosen/dosenPage">Lihat semua</a>
            </div>
            <div class="card-body text-dark">
                <ul>
                    <?php foreach($data['dosen'] as $dosen) : ?>
                    <li class="mb-3">
                        <span class="nama-user"><?= $dosen['nama']?></span><br>
                        <span class="jumlah-frekuensi"><?= $dosen['total_frekuensi']?> Frekuensi</span>
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>

    <!-- List Asisten -->
    <div class="list-asisten mb-3 w-100", style="max-width: 510px">
        <div class="card border-dark">
            <div class="d-flex justify-content-between card-header align-items-center">
                <div class="d-flex flex-column">
                    <h4>Asisten</h4>
                    <span class="jumlah-frekuensi"><?= $data['total_asisten']['total']?> Asisten</span>
                </div>
                <a href="<?= BASEURL;?>/AsistenDanDosen/asistenPage">Lihat semua</a>
            </div>
            <div class="card-body text-dark">
                <ul>
                    <?php foreach($data['asisten'] as $asisten) : ?>
                    <li class="mb-3">
                        <span class="nama-user"><?= $asisten['nama']?></span><br>
                        <span class="jumlah-frekuensi"><?= $asisten['total_frekuensi']?> Frekuensi</span>
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>
</div>
