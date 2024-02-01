$(document).ready(function() {
  function hitungNilaiAkhir() {
    $('.tabel-nilai tbody tr').each(function() {
      var totalPertemuan = 0;
      var totalTugas = 0;

      $(this).find('td:gt(3):lt(10)').each(function() {
        var nilaiPertemuan = ($(this).find('input').length > 0) ? $(this).find('input').val() == 'H' : 0;
        totalPertemuan += nilaiPertemuan;
      });
      
      $(this).find('td:gt(13):lt(8)').each(function() {
        var nilaiTugas = ($(this).find('input').length > 0) ? parseFloat($(this).find('input').val()) : parseFloat($(this).text());
        totalTugas += nilaiTugas;
      });

      var bobot_kehadiran = 0.4;
      var bobot_tugas = 0.2;
      var bobot_mid = 0.2;
      var bobot_project = 0.2;
      
      var kehadiran = (totalPertemuan / 10) * 100;
      var tugas = (totalTugas / 8);
      var mid = ($(this).find('td:eq(21)').find('input').length > 0) ? parseFloat($(this).find('td:eq(21)').find('input').val()) : parseFloat($(this).find('td:eq(21)').text());
      var project = ($(this).find('td:eq(22)').find('input').length > 0) ? parseFloat($(this).find('td:eq(22)').find('input').val()) : parseFloat($(this).find('td:eq(22)').text());
      
      var nilaiAkhir = (kehadiran * bobot_kehadiran) + (tugas * bobot_tugas) + (mid * bobot_mid) + (project * bobot_project);

      $(this).find('td:last').text(nilaiAkhir.toFixed(2));
    });
  }

  hitungNilaiAkhir();


  $('#btn_change_pass').on('click', function() {
      console.log('halo');
  });

  $('#btnAddDataDosen').on('click', function() {
    $('#formModalLabel').html('Tambah Data dan Akun Dosen');
    $('.modal-footer button[type=submit]').html('Tambah Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/adddosen');
    $('#nidn').val(null);
    $('#nama').val('');
    $('#email').val('');
  });

  $('.btnEditDataDosen').on('click', function() {
    $('#formModalLabel').html('Edit Data Dosen');
    $('.modal-footer button[type=submit]').html('Edit Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/editdata/Dosen');

    const id_user = $(this).data('id');
    console.log(id_user);
    
    $.ajax({
      url: 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/getdatabyiduser/dosen',
      data: {id : id_user},
      method: 'post',
      dataType: 'json',
      success: function(data) {
        $('#nidn').val(data.nidn);
        $('#nama').val(data.nama);
        $('#email').val(data.email);
        $('#id').val(data.id_user);
      }
    });
  });

  $('#btnAddDataAsisten').on('click', function() {
    $('#formModalLabel').html('Tambah Data dan Akun Asisten');
    $('.modal-footer button[type=submit]').html('Tambah Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/addasisten');
    $('#nim').val(null);
    $('#nama').val('');
    $('#email').val('');
  });

  $('.btnEditDataAsisten').on('click', function() {
    $('#formModalLabel').html('Edit Data Asisten');
    $('.modal-footer button[type=submit]').html('Edit Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/editdata/Asisten');

    const id_user = $(this).data('id');
    console.log(id_user);
    
    $.ajax({
      url: 'https://localhost/sistem-informasi-praktikum/public/asistendandosen/getdatabyiduser/Asisten',
      data: {id : id_user},
      method: 'post',
      dataType: 'json',
      success: function(data) {
        $('#nim').val(data.nim);
        $('#nama').val(data.nama);
        $('#email').val(data.email);
        $('#id').val(data.id_user);
      }
    });
  });

  $('#btnAddLab').on('click', function() {
    $('#formModalLabel').html('Tambah Laboratorium');
    $('.modal-footer button[type=submit]').html('Tambah Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/laboratorium/addlaboratorium');
    $('#nama_laboratorium').val('');
    $('#kapasitas').val(null);
  });

  $('.btnEditLab').on('click', function() {
    $('#formModalLabel').html('Edit Data Laboratorium');
    $('.modal-footer button[type=submit]').html('Edit Data');
    $('.modal-body form').attr('action', 'https://localhost/sistem-informasi-praktikum/public/laboratorium/editdata');

    const id = $(this).data('id');
    console.log(id);

    $.ajax({
      url: 'https://localhost/sistem-informasi-praktikum/public/laboratorium/getdatabyid',
      data: {id : id},
      method: 'post',
      dataType: 'json',
      success: function(data) {
        $('#nama_laboratorium').val(data.nama_laboratorium);
        $('#kapasitas').val(data.kapasitas);
        $('#id').val(data.id_laboratorium);
      }
    });
  });
});