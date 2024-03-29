  <div class="container-fluid">
    <div class="row">
      <nav class="col-md-2 d-none d-md-block sidebar">
        <div class="sidebar-logo">
          <a href="<?= BASEURL?>/DaftarNilai">
            <img src="<?= BASEURL ?>/images/logo.png" alt="Logo SIPEMLA" />
          </a>
          <h5 class="link-sipemla">
            SIPRAK
          </h5>
        </div>
        <ul class="sidebar-menu" style="width: 200px">
          <li>
            <a href="<?= BASEURL?>/DaftarNilai"><img src="<?= BASEURL ?>/icons/daftar-nilai.svg" alt="Icon 1" />Daftar Nilai</a>
          </li>
          <?php if ($_SESSION['role_user'] != 'asisten') : ?>
          <li>
            <a href="<?= BASEURL?>/daftarperkuliahan"><img src="<?= BASEURL ?>/icons/data-frekuensi.svg" alt="Icon 1" />Daftar Perkuliahan</a>
          </li>
          <?php endif?>
          <?php if ($_SESSION['role_user'] == 'admin') : ?>
          <li>
            <a href="<?= BASEURL?>/AsistenDanDosen"><img src="<?= BASEURL ?>/icons/asisten-dan-dosen.svg" alt="Icon 1" />Asisten dan Dosen</a>
          </li>
          <li>
            <a href="<?= BASEURL?>/DataFrekuensi"><img src="<?= BASEURL ?>/icons/data-frekuensi.svg" alt="Icon 1" />Data Frekuensi</a>
          </li>
          <li>
            <a href="<?= BASEURL?>/Laboratorium"><img src="<?= BASEURL ?>/icons/laboratorium.svg" alt="Icon 1" />Laboratorium</a>
          </li>
          <li>
            <a href="<?= BASEURL?>/Settings"><img src="<?= BASEURL ?>/icons/settings.svg" alt="Icon 1" />Settings</a>
          </li>
          <?php endif?>
        </ul>
      </nav>