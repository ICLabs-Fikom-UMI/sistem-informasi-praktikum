$(document).ready(function() {
  // Fungsi untuk menghitung nilai akhir
  function hitungNilaiAkhir() {
    $('.tabel-nilai tbody tr').each(function() {
      var totalPertemuan = 0;
      var totalTugas = 0;

      // Menghitung total pertemuan
      $(this).find('td:gt(3):lt(10)').each(function() {
        var nilaiPertemuan = ($(this).find('input').length > 0) ? $(this).find('input').val() == 'H' : 0;
        totalPertemuan += nilaiPertemuan;
      });
      
      // Menghitung total tugas
      $(this).find('td:gt(13):lt(8)').each(function() {
        var nilaiTugas = ($(this).find('input').length > 0) ? parseFloat($(this).find('input').val()) : parseFloat($(this).text());
        totalTugas += nilaiTugas;
      });
      
      // Menghitung nilai akhir
      var kehadiran = (totalPertemuan / 10 * 100) * 0.4;
      var tugas = (totalTugas / 8) * 0.2;
      var mid = ($(this).find('td:eq(21)').find('input').length > 0) ? parseFloat($(this).find('td:eq(21)').find('input').val()) : parseFloat($(this).find('td:eq(21)').text());
      var project = ($(this).find('td:eq(22)').find('input').length > 0) ? parseFloat($(this).find('td:eq(22)').find('input').val()) : parseFloat($(this).find('td:eq(22)').text());
      
      var nilaiAkhir = kehadiran + tugas + (mid * 0.20) + (project * 0.20);
      console.log(mid * 0.2, project * 0.2);
      // Menampilkan nilai akhir pada kolom terakhir
      $(this).find('td:last').text(nilaiAkhir.toFixed(2));
    });
  }

  // Panggil fungsi hitungNilaiAkhir saat dokumen telah siap
  hitungNilaiAkhir();
});