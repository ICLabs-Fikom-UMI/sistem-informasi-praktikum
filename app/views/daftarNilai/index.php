<div class="content">
    <button class="btn btn-primary btnExport">Export to Excel</button>
    <?php if($_SESSION['role_user'] != 'dosen') {?>
    <div class="daftar-matkul d-flex flex-column mb-4 p-2">
        <span class="text-matkul mb-2">Mata Kuliah</span>
        <div class="dropdown">
            <button id="dropdownListMatkul" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                <?php
                    $dropdown_matkul = $data['frekuensi'][0]['nama_matkul'];
                    echo (isset($dropdown_matkul) ? $dropdown_matkul : 'Pilih Mata Kuliah');
                ?>
            </button>
            <ul class="dropdown-menu">
                <?php foreach($data['mata_kuliah'] as $matkul) : ?>
                <li>
                    <a href="<?= BASEURL;?>/daftarnilai/selectMatkul/<?= $matkul['id_matkul']?>" class="dropdown-item dropdown-item-data" type="button"><?= $matkul['nama_matkul'];?></a>
                </li>
                <?php endforeach;?>
            </ul>
        </div>
    </div>
    <?php }?>
    <div class="frekuensi border p-2 rounded" <?php if ($_SESSION['role_user'] == 'dosen') echo 'style="max-height: calc(100vh - 130px)"'?>>
        <?php foreach($data['frekuensi'] as $frek) :?>
        <div class="data-frekuensi d-flex flex-row justify-content-between mb-4">
            <div class="column-1 d-flex flex-row gap-3">
                <div class="frek-header d-flex flex-column">
                    <span>Kode Matakuliah</span> 
                    <span>Nama Matakuliah</span> 
                    <span>Frekuensi</span> 
                    <span>Hari / Jam</span> 
                </div>
                <div class="frek-value d-flex flex-column">
                    <span><?= $frek['kode_matkul']?></span> 
                    <span><?= $frek['nama_matkul']?></span> 
                    <span><?= $frek['kode_frekuensi']?></span> 
                    <span><?= $frek['hari'] . ', ' . $frek['jam_mulai'] . ' - ' . $frek['jam_selesai'];?></span>
                </div>
            </div>
            <div class="column-2 d-flex flex-row gap-3">
                <div class="frek-header d-flex flex-column">
                    <span>Ruangan</span> 
                    <span>Dosen</span> 
                    <span>Asisten 1</span> 
                    <span>Asisten 2</span> 
                </div>
                <div class="frek-value d-flex flex-column">
                    <span><?= $frek['nama_laboratorium']?></span> 
                    <span><?= $frek['nama_dosen']?></span> 
                    <span><?= $frek['asisten1']?></span> 
                    <span><?= $frek['asisten2']?></span> 
                </div>
            </div>
            <?php if($_SESSION['role_user'] != 'dosen') {?>
            <div class="column-2 d-flex align-items-center">
                <a href="<?= BASEURL;?>/daftarnilai/changeStatus/<?= $frek['id_frekuensi'];?>" type="button" class="btn btn-dark" onclick="return confirm('yakin?');"><?= ($frek['status'] === "Belum" ? "Kirim": "Batalkan")?></a>
            </div>
            <?php }?>
        </div>
        <div class="nilai-frekuensi">
        <table class="tabel-nilai">
            <thead>
                <tr>
                    <th rowspan="2">No</th>
                    <th rowspan="2">Stambuk</th>
                    <th rowspan="2"">Nama Mahasiswa</th>
                    <th rowspan="2">Kelas</th>
                    <th colspan="10">Jumlah Pertemuan</th>
                    <th colspan="8">Nilai Tugas</th>
                    <th rowspan="2">MID</th>
                    <th rowspan="2">Project</th>
                    <th rowspan="2">Nilai Akhir</th>
                </tr>
                <tr>
                    <!-- Kolom untuk JUMLAH PERTEMUAN -->
                    <?php for ($i = 1; $i <= 10; $i++) { ?>
                        <th><?php echo $i; ?></th>
                    <?php } ?>
                    <!-- Kolom untuk NILAI TUGAS -->
                    <?php for ($i = 1; $i <= 8; $i++) { ?>
                        <th><?php echo $i; ?></th>
                    <?php } ?>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach($data['penilaian'] as $penilaian):
                ?>
                    <tr>
                        <?php foreach(array_values($penilaian) as $values):?>
                            <td><?= $values?></td>
                        <?php endforeach;?>
                    </tr>
                <?php endforeach;?>
            </tbody>
        </table>

        </div>
        <div class="line-stright"></div>
        <?php endforeach;?>
    </div>
</div>