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
      
      var kehadiran = (totalPertemuan / 10 * 100) * 0.4;
      var tugas = (totalTugas / 8) * 0.2;
      var mid = ($(this).find('td:eq(21)').find('input').length > 0) ? parseFloat($(this).find('td:eq(21)').find('input').val()) : parseFloat($(this).find('td:eq(21)').text());
      var project = ($(this).find('td:eq(22)').find('input').length > 0) ? parseFloat($(this).find('td:eq(22)').find('input').val()) : parseFloat($(this).find('td:eq(22)').text());
      
      var nilaiAkhir = kehadiran + tugas + (mid * 0.20) + (project * 0.20);
      console.log(mid * 0.2, project * 0.2);

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
    $('#nidn').val();
    $('#nama').val('');
    $('#email').val('');
  });

  $('#btnEditDataDosen').on('click', function() {
    $('#formModalLabel').html('Edit Data Dosen');
    $('.modal-footer button[type=submit]').html('Edit Data');
    $('.modal-body form').attr('action', 'http://localhost/sistem-informasi-praktikum/public/asistendandosen/editdata/dosen');

    const id_user = $(this).data('id');
    console.log('halo');
    
    $.ajax({
      url: 'http://localhost/sistem-informasi-praktikum/public/asistendandosen/getdatabyiduser/dosen',
      data: {id: id_user},
      method: 'post',
      dataType: 'json',
      success: function(data) {
        console.log('halo');
        // $('#nidn').val(data.nidn);
        // $('#nama').val(data.nama);
        // $('#email').val(data.email);
        // $('#id').val(data.id_dosen);
      }
    });

  });

});