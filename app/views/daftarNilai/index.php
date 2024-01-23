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
                        <th>1</th> <th>2</th> <th>3</th> <th>4</th> <th>5</th> <th>6</th> <th>7</th> <th>8</th> <th>9</th> <th>10</th>
                        <!-- Kolom untuk NILAI TUGAS -->
                        <th>1</th> <th>2</th> <th>3</th> <th>4</th> <th>5</th> <th>6</th> <th>7</th> <th>8</th>
                    </tr>
                </thead>
                <tbody>
                    <?php for ($i = 0; $i < 25; $i++) {?>
                    <tr>
                        <td>1</td>
                        <td>123456</td>
                        <td class="td-3">John Doe</td>
                        <td>TI01</td>
                        <!-- Kolom JUMLAH PERTEMUAN -->
                        <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td> <td>H</td>
                        <!-- Kolom NILAI TUGAS -->
                        <td>85</td> <td>92</td> <td>78</td> <td>95</td> <td>88</td> <td>90</td> <td>82</td> <td>89</td> <td>89</td> <td>89</td>
                    </tr>
                    <?php };?>
                    <!-- Tambahkan baris sesuai dengan data mahasiswa yang ada -->
                    <tr>
                        <!-- ... -->
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>