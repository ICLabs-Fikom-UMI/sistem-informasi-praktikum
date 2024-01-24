<div class="content">
    <div style="display: none;" id="selectedMatkul">selectedMatkul</div>
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
    <div class="frekuensi border p-2 rounded">
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
            <div class="column-2 d-flex align-items-center">
                <button type="button" class="btn btn-dark">Kirim</button>
            </div>
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
                <?php for ($i = 0; $i < 25; $i++) { ?>
                    <tr>
                        <td><?= $i+1;?></td>
                        <td><input type="text" value="123456"></td>
                        <td class="td-3"><input type="text" value="Muhammad Ahmad Rendi"></td>
                        <td><input type="text" value="TI01"></td>
                        <!-- Kolom JUMLAH PERTEMUAN -->
                        <?php for ($j = 0; $j < 10; $j++) { ?>
                            <td><input type="text" value="H"></td>
                        <?php } ?>
                        <!-- Kolom NILAI TUGAS -->
                        <?php for ($k = 0; $k < 8; $k++) { ?>
                            <td><input type="number" value="85"></td>
                        <?php } ?>
                        <td><input type="number" value="82"></td>
                        <td><input type="number" value="82"></td>
                    </tr>
                <?php } ?>
                <!-- Tambahkan baris sesuai dengan data mahasiswa yang ada -->
                <tr>
                    <!-- ... -->
                </tr>
            </tbody>
        </table>

        </div>
        <div class="line-stright"></div>
        <?php endforeach;?>
    </div>
</div>