<div class="addFrekuensi">
    <div class="container d-flex flex-row justify-content-center gap-3">

        <!-- Start Formulir Pendaftaran -->
        <div class="frekuensi flex-grow-1 w-50 p-2">
            <div class="top mb-5">
                <p class="card-title text-secondary">Masukkan Data Frekuensi</p>
            </div>
            <form action="database/insert.php" method="post">
                <div class="mb-3">
                    <label class="form-label" for="namaLengkap">NAMA LENGKAP</label>
                    <input class="form-control" name="namaLengkap" required="true" type="text" id="namaLengkap" placeholder="Lengkap Kamu">
                </div>
                <div class="mb-3 justify-content-center">
                    <button type="submit" class="btn btn-primary submit-form">Submit</button>
                </div>
            </form>
        </div>
        <!-- End Formulir Pendaftaran -->

        <!-- Start List Pendaftar -->
        <div class="data-mahasiswa w-50 p-2">
            <div class="top mb-5">
                <p>List Pendaftar</p>
            </div>
            <table class="table-data-mahasiswa">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Kelas</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>Class A</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane Doe</td>
                    <td>Class B</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Bob Smith</td>
                    <td>Class C</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Alice Johnson</td>
                    <td>Class A</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Charlie Brown</td>
                    <td>Class B</td>
                </tr>
                </tbody>
            </table>
        </div>

        <!-- End List Pendaftar -->

    </div>
</div>