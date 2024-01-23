<div class="content">
    <div class="daftar-matkul d-flex flex-column mb-4 p-2">
        <span class="text-matkul mb-2">Mata Kuliah</span>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Pilih Mata Kuliah
            </button>
            <ul class="dropdown-menu">
                <li><button class="dropdown-item" type="button">Action</button></li>
                <li><button class="dropdown-item" type="button">Another action</button></li>
                <li><button class="dropdown-item" type="button">Something else here</button></li>
            </ul>
        </div>
    </div>
    <div class="frekuensi border p-2 rounded">
        <div class="data-frekuensi d-flex flex-row justify-content-between mb-4">
            <div class="column-1 d-flex flex-row gap-3">
                <div class="frek-header d-flex flex-column">
                    <span>Kode Matakuliah</span> 
                    <span>Nama Matakuliah</span> 
                    <span>Frekuensi</span> 
                    <span>Hari / Jam</span> 
                </div>
                <div class="frek-value d-flex flex-column">
                    <span>Kode Matakuliah</span> 
                    <span>Nama Matakuliah</span> 
                    <span>Frekuensi</span> 
                    <span>Hari / Jam</span> 
                </div>
            </div>
            <div class="column-2 d-flex flex-row gap-3">
                <div class="frek-header d-flex flex-column">
                    <span>Kode Matakuliah</span> 
                    <span>Nama Matakuliah</span> 
                    <span>Frekuensi</span> 
                    <span>Hari / Jam</span> 
                </div>
                <div class="frek-value d-flex flex-column">
                    <span>Kode Matakuliah</span> 
                    <span>Nama Matakuliah</span> 
                    <span>Frekuensi</span> 
                    <span>Hari / Jam</span> 
                </div>
            </div>
            <div class="column-2 d-flex align-items-center">
                <button type="button" class="btn btn-dark">Dark</button>
            </div>
        </div>
        <div class="nilai-frekuensi">
<table class="tabel-nilai">
    <thead>
        <tr>
            <th rowspan="2">No</th>
            <th rowspan="2">Stambuk</th>
            <th rowspan="2">Nama Mahasiswa</th>
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
                <td class="td-3"><input type="text" value="John Doe"></td>
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
    </div>
</div>