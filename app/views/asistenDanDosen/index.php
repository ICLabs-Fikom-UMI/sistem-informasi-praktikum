<div class="content d-flex justify-content-around">
    <!-- List Dosen -->
    <div class="list-dosen mr-2">
        <div class="card border-dark mb-3" style="max-width: 18rem;">
            <div class="d-flex justify-content-between card-header align-items-center">
                <span>Header Dosen</span>
                <a href="<?= BASEURL;?>/AsistenDanDosen/dosenPage">Lihat semua</a>
            </div>
            <div class="card-body text-dark">
                <ul>
                    <?php foreach($data['dosen'] as $dosen) : ?>
                    <li class="mb-3">
                        <span class="nama-user"><?= $dosen['nama']?></span><br>
                        <span class="jumlah-frekuensi">Jumlah frekuensi</span>
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>

    <!-- List Asisten -->
    <div class="list-asisten">
        <div class="card border-dark mb-3" style="max-width: 18rem;">
            <div class="d-flex justify-content-between card-header align-items-center">
                <span>Header Asisten</span>
                <a href="<?= BASEURL;?>/AsistenDanDosen/asistenPage">Lihat semua</a>
            </div>
            <div class="card-body text-dark">
                <ul>
                    <?php foreach($data['asisten'] as $asisten) : ?>
                    <li class="mb-3">
                        <span class="nama-user"><?= $asisten['nama']?></span><br>
                        <span class="jumlah-frekuensi">Jumlah frekuensi</span>
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>
</div>
