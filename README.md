# SIPRAK - Sistem Informasi Praktikum
> [!NOTE]
> Nasrullah - 13020210134


### Deskripsi Aplikasi
- Aplikasi ini muncul dari kekurangan-kekurangan sistem yang telah ada sebelumnya, seperti semua asisten dapat mengedit penilaian frekuensi dari asisten lain, pembobotan nilai yang masih manual dan penetapan status nilai fix atau belum yang masih manual yang nantinya akan dikirim ke masing-masing dosen yang mengampu.
- Mempermudah pengelolaan penilaian praktikum.
- PHP, jQuery, Bootstrap.


### Fitur MVP Aplikasi
- Pengisian Nilai Praktikum
- Generate Jadwal Tiap Frekuensi
- Pembobotan Nilai Akhir


### Penjelasan Mengenai Arsitektur MVC
app\
├── config\
│   └── config.php\
├── controllers\
│   ├── AsistenDanDosen.php\
│   ├── DaftarNilai.php\
│   ├── DataFrekuensi.php\
│   ├── Laboratorium.php\
│   ├── Login.php\
│   └── Settings.php\
├── core\
│   ├── App.php\
│   ├── Controller.php\
│   ├── Database.php\
│   └── Flasher.php\
├── init.php\
├── models\
│   ├── Asisten_model.php\
│   ├── DataFrekuensi_model.php\
│   ├── Dosen_model.php\
│   ├── Laboratorium_model.php\
│   └── Login_model.php\
└── views\
    ├── asistenDanDosen\
    │   ├── asistenPage.php\
    │   ├── dosenPage.php\
    │   └── index.php\
    ├── daftarNilai\
    │   └── index.php\
    ├── dataFrekuensi\
    │   └── index.php\
    ├── laboratorium\
    │   └── index.php\
    ├── login\
    │   ├── change-default-password.php\
    │   └── index.php\
    ├── settings\
    │   └── index.php\
    └── templates\
        ├── footer.php
        ├── header.php\
        ├── headerProfile.php\
        └── sidebar.php\

### LINK UML [Click here](https://drive.google.com/file/d/1f8IS6r13hGTsoHEPrlGKfqRiTcy7Nvp6/view?usp=sharing)
### LINK ERD [Click here](https://drive.google.com/file/d/1DbKUbbk48IbHFtLxFLOD0VclwGNlEo5K/view?usp=sharing)
### LINK UI/UX [Click here](https://drive.google.com/drive/folders/1Svr03cEgHT1-8UEMbmAvpEhgo3GpzpIS?usp=sharing)


> [!CAUTION]
> PHP VERSION 8.3.2