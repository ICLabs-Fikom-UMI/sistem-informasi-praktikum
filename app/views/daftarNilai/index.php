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
                    <th rowspan="2" style="width: 125px">Stambuk</th>
                    <th rowspan="2" style="width: 300px">Nama Mahasiswa</th>
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
                    $no = 1;
                    foreach($data['penilaian'] as $penilaian):
                        if ($penilaian['id_frekuensi'] != $frek['id_frekuensi'])
                            continue;
                ?>
                    <tr>
                        <td><?= $no++?></td>
                        <td><?= $penilaian['nim']?></td>
                        <td style='text-align: left;'><?= $penilaian['nama']?></td>
                        <td><?= $penilaian['kelas']?></td>

                        <!-- Kehadiran 1 - 10 -->
                        <!-- TODO: Buatkan ID dan CLASS yang cocok dan berguna -->
                        <?php for ($i = 1; $i <= 10; $i++): ?>
                            <td>
                                <?php if ($_SESSION['role_user'] != 'dosen'): ?>
                                    <input id="kehadiran-<?= $i?>-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           class="penilaian kehadiran kehadiran-<?= $i?> id-penilaian-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           type='text'
                                           value='<?= $penilaian["kehadiran_$i"]; ?>'>
                                <?php else: ?>
                                    <?= $penilaian["kehadiran_$i"]; ?>
                                <?php endif; ?>
                            </td>
                        <?php endfor; ?>

                        <!-- Tugas 1 - 8 -->
                        <?php for ($i = 1; $i <= 8; $i++): ?>
                            <td>
                                <?php if ($_SESSION['role_user'] != 'dosen'): ?>
                                    <input id="tugas-<?= $i?>-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           class="penilaian tugas tugas-<?= $i?> id-penilaian-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           type='text'
                                           value='<?= $penilaian["tugas_$i"]; ?>'>
                                <?php else: ?>
                                    <?= $penilaian["tugas_$i"]; ?>
                                <?php endif; ?>
                            </td>
                        <?php endfor; ?>

                        <td>
                            <?php if ($_SESSION['role_user'] != 'dosen'): ?>
                                    <input id="mid-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           class="penilaian mid"
                                           type='text'
                                           value='<?= $penilaian["mid"]; ?>'>
                            <?php else: ?>
                                <?= $penilaian['mid']; ?>
                            <?php endif; ?>
                        </td>

                        <td>
                            <?php if ($_SESSION['role_user'] != 'dosen'): ?>
                                    <input id="project-<?= $penilaian['id_penilaian_frekuensi']?>"
                                           class="penilaian project"
                                           type='text'
                                           value='<?= $penilaian["project"]; ?>'>
                            <?php else: ?>
                                <?= $penilaian['project']; ?>
                            <?php endif; ?>
                        </td>

                        <td></td>
                    </tr>
                <?php endforeach;?>
            </tbody>
        </table>

        </div>
        <div class="line-stright"></div>
        <?php endforeach;?>
    </div>
</div>