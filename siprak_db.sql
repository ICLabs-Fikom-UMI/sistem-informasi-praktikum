-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 10:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siprak_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `id_user`, `nama`, `email`) VALUES
(1, 1, 'nama admin', 'admin@umi.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `asisten`
--

CREATE TABLE `asisten` (
  `id_asisten` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nim` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `asisten`
--

INSERT INTO `asisten` (`id_asisten`, `id_user`, `nim`, `email`, `nama`) VALUES
(1, 43, '13020210242', '13020210242@umi.ac.id', 'Nirmala'),
(2, 44, '13120210008', '13120210008@umi.ac.id', 'Muhammad Akbar'),
(3, 45, '13020210287', '13020210287@umi.ac.id', 'Athar Fathana Rakasyah'),
(4, 46, '13020210023', '13020210023@umi.ac.id', 'Annisa Pratama Putri'),
(5, 47, '13020210066', '13020210066@umi.ac.id', 'Nurul Azmi'),
(6, 48, '13020210205', '13020210205@umi.ac.id', 'Naufal Abiyyu Supriadi'),
(7, 49, '13020210134', '13020210134@umi.ac.id', 'Nasrullah'),
(8, 50, '13020210048', '13020210048@umi.ac.id', 'Ahmad Rendi'),
(9, 51, '13120210005', '13120210005@umi.ac.id', 'Furqon Fatahillah'),
(10, 52, '13020200103', '13020200103@umi.ac.id', 'Adam Adnan'),
(11, 53, '13120210004', '13120210004@umi.ac.id', 'Muhammad Dani Arya Putra'),
(12, 54, '13020200318', '13020200318@umi.ac.id', 'As\'syahrin Nanda'),
(13, 55, '13020210053', '13020210053@umi.ac.id', 'Imran Afdillah Dahlan');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `id_user`, `nidn`, `email`, `nama`) VALUES
(1, 3, '123456789', 'dosen@gmail.com', 'nama dosen'),
(2, 4, '919027301', 'purwansyah@umi.ac.id', 'Purnawansyah, S.Kom., M.Kom.'),
(3, 5, '908089202', 'aulfah@umi.ac.id', 'A. Ulfah tenripada, S.Kom.,M.Kom.'),
(4, 6, '918109501', 'sittirahmah@umi.ac.id', 'Sitti Rahmah Jabir, S.M.,M.Sc.'),
(5, 7, '907018602', 'wistianiastuti@umi.ac.id', 'Wistiani Astuti, S.Kom.'),
(6, 8, '919018501', 'sthajrahmansyur@umi.ac.id', 'St. Hajrah Mansyur, S.Kom.,M.Cs'),
(7, 9, '922067801', 'hadrianaiddas@umi.ac.id', 'Hadriana Iddas, S.T.,M.T.'),
(8, 10, '920107601', 'muhaliyazidmude@umi.ac.id', 'Muh. Aliyazid Mude, S.Kom.,M.Kom.'),
(9, 11, '926048704', 'syahrulmubarak@umi.ac.id', 'Syahrul Mubarak Abdullah, S.Kom.,M.Kom.'),
(10, 12, '919056501', 'ramdansatra@umi.ac.id', 'Ramdan Satra, S.Kom.,M.Kom.'),
(11, 13, '911039301', 'ramdaniah@umi.ac.id', 'Ramdaniah, S.Kom.,M.T.'),
(12, 14, '906078701', 'mardiyyahhasnawi@umi.ac.id', 'Mardiyyah Hasnawi, S.Kom.,M.T.'),
(13, 15, '924069001', 'herdianti@umi.ac.id', 'Herdianti, S.Si.,M.Eng.'),
(14, 16, '908099401', 'andiwidya@umi.ac.id', 'Andi Widya Mufila Gaffar, S.T.,M.Kom.'),
(15, 17, '917068601', 'dedyatmajaya@umi.ac.id', 'Dedy Atmajaya, S.Kom.,M.Eng.'),
(16, 18, '428077401', 'drdollyindra@umi.ac.id', 'Dr. Dolly Indra, S.Kom.,MM.Si.'),
(17, 19, '922088701', 'siskaanraeni@umi.ac.id', 'Siska Anraeni, S.Kom.,M.T.'),
(18, 20, '906128504', 'erickirawadi@umi.ac.id', 'Erick Irawadi Alwi, S.Kom.,M.Eng.'),
(19, 21, '924127806', 'syamsulbahri@umi.ac.id', 'Syamsul Bahri, S.T.,M.T.'),
(20, 22, '925067803', 'rosmiyani@umi.ac.id', 'Rosmi Yani Amran, S.Kom.,M.Eng.'),
(21, 23, '2107057202', 'ihwanaasad@umi.ac.id', 'Dr. Ihwana As\'Ad, S.Ag.,M.Sc.,Ph.D.'),
(22, 24, '924049303', 'amaliahfaradibah@umi.ac.id', 'Amaliah Faradibah, S.Kom.,M.Kom.'),
(23, 25, '911098201', 'suwitopomalingo@umi.ac.id', 'Suwito Pomalingo, S.Kom.,M.Kom.'),
(24, 26, '909029203', 'muhammadarfahas@umi.ac.id', 'Muhammad Arfah Asis, S.Kom.,M.T.'),
(25, 27, '922078801', 'fitriyaniumar@umi.ac.id', 'Fitriyani Umar, S.Si.,M.Eng.'),
(26, 28, '920098801', 'huzainazis@umi.ac.id', 'Huzain Azis, S.Kom.,M.Cs.'),
(27, 29, '921018902', 'lutfibudiilmawan@umi.ac.id', 'Lutfi Budi Ilmawan, S.Kom.,M.Cs.'),
(28, 30, '931018001', 'abdulrachmanmanga@umi.ac.id', 'Abdul Rachman Manga, S.Kom.,M.T.'),
(29, 31, '922118003', 'lukmansyafie@umi.ac.id', 'Ir. Lukman Syafie, M.Si., MTA.'),
(30, 32, '910126901', 'tasrifhasanuddin@umi.ac.id', 'Tasrif Hasanuddin, S.T.,M.Cs.'),
(31, 33, '913038506', 'herman@umi.ac.id', 'Herman, S.Kom.,M.Sc.'),
(32, 34, '911098601', 'farniwatifattah@umi.ac.id', 'Farniwati Fattah, S.T.,M.T.'),
(33, 35, '915068601', 'niakurniati@umi.ac.id', 'Nia Kurniati, S.Kom.,M.Kom.'),
(34, 36, '915028503', 'irawati@umi.ac.id', 'Irawati, S.Kom.,M.T.'),
(35, 37, '906048205', 'lilisnurhayati@umi.ac.id', 'Lilis Nur Hayati, S.Kom., M.Eng.'),
(36, 38, '901019302', 'dewiwidyawati@umi.ac.id', 'Dewi Widyawati, S.Kom.,M.Kom.'),
(37, 39, '924048501', 'sugiarti@umi.ac.id', 'Sugiarti, S.Kom.,M.Kom.'),
(38, 40, '922078101', 'yulitasalim@umi.ac.id', 'Yulita Salim, S.Kom.,M.T.'),
(39, 41, '31056905', 'hjharlindal@umi.ac.id', 'Dr. Hj. Harlinda L., S.Kom.,M.M.,M.Kom'),
(40, 42, '916108403', 'poetrilokapitasari@umi.ac.id', 'Poetri Lestari Lokapitasari Belluano, S.Kom.,M.T');

-- --------------------------------------------------------

--
-- Table structure for table `frekuensi`
--

CREATE TABLE `frekuensi` (
  `id_frekuensi` int(11) NOT NULL,
  `kode_frekuensi` varchar(20) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_asisten1` int(11) DEFAULT NULL,
  `id_asisten2` int(11) DEFAULT NULL,
  `id_laboratorium` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `status` enum('Belum','Selesai') DEFAULT 'Belum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `frekuensi`
--

INSERT INTO `frekuensi` (`id_frekuensi`, `kode_frekuensi`, `id_dosen`, `id_asisten1`, `id_asisten2`, `id_laboratorium`, `id_matkul`, `hari`, `jam_mulai`, `jam_selesai`, `status`) VALUES
(1, 'TI_ALPRO-1', 27, 4, 2, 1, 10, 'Kamis', '08:00:00', '10:00:00', 'Belum'),
(2, 'TI_ALPRO-2', 27, 8, 7, 2, 10, 'Kamis', '08:00:00', '10:00:00', 'Belum'),
(3, 'TI_ALPRO-3', 27, 13, 5, 1, 10, 'Kamis', '13:00:00', '15:00:00', 'Belum'),
(4, 'TI_ALPRO-4', 27, 10, 9, 2, 10, 'Kamis', '13:00:00', '15:00:00', 'Belum'),
(5, 'TI_ALPRO-5', 31, 3, 10, 1, 11, 'Senin', '10:00:00', '12:00:00', 'Belum'),
(6, 'TI_PTI-1', 28, 3, 8, 2, 12, 'Sabtu', '08:00:00', '10:00:00', 'Belum'),
(7, 'TI_PTI-2', 28, 6, 4, 1, 12, 'Sabtu', '08:00:00', '10:00:00', 'Belum'),
(8, 'TI_PTI-3', 28, 1, 6, 2, 12, 'Jumat', '10:00:00', '12:00:00', 'Belum'),
(9, 'TI_PTI-4', 29, 3, 7, 1, 12, 'Jumat', '10:00:00', '12:00:00', 'Belum'),
(10, 'TI_PTI-5', 30, 1, 7, 1, 12, 'Rabu', '08:00:00', '10:00:00', 'Belum'),
(11, 'TI_SD-1', 27, 8, 5, 3, 13, 'Senin', '16:00:00', '18:00:00', 'Belum'),
(12, 'TI_SD-2', 27, 2, 4, 4, 13, 'Senin', '16:00:00', '18:00:00', 'Belum'),
(13, 'TI_SD-3', 27, 12, 10, 3, 13, 'Rabu', '13:00:00', '15:00:00', 'Belum'),
(14, 'TI_SD-5', 32, 2, 4, 3, 13, 'Senin', '08:00:00', '10:00:00', 'Belum'),
(15, 'TI_SD-6', 32, 2, 9, 4, 13, 'Senin', '08:00:00', '10:00:00', 'Belum'),
(16, 'TI_BD2-1', 34, 3, 11, 3, 14, 'Kamis', '13:00:00', '15:00:00', 'Belum'),
(17, 'TI_BD2-2', 34, 7, 12, 4, 14, 'Kamis', '13:00:00', '15:00:00', 'Belum'),
(18, 'TI_BD2-3', 34, 4, 4, 3, 14, 'Senin', '13:00:00', '15:00:00', 'Belum'),
(19, 'TI_BD2-4', 34, 10, 1, 4, 14, 'Senin', '13:00:00', '15:00:00', 'Belum'),
(20, 'TI_BD2-5', 34, 11, 4, 3, 14, 'Kamis', '16:00:00', '18:00:00', 'Belum'),
(21, 'TI_BD2-6', 34, 7, 11, 4, 14, 'Kamis', '16:00:00', '18:00:00', 'Belum'),
(22, 'TI_MICRO-1', 35, 10, 4, 5, 15, 'Selasa', '16:00:00', '18:00:00', 'Belum'),
(23, 'TI_MICRO-2', 35, 1, 5, 6, 15, 'Selasa', '08:00:00', '10:00:00', 'Belum'),
(24, 'TI_MICRO-3', 35, 10, 8, 7, 15, 'Selasa', '10:00:00', '12:00:00', 'Belum'),
(25, 'TI_MICRO-4', 35, 8, 5, 8, 15, 'Jumat', '16:00:00', '18:00:00', 'Belum'),
(26, 'TI_MICRO-5', 35, 12, 7, 9, 15, 'Sabtu', '13:00:00', '15:00:00', 'Belum'),
(27, 'TI_MICRO-6', 35, 12, 1, 10, 15, 'Sabtu', '16:00:00', '18:00:00', 'Belum'),
(28, 'TI_MICRO-7', 36, 4, 4, 11, 15, 'Selasa', '13:00:00', '15:00:00', 'Belum'),
(29, 'SI_STI-1', 37, 6, 6, 5, 16, 'Senin', '08:00:00', '10:00:00', 'Belum'),
(30, 'SI_STI-2', 37, 11, 10, 6, 16, 'Senin', '10:00:00', '12:00:00', 'Belum'),
(31, 'SI_STI-3', 37, 5, 8, 7, 16, 'Selasa', '13:00:00', '15:00:00', 'Belum'),
(32, 'SI_STI-4', 38, 10, 4, 8, 16, 'Rabu', '08:00:00', '10:00:00', 'Belum'),
(33, 'SI_STI-5', 38, 10, 12, 9, 16, 'Rabu', '10:00:00', '12:00:00', 'Belum'),
(34, 'SI_PBO-1', 39, 7, 9, 10, 17, 'Senin', '13:00:00', '15:00:00', 'Belum'),
(35, 'SI_PBO-2', 39, 1, 1, 11, 17, 'Senin', '15:00:00', '17:00:00', 'Belum'),
(36, 'SI_PBO-3', 39, 1, 1, 12, 17, 'Selasa', '08:00:00', '10:00:00', 'Belum'),
(37, 'SI_PBO-4', 39, 2, 7, 13, 17, 'Selasa', '10:00:00', '12:00:00', 'Belum'),
(38, 'SI_PBO-5', 40, 13, 8, 14, 17, 'Rabu', '13:00:00', '15:00:00', 'Belum'),
(39, 'SI_PBO-6', 40, 11, 6, 15, 17, 'Rabu', '15:00:00', '17:00:00', 'Belum'),
(40, 'SI_PBO-7', 40, 9, 13, 16, 17, 'Kamis', '08:00:00', '10:00:00', 'Belum'),
(41, 'SI_PBO-8', 40, 12, 8, 17, 17, 'Kamis', '10:00:00', '12:00:00', 'Belum'),
(42, 'SI_PBO-9', 41, 5, 12, 18, 17, 'Jumat', '13:00:00', '15:00:00', 'Belum'),
(43, 'SI_PBO-10', 41, 9, 5, 19, 17, 'Jumat', '15:00:00', '17:00:00', 'Belum'),
(44, 'SI_PBO-11', 41, 10, 9, 20, 17, 'Sabtu', '08:00:00', '10:00:00', 'Belum'),
(45, 'SI_PBO-12', 41, 3, 10, 21, 17, 'Sabtu', '10:00:00', '12:00:00', 'Belum'),
(46, 'SI_PBD-1', 42, 5, 8, 22, 18, 'Senin', '08:00:00', '10:00:00', 'Belum'),
(47, 'SI_PBD-2', 42, 9, 9, 23, 18, 'Senin', '10:00:00', '12:00:00', 'Belum'),
(48, 'SI_PBD-3', 42, 7, 6, 24, 18, 'Selasa', '13:00:00', '15:00:00', 'Belum'),
(49, 'SI_PBD-4', 43, 7, 3, 25, 18, 'Rabu', '08:00:00', '10:00:00', 'Belum'),
(50, 'SI_PBD-5', 43, 7, 13, 26, 18, 'Rabu', '10:00:00', '12:00:00', 'Belum'),
(51, 'SI_PBD-6', 43, 5, 10, 27, 18, 'Kamis', '13:00:00', '15:00:00', 'Belum'),
(52, 'SI_PBD-7', 43, 12, 2, 28, 18, 'Jumat', '08:00:00', '10:00:00', 'Belum'),
(53, 'SI_PBD-8', 44, 11, 10, 29, 18, 'Jumat', '10:00:00', '12:00:00', 'Belum'),
(54, 'SI_PBD-9', 44, 3, 9, 30, 18, 'Sabtu', '13:00:00', '15:00:00', 'Belum'),
(55, 'SI_PBD-10', 44, 1, 13, 31, 18, 'Sabtu', '15:00:00', '17:00:00', 'Belum'),
(56, 'SI_AI-1', 45, 11, 3, 32, 19, 'Senin', '08:00:00', '10:00:00', 'Belum'),
(57, 'SI_AI-2', 45, 4, 10, 33, 19, 'Senin', '10:00:00', '12:00:00', 'Belum'),
(58, 'SI_AI-3', 45, 3, 6, 34, 19, 'Selasa', '13:00:00', '15:00:00', 'Belum'),
(59, 'SI_AI-4', 45, 11, 10, 35, 19, 'Rabu', '08:00:00', '10:00:00', 'Belum'),
(60, 'SI_AI-5', 46, 3, 8, 36, 19, 'Rabu', '10:00:00', '12:00:00', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `kehadiran_1` char(1) DEFAULT NULL,
  `kehadiran_2` char(1) DEFAULT NULL,
  `kehadiran_3` char(1) DEFAULT NULL,
  `kehadiran_4` char(1) DEFAULT NULL,
  `kehadiran_5` char(1) DEFAULT NULL,
  `kehadiran_6` char(1) DEFAULT NULL,
  `kehadiran_7` char(1) DEFAULT NULL,
  `kehadiran_8` char(1) DEFAULT NULL,
  `kehadiran_9` char(1) DEFAULT NULL,
  `kehadiran_10` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorium`
--

CREATE TABLE `laboratorium` (
  `id_laboratorium` int(11) NOT NULL,
  `nama_laboratorium` varchar(100) DEFAULT NULL,
  `kapasitas` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `laboratorium`
--

INSERT INTO `laboratorium` (`id_laboratorium`, `nama_laboratorium`, `kapasitas`) VALUES
(1, 'Multimedia', 30),
(2, 'Internet of Things', 24),
(3, 'Startup', 35),
(4, 'Data Science', 25),
(5, 'Computer Vision', 25),
(6, 'Microcontroller', 25),
(7, 'Computer Network', 15);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` char(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(3) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `kelas`, `jurusan`) VALUES
(1, '13020210002', 'MUHAMMAD RAYHAN', 'A1', 'Teknik Informatika'),
(2, '13020210006', 'L.M. AL MURSALAT JAMAL', 'A1', 'Teknik Informatika'),
(3, '13020210010', 'ANDI RANRENG SOMBENG', 'A1', 'Teknik Informatika'),
(4, '13020210013', 'RACHMAN SAPUTRA', 'A1', 'Teknik Informatika'),
(5, '13020210014', 'FIRDAUS', 'A1', 'Teknik Informatika'),
(6, '13020210018', 'AFIAN FEBRIANTO', 'A1', 'Teknik Informatika'),
(7, '13020210020', 'MUHAMMAD FARHAN ASEGAF', 'A1', 'Teknik Informatika'),
(8, '13020210027', 'NURFAHMI HARDIANSYAH', 'A1', 'Teknik Informatika'),
(9, '13020210031', 'MUH. MUFLIH ANUGRAH M', 'A1', 'Teknik Informatika'),
(10, '13020210032', 'ALIF SAFA MOLEO', 'A1', 'Teknik Informatika'),
(11, '13020210036', 'MUHAMMAD ALAMSYAH', 'A1', 'Teknik Informatika'),
(12, '13020210045', 'MUH FARDHAN', 'A1', 'Teknik Informatika'),
(13, '13020210046', 'FADJRI SUHENDRA', 'A1', 'Teknik Informatika'),
(14, '13020210047', 'M.FARHAN AMANSYAH', 'A1', 'Teknik Informatika'),
(15, '13020210048', 'AHMAD RENDI', 'A1', 'Teknik Informatika'),
(16, '13020210053', 'IMRAN AFDILLAH', 'A1', 'Teknik Informatika'),
(17, '13020210134', 'NASRULLAH', 'A1', 'Teknik Informatika'),
(18, '13020180019', 'SYAHRUL BONE', 'C2', 'Teknik Informatika'),
(19, '13020180032', 'WAHYU HIDAYAT RAMADHAN', 'C2', 'Teknik Informatika'),
(20, '13020180043', 'AGIL PRASETYA A. RAZAK', 'C2', 'Teknik Informatika'),
(21, '13020190343', 'MUH FIRMAN ABD RAHMAN', 'C2', 'Teknik Informatika'),
(22, '13020190383', 'AUDREY PUTRA TANIA', 'C2', 'Teknik Informatika'),
(23, '13020190397', 'MUH. RESKI NUR HIDAYAT', 'C2', 'Teknik Informatika'),
(24, '13020210049', 'MUH. FACHRUL ISLAM', 'A1', 'Teknik Informatika'),
(25, '13020210052', 'AHMAD ZAKY', 'A1', 'Teknik Informatika'),
(26, '13020210055', 'RIZALDI SYAFA SAPUTRA', 'A1', 'Teknik Informatika'),
(27, '13020210056', 'ICHSAN REYZAPUTRA MOKODOMPIT', 'A1', 'Teknik Informatika'),
(28, '13020210057', 'WAJDI PRATAMA YUNUS', 'A1', 'Teknik Informatika'),
(29, '13020210058', 'ANDREYAN FRISTIOHADI FIRMAN', 'A1', 'Teknik Informatika'),
(30, '13020210122', 'DZUL FIKRI YUNUS', 'A1', 'Teknik Informatika'),
(31, '13020210124', 'CAKRA BIMANTARA', 'A1', 'Teknik Informatika'),
(32, '13020210129', 'MUHAMMAD ALIF AKBAR', 'A1', 'Teknik Informatika'),
(33, '13020210135', 'FERRY AHMAD SULAEMAN', 'A1', 'Teknik Informatika'),
(34, '13020210136', 'ARDY DWI PUTRA', 'A1', 'Teknik Informatika'),
(35, '13020210138', 'ILHAM', 'A1', 'Teknik Informatika'),
(36, '13020210146', 'MUH.FHATUR', 'A1', 'Teknik Informatika'),
(37, '13020230361', 'MUHAMMAD RAFLI', 'A1', 'Teknik Informatika'),
(38, '13020210062', 'HABIBURRAHMAN', 'A2', 'Teknik Informatika'),
(39, '13020210063', 'MUHAMMAD FAHRURRAZI', 'A2', 'Teknik Informatika'),
(40, '13020210068', 'LA ODE MUH. YANWAR ANUGRAH JULIADIN', 'A2', 'Teknik Informatika'),
(41, '13020210070', 'AL HILALUDDIN', 'A2', 'Teknik Informatika'),
(42, '13020210072', 'CAESAR OQTHAVIANTO', 'A2', 'Teknik Informatika'),
(43, '13020210073', 'M. LUTHFI', 'A2', 'Teknik Informatika'),
(44, '13020210076', 'MATLAIL FAJAR', 'A2', 'Teknik Informatika'),
(45, '13020210078', 'MUH. FAHRIZAL IKBAL', 'A2', 'Teknik Informatika'),
(46, '13020210079', 'ASRI', 'A2', 'Teknik Informatika'),
(47, '13020210081', 'ANDI ICHSAN MUHAMMAD AL-FATIH', 'A2', 'Teknik Informatika'),
(48, '13020210082', 'MUHAMMAD RAIHAN RESA', 'A2', 'Teknik Informatika'),
(49, '13020210083', 'JUANDRIS MELLOLO', 'A2', 'Teknik Informatika'),
(50, '13020210086', 'IKHWAN TAUFIK', 'A2', 'Teknik Informatika'),
(51, '13020210087', 'LA ODE MUHAMMAD NUR', 'A2', 'Teknik Informatika'),
(52, '13020210096', 'AHMAD MUFLIH', 'A2', 'Teknik Informatika'),
(53, '13020210098', 'MUHAMMAD YUSUF', 'A2', 'Teknik Informatika'),
(54, '13020210101', 'FAHRUL ALIF', 'A2', 'Teknik Informatika'),
(55, '13020210102', 'MUH IHZAN', 'A2', 'Teknik Informatika'),
(56, '13020210103', 'TEGAR NUR WIBOWO', 'A2', 'Teknik Informatika'),
(57, '13020210104', 'A. MUH. RAHMATULLAH A. FATHUDDIN', 'A2', 'Teknik Informatika'),
(58, '13020210106', 'ABDI RABBIL IZZAH', 'A2', 'Teknik Informatika'),
(59, '13020210107', 'MUH IQMAL', 'A2', 'Teknik Informatika'),
(60, '13020210108', 'ANDI ADITYA WARMAN FACHRAN TALAN', 'A2', 'Teknik Informatika'),
(61, '13020210109', 'M.FIQRY SEPTIAWAN', 'A2', 'Teknik Informatika'),
(62, '13020210115', 'ABDUL SALAM RUSLI', 'A2', 'Teknik Informatika'),
(63, '13020210116', 'MUH.AQSA HARISA', 'A2', 'Teknik Informatika'),
(64, '13020210117', 'ANDI APRYAN MALLARANGEN', 'A2', 'Teknik Informatika'),
(65, '13020210151', 'SUPRIADI', 'A2', 'Teknik Informatika'),
(66, '13020190208', 'FAKHRI MUBARAK', 'A3', 'Teknik Informatika'),
(67, '13020210009', 'MUH. ASKAN TRI ANUGRAH SUMAJA', 'A3', 'Teknik Informatika'),
(68, '13020210011', 'SYAHRUL ARISMAN', 'A3', 'Teknik Informatika'),
(69, '13020210024', 'MUHAMMAD RAFLY IDIL', 'A3', 'Teknik Informatika'),
(70, '13020210030', 'FAUZY FATHRURAHMAN', 'A3', 'Teknik Informatika'),
(71, '13020210034', 'TAWAKKAL', 'A3', 'Teknik Informatika'),
(72, '13020210041', 'FIRMAN', 'A3', 'Teknik Informatika'),
(73, '13020210044', 'MUHAMMAD YUSUF', 'A3', 'Teknik Informatika'),
(74, '13020210051', 'AHMAD AKRAM', 'A3', 'Teknik Informatika'),
(75, '13020210089', 'HAMSYA MANSYUR', 'A3', 'Teknik Informatika'),
(76, '13020210092', 'SYAHRUL FAISAL', 'A3', 'Teknik Informatika'),
(77, '13020210095', 'ABZAR', 'A3', 'Teknik Informatika'),
(78, '13020210119', 'AHMAD AZHARIL', 'A3', 'Teknik Informatika'),
(79, '13020210123', 'MOHAMAD FAJAR AGUNG', 'A3', 'Teknik Informatika'),
(80, '13020210131', 'MUH FADLAN RISQULLAH DWITAMA N', 'A3', 'Teknik Informatika'),
(81, '13020210149', 'ABDUL WAHID YASRUN LAURU', 'A3', 'Teknik Informatika'),
(82, '13020210150', 'DAVID SANTOSO', 'A3', 'Teknik Informatika'),
(83, '13020210153', 'FAHRIANSYAH', 'A3', 'Teknik Informatika'),
(84, '13020210154', 'YUSRIL AKMAL NUR', 'A3', 'Teknik Informatika'),
(85, '13020210156', 'ALIF RISANDI SALEH', 'A3', 'Teknik Informatika'),
(86, '13020210157', 'ANJAS ANSARI ASHAR', 'A3', 'Teknik Informatika'),
(87, '13020210159', 'SURADI', 'A3', 'Teknik Informatika'),
(88, '13020210161', 'MUHAMMAD RIFQY', 'A3', 'Teknik Informatika'),
(89, '13020210163', 'AHMAD FADEL', 'A3', 'Teknik Informatika'),
(90, '13020210165', 'ANUGERAH RAMADHAN', 'A3', 'Teknik Informatika'),
(91, '13020210166', 'ANDI KEYSHA AHMAD TARAWU', 'A3', 'Teknik Informatika'),
(92, '13020210173', 'ANDI LUTHFIANSAH', 'A3', 'Teknik Informatika'),
(93, '13020210176', 'RANDI LIMIN', 'A3', 'Teknik Informatika'),
(94, '13020210177', 'MUHAMMAD AFDHAL MUBARAK', 'A3', 'Teknik Informatika'),
(95, '13020210178', 'MUHAMMAD AFRIZAL AHMAD', 'A3', 'Teknik Informatika'),
(96, '13020210179', 'ANDIKA AGUNG PRATAMA', 'A3', 'Teknik Informatika'),
(97, '13020210235', 'LA ODE IKRAMUDDIN SAMAD', 'A3', 'Teknik Informatika'),
(98, '13020210287', 'ATHAR FATHANA RAKASYAH', 'A3', 'Teknik Informatika'),
(99, '13020190175', 'AFRI YUSRIFAL', 'A4', 'Teknik Informatika'),
(100, '13020210141', 'FADHIL NASYWAN', 'A4', 'Teknik Informatika'),
(101, '13020210167', 'M. AFRIZAL GHIFARY B. RADJA', 'A4', 'Teknik Informatika'),
(102, '13020210168', 'MUHAMMAD ILHAM', 'A4', 'Teknik Informatika'),
(103, '13020210169', 'MUHAMMAD FARHAN', 'A4', 'Teknik Informatika'),
(104, '13020210171', 'MUHAMMAD WIRA FERDIANSYAH LIAMBO', 'A4', 'Teknik Informatika'),
(105, '13020210172', 'MUH ANDIKA FIKRUL HAQ', 'A4', 'Teknik Informatika'),
(106, '13020210181', 'MUH. RAHMAT HIDAYAT ARMAN', 'A4', 'Teknik Informatika'),
(107, '13020210182', 'MUH REZKY PASULOI', 'A4', 'Teknik Informatika'),
(108, '13020210186', 'MUHAMAD RAUL SABARA', 'A4', 'Teknik Informatika'),
(109, '13020210187', 'RERI PERDANA PUTRA', 'A4', 'Teknik Informatika'),
(110, '13020210188', 'MUHAMMAD ASWAR FIRMANSYAH', 'A4', 'Teknik Informatika'),
(111, '13020210189', 'ILHAM HIDAYAT', 'A4', 'Teknik Informatika'),
(112, '13020210191', 'MUH. YUSRIANDI', 'A4', 'Teknik Informatika'),
(113, '13020210205', 'NAUFAL ABIYYU SUPRIADI', 'A4', 'Teknik Informatika'),
(114, '13020210193', 'MUHAMMAD AFDAL ADIGUNA', 'A4', 'Teknik Informatika'),
(115, '13020210196', 'FATHUR RAHMAN', 'A4', 'Teknik Informatika'),
(116, '13020210198', 'FARHAN TRI HANIF', 'A4', 'Teknik Informatika'),
(117, '13020210199', 'SAIFUL JIHAD', 'A4', 'Teknik Informatika'),
(118, '13020210200', 'ANDI MUHAMMAD ALFIAN. S', 'A4', 'Teknik Informatika'),
(119, '13020210202', 'ANDI MUHAMMAD RASUL REJEKI', 'A4', 'Teknik Informatika'),
(120, '13020210204', 'FAHRUDIN RAZIKI', 'A4', 'Teknik Informatika'),
(121, '13020210206', 'HERRY KUSWANTO S', 'A4', 'Teknik Informatika'),
(122, '13020210207', 'MUHAMMAD FAHMI RAIHAN AS', 'A4', 'Teknik Informatika'),
(123, '13020210208', 'TIYAN ADE HARIANTO', 'A4', 'Teknik Informatika'),
(124, '13020210209', 'MUH. FADHIL ATTARIQ HASRIL', 'A4', 'Teknik Informatika'),
(125, '13020210210', 'FIRMAN AKBAR', 'A4', 'Teknik Informatika'),
(126, '13020210211', 'MUH. FATHIR BASIR', 'A4', 'Teknik Informatika'),
(127, '13020210212', 'MUHAMMAD ANDRIANTO', 'A4', 'Teknik Informatika'),
(128, '13020210214', 'MUH. ZULHAIDAR WAHYUDI', 'A4', 'Teknik Informatika'),
(129, '13020210216', 'SAHRUR RAMADHAN', 'A4', 'Teknik Informatika'),
(130, '13020210279', 'MUHAMMAD ARFAH ISWANIAH', 'A4', 'Teknik Informatika'),
(131, '13020210035', 'FITRY ANTYESTI ILYAS', 'D1', 'Teknik Informatika'),
(132, '13020210137', 'WAHYU RAHAYU', 'D1', 'Teknik Informatika'),
(133, '13020210215', 'MUH. SYAHRUL RAMDHANI', 'D1', 'Teknik Informatika'),
(134, '13020210310', 'SUBAIRMAN', 'D1', 'Teknik Informatika'),
(135, '13020220144', 'MUHAMMAD LUQMAN MAJZUL', 'C2', 'Teknik Informatika'),
(136, '13020200060', 'ZULNAJIB', 'C2', 'Teknik Informatika'),
(137, '13020210218', 'MUHAMMAD MA\'RUF FARRAS', 'A5', 'Teknik Informatika'),
(138, '13020210219', 'GUNTUR SARIRA', 'A5', 'Teknik Informatika'),
(139, '13020210220', 'THARIQUR-RAHMAN', 'A5', 'Teknik Informatika'),
(140, '13020210221', 'FAUZIAN', 'A5', 'Teknik Informatika'),
(141, '13020210222', 'ASRAN', 'A5', 'Teknik Informatika'),
(142, '13020210223', 'RIEZQHY RAMADHAN PUTRA RRASYAD', 'A5', 'Teknik Informatika'),
(143, '13020210224', 'M.FAHMI FEBRIAN', 'A5', 'Teknik Informatika'),
(144, '13020210227', 'ACHMAD ROIHAN', 'A5', 'Teknik Informatika'),
(145, '13020210228', 'MUHAMMAD ILHAM BACHTIAR', 'A5', 'Teknik Informatika'),
(146, '13020210229', 'FITO ARDIANSYAH', 'A5', 'Teknik Informatika'),
(147, '13020210232', 'AL MUALIF NURUL TAQWA', 'A5', 'Teknik Informatika'),
(148, '13020210233', 'MUHAMMAD FADHURRAHMAN', 'A5', 'Teknik Informatika'),
(149, '13020210234', 'GADING', 'A5', 'Teknik Informatika'),
(150, '13020210248', 'MUHAMMAD FAJRIN', 'A5', 'Teknik Informatika'),
(151, '13020210252', 'ARIL GUNAWAN', 'A5', 'Teknik Informatika'),
(152, '13020210254', 'ZULKIFLI', 'A5', 'Teknik Informatika'),
(153, '13020210255', 'ARMIND MAULDI KURNIAWAN', 'A5', 'Teknik Informatika'),
(154, '13020210258', 'MUCH. HAERUL AKBAR', 'A5', 'Teknik Informatika'),
(155, '13020210259', 'MUH. FADEL ABDILLAH', 'A5', 'Teknik Informatika'),
(156, '13020210260', 'AIDIL FARIADHAIN ASDAR', 'A5', 'Teknik Informatika'),
(157, '13020210262', 'DIMAS TEZHAR ARDANA', 'A5', 'Teknik Informatika'),
(158, '13020210265', 'MUH CHAERUL ANWAR', 'A5', 'Teknik Informatika'),
(159, '13020210266', 'FATHURRAHMAN PUTRA SYAH', 'A5', 'Teknik Informatika'),
(160, '13020210269', 'NASRULLAH AHMAD', 'A5', 'Teknik Informatika'),
(161, '13020210282', 'RAINANDA DARYA SAPUTRA', 'A5', 'Teknik Informatika'),
(162, '13020210185', 'MASRUN MANCARI', 'A6', 'Teknik Informatika'),
(163, '13020210272', 'ILHAM ARIANDI', 'A6', 'Teknik Informatika'),
(164, '13020210274', 'USAMAH RHACAC ZAMAR', 'A6', 'Teknik Informatika'),
(165, '13020210277', 'MUHAMMAD NUR FADHIL MA\'AWI', 'A6', 'Teknik Informatika'),
(166, '13020210280', 'MUH RIFQI ZULKIFLI', 'A6', 'Teknik Informatika'),
(167, '13020210285', 'AHMAD FADLY', 'A6', 'Teknik Informatika'),
(168, '13020210286', 'FITRAH YUSTI RANDANA', 'A6', 'Teknik Informatika'),
(169, '13020210289', 'MUH. ICHWAN ARDI ARIF', 'A6', 'Teknik Informatika'),
(170, '13020210291', 'ANDI GILANG RAMADHAN', 'A6', 'Teknik Informatika'),
(171, '13020210294', 'A. MUH. FUAD DZIKRULKHAIR', 'A6', 'Teknik Informatika'),
(172, '13020210295', 'SAHLAN HAMSAH', 'A6', 'Teknik Informatika'),
(173, '13020210300', 'MUHAMMAD FARHAN HERMANSYAH', 'A6', 'Teknik Informatika'),
(174, '13020210303', 'ZULFIKAR', 'A6', 'Teknik Informatika'),
(175, '13020210304', 'AMALUDDIN', 'A6', 'Teknik Informatika'),
(176, '13020210306', 'MUHAMMAD SIDIK DAMING', 'A6', 'Teknik Informatika'),
(177, '13020210308', 'ARUN SAMUDRA ALFATIHA', 'A6', 'Teknik Informatika'),
(178, '13020210190', 'PUTRI ELSA MUSATI. M', 'B3', 'Teknik Informatika'),
(179, '13020210192', 'KARTIKA', 'B3', 'Teknik Informatika'),
(180, '13020210195', 'MARIANI', 'B3', 'Teknik Informatika'),
(181, '13020210197', 'NURHIDAYAH MANSYUR', 'B3', 'Teknik Informatika'),
(182, '13020210201', 'TAZKIYAH RIDHA WALLA', 'B3', 'Teknik Informatika'),
(183, '13020210203', 'FADIYAH SALSABILA ABDULLAH', 'B3', 'Teknik Informatika'),
(184, '13020210226', 'PUTRI ADELIA ADRIANTO S', 'B3', 'Teknik Informatika'),
(185, '13020210001', 'DIAH NUR ASTANTI', 'B1', 'Teknik Informatika'),
(186, '13020210003', 'PUTRI NADIA SUDARTOMO', 'B1', 'Teknik Informatika'),
(187, '13020210004', 'AISYAH SAFIRA RACHMAN', 'B1', 'Teknik Informatika'),
(188, '13020210008', 'RIKA RAMANDA', 'B1', 'Teknik Informatika'),
(189, '13020210012', 'INDAH NIRWANA', 'B1', 'Teknik Informatika'),
(190, '13020210015', 'REGINA PRIMADYA', 'B1', 'Teknik Informatika'),
(191, '13020210016', 'A. NUR ALIYYAH', 'B1', 'Teknik Informatika'),
(192, '13020210017', 'ARIFAH LAILATUL ISTHI\'ANAH', 'B1', 'Teknik Informatika'),
(193, '13020210019', 'SELVI HIDAYAH JOHAN', 'B1', 'Teknik Informatika'),
(194, '13020210021', 'DWI ADININGSIH', 'B1', 'Teknik Informatika'),
(195, '13020210022', 'SHELOMITA MARJAN', 'B1', 'Teknik Informatika'),
(196, '13020210023', 'ANNISA PRATAMA PUTRI', 'B1', 'Teknik Informatika'),
(197, '13020210025', 'SUKMAWATI', 'B1', 'Teknik Informatika'),
(198, '13020210026', 'IDA MAWADDAH NUR', 'B1', 'Teknik Informatika'),
(199, '13020210028', 'HASLINA', 'B1', 'Teknik Informatika'),
(200, '13020210029', 'ANDI MUAFFIVATUL FIQRA', 'B1', 'Teknik Informatika'),
(201, '13020210033', 'JAMILA ULFIAH', 'B1', 'Teknik Informatika'),
(202, '13020210037', 'IIT AL ARWAIHTI', 'B1', 'Teknik Informatika'),
(203, '13020210040', 'NURMILA SARI R. USIA', 'B1', 'Teknik Informatika'),
(204, '13020210042', 'NUR ANISYA RAMADANI', 'B1', 'Teknik Informatika'),
(205, '13020210043', 'NAURAH ATHAYAH AR', 'B1', 'Teknik Informatika'),
(206, '13020210050', 'MIFTAHUL JANNAH', 'B1', 'Teknik Informatika'),
(207, '13020210066', 'NURUL AZMI', 'B1', 'Teknik Informatika'),
(208, '13020210084', 'ANDI AINUN FATIMAH JAMAL', 'B1', 'Teknik Informatika'),
(209, '13020210054', 'RIFDAH SALSABILA', 'B1', 'Teknik Informatika'),
(210, '13020210060', 'ATSILAH RIFQAH WARDANI', 'B1', 'Teknik Informatika'),
(211, '13020210067', 'YAYANG NURAVIN NABILAH', 'B1', 'Teknik Informatika'),
(212, '13020210069', 'ANDI FIRDA JANUARTI', 'B1', 'Teknik Informatika'),
(213, '13020210071', 'BS. FEBRIAYU FADHLIKAYANI. MS', 'B1', 'Teknik Informatika'),
(214, '13020210077', 'PUTRI MAULIDNI', 'B1', 'Teknik Informatika'),
(215, '13020210080', 'SARAH TASYA AULIA', 'B1', 'Teknik Informatika'),
(216, '13020210038', 'PUAN TIARA S. MASULILI', 'B1', 'Teknik Informatika'),
(217, '13020210088', 'RIANY REZEQY UTAMIE', 'B2', 'Teknik Informatika'),
(218, '13020210090', 'AZIZAH AWALIYAH R WENGANG', 'B2', 'Teknik Informatika'),
(219, '13020210091', 'TITIN SUTIANA', 'B2', 'Teknik Informatika'),
(220, '13020210093', 'RAHMA PUSPITASARI', 'B2', 'Teknik Informatika'),
(221, '13020210094', 'JUITA MANDASARI', 'B2', 'Teknik Informatika'),
(222, '13020210097', 'UMI ZUNNURAIN', 'B2', 'Teknik Informatika'),
(223, '13020210105', 'NAIYAH NIRWANA K. JABIR ALI', 'B2', 'Teknik Informatika'),
(224, '13020210114', 'EKHA OCTAVIANY MUKHTAR', 'B2', 'Teknik Informatika'),
(225, '13020210118', 'SAVIRA RAHMADANI FS', 'B2', 'Teknik Informatika'),
(226, '13020210121', 'ST. NADYA KURNIA PRIHANDANI', 'B2', 'Teknik Informatika'),
(227, '13020210125', 'NADA KAYATRI ODE', 'B2', 'Teknik Informatika'),
(228, '13020210126', 'NURAZIZA YUNUS', 'B2', 'Teknik Informatika'),
(229, '13020210127', 'NADYA NABILA WAHYUPUTRI', 'B2', 'Teknik Informatika'),
(230, '13020210128', 'SITI LUTFIAH AGUS', 'B2', 'Teknik Informatika'),
(231, '13020210130', 'VARA DILLA', 'B2', 'Teknik Informatika'),
(232, '13020210132', 'RIRIN ASTIANI', 'B2', 'Teknik Informatika'),
(233, '13020210133', 'FIFIAN', 'B2', 'Teknik Informatika'),
(234, '13020210139', 'NURUL FAISAH', 'B2', 'Teknik Informatika'),
(235, '13020210140', 'ALIFAH NURUL ANANDA', 'B2', 'Teknik Informatika'),
(236, '13020210143', 'BERLIAN SEPTIANI', 'B2', 'Teknik Informatika'),
(237, '13020210144', 'WA ODE NURAINI SARI BICI', 'B2', 'Teknik Informatika'),
(238, '13020210145', 'FAUDIAH ANWAR', 'B2', 'Teknik Informatika'),
(239, '13020210147', 'MELANIE ANTHIKAH USRIFAN', 'B2', 'Teknik Informatika'),
(240, '13020210152', 'SOFIA AMANDA', 'B2', 'Teknik Informatika'),
(241, '13020210160', 'EKA MULIYANA', 'B2', 'Teknik Informatika'),
(242, '13020210162', 'SANTI', 'B2', 'Teknik Informatika'),
(243, '13020210164', 'TENRI SA\'NAH', 'B2', 'Teknik Informatika'),
(244, '13020210170', 'ANDI CHUSNUL IDZAH', 'B2', 'Teknik Informatika'),
(245, '13020210175', 'YULIANA NGGOHELE', 'B2', 'Teknik Informatika'),
(246, '13020210180', 'WA ODE RATNA ADININGSIH', 'B2', 'Teknik Informatika'),
(247, '13020210183', 'NUR AZZA FADILLAH', 'B2', 'Teknik Informatika'),
(248, '13020220318', 'FIFI OLIFIA', 'B2', 'Teknik Informatika'),
(249, '13020210242', 'NIRMALA', 'B3', 'Teknik Informatika'),
(250, '13120200027', 'ALVIKRI RESKYANSAH', 'A1', 'Sistem Informasi'),
(251, '13120210001', 'MUHAMMAD AFDHAL MUHERTA', 'A1', 'Sistem Informasi'),
(252, '13120210002', 'RAKIL AGUANSYAH', 'A1', 'Sistem Informasi'),
(253, '13120210004', 'MUHAMMAD DANI ARYA PUTRA', 'A1', 'Sistem Informasi'),
(254, '13120210005', 'FURQON FATAHILLAH', 'A1', 'Sistem Informasi'),
(255, '13120210008', 'MUHAMMAD AKBAR', 'A1', 'Sistem Informasi'),
(256, '13120210010', 'LA ODE MUH. NURHIKMAWAN', 'A1', 'Sistem Informasi'),
(257, '13120210012', 'GIBRAN RIZALDI', 'A1', 'Sistem Informasi'),
(258, '13120210013', 'KHAIRUL YAMLEAN', 'A1', 'Sistem Informasi'),
(259, '13120210014', 'MUH. DINUL. M', 'A1', 'Sistem Informasi'),
(260, '13120210017', 'MUHAMMAD VHADEL ANUGERA', 'A1', 'Sistem Informasi'),
(261, '13120210018', 'ANDI MUHAMMAD ARULYANSYACH', 'A1', 'Sistem Informasi'),
(262, '13120210020', 'AHMAD FAUZAN', 'A1', 'Sistem Informasi'),
(263, '13120210022', 'GAGAS RESTU AJI', 'A1', 'Sistem Informasi'),
(264, '13120210023', 'JUMADIL AWAL', 'A1', 'Sistem Informasi'),
(265, '13120210024', 'M. TAUFIQ SUGIANTO', 'A1', 'Sistem Informasi'),
(266, '13120210029', 'FAUZAN YAHYA', 'A1', 'Sistem Informasi'),
(267, '13120210032', 'MUHAMMAD SYAWAL AMIRULLAH', 'A1', 'Sistem Informasi'),
(268, '13120210034', 'MUHAMMAD JIHAD PRATAMA SUMAILA', 'A1', 'Sistem Informasi'),
(269, '13120210035', 'MUH. FAIZ ALFARIZY', 'A1', 'Sistem Informasi'),
(270, '13120210042', 'MUHAMMAD THORIQ FATH PRATAMA', 'A1', 'Sistem Informasi'),
(271, '13120210043', 'MUH. FAUZAN HAJRI T', 'A1', 'Sistem Informasi'),
(272, '13120210045', 'MUH. RAIHAN ALIF MULIAWAN', 'A1', 'Sistem Informasi'),
(273, '13120230057', 'CANDRA ALBERTION', 'A1', 'Sistem Informasi'),
(274, '13120210003', 'PUTRI FARHANA FARIDO', 'B1', 'Sistem Informasi'),
(275, '13120210006', 'EZRA FAHRANI', 'B1', 'Sistem Informasi'),
(276, '13120210007', 'RIZKY ANISA MUTIARA', 'B1', 'Sistem Informasi'),
(277, '13120210009', 'RISMA', 'B1', 'Sistem Informasi'),
(278, '13120210011', 'NURHALISA', 'B1', 'Sistem Informasi'),
(279, '13120210015', 'NUR AZIZAH YUSUF', 'B1', 'Sistem Informasi'),
(280, '13120210016', 'ANDI AIS MELANY MARCHELYNA', 'B1', 'Sistem Informasi'),
(281, '13120210021', 'INCE AYU NELLY NILAWATI RISFAL', 'B1', 'Sistem Informasi'),
(282, '13120210027', 'FATIMAH SYUKUR', 'B1', 'Sistem Informasi'),
(283, '13120210028', 'SYARLA ALIFIA ZYAKARIA', 'B1', 'Sistem Informasi'),
(284, '13120210030', 'DESY INDRI LUTHFIA ANDY', 'B1', 'Sistem Informasi'),
(285, '13120210031', 'PUTRI AAN SAGITA', 'B1', 'Sistem Informasi'),
(286, '13120210033', 'TRI HAJAR HAMZAH', 'B1', 'Sistem Informasi'),
(287, '13120210037', 'DIAN PERTIWI MASNITA', 'B1', 'Sistem Informasi'),
(288, '13120210038', 'ELLA NADYA RUMADAUL', 'B1', 'Sistem Informasi'),
(289, '13120210046', 'ILMI ZADAH SULTHAN', 'B1', 'Sistem Informasi'),
(290, '13020210061', 'AHMAD ALTHAF ATHALLAH', 'A1', 'Teknik Informatika'),
(291, '13020220004', 'MUHAMMAD KHALID ABDILLAH', 'A1', 'Teknik Informatika'),
(292, '13020220005', 'TIZAR FITRAH ANUGERAH', 'A1', 'Teknik Informatika'),
(293, '13020220006', 'ADE REZA ANUGRAH', 'A1', 'Teknik Informatika'),
(294, '13020220007', 'ACHMAD ZULFIKAR', 'A1', 'Teknik Informatika'),
(295, '13020220009', 'ANDIKA PRATAMA', 'A1', 'Teknik Informatika'),
(296, '13020220010', 'EDO RANOV ANJASMARA', 'A1', 'Teknik Informatika'),
(297, '13020220014', 'RAIHAN APRIANSYAH', 'A1', 'Teknik Informatika'),
(298, '13020220015', 'MUHAMMAD ANDI SYAIFULLAH', 'A1', 'Teknik Informatika'),
(299, '13020220017', 'MUHAMMAD ZULFIKRI RENHORAN', 'A1', 'Teknik Informatika'),
(300, '13020220022', 'NARENDRA AWANGGA', 'A1', 'Teknik Informatika'),
(301, '13020220023', 'M. AKBAR AMIRUDDIN', 'A1', 'Teknik Informatika'),
(302, '13020220026', 'MUHAMMAD FAJRUL FALAH AS', 'A1', 'Teknik Informatika'),
(303, '13020220030', 'MUHAMMAD RIFQI AMANULLAH', 'A1', 'Teknik Informatika'),
(304, '13020220032', 'MUHAMMAD DIRGA JUANG IKHSAN', 'A1', 'Teknik Informatika'),
(305, '13020220035', 'MUH. AKHSAN FARID NURDIN', 'A1', 'Teknik Informatika'),
(306, '13020220039', 'NIFAL', 'A1', 'Teknik Informatika'),
(307, '13020220040', 'MUH. KENNY MIFTAHUL KHAIR.AK', 'A1', 'Teknik Informatika'),
(308, '13020220041', 'MUH ILHAM NUR HIDAYAT AKBAR', 'A1', 'Teknik Informatika'),
(309, '13020220042', 'MUH.ALIF SINGGIH AKSARI', 'A1', 'Teknik Informatika'),
(310, '13020220043', 'ANDI MUHAMMAD RIFAI', 'A1', 'Teknik Informatika'),
(311, '13020220044', 'HADIID AR RAAD', 'A1', 'Teknik Informatika'),
(312, '13020220047', 'MUHAMMAD FIQHI FAUZAN', 'A1', 'Teknik Informatika'),
(313, '13020220048', 'MUHAMMAD RIZKY SYAHPUTRA', 'A2', 'Teknik Informatika'),
(314, '13020220049', 'MUSH\'AB AL MUBARAK', 'A2', 'Teknik Informatika'),
(315, '13020220050', 'FIKRI HIDAYAT', 'A2', 'Teknik Informatika'),
(316, '13020220051', 'M. RAYHAN ALBIRUNI', 'A2', 'Teknik Informatika'),
(317, '13020220052', 'HAMDANIL', 'A2', 'Teknik Informatika'),
(318, '13020220053', 'IKRAM', 'A2', 'Teknik Informatika'),
(319, '13020220054', 'SUNAN RESKI HUSIAN', 'A2', 'Teknik Informatika'),
(320, '13020220056', 'MUHAMMAD SHABRAN', 'A2', 'Teknik Informatika'),
(321, '13020220057', 'MUHAMMAD AFRIZALDI ATTALAH', 'A2', 'Teknik Informatika'),
(322, '13020220058', 'AHMAD MUAFI', 'A2', 'Teknik Informatika'),
(323, '13020220059', 'FAJAR ARIF', 'A2', 'Teknik Informatika'),
(324, '13020220064', 'MUH FAROUGHY AL GHAZALI', 'A2', 'Teknik Informatika'),
(325, '13020220065', 'ARDHITO RAHADIAN ADAM', 'A2', 'Teknik Informatika'),
(326, '13020220068', 'MUH RUSMAN', 'A2', 'Teknik Informatika'),
(327, '13020220069', 'LA ODE MUHAMMAD RISKY SYIAM WAHID', 'A2', 'Teknik Informatika'),
(328, '13020220070', 'MUH. REZA', 'A2', 'Teknik Informatika'),
(329, '13020220071', 'MUH. FIQRI', 'A2', 'Teknik Informatika'),
(330, '13020220074', 'FITRAH ARSIL', 'A2', 'Teknik Informatika'),
(331, '13020220075', 'MUHAMMAD RIZQY ISLAMI I.L. AH', 'A2', 'Teknik Informatika'),
(332, '13020220077', 'ANDI BAGAS PRAYOGO', 'A2', 'Teknik Informatika'),
(333, '13020220078', 'MUH. YUSRAN', 'A2', 'Teknik Informatika'),
(334, '13020220081', 'WAHYU KADRI RAHMAT SUAT', 'A2', 'Teknik Informatika'),
(335, '13020220084', 'DZULFADLY', 'A2', 'Teknik Informatika'),
(336, '13020220302', 'ZIDAN BSA', 'A2', 'Teknik Informatika'),
(337, '13020220086', 'ABREZAL SATRIO ABIMANYU', 'A3', 'Teknik Informatika'),
(338, '13020220087', 'A. MUHAMMAD FATHUR RAHMAN', 'A3', 'Teknik Informatika'),
(339, '13020220088', 'MUH NUR HIDAYAT', 'A3', 'Teknik Informatika'),
(340, '13020220089', 'SATRIO WITJAKSONO', 'A3', 'Teknik Informatika'),
(341, '13020220090', 'ANDI ARDIAN RAMADHAN HR', 'A3', 'Teknik Informatika'),
(342, '13020220091', 'ARDIANSYAH', 'A3', 'Teknik Informatika'),
(343, '13020220092', 'AHMAD DZAKI UBAIDILLAH', 'A3', 'Teknik Informatika'),
(344, '13020220093', 'MUH. FAUZI MARSHAL', 'A3', 'Teknik Informatika'),
(345, '13020220094', 'FIDLY SAPUTRA AWAL', 'A3', 'Teknik Informatika'),
(346, '13020220095', 'MUH. FAJRI RESKIAWAN PUTRA', 'A3', 'Teknik Informatika'),
(347, '13020220096', 'ISMAHARAJAB ARIFAI', 'A3', 'Teknik Informatika'),
(348, '13020220098', 'NUGRAHA SAPUTRA', 'A3', 'Teknik Informatika'),
(349, '13020220103', 'MUH. RAFLI RAHMAN', 'A3', 'Teknik Informatika'),
(350, '13020220104', 'NUUR FATIHAH WICAKSONO', 'A3', 'Teknik Informatika'),
(351, '13020220105', 'MUHAMMAD IHSAN SAIFULLAH', 'A3', 'Teknik Informatika'),
(352, '13020220106', 'MUH FARRAZ RAIA SUWANDI', 'A3', 'Teknik Informatika'),
(353, '13020220108', 'FADHIL ROIF MAENGKOM', 'A3', 'Teknik Informatika'),
(354, '13020220112', 'M. MUQTADIRYULLAH ISKANDAR', 'A3', 'Teknik Informatika'),
(355, '13020220114', 'JABAL NUR ALAM', 'A3', 'Teknik Informatika'),
(356, '13020220116', 'ZIA UL HAQ BAHAR', 'A3', 'Teknik Informatika'),
(357, '13020220117', 'MUH HABIBI', 'A3', 'Teknik Informatika'),
(358, '13020220118', 'MUHAMMAD HAIKAL RONNY', 'A3', 'Teknik Informatika'),
(359, '13020220120', 'ACHMAD RIZKY MAULANA', 'A4', 'Teknik Informatika'),
(360, '13020220121', 'MUH. RIANDY DWI PUTRA', 'A4', 'Teknik Informatika'),
(361, '13020220124', 'ANDI GIBRAN GAZALI S. RAHMAN', 'A4', 'Teknik Informatika'),
(362, '13020220125', 'CAKRA DEFA SAPUTRA', 'A4', 'Teknik Informatika'),
(363, '13020220127', 'MUHAMMAD REZKY EKA FITRAH UDA\'A', 'A4', 'Teknik Informatika'),
(364, '13020220128', 'RAHMAN RAMADHAN', 'A4', 'Teknik Informatika'),
(365, '13020220130', 'EKA HERLAMBANG BUDIANSYAH', 'A4', 'Teknik Informatika'),
(366, '13020220131', 'NUR IKHWAN ALFIANSYAH', 'A4', 'Teknik Informatika'),
(367, '13020220133', 'MUH. ABDULLAH. HARUN', 'A4', 'Teknik Informatika'),
(368, '13020220134', 'NUR BAKTI WIDJAYA', 'A4', 'Teknik Informatika'),
(369, '13020220136', 'GADING SEPTY MARUDANNY', 'A4', 'Teknik Informatika'),
(370, '13020220137', 'M ILYAS RESKIAWAN IN', 'A4', 'Teknik Informatika'),
(371, '13020220143', 'SYAHRUL ADIYANTO', 'A4', 'Teknik Informatika'),
(372, '13020220145', 'ADRI LINRUNG', 'A4', 'Teknik Informatika'),
(373, '13020220146', 'AQIL PRATAMA', 'A4', 'Teknik Informatika'),
(374, '13020220149', 'MUH. FAIZAL', 'A4', 'Teknik Informatika'),
(375, '13020220150', 'ARFANDI HADI KUSUMA', 'A4', 'Teknik Informatika'),
(376, '13020220151', 'ANDI DHIDIT RIYANDY', 'A4', 'Teknik Informatika'),
(377, '13020220153', 'SAMSUDIN IDRIS RENLEEW', 'A4', 'Teknik Informatika'),
(378, '13020220154', 'MUHAMMAD AKHSAN ARAFAH', 'A5', 'Teknik Informatika'),
(379, '13020220156', 'MUH ZIKRI MUBARAKOH .N', 'A5', 'Teknik Informatika'),
(380, '13020220158', 'ADITYA REZKY SAPUTRA', 'A5', 'Teknik Informatika'),
(381, '13020220162', 'MUH. ADHAM AGUS', 'A5', 'Teknik Informatika'),
(382, '13020220164', 'ANDI MUH. FADHIL REZKIAWAN', 'A5', 'Teknik Informatika'),
(383, '13020220165', 'MUHAMMAD IHSAN', 'A5', 'Teknik Informatika'),
(384, '13020220166', 'ABD. MUGNI ADJI SUSILO', 'A5', 'Teknik Informatika'),
(385, '13020220168', 'MUHAMMAD AKHYAR', 'A5', 'Teknik Informatika'),
(386, '13020220170', 'MUH. REZKY', 'A5', 'Teknik Informatika'),
(387, '13020220172', 'WAWAN', 'A5', 'Teknik Informatika'),
(388, '13020220174', 'MUH. ADAM NUR HIDAYAT', 'A5', 'Teknik Informatika'),
(389, '13020220176', 'ANDI FARID SETIAWAN', 'A5', 'Teknik Informatika'),
(390, '13020220177', 'BAGAS SETIAWAN DAMSAR', 'A5', 'Teknik Informatika'),
(391, '13020220180', 'MUHAMMAD ADITYA TOMPO', 'A5', 'Teknik Informatika'),
(392, '13020220182', 'AGUNG APRIYANDI RETANUBUN', 'A5', 'Teknik Informatika'),
(393, '13020220185', 'MUH. ADILLA SYAH', 'A5', 'Teknik Informatika'),
(394, '13020220186', 'WALIFAN RULLU', 'A5', 'Teknik Informatika'),
(395, '13020220187', 'MUH. YASIR MUBARAK', 'A5', 'Teknik Informatika'),
(396, '13020220189', 'SUFRIAL', 'A5', 'Teknik Informatika'),
(397, '13020220190', 'A.FADHEL CHAIDAR FAQIH', 'A5', 'Teknik Informatika'),
(398, '13020220193', 'RAQHIB ATAILLAH', 'A5', 'Teknik Informatika'),
(399, '13020180223', 'DWIKY ARIES NUGRAHA YUSUF', 'A6', 'Teknik Informatika'),
(400, '13020210217', 'MUHAMMAD AWALUDDIN', 'A6', 'Teknik Informatika'),
(401, '13020210301', 'MUHAMMAD LUTFHI RAHIM', 'A6', 'Teknik Informatika'),
(402, '13020220197', 'RIYAS AMINULLAH', 'A6', 'Teknik Informatika'),
(403, '13020220198', 'ANDI FAREL ALPARABI', 'A6', 'Teknik Informatika'),
(404, '13020220201', 'AHMAD BASITH', 'A6', 'Teknik Informatika'),
(405, '13020220202', 'MUH. ARISTSYAH MALIK', 'A6', 'Teknik Informatika'),
(406, '13020220203', 'MUHAMMAD ZAQLY LULUANG', 'A6', 'Teknik Informatika'),
(407, '13020220205', 'ASY SYAKUR', 'A6', 'Teknik Informatika'),
(408, '13020220206', 'MUH. RAYHAN FAHREZA', 'A6', 'Teknik Informatika'),
(409, '13020220209', 'INDRA', 'A6', 'Teknik Informatika'),
(410, '13020220211', 'IRFAN PARIT', 'A6', 'Teknik Informatika'),
(411, '13020220212', 'MUH REZA FAJRIN', 'A6', 'Teknik Informatika'),
(412, '13020220213', 'MUHAMMAD FAIZAL', 'A6', 'Teknik Informatika'),
(413, '13020220214', 'MIFTAHUL RIFQI', 'A6', 'Teknik Informatika'),
(414, '13020220215', 'RAIHAN MAHDY FAUZAN', 'A6', 'Teknik Informatika'),
(415, '13020220219', 'ADRIAN', 'A6', 'Teknik Informatika'),
(416, '13020220221', 'RIFQI FAUZAN SABILA', 'A6', 'Teknik Informatika'),
(417, '13020220222', 'BASO UMMUL IKSHAN', 'A6', 'Teknik Informatika'),
(418, '13020220223', 'MUHAMMAD ALIF MAULANA.R', 'A6', 'Teknik Informatika'),
(419, '13020220225', 'MUH. FAIQ IFTIKHAAR', 'A6', 'Teknik Informatika'),
(420, '13020220226', 'AFRIAN KURNIAWAN', 'A6', 'Teknik Informatika'),
(421, '13020220227', 'AHMAD MUFLI RAMADHAN', 'A6', 'Teknik Informatika'),
(422, '13020220229', 'RIUDHANI WIRARAJA', 'A6', 'Teknik Informatika'),
(423, '13020220231', 'MUH. BAMBANG SUHARMAN', 'A7', 'Teknik Informatika'),
(424, '13020220232', 'DANDA', 'A7', 'Teknik Informatika'),
(425, '13020220233', 'AKMAL MUFID ABUBAKAR', 'A7', 'Teknik Informatika'),
(426, '13020220234', 'FERON SAPUTRA', 'A7', 'Teknik Informatika'),
(427, '13020220235', 'ANUGERAH ZULKARNAIN', 'A7', 'Teknik Informatika'),
(428, '13020220237', 'ANDI AIDIL', 'A7', 'Teknik Informatika'),
(429, '13020220238', 'ABDILLAH JAMIL', 'A7', 'Teknik Informatika'),
(430, '13020220240', 'AKMAL AKSA GANI', 'A7', 'Teknik Informatika'),
(431, '13020220241', 'MUH ARWIN', 'A7', 'Teknik Informatika'),
(432, '13020220242', 'MUH. FURQAN APRILIAN PUTRA MUSLIHAT', 'A7', 'Teknik Informatika'),
(433, '13020220243', 'AHMAD FAUZI NASIR', 'A7', 'Teknik Informatika'),
(434, '13020220244', 'MOH. DANDI JANUARY', 'A7', 'Teknik Informatika'),
(435, '13020220245', 'DEAN PUTRA', 'A7', 'Teknik Informatika'),
(436, '13020220246', 'MUH. FANGGI FAUZAN', 'A7', 'Teknik Informatika'),
(437, '13020220247', 'MUHAMMAD RAFLY LANDEN', 'A7', 'Teknik Informatika'),
(438, '13020220248', 'MUH AS\'AD ASHAR', 'A7', 'Teknik Informatika'),
(439, '13020220250', 'MUH. RASFI DWI ALGIFARI', 'A7', 'Teknik Informatika'),
(440, '13020220255', 'ANDI SAKTA RIFKI ERLANGGA MALIK', 'A7', 'Teknik Informatika'),
(441, '13020220256', 'MUH ALFARID JUFDA', 'A7', 'Teknik Informatika'),
(442, '13020220257', 'ABDUL RAJID AL HAMID', 'A7', 'Teknik Informatika'),
(443, '13020220258', 'MOH ARIF HENTIHU', 'A7', 'Teknik Informatika'),
(444, '13020220259', 'MUH. REVIAN ALAMSYAH', 'A7', 'Teknik Informatika'),
(445, '13020220261', 'ANDI GEMAL HERSA SAPUTRA', 'A8', 'Teknik Informatika'),
(446, '13020220263', 'NURALIM', 'A8', 'Teknik Informatika'),
(447, '13020220264', 'M. FAIRUZ SYAHRAN', 'A8', 'Teknik Informatika'),
(448, '13020220265', 'FARID WAJDI MUFTI', 'A8', 'Teknik Informatika'),
(449, '13020220266', 'MUH. ALI RAHMADI', 'A8', 'Teknik Informatika'),
(450, '13020220268', 'RIZKY CHAIRU RAMADHAN', 'A8', 'Teknik Informatika'),
(451, '13020220269', 'LUQMAN HAKIM HASANUDDIN', 'A8', 'Teknik Informatika'),
(452, '13020220270', 'A. ABDI FAHRUL ISLAM', 'A8', 'Teknik Informatika'),
(453, '13020220271', 'MUH. NUR ASFAR', 'A8', 'Teknik Informatika'),
(454, '13020220272', 'AHMAD RIZA SHIDDIQ', 'A8', 'Teknik Informatika'),
(455, '13020220276', 'MUH. FADHEL', 'A8', 'Teknik Informatika'),
(456, '13020220279', 'MUHAMMAD REVALDI. S', 'A8', 'Teknik Informatika'),
(457, '13020220280', 'FADHIL AHMAD FARRAS ABDILLAH', 'A8', 'Teknik Informatika'),
(458, '13020220283', 'MUAJJIDIL AHKAM', 'A8', 'Teknik Informatika'),
(459, '13020220286', 'AZHAR GHOZALI MAMONTO', 'A8', 'Teknik Informatika'),
(460, '13020220287', 'RAMA DWI ANUGRAH MANGORI', 'A8', 'Teknik Informatika'),
(461, '13020220290', 'NUR ALAM', 'A8', 'Teknik Informatika'),
(462, '13020220293', 'ANDI SURYA TARA', 'A8', 'Teknik Informatika'),
(463, '13020220295', 'M. RIDWAN R.', 'A8', 'Teknik Informatika'),
(464, '13020220296', 'MUH ICHLASUL AMAL SYAM', 'A8', 'Teknik Informatika'),
(465, '13020220300', 'MUH. RAFI FADHIL NURYADIN', 'A8', 'Teknik Informatika'),
(466, '13020220303', 'MUH. NAWIR', 'A9', 'Teknik Informatika'),
(467, '13020220304', 'AHMAD FATHI KAUTSARY', 'A9', 'Teknik Informatika'),
(468, '13020220305', 'MUH.RIVKY PRATAMA PUTRA SOEGIRI', 'A9', 'Teknik Informatika'),
(469, '13020220309', 'DANDI', 'A9', 'Teknik Informatika'),
(470, '13020220312', 'RAHMAT HIDAYAT', 'A9', 'Teknik Informatika'),
(471, '13020220313', 'ANDI ABDUL CHAERULLAH AMRAN', 'A9', 'Teknik Informatika'),
(472, '13020220314', 'M. KAMARUL HISYAM', 'A9', 'Teknik Informatika'),
(473, '13020220315', 'NURUL HAKIM', 'A9', 'Teknik Informatika'),
(474, '13020220319', 'RAHMAT HIDAYAT', 'A9', 'Teknik Informatika'),
(475, '13020220321', 'MUH. ASADULLAH ISHAK', 'A9', 'Teknik Informatika'),
(476, '13020220322', 'MUH. RAFIANTO', 'A9', 'Teknik Informatika'),
(477, '13020220325', 'WIWIN', 'A9', 'Teknik Informatika'),
(478, '13020220326', 'MUHAMMAD REZA SYAH PAHLEVI POHAN', 'A9', 'Teknik Informatika'),
(479, '13020220328', 'M. ARIF ABDILLAH BUSTAN', 'A9', 'Teknik Informatika'),
(480, '13020220330', 'MUH ARKHAM FAUZAN AKBAR', 'A9', 'Teknik Informatika'),
(481, '13020220331', 'MUHAMMAD REZKY WIDODO', 'A9', 'Teknik Informatika'),
(482, '13020220333', 'RANDIKA SAKHA RAMADANI PUTRA AHMAD', 'A9', 'Teknik Informatika'),
(483, '13020220334', 'RAFLY HARTA PRATAMA', 'A9', 'Teknik Informatika'),
(484, '13020220335', 'MUHAMMAD FATTAHURRAZAQ', 'A9', 'Teknik Informatika'),
(485, '13020220337', 'AHMAD BAIHAQI', 'A9', 'Teknik Informatika'),
(486, '13020220339', 'DIMAS SYAPUTRA AMIR', 'A9', 'Teknik Informatika'),
(487, '13020220341', 'HAMDAN ROBBY ARMANSYAH', 'A9', 'Teknik Informatika'),
(488, '13020220342', 'MUH. ARIL JUFRI', 'A9', 'Teknik Informatika'),
(489, '13020220001', 'SARI NARULITA SYAMSUDDIN', 'B1', 'Teknik Informatika'),
(490, '13020220002', 'SITI HELGA HUWAIDAH', 'B1', 'Teknik Informatika'),
(491, '13020220003', 'RAHMA ALIA', 'B1', 'Teknik Informatika'),
(492, '13020220011', 'ZANIRA PUTRI WARDHANI', 'B1', 'Teknik Informatika'),
(493, '13020220012', 'AMALIA PUTRI UTAMI', 'B1', 'Teknik Informatika'),
(494, '13020220013', 'TESSA INRIANI EFENDI', 'B1', 'Teknik Informatika'),
(495, '13020220016', 'SUKMAWATI', 'B1', 'Teknik Informatika'),
(496, '13020220018', 'DIAN FITRIAH H. DJAFAR', 'B1', 'Teknik Informatika'),
(497, '13020220019', 'ANDI PUTRI ATIRAH MASNUR', 'B1', 'Teknik Informatika'),
(498, '13020220020', 'SISKA SUDIRMAN', 'B1', 'Teknik Informatika'),
(499, '13020220024', 'MUTHMAINNA ALIFAH', 'B1', 'Teknik Informatika'),
(500, '13020220025', 'DIAN AZIZAH PERMATA ISLAMIAH PADLI', 'B1', 'Teknik Informatika'),
(501, '13020220027', 'SALZABILA TRIANA SAID', 'B1', 'Teknik Informatika'),
(502, '13020220028', 'AINUN NAQIYAH', 'B1', 'Teknik Informatika'),
(503, '13020220029', 'ULFA RIFKY AWALIYAH', 'B1', 'Teknik Informatika'),
(504, '13020220031', 'FAUZIAH RAHMA NADIN', 'B1', 'Teknik Informatika'),
(505, '13020220033', 'REZKY AMANDA PUTRI', 'B1', 'Teknik Informatika'),
(506, '13020220034', 'LISKI', 'B1', 'Teknik Informatika'),
(507, '13020220036', 'PUTRI MAHARANI.S', 'B1', 'Teknik Informatika'),
(508, '13020220037', 'CICI DAMAYANTI OKI', 'B1', 'Teknik Informatika'),
(509, '13020220038', 'TENRIANGKA', 'B1', 'Teknik Informatika'),
(510, '13020220045', 'NADHIA FAIRUZ ZAHRA', 'B1', 'Teknik Informatika'),
(511, '13020220055', 'RADHIYATUL MARDHIYAH', 'B1', 'Teknik Informatika'),
(512, '13020220060', 'ARNAWATI', 'B1', 'Teknik Informatika'),
(513, '13020220061', 'YASYFA XENA ARLEYDA WAHYUDI', 'B1', 'Teknik Informatika'),
(514, '13020230350', 'SRI ULFIANI RIFAI', 'B1', 'Teknik Informatika'),
(515, '13020230347', 'MUHAMMAD MI\'RAJ HAMBALI', 'D1', 'Teknik Informatika'),
(516, '13020220139', 'ANDI AHMAD FAJRUL JAYADIL YULIFAR', 'D1', 'Teknik Informatika'),
(517, '13020220063', 'RINI RAHMAYANI BADARUDDIN', 'B2', 'Teknik Informatika'),
(518, '13020220066', 'BESSE ZAHRA NURANI A', 'B2', 'Teknik Informatika'),
(519, '13020220072', 'BESSE NISA MUKARRAMAH', 'B2', 'Teknik Informatika'),
(520, '13020220073', 'NUR AZIZAH', 'B2', 'Teknik Informatika'),
(521, '13020220079', 'RINA', 'B2', 'Teknik Informatika'),
(522, '13020220080', 'FANNY PUSPITA SARI AMANDA', 'B2', 'Teknik Informatika'),
(523, '13020220082', 'MAISYARAH SISKA SAFITRI. MM', 'B2', 'Teknik Informatika'),
(524, '13020220083', 'ARSYANA ILMA GAJI KOBONG', 'B2', 'Teknik Informatika'),
(525, '13020220085', 'GITA PRATIWI', 'B2', 'Teknik Informatika'),
(526, '13020220101', 'SOFIAH ALKHORIYYAH', 'B2', 'Teknik Informatika'),
(527, '13020220102', 'AISYAH RUSDI', 'B2', 'Teknik Informatika'),
(528, '13020220107', 'IDAMA WAHDA NUR', 'B2', 'Teknik Informatika'),
(529, '13020220109', 'TAZKIRAH AMALIAH', 'B2', 'Teknik Informatika'),
(530, '13020220110', 'SRI ANDAYANI', 'B2', 'Teknik Informatika'),
(531, '13020220111', 'INDIRA RENATA PANGERAN', 'B2', 'Teknik Informatika'),
(532, '13020220115', 'NURUL HIKMAH MUQARRAMA', 'B2', 'Teknik Informatika'),
(533, '13020220122', 'NURHIDAYAH', 'B2', 'Teknik Informatika'),
(534, '13020220123', 'ANDI AULIAAH UMMU KALSUM', 'B2', 'Teknik Informatika'),
(535, '13020220129', 'MUNADIAN YUNADIAN', 'B2', 'Teknik Informatika'),
(536, '13020220132', 'FAIZAH RAMADHANI HUSNI', 'B2', 'Teknik Informatika'),
(537, '13020220135', 'A. ASHA SAFITRI SAVINA', 'B2', 'Teknik Informatika'),
(538, '13020220140', 'NOER AKIFAH RAHMAN', 'B2', 'Teknik Informatika'),
(539, '13020220141', 'NURMILASARI', 'B2', 'Teknik Informatika'),
(540, '13020230338', 'HAIRUNNISA', 'B2', 'Teknik Informatika'),
(541, '13020210268', 'ROSWINDA. A', 'B3', 'Teknik Informatika'),
(542, '13020220142', 'ANDI HUSNUL KHATIMAH', 'B3', 'Teknik Informatika'),
(543, '13020220148', 'RAYHANA BAHAR', 'B3', 'Teknik Informatika'),
(544, '13020220152', 'NURIHDINA', 'B3', 'Teknik Informatika'),
(545, '13020220155', 'ANDRA MAUDI AULIA', 'B3', 'Teknik Informatika'),
(546, '13020220157', 'AYUMI PERMATASARI', 'B3', 'Teknik Informatika'),
(547, '13020220159', 'HUSNUL KHOTIMAH ARIF', 'B3', 'Teknik Informatika'),
(548, '13020220160', 'DWI MAHARANI MUSLIM', 'B3', 'Teknik Informatika'),
(549, '13020220167', 'AFIFAH', 'B3', 'Teknik Informatika'),
(550, '13020220173', 'SRI YUNITA', 'B3', 'Teknik Informatika'),
(551, '13020220175', 'MITA RUMAKAMAR', 'B3', 'Teknik Informatika'),
(552, '13020220178', 'BESSE NURUL HUDA', 'B3', 'Teknik Informatika'),
(553, '13020220179', 'RIRIN MELANI ASAF', 'B3', 'Teknik Informatika'),
(554, '13020220183', 'ANNISA UZ ZAHRAH ASKAR', 'B3', 'Teknik Informatika'),
(555, '13020220184', 'EMA REGITA PUTRI', 'B3', 'Teknik Informatika'),
(556, '13020220188', 'LENI J BORA', 'B3', 'Teknik Informatika'),
(557, '13020220191', 'SYARI\'AT', 'B3', 'Teknik Informatika'),
(558, '13020220194', 'NIA APRILIA', 'B3', 'Teknik Informatika'),
(559, '13020220195', 'INTAN PURAHMADHAN', 'B3', 'Teknik Informatika'),
(560, '13020220199', 'AL FIRA SAM', 'B3', 'Teknik Informatika'),
(561, '13020220200', 'SHANTIKA', 'B3', 'Teknik Informatika'),
(562, '13020220204', 'HAIKA ELFRIANTI', 'B3', 'Teknik Informatika'),
(563, '13020220208', 'ANGGI ALINKA', 'B3', 'Teknik Informatika'),
(564, '13020220216', 'KIKI', 'B3', 'Teknik Informatika'),
(565, '13020220217', 'ANDI NURUL FITRI TAQIAH PATARAI', 'B4', 'Teknik Informatika'),
(566, '13020220218', 'SARTIKA WIDYA ARDINA', 'B4', 'Teknik Informatika'),
(567, '13020220224', 'ANDI MAWARSI SALSABILA', 'B4', 'Teknik Informatika'),
(568, '13020220228', 'NURAZIZA WARDHANY RUSLAN', 'B4', 'Teknik Informatika'),
(569, '13020220230', 'NURUL FITRIANI', 'B4', 'Teknik Informatika'),
(570, '13020220236', 'CATRI SYAFRIANA BINTO', 'B4', 'Teknik Informatika'),
(571, '13020220239', 'NASRINA IMTIYAS ZAHRA', 'B4', 'Teknik Informatika'),
(572, '13020220249', 'NURUL FATIHAH', 'B4', 'Teknik Informatika'),
(573, '13020220251', 'PUTRI APRILIA', 'B4', 'Teknik Informatika'),
(574, '13020220252', 'UMMUL ULYA HANDAYANI HAMID', 'B4', 'Teknik Informatika'),
(575, '13020220253', 'ALIFAH AZMI', 'B4', 'Teknik Informatika'),
(576, '13020220267', 'PUTRI BIMADAYANTI', 'B4', 'Teknik Informatika'),
(577, '13020220273', 'NURSYAMSI', 'B4', 'Teknik Informatika'),
(578, '13020220274', 'RISKA', 'B4', 'Teknik Informatika'),
(579, '13020220275', 'NUR SYAFIQAH', 'B4', 'Teknik Informatika'),
(580, '13020220281', 'NURUL CAHYANI WULANDARI', 'B4', 'Teknik Informatika'),
(581, '13020220282', 'ADE HANDAYANI KADIR', 'B4', 'Teknik Informatika'),
(582, '13020220284', 'FITRALIZANI ISHAK', 'B4', 'Teknik Informatika'),
(583, '13020220285', 'SINARMIYANTI', 'B4', 'Teknik Informatika'),
(584, '13020220289', 'RISTHA', 'B4', 'Teknik Informatika'),
(585, '13020220291', 'NABILA WIDIYANTI', 'B4', 'Teknik Informatika'),
(586, '13020220292', 'MAHARANI SAFWA ANDINI', 'B4', 'Teknik Informatika'),
(587, '13020220294', 'SULISTRIAWATI RAMADHANI', 'B4', 'Teknik Informatika'),
(588, '13020220297', 'DESI ISNATASYA', 'B4', 'Teknik Informatika'),
(589, '13020220298', 'VIRKAYANTI ANDANI PUTRI', 'B4', 'Teknik Informatika'),
(590, '13020180038', 'BACHANY SURYA MUSTAFA', 'C2', 'Teknik Informatika'),
(591, '13020180200', 'MUH. FIQRAM', 'C2', 'Teknik Informatika'),
(592, '13020180227', 'SUDIRJA SUKIRMAN', 'C2', 'Teknik Informatika'),
(593, '13020180245', 'AKHMAD PETTA LOLO LASINRANG', 'C2', 'Teknik Informatika'),
(594, '13020190085', 'NUR HALISA', 'C2', 'Teknik Informatika'),
(595, '13020190186', 'MUHAMMAD ZAHRAN ZAINUL MUTTAQIM', 'C2', 'Teknik Informatika'),
(598, '13020220301', 'JULISA', 'C2', 'Teknik Informatika'),
(599, '13020220306', 'NURFADILAH', 'C2', 'Teknik Informatika'),
(600, '13020220307', 'ULFA SARI', 'C2', 'Teknik Informatika'),
(601, '13020220311', 'ANDI AULIYA ALAYDA SYAHRUL', 'C2', 'Teknik Informatika'),
(602, '13020220316', 'SARAH RESKI PRATIWI', 'C2', 'Teknik Informatika'),
(603, '13020220317', 'PRATIWI', 'C2', 'Teknik Informatika'),
(604, '13020220320', 'AINUR RAHMA ALMAGFIRAH', 'C2', 'Teknik Informatika'),
(605, '13020220323', 'DEWI ERNITA RAHMA', 'C2', 'Teknik Informatika'),
(606, '13020220327', 'JIHAN NAFASYA DARMAWAN', 'C2', 'Teknik Informatika'),
(607, '13020220329', 'NABILAH NUR AFIFAH', 'C2', 'Teknik Informatika'),
(608, '13120220003', 'ARDIANSYAH', 'A1', 'Sistem Informasi'),
(609, '13120220006', 'ARYA ADITYA', 'A1', 'Sistem Informasi'),
(610, '13120220011', 'MUHAMMAD FADLY AKRAM', 'A1', 'Sistem Informasi'),
(611, '13120220015', 'GEZAQ AULIA SAIFUDDIN', 'A1', 'Sistem Informasi'),
(612, '13120220016', 'MUHAMMAD AHNAF FAUZAN', 'A1', 'Sistem Informasi'),
(613, '13120220018', 'MUHAMMAD DIFFAL ANUGRAH', 'A1', 'Sistem Informasi'),
(614, '13120220020', 'MUHAMMAD FADLI BAKHTIAR', 'A1', 'Sistem Informasi'),
(615, '13120220024', 'MUH. FAJRI SABIR', 'A1', 'Sistem Informasi'),
(616, '13120220025', 'ANUGRAH ALFIANSYAH HUSAIN', 'A1', 'Sistem Informasi'),
(617, '13120220026', 'MUHAMMAD MA’RIE', 'A1', 'Sistem Informasi'),
(618, '13120220032', 'KAIMUDDIN', 'A1', 'Sistem Informasi'),
(619, '13120220036', 'MUHAMAD DIRGANTARA', 'A1', 'Sistem Informasi'),
(620, '13120230056', 'DAVID HIDAYAT', 'A1', 'Sistem Informasi'),
(621, '13120230062', 'MUH. AZHARUL MUSA', 'A1', 'Sistem Informasi'),
(622, '13120220002', 'NUR ANNISAH AULIA', 'B1', 'Sistem Informasi'),
(623, '13120220004', 'RISA HASMILA SARI', 'B1', 'Sistem Informasi'),
(624, '13120220007', 'SALSABILA AURELIA', 'B1', 'Sistem Informasi'),
(625, '13120220008', 'AFIFAH KHAIRUNNISA NUGROHO', 'B1', 'Sistem Informasi'),
(626, '13120220010', 'INTAN PUTRI NURASHILA TAJUDDIN', 'B1', 'Sistem Informasi'),
(627, '13120220012', 'AMALYA REZKY FITRAYANA', 'B1', 'Sistem Informasi'),
(628, '13120220013', 'A. RESKI RAMADANI RAHMAT', 'B1', 'Sistem Informasi'),
(629, '13120220014', 'MUSTIKA OCTAVIA', 'B1', 'Sistem Informasi'),
(630, '13120220019', 'NURUL INAYAH HERMANY', 'B1', 'Sistem Informasi'),
(631, '13120220021', 'NUR ISLAMIA', 'B1', 'Sistem Informasi'),
(632, '13120220022', 'PUTRI SALSABILA VIRIZCA', 'B1', 'Sistem Informasi'),
(633, '13120220023', 'FITRI HERNANDA MAHARANI AMIR', 'B1', 'Sistem Informasi'),
(634, '13120220027', 'BINTANG NURAINI', 'B1', 'Sistem Informasi'),
(635, '13120220029', 'SELVIA', 'B1', 'Sistem Informasi'),
(636, '13120220031', 'ANDI FATHIMATUZ ZAHRA', 'B1', 'Sistem Informasi'),
(637, '13120220033', 'MUSDALIFAH', 'B1', 'Sistem Informasi'),
(638, '13120220034', 'PUTRI NUR REZKY', 'B1', 'Sistem Informasi'),
(639, '13120220035', 'RISDAYANTI A.GAMTINA', 'B1', 'Sistem Informasi'),
(640, '13120220038', 'NABILA NUR SYAIDAH', 'B1', 'Sistem Informasi'),
(641, '13020230002', 'ARDIANSYAH HIDAYAT', 'A1', 'Teknik Informatika'),
(642, '13020230003', 'MOH. FATHUR RAHMANSYAH', 'A1', 'Teknik Informatika'),
(643, '13020230005', 'MUH. KHALIL GIBRAN ABBAS', 'A1', 'Teknik Informatika'),
(644, '13020230006', 'MUHAMMAD FIDEL SALIM', 'A1', 'Teknik Informatika'),
(645, '13020230007', 'MUHAMMAD NUR KHADAFI H.UMAR', 'A1', 'Teknik Informatika'),
(646, '13020230008', 'MUH. ALFARIZI DWI AKSA PUTRA', 'A1', 'Teknik Informatika'),
(647, '13020230009', 'MEYDIL EKA SYAH PUTRA', 'A1', 'Teknik Informatika'),
(648, '13020230013', 'REYHAN SAVERO', 'A1', 'Teknik Informatika'),
(649, '13020230016', 'MUH.RAYA FACHRIL KADARI', 'A1', 'Teknik Informatika'),
(650, '13020230017', 'MUH. AZHAR HARUNA', 'A1', 'Teknik Informatika'),
(651, '13020230018', 'ZULFATTAH', 'A1', 'Teknik Informatika'),
(652, '13020230019', 'MARSYAL', 'A1', 'Teknik Informatika'),
(653, '13020230020', 'FAUZAN HAADI', 'A1', 'Teknik Informatika'),
(654, '13020230021', 'M. ERIL KAUTSAR', 'A1', 'Teknik Informatika'),
(655, '13020230022', 'WAHYU SAPUTRA PERDANA', 'A1', 'Teknik Informatika'),
(656, '13020230023', 'MUH MAHDI', 'A1', 'Teknik Informatika'),
(657, '13020230024', 'JULKARNAIN HATTA', 'A1', 'Teknik Informatika'),
(658, '13020230025', 'MUH. FAJAR ISTIQAMAH RAMDANY', 'A1', 'Teknik Informatika'),
(659, '13020230027', 'MUHAMMAD ALDI MAULANA', 'A1', 'Teknik Informatika'),
(660, '13020230030', 'MUHAMMAD NUR FUAD', 'A1', 'Teknik Informatika'),
(661, '13020230031', 'RANGGA ARYA WARACHMAT', 'A1', 'Teknik Informatika'),
(662, '13020230033', 'MUHAMMAD AIDIL', 'A1', 'Teknik Informatika'),
(663, '13020230034', 'AHMAD FAWZAR', 'A1', 'Teknik Informatika'),
(664, '13020230035', 'MUHAMMAD IKRAM GHIFARI', 'A1', 'Teknik Informatika'),
(665, '13020230036', 'ASRUL', 'A1', 'Teknik Informatika'),
(666, '13020230335', 'MUHAMMAD FADHEL SYAMSURI', 'A1', 'Teknik Informatika'),
(667, '13020180071', 'ALFIAN NASRUDIN', 'A2', 'Teknik Informatika'),
(668, '13020190101', 'ANDI MUHAMMAD ALIF HAEDAR', 'A2', 'Teknik Informatika'),
(669, '13020230037', 'MALIK SALAHUDDIN', 'A2', 'Teknik Informatika'),
(670, '13020230039', 'MUH. ALIF FATURAHMAN', 'A2', 'Teknik Informatika'),
(671, '13020230041', 'MUH. NUR RIFQI AHLUL', 'A2', 'Teknik Informatika'),
(672, '13020230042', 'ANDI M FATURAHMAN MANGGA BARANI', 'A2', 'Teknik Informatika'),
(673, '13020230044', 'DIMAS PRAWIRA', 'A2', 'Teknik Informatika'),
(674, '13020230046', 'MUH. IKHLASUL AMAL. N', 'A2', 'Teknik Informatika'),
(675, '13020230047', 'ANDI MUHAMMAD SIRAT RAZAK', 'A2', 'Teknik Informatika'),
(676, '13020230048', 'MUH ARIEL HIDAYAT PORNIS', 'A2', 'Teknik Informatika'),
(677, '13020230049', 'ICHWAL', 'A2', 'Teknik Informatika'),
(678, '13020230050', 'RIFKY FAHREZA', 'A2', 'Teknik Informatika'),
(679, '13020230052', 'JUMADIL', 'A2', 'Teknik Informatika'),
(680, '13020230053', 'MUH. NUR ZAELANI', 'A2', 'Teknik Informatika'),
(681, '13020230054', 'ANDI RIZKY AKBAR', 'A2', 'Teknik Informatika'),
(682, '13020230055', 'ANDI MUH. AL AMRI', 'A2', 'Teknik Informatika'),
(683, '13020230056', 'IRGI AHMAD BAIQUNI', 'A2', 'Teknik Informatika'),
(684, '13020230057', 'ANDI DZAKY ARRIFIAL.R', 'A2', 'Teknik Informatika'),
(685, '13020230058', 'IBNU HAFIZ', 'A2', 'Teknik Informatika'),
(686, '13020230059', 'MUHAMMAD IRFAN APRIANSYAH', 'A2', 'Teknik Informatika'),
(687, '13020230061', 'MOHAMAD RAVLY RAVAEL', 'A2', 'Teknik Informatika'),
(688, '13020230062', 'ALPIN ARIA PERKASA RAHMAN', 'A2', 'Teknik Informatika'),
(689, '13020230064', 'A.M RAYFQ NURAKHBAR K.R', 'A2', 'Teknik Informatika'),
(690, '13020230066', 'ADNAN AFIEF ZAIN', 'A2', 'Teknik Informatika'),
(691, '13020230067', 'A. FUAD MUTAHARI PARENRENGI', 'A2', 'Teknik Informatika'),
(692, '13020230068', 'ALIM TRIATMAJA', 'A2', 'Teknik Informatika'),
(693, '13020220097', 'AFRISAL DARMAWANSAH JAMALUDDIN', 'A3', 'Teknik Informatika'),
(694, '13020230069', 'M. AFDHAL HAMDAN AL-JAEDY', 'A3', 'Teknik Informatika'),
(695, '13020230071', 'YOGI KAMAL', 'A3', 'Teknik Informatika'),
(696, '13020230072', 'MUHAMMAD NUR HIDAYAT', 'A3', 'Teknik Informatika'),
(697, '13020230074', 'MUH. AIDIL ASRUL', 'A3', 'Teknik Informatika'),
(698, '13020230075', 'FAJAR', 'A3', 'Teknik Informatika'),
(699, '13020230076', 'ALIF HIDAYAT', 'A3', 'Teknik Informatika'),
(700, '13020230077', 'AFNAN', 'A3', 'Teknik Informatika'),
(701, '13020230078', 'MUH. AL-QADRI SALEH', 'A3', 'Teknik Informatika'),
(702, '13020230079', 'SYAHNABIL', 'A3', 'Teknik Informatika'),
(703, '13020230080', 'MUHAMMAD AHSAN NAS', 'A3', 'Teknik Informatika'),
(704, '13020230081', 'AAN MAULANA SAMPE', 'A3', 'Teknik Informatika'),
(705, '13020230082', 'MUHAMMAD IQBAL FITRA BADILAH', 'A3', 'Teknik Informatika'),
(706, '13020230083', 'RAUSHAN FIKRAN', 'A3', 'Teknik Informatika'),
(707, '13020230086', 'MUHAMMAD RAFFI RIZKITULLAH DJIKO', 'A3', 'Teknik Informatika'),
(708, '13020230087', 'MUH. GANDHY SETYABUDI', 'A3', 'Teknik Informatika'),
(709, '13020230089', 'NAUFAL DZAKY RAHMAN', 'A3', 'Teknik Informatika'),
(710, '13020230090', 'MUHAMMAD TAUFIQ', 'A3', 'Teknik Informatika'),
(711, '13020230094', 'ANDI AL-GHIFARI', 'A3', 'Teknik Informatika'),
(712, '13020230095', 'ALI SYAIFULLAH', 'A3', 'Teknik Informatika'),
(713, '13020230097', 'MUHAMMAD AULIA RAHMAN', 'A3', 'Teknik Informatika'),
(714, '13020230098', 'MUHAMMAD RIFKI YUSRI', 'A3', 'Teknik Informatika'),
(715, '13020230099', 'ARHAM AL FARABI', 'A3', 'Teknik Informatika'),
(716, '13020230100', 'M. RIZWAN', 'A3', 'Teknik Informatika'),
(718, '13020230106', 'AHMAD FAISAL R.', 'A4', 'Teknik Informatika'),
(719, '13020230108', 'MUH RAIVAN MUHADZIB YARAS', 'A4', 'Teknik Informatika'),
(720, '13020230109', 'M. DAPHDI ALGIFARI NUR', 'A4', 'Teknik Informatika'),
(721, '13020230111', 'AFRIANSYAH', 'A4', 'Teknik Informatika'),
(722, '13020230113', 'MUHAMMAD ADRIANSAH PONO', 'A4', 'Teknik Informatika'),
(723, '13020230114', 'AL FIAN MURSYIDIN', 'A4', 'Teknik Informatika'),
(724, '13020230116', 'MUH. ARIL', 'A4', 'Teknik Informatika');
INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `kelas`, `jurusan`) VALUES
(725, '13020230119', 'MUHAMMAD DZAKY SUSANTO', 'A4', 'Teknik Informatika'),
(726, '13020230122', 'MUH. FARIS RAHMAN', 'A4', 'Teknik Informatika'),
(727, '13020230123', 'MUH. RAIHAN', 'A4', 'Teknik Informatika'),
(728, '13020230124', 'MUHAMMAD ALFAREZA', 'A4', 'Teknik Informatika'),
(729, '13020230125', 'AZRIEL NASAR SARMAN', 'A4', 'Teknik Informatika'),
(730, '13020230128', 'MUH. IKHWAN HASAN', 'A4', 'Teknik Informatika'),
(731, '13020230129', 'ALFIAN MAULANA LATIF', 'A4', 'Teknik Informatika'),
(732, '13020230130', 'SULFADLY AMIN', 'A4', 'Teknik Informatika'),
(733, '13020230133', 'MUHAMMAD SHURAIM', 'A4', 'Teknik Informatika'),
(734, '13020230134', 'FAID FADHILAH', 'A4', 'Teknik Informatika'),
(735, '13020230135', 'MUH.RAFLY SHADIQIN MUCHTAR', 'A4', 'Teknik Informatika'),
(736, '13020230136', 'AFVRIZA MAULANA', 'A4', 'Teknik Informatika'),
(737, '13020230138', 'MUH . KHALID RAHMADI', 'A4', 'Teknik Informatika'),
(738, '13020230140', 'RAIHAN SYAM', 'A4', 'Teknik Informatika'),
(739, '13020230141', 'MUH. FADHIL ARDHATILLAH', 'A4', 'Teknik Informatika'),
(740, '13020230142', 'ANSAR', 'A4', 'Teknik Informatika'),
(741, '13020230143', 'MUHAMMAD AIDIL NOVRIYADI', 'A4', 'Teknik Informatika'),
(742, '13020230144', 'ANDI ASLIM SHAFAR', 'A4', 'Teknik Informatika'),
(743, '13020230145', 'MUHAMMAD AFDAL', 'A5', 'Teknik Informatika'),
(744, '13020230146', 'MUH. FAUZAN', 'A5', 'Teknik Informatika'),
(745, '13020230147', 'MUH. FARHAN AL AZIS', 'A5', 'Teknik Informatika'),
(746, '13020230148', 'ADIT SETIAWAN BUDI', 'A5', 'Teknik Informatika'),
(747, '13020230149', 'MUH.DZULKIFLI DAHLAN', 'A5', 'Teknik Informatika'),
(748, '13020230150', 'CHELVIN RAHMATTULLAH', 'A5', 'Teknik Informatika'),
(749, '13020230151', 'ABBAS ASIS', 'A5', 'Teknik Informatika'),
(750, '13020230152', 'MUH. ISMAIL HUSAENI', 'A5', 'Teknik Informatika'),
(751, '13020230153', 'MUHAMMAD RAIHAN SAPUTRA', 'A5', 'Teknik Informatika'),
(752, '13020230156', 'HUSAIN ARRAYHAN', 'A5', 'Teknik Informatika'),
(753, '13020230157', 'MUH. WILDAN TRI GEMILAN', 'A5', 'Teknik Informatika'),
(754, '13020230158', 'ARDIYANSAH', 'A5', 'Teknik Informatika'),
(755, '13020230159', 'MIFTAHUL FALA', 'A5', 'Teknik Informatika'),
(756, '13020230161', 'MUH. IRFAN MAHMUD', 'A5', 'Teknik Informatika'),
(757, '13020230162', 'ANDI FAIZ AHMAD SYAUQY', 'A5', 'Teknik Informatika'),
(758, '13020230164', 'M. IQBAL MAULANA', 'A5', 'Teknik Informatika'),
(759, '13020230166', 'SEFTIAN DWI ANDIRA MUKHTAR', 'A5', 'Teknik Informatika'),
(760, '13020230167', 'MUH. SYUKRI ABDULLAH', 'A5', 'Teknik Informatika'),
(761, '13020230168', 'AWAL NUR RAHMAT', 'A5', 'Teknik Informatika'),
(762, '13020230171', 'MUH. FAJAR NATSIR', 'A5', 'Teknik Informatika'),
(763, '13020230172', 'MAULANA MALIK IBRAHIM', 'A5', 'Teknik Informatika'),
(764, '13020230174', 'ACHMAD DANUL', 'A5', 'Teknik Informatika'),
(765, '13020230177', 'FAIZ RAMADHAN', 'A5', 'Teknik Informatika'),
(766, '13020230178', 'ANDI MUHAMMAD IKHSAN QOWIYYUN ARSYILAHI', 'A5', 'Teknik Informatika'),
(767, '13020230179', 'ARIL AMIR', 'A5', 'Teknik Informatika'),
(768, '13020230181', 'FATRA RAMADHAN KALA', 'A6', 'Teknik Informatika'),
(769, '13020230183', 'A. MUH. TAQWIN FAUZAN', 'A6', 'Teknik Informatika'),
(770, '13020230184', 'MUH. FIKRI', 'A6', 'Teknik Informatika'),
(771, '13020230185', 'KHAIRUNNAS SYARWAN', 'A6', 'Teknik Informatika'),
(772, '13020230187', 'NAHWA KAKA SAPUTRA ANGGAREKSA', 'A6', 'Teknik Informatika'),
(773, '13020230188', 'ANDIKA ARDIANSYAH PUTRA', 'A6', 'Teknik Informatika'),
(774, '13020230190', 'MOH. SURYA SYACHPUTRA DAY', 'A6', 'Teknik Informatika'),
(775, '13020230191', 'MUHAMMAD FIKIH SAPUTRA', 'A6', 'Teknik Informatika'),
(776, '13020230192', 'FADEL MUHAMMAD. H', 'A6', 'Teknik Informatika'),
(777, '13020230193', 'MUHAMMAD RIFKY SAPUTRA SCANIA', 'A6', 'Teknik Informatika'),
(778, '13020230195', 'REINZAH AUDY ALFARISSI', 'A6', 'Teknik Informatika'),
(779, '13020230196', 'MUHAMMAD REZKY EFENDI', 'A6', 'Teknik Informatika'),
(780, '13020230198', 'ARON', 'A6', 'Teknik Informatika'),
(781, '13020230199', 'MUH. AKMAL ABIY CHAIRIL ASRUL', 'A6', 'Teknik Informatika'),
(782, '13020230200', 'KELVIN WIJAYA', 'A6', 'Teknik Informatika'),
(783, '13020230201', 'MUHAMMAD ICHLAZUL AMAL', 'A6', 'Teknik Informatika'),
(784, '13020230202', 'ABDUL QHALIL ALFAREZY BASIR BACHTIAR', 'A6', 'Teknik Informatika'),
(785, '13020230206', 'MUH. ARIEL GUSTAN', 'A6', 'Teknik Informatika'),
(786, '13020230207', 'PUTRA PURNAMA SYUAIB', 'A6', 'Teknik Informatika'),
(787, '13020230208', 'ZULFAHMI', 'A6', 'Teknik Informatika'),
(788, '13020230210', 'NUR AMINUL YAHYA BALDANULLA', 'A6', 'Teknik Informatika'),
(789, '13020230212', 'L.M. NAUFAL RIYANDIKA SURI', 'A6', 'Teknik Informatika'),
(790, '13020230213', 'ILHAM USMAN', 'A6', 'Teknik Informatika'),
(791, '13020230214', 'HARDIANSYAH SAPUTRA', 'A6', 'Teknik Informatika'),
(792, '13020230215', 'MUHAMMAD NUR WAGOLA', 'A6', 'Teknik Informatika'),
(793, '13020230218', 'MUFHADOL HARIS', 'A7', 'Teknik Informatika'),
(794, '13020230219', 'ANDI RIFQI AUNUR RAHMAN', 'A7', 'Teknik Informatika'),
(795, '13020230224', 'ANDI AHSAN ASHURI', 'A7', 'Teknik Informatika'),
(796, '13020230225', 'AHMAD FAUZI FATURRAHMAN', 'A7', 'Teknik Informatika'),
(797, '13020230226', 'MUH. FADHIL FADHULRRAHMAN LAKOTA', 'A7', 'Teknik Informatika'),
(798, '13020230227', 'MUHAMMAD IQBAL HIDAYATTULLOH', 'A7', 'Teknik Informatika'),
(799, '13020230228', 'ANDI MUHAMMAD IHSAN ERAJ P', 'A7', 'Teknik Informatika'),
(800, '13020230229', 'ARYO SYAHPUTRA', 'A7', 'Teknik Informatika'),
(801, '13020230230', 'MUHAMMAD FAUZAN BURHAN', 'A7', 'Teknik Informatika'),
(802, '13020230231', 'ABD. ASIS', 'A7', 'Teknik Informatika'),
(803, '13020230232', 'LAODE MUHAMMAD DHAIFAN KASYFILLAH', 'A7', 'Teknik Informatika'),
(804, '13020230236', 'FARHAM ALFARID MASNUR', 'A7', 'Teknik Informatika'),
(805, '13020230238', 'BAYU FIRNANDA MUHLIS', 'A7', 'Teknik Informatika'),
(806, '13020230239', 'FAKHRIN AHMAD FAUZAN', 'A7', 'Teknik Informatika'),
(807, '13020230240', 'FADEL MUHAMMAD DJEHAN', 'A7', 'Teknik Informatika'),
(808, '13020230242', 'MUH. FARID HIDAYAT', 'A7', 'Teknik Informatika'),
(809, '13020230243', 'AHMAD RAFLI TASLIM', 'A7', 'Teknik Informatika'),
(810, '13020230245', 'MUH ARASY AMIR', 'A7', 'Teknik Informatika'),
(811, '13020230246', 'MOCHAMMAD RHEZNANDYA AL-MADANY', 'A7', 'Teknik Informatika'),
(812, '13020230248', 'WAHYUDI. M', 'A7', 'Teknik Informatika'),
(813, '13020230249', 'AYYAS RADITH SYAPUTRA', 'A7', 'Teknik Informatika'),
(814, '13020230250', 'AKRAM', 'A7', 'Teknik Informatika'),
(815, '13020230251', 'ANDI IKHLAS MALLOMO', 'A7', 'Teknik Informatika'),
(816, '13020230252', 'DWI FATURRAHMAN', 'A7', 'Teknik Informatika'),
(817, '13020230253', 'ZAKI FALIHIN AYYUBI', 'A7', 'Teknik Informatika'),
(818, '13020230254', 'MUHAMMAD FAJAR KADIR', 'A8', 'Teknik Informatika'),
(819, '13020230256', 'MUH RIDHA FAHREZI', 'A8', 'Teknik Informatika'),
(820, '13020230259', 'FADHLURRAHMAN KANZ', 'A8', 'Teknik Informatika'),
(821, '13020230260', 'FAREL DAVA AL FAZAH', 'A8', 'Teknik Informatika'),
(822, '13020230263', 'ELSADIG AHMED ADAM MOALA', 'A8', 'Teknik Informatika'),
(823, '13020230264', 'MOHAMED SAYED AHMED HAMID', 'A8', 'Teknik Informatika'),
(824, '13020230270', 'RIFKY AUNUR RADITYA', 'A8', 'Teknik Informatika'),
(825, '13020230271', 'FATHIRRACHMAN RUSDI', 'A8', 'Teknik Informatika'),
(826, '13020230272', 'ABD. ALIM MAHDY', 'A8', 'Teknik Informatika'),
(827, '13020230273', 'DENI IRFAN', 'A8', 'Teknik Informatika'),
(828, '13020230275', 'MUHAMMAD FADHIL KHAERUDDIN', 'A8', 'Teknik Informatika'),
(829, '13020230276', 'AMRAH', 'A8', 'Teknik Informatika'),
(830, '13020230277', 'ARAFAT', 'A8', 'Teknik Informatika'),
(831, '13020230278', 'YOGA AFRIZAL', 'A8', 'Teknik Informatika'),
(832, '13020230279', 'ILHAM BINTANG', 'A8', 'Teknik Informatika'),
(833, '13020230280', 'KHAERUL AMRI RAHMAT JUFRI', 'A8', 'Teknik Informatika'),
(834, '13020230281', 'HIDAYATULLAH IMRAN', 'A8', 'Teknik Informatika'),
(835, '13020230283', 'MUHAMMAD ILZAM YAHYA', 'A8', 'Teknik Informatika'),
(836, '13020230286', 'WAHYU WIJAYA', 'A8', 'Teknik Informatika'),
(837, '13020230290', 'MUHAMMAD RAFLI', 'A8', 'Teknik Informatika'),
(838, '13020230291', 'YUSRIL M LANTONG', 'A8', 'Teknik Informatika'),
(839, '13020230292', 'MUH FAHROZA ALFITZAR', 'A8', 'Teknik Informatika'),
(840, '13020230293', 'LAODE RAIHAN PRATAMA', 'A8', 'Teknik Informatika'),
(841, '13020230294', 'A. MUHAMMAD NABIL IDRUS', 'A8', 'Teknik Informatika'),
(842, '13020180372', 'MUHAMMAD RIFALDI UMASUGI', 'A9', 'Teknik Informatika'),
(843, '13020230295', 'EKA SASTRA BOMIN', 'A9', 'Teknik Informatika'),
(844, '13020230301', 'MUH. MUSYAHWIR', 'A9', 'Teknik Informatika'),
(845, '13020230302', 'SAHID JAFAR SIDIK KOROMPOT', 'A9', 'Teknik Informatika'),
(846, '13020230303', 'ALDI PRAMUDYA', 'A9', 'Teknik Informatika'),
(847, '13020230304', 'MUHAMMAD FARHAN FAHREZI', 'A9', 'Teknik Informatika'),
(848, '13020230305', 'LAODE FARIZ ZIHNI A. FAJRI', 'A9', 'Teknik Informatika'),
(849, '13020230306', 'RAIHAN NUR RIZQILLAH', 'A9', 'Teknik Informatika'),
(850, '13020230307', 'MUH. TRI PARHAN MAULANA', 'A9', 'Teknik Informatika'),
(851, '13020230308', 'MUHAMMAD AIDHIL AKSAN', 'A9', 'Teknik Informatika'),
(852, '13020230309', 'HENDRAWAN', 'A9', 'Teknik Informatika'),
(853, '13020230310', 'DADANG SAPUTRA ACHMAD', 'A9', 'Teknik Informatika'),
(854, '13020230311', 'MUHAMMAD BINTANG ESYANUARY.R', 'A9', 'Teknik Informatika'),
(855, '13020230312', 'ACHMAD ERSYAD', 'A9', 'Teknik Informatika'),
(856, '13020230313', 'M HANIEF AMINUDDIN', 'A9', 'Teknik Informatika'),
(857, '13020230314', 'MUH. AKBAR TOMPO', 'A9', 'Teknik Informatika'),
(858, '13020230315', 'MUHAMMAD ICHSAN', 'A9', 'Teknik Informatika'),
(859, '13020230317', 'ANDI WIRAWAN JAYA', 'A9', 'Teknik Informatika'),
(860, '13020230318', 'SAHRUL', 'A9', 'Teknik Informatika'),
(861, '13020230319', 'MUH FATWAH FAJRIANSYAH M', 'A9', 'Teknik Informatika'),
(862, '13020230320', 'MUHAMMAD KHAERUL', 'A9', 'Teknik Informatika'),
(863, '13020230321', 'MUHAMMAD ABDILLAH TABRAN', 'A9', 'Teknik Informatika'),
(864, '13020230322', 'MUHAMMAD DZAKI YUDHA PRATAMA', 'A9', 'Teknik Informatika'),
(865, '13020230325', 'MUH. MAHARANI PUTRA BAJENG', 'A9', 'Teknik Informatika'),
(866, '13020230326', 'RESTU ARIEL PRADIPA', 'A9', 'Teknik Informatika'),
(867, '13020230328', 'MOH. HUDRI', 'A10', 'Teknik Informatika'),
(868, '13020230330', 'RHEVAN D KHALID', 'A10', 'Teknik Informatika'),
(869, '13020230331', 'MUHAMMAD IKHLAS SYAHPUTRA', 'A10', 'Teknik Informatika'),
(870, '13020230332', 'MUHAMMAD ISLAMUDDIN', 'A10', 'Teknik Informatika'),
(871, '13020230334', 'MUH. SYAHWAN', 'A10', 'Teknik Informatika'),
(872, '13020230336', 'ABDUL MUSHAWWIR HADI', 'A10', 'Teknik Informatika'),
(873, '13020230337', 'RIFKY AQILA FAJAR SYAM', 'A10', 'Teknik Informatika'),
(874, '13020230340', 'MUH. ABID PUTRA AMRI', 'A10', 'Teknik Informatika'),
(875, '13020230341', 'MUHAMMAD SYAHRUL RAMADHAN', 'A10', 'Teknik Informatika'),
(876, '13020230342', 'M. RIFKY FADHLUR ROHMAN', 'A10', 'Teknik Informatika'),
(877, '13020230343', 'MUHAMMAD SYAHRUL', 'A10', 'Teknik Informatika'),
(878, '13020230344', 'MUHAMMAD FACHRI RIDWAN', 'A10', 'Teknik Informatika'),
(879, '13020230345', 'ZAKIUL FAHMI GUNAWAN', 'A10', 'Teknik Informatika'),
(880, '13020230346', 'MUH. MIFTAH FAUZAN SYENDRA', 'A10', 'Teknik Informatika'),
(881, '13020230349', 'BAGAS NOPRIYANTO', 'A10', 'Teknik Informatika'),
(882, '13020230351', 'M. ITHAF FATTIE', 'A10', 'Teknik Informatika'),
(883, '13020230352', 'ANDI MUHAMMAD AL GIFAHRI ARDIANSYAH', 'A10', 'Teknik Informatika'),
(884, '13020230353', 'M. TAUFIEQURRAHMAN A. ABID', 'A10', 'Teknik Informatika'),
(885, '13020230354', 'FAHRESA ARIF', 'A10', 'Teknik Informatika'),
(886, '13020230355', 'MUHAMMAD RANDEY GIFFARY LAUPE', 'A10', 'Teknik Informatika'),
(887, '13020230356', 'WAHYU ANANDA EKA PUTRA', 'A10', 'Teknik Informatika'),
(888, '13020230357', 'M. WAISAL CORNI', 'A10', 'Teknik Informatika'),
(889, '13020230358', 'SAYYID ZIDANE', 'A10', 'Teknik Informatika'),
(890, '13020230359', 'MUH. REHAN ANUGRAH PRATAMA', 'A10', 'Teknik Informatika'),
(891, '13020230363', 'RESKI SALAM', 'A10', 'Teknik Informatika'),
(892, '13020230364', 'MUH. FARIHIN MUSHAWWIR', 'A10', 'Teknik Informatika'),
(893, '13020230001', 'ALEXANDRIA KAYLA KAZYA PUTRI NUR', 'B1', 'Teknik Informatika'),
(894, '13020230004', 'TRY AZIZAH RAMADHANI', 'B1', 'Teknik Informatika'),
(895, '13020230010', 'NUR AZANI LABADJA', 'B1', 'Teknik Informatika'),
(896, '13020230011', 'NABILA AZZAHRA BASIR', 'B1', 'Teknik Informatika'),
(897, '13020230012', 'AQILAH ZAHRA', 'B1', 'Teknik Informatika'),
(898, '13020230014', 'SITTI HADIJAH', 'B1', 'Teknik Informatika'),
(899, '13020230015', 'WAHYU MELANIE PRATIWI', 'B1', 'Teknik Informatika'),
(900, '13020230026', 'NURVANIA SYAKIR', 'B1', 'Teknik Informatika'),
(901, '13020230028', 'NISA AWALIYAH FAZNI', 'B1', 'Teknik Informatika'),
(902, '13020230029', 'ANDI SHAVIRA ANDRIANI.S', 'B1', 'Teknik Informatika'),
(903, '13020230032', 'ATRIANA', 'B1', 'Teknik Informatika'),
(904, '13020230038', 'SYARAH YANTI', 'B1', 'Teknik Informatika'),
(905, '13020230040', 'NOVA FEBRYNA. A', 'B1', 'Teknik Informatika'),
(906, '13020230043', 'SAHRA ZHAFIRAH', 'B1', 'Teknik Informatika'),
(907, '13020230045', 'NABILAH TIKA MUSHLIHAH THAHIR', 'B1', 'Teknik Informatika'),
(908, '13020230060', 'REZKY ANNISA RAMADHANI ASRI', 'B1', 'Teknik Informatika'),
(909, '13020230063', 'NAZWA SYALAISA HAQ', 'B1', 'Teknik Informatika'),
(910, '13020230065', 'ATIFA AZZAHIRAH', 'B1', 'Teknik Informatika'),
(911, '13020230070', 'ARTIKA SARI MURTI', 'B1', 'Teknik Informatika'),
(912, '13020230073', 'SATRIANI', 'B1', 'Teknik Informatika'),
(913, '13020230084', 'MILDAYANTI', 'B1', 'Teknik Informatika'),
(914, '13020230085', 'GHADIYAHTUL FADIYAH AHMAD', 'B1', 'Teknik Informatika'),
(915, '13020230088', 'NUR AZIZAH', 'B1', 'Teknik Informatika'),
(916, '13020230091', 'ROFIFAH GINA TAMALA', 'B1', 'Teknik Informatika'),
(917, '13020230092', 'AISKA SUCI RAHMADANI SAMIN', 'B1', 'Teknik Informatika'),
(918, '13020230299', 'NUR AWALIA', 'B1', 'Teknik Informatika'),
(919, '13020230316', 'AULYA MAHARANI AHMAD', 'B1', 'Teknik Informatika'),
(920, '13020230323', 'PINGKI AYU RAHMA', 'B1', 'Teknik Informatika'),
(921, '13020230324', 'NURUL USMI', 'B1', 'Teknik Informatika'),
(922, '13020230327', 'REZKY NUR AMALIA. M', 'B1', 'Teknik Informatika'),
(923, '13020230329', 'KHAYLA ALIFIA INDRAWATI', 'B1', 'Teknik Informatika'),
(924, '13020230333', 'PUTRI HABIBA SYARI', 'B1', 'Teknik Informatika'),
(925, '13020230096', 'THALITA SHERLY PUTRI JASMIN', 'B2', 'Teknik Informatika'),
(926, '13020230101', 'AUDITA CAHYANI AMIRUDDIN', 'B2', 'Teknik Informatika'),
(927, '13020230103', 'WULAN RAHMANI', 'B2', 'Teknik Informatika'),
(928, '13020230104', 'SELFI', 'B2', 'Teknik Informatika'),
(929, '13020230105', 'ANAWAY MARYAM TENRISOMPA', 'B2', 'Teknik Informatika'),
(930, '13020230107', 'ZULFATUN', 'B2', 'Teknik Informatika'),
(931, '13020230110', 'WAHYUNI', 'B2', 'Teknik Informatika'),
(932, '13020230112', 'NAYLA ANANDA', 'B2', 'Teknik Informatika'),
(933, '13020230115', 'NUR ANANDA', 'B2', 'Teknik Informatika'),
(934, '13020230117', 'SARWANA', 'B2', 'Teknik Informatika'),
(935, '13020230118', 'RASMAWATI', 'B2', 'Teknik Informatika'),
(936, '13020230120', 'FANISA VIOLENA', 'B2', 'Teknik Informatika'),
(937, '13020230121', 'NUR AQIDAH SAFANIKIAH', 'B2', 'Teknik Informatika'),
(938, '13020230126', 'PUTRI ANANDA SAGITA', 'B2', 'Teknik Informatika'),
(939, '13020230127', 'TIARA AFRINTAN RAMADHANI', 'B2', 'Teknik Informatika'),
(940, '13020230131', 'MUTIARA ABDI', 'B2', 'Teknik Informatika'),
(941, '13020230132', 'WA ODE NAMIDA HEIWA', 'B2', 'Teknik Informatika'),
(942, '13020230137', 'WA ODE RESKY AULIA A.', 'B2', 'Teknik Informatika'),
(943, '13020230139', 'REZKI', 'B2', 'Teknik Informatika'),
(944, '13020230154', 'NAYLA DWI RIANTI PUTRI', 'B2', 'Teknik Informatika'),
(945, '13020230155', 'AQILAH JAMELLYA WULANDARI PUTRISYAH', 'B2', 'Teknik Informatika'),
(946, '13020230163', 'NABILA MAHDIYAH SAMAD', 'B2', 'Teknik Informatika'),
(947, '13020230165', 'SAVERA DEWI NASARINA', 'B2', 'Teknik Informatika'),
(948, '13020230169', 'MARSHA SELMA RAHIM', 'B2', 'Teknik Informatika'),
(949, '13020230339', 'RINA', 'B2', 'Teknik Informatika'),
(950, '13020230170', 'ISYANA PUTRI IRIANTO', 'B3', 'Teknik Informatika'),
(951, '13020230173', 'MUTIAH SHAULATIYA RISWAN', 'B3', 'Teknik Informatika'),
(952, '13020230175', 'REZKY FATIMAH', 'B3', 'Teknik Informatika'),
(953, '13020230176', 'DEWI ANDINI', 'B3', 'Teknik Informatika'),
(954, '13020230180', 'WA ODE WAN AFIFAH AHMAD', 'B3', 'Teknik Informatika'),
(955, '13020230182', 'ALFANNIYA MUTAHHARA', 'B3', 'Teknik Informatika'),
(956, '13020230186', 'AZIZAH MUTHIA SALSABILA', 'B3', 'Teknik Informatika'),
(957, '13020230189', 'SALWA AZAHRAH H. ABD. HADI', 'B3', 'Teknik Informatika'),
(958, '13020230194', 'OKTAVIA RAMADANI', 'B3', 'Teknik Informatika'),
(959, '13020230197', 'AKRAMUNNISA MUSTAMIN', 'B3', 'Teknik Informatika'),
(960, '13020230203', 'SERLY AMALYANTI', 'B3', 'Teknik Informatika'),
(961, '13020230204', 'ALYA PITRA', 'B3', 'Teknik Informatika'),
(962, '13020230205', 'ROZA DHEA ALDAMA IMRAN', 'B3', 'Teknik Informatika'),
(963, '13020230209', 'NURSYADANA M', 'B3', 'Teknik Informatika'),
(964, '13020230211', 'SAL-ZHABILLA AURILIA', 'B3', 'Teknik Informatika'),
(965, '13020230216', 'MUTHIA ZAHRANI', 'B3', 'Teknik Informatika'),
(966, '13020230217', 'SITI SAFIRA TAWETUBUN', 'B3', 'Teknik Informatika'),
(967, '13020230220', 'NAURA AZIFA', 'B3', 'Teknik Informatika'),
(968, '13020230221', 'NASYWA DJUNITIA', 'B3', 'Teknik Informatika'),
(969, '13020230222', 'IRFAYANI', 'B3', 'Teknik Informatika'),
(970, '13020230223', 'MUTIA SALIANTI', 'B3', 'Teknik Informatika'),
(971, '13020230233', 'HIKMALIA', 'B3', 'Teknik Informatika'),
(972, '13020230234', 'NUR MAHDANIA', 'B3', 'Teknik Informatika'),
(973, '13020230235', 'ST. FAIZAH ARIYANTI.S', 'B3', 'Teknik Informatika'),
(974, '13020230237', 'ASTRI ANANDA WULANDARI', 'B3', 'Teknik Informatika'),
(975, '13020230241', 'FIRLI ANASTASYA HAFID', 'B4', 'Teknik Informatika'),
(976, '13020230244', 'RIZQI ANANDA JALIL', 'B4', 'Teknik Informatika'),
(977, '13020230247', 'MUDHIAH YAUMIL AKHIR', 'B4', 'Teknik Informatika'),
(978, '13020230255', 'SITTI LUTFIA', 'B4', 'Teknik Informatika'),
(979, '13020230257', 'RISKA M', 'B4', 'Teknik Informatika'),
(980, '13020230258', 'AUDIAWALIYA PRATIWI UTAMI', 'B4', 'Teknik Informatika'),
(981, '13020230261', 'ANDI MUTIARA AYU LARASATI', 'B4', 'Teknik Informatika'),
(982, '13020230262', 'NI\'MATUN NAYIROH', 'B4', 'Teknik Informatika'),
(983, '13020230265', 'A.NURAENI BINTANG', 'B4', 'Teknik Informatika'),
(984, '13020230267', 'NAZWA JIHAN MASIKA', 'B4', 'Teknik Informatika'),
(985, '13020230268', 'FARAH TSABITAPUTRI AZ ZAHRA', 'B4', 'Teknik Informatika'),
(986, '13020230269', 'NUR REZKI AMALIAH LESTARI', 'B4', 'Teknik Informatika'),
(987, '13020230274', 'NURUL AZIZHA ARSIDIN', 'B4', 'Teknik Informatika'),
(988, '13020230282', 'NUR SALSA IBRAHIM', 'B4', 'Teknik Informatika'),
(989, '13020230284', 'NURHALISA', 'B4', 'Teknik Informatika'),
(990, '13020230285', 'THOYYIBAH', 'B4', 'Teknik Informatika'),
(991, '13020230287', 'ST. RADITHA RAUF', 'B4', 'Teknik Informatika'),
(992, '13020230288', 'ELVA RUHUSTINA', 'B4', 'Teknik Informatika'),
(993, '13020230289', 'ZAHRA RASIFAH', 'B4', 'Teknik Informatika'),
(994, '13020230296', 'A.NURASIZAH', 'B4', 'Teknik Informatika'),
(995, '13020230297', 'SITTI NURHALIMAH', 'B4', 'Teknik Informatika'),
(996, '13020230298', 'NUR WAHYU', 'B4', 'Teknik Informatika'),
(997, '13120230002', 'FIQRI AHYAR MUBARAQ', 'A1', 'Sistem Informasi'),
(998, '13120230003', 'MUH. ANFASYA DWINATA', 'A1', 'Sistem Informasi'),
(999, '13120230005', 'MUHAMMAD I\'TISHAM REDANG', 'A1', 'Sistem Informasi'),
(1000, '13120230006', 'MUH. FIKRY HAIKAL', 'A1', 'Sistem Informasi'),
(1001, '13120230010', 'TAUFIKUR RAMADANI JUNA FIRMANSYAH RUMKEL', 'A1', 'Sistem Informasi'),
(1002, '13120230012', 'IFAN WAHYUDI', 'A1', 'Sistem Informasi'),
(1003, '13120230019', 'WAHYUDIN SARKOL', 'A1', 'Sistem Informasi'),
(1004, '13120230021', 'MUH. TAUFIQ HIDAYAT', 'A1', 'Sistem Informasi'),
(1005, '13120230023', 'DANY DWI KUNCORO', 'A1', 'Sistem Informasi'),
(1006, '13120230024', 'AKHMAD KACHFI', 'A1', 'Sistem Informasi'),
(1007, '13120230033', 'NURFAJRI MUKMIN SAPUTRA', 'A1', 'Sistem Informasi'),
(1008, '13120230039', 'MUH. RIZQULLAH RASUL', 'A1', 'Sistem Informasi'),
(1009, '13120230041', 'MUH ILYAS', 'A1', 'Sistem Informasi'),
(1010, '13120230042', 'MUH. FIKRI AMAR', 'A1', 'Sistem Informasi'),
(1011, '13120230043', 'MUH NAUFAL FIRJATULLAH', 'A1', 'Sistem Informasi'),
(1012, '13120230045', 'MUHAMMAD ARIL ANUGRAH SETIAWAN', 'A1', 'Sistem Informasi'),
(1013, '13120230047', 'MUH. FAIZ RIDHA', 'A1', 'Sistem Informasi'),
(1014, '13120230050', 'MUH FARHAN B', 'A1', 'Sistem Informasi'),
(1015, '13120230051', 'AHMAD ZAHRAN UPUOLAT', 'A1', 'Sistem Informasi'),
(1016, '13120230053', 'ANDI MUH. EGI PRATAMA ARMIN', 'A1', 'Sistem Informasi'),
(1017, '13120230054', 'MUH. ARJUN B', 'A1', 'Sistem Informasi'),
(1018, '13120230001', 'SURYATI', 'B1', 'Sistem Informasi'),
(1019, '13120230004', 'NURUL AZIZAH PUTERI', 'B1', 'Sistem Informasi'),
(1020, '13120230007', 'MILDA SRIANI', 'B1', 'Sistem Informasi'),
(1021, '13120230008', 'ITAMA', 'B1', 'Sistem Informasi'),
(1022, '13120230009', 'KIRANA WAHYU ASTRININGTYAS', 'B1', 'Sistem Informasi'),
(1023, '13120230011', 'NUR HIKMAH CAHYANI. HS', 'B1', 'Sistem Informasi'),
(1024, '13120230013', 'NURLAILA NABILA', 'B1', 'Sistem Informasi'),
(1025, '13120230014', 'DEWI APRILIANI PUTRI', 'B1', 'Sistem Informasi'),
(1026, '13120230015', 'DIANI AMALIA PUTRI ASHARI', 'B1', 'Sistem Informasi'),
(1027, '13120230016', 'ULAN SARI', 'B1', 'Sistem Informasi'),
(1028, '13120230017', 'NUR SYIFA ISNAINI', 'B1', 'Sistem Informasi'),
(1029, '13120230018', 'A. RISKA RAHAYU', 'B1', 'Sistem Informasi'),
(1030, '13120230020', 'YUYUN NURUL SRI REZKY BAHARUDDIN', 'B1', 'Sistem Informasi'),
(1031, '13120230022', 'KANAYA PUTERI MARYUNDA', 'B1', 'Sistem Informasi'),
(1032, '13120230025', 'NABILA ELFIRA WANTI', 'B1', 'Sistem Informasi'),
(1033, '13120230026', 'A. AMALIAH SYAHRIR', 'B1', 'Sistem Informasi'),
(1034, '13120230027', 'ANANDA ISMI PRATIWI', 'B1', 'Sistem Informasi'),
(1035, '13120230028', 'MIFTAFUL JANNAH', 'B1', 'Sistem Informasi'),
(1036, '13120230029', 'SOFIA LAJAHARI', 'B1', 'Sistem Informasi'),
(1037, '13120230030', 'YULIATI LEK', 'B1', 'Sistem Informasi'),
(1038, '13120230031', 'AFRILIA DWI SHADRINA', 'B1', 'Sistem Informasi'),
(1039, '13120230032', 'NUR SA\'ADAH', 'B1', 'Sistem Informasi'),
(1040, '13120230034', 'AINUL MARDHIYAH', 'B1', 'Sistem Informasi'),
(1041, '13120230035', 'ANDI FARISAH ZHAFARINA RIDWAN', 'B1', 'Sistem Informasi'),
(1042, '13120230036', 'HAURA USMAN', 'B1', 'Sistem Informasi'),
(1043, '13120230037', 'ANDI RESKI ISLAMI MUIN', 'B1', 'Sistem Informasi'),
(1044, '13120230038', 'NADIAH ALYA KHIRANI', 'B1', 'Sistem Informasi'),
(1045, '13120230040', 'RIFKA FAUZIAH ANNISA', 'B1', 'Sistem Informasi'),
(1046, '13120230044', 'NABILAH MUTHIAH JULIANI SAMSIR', 'B1', 'Sistem Informasi'),
(1047, '13120230046', 'NADITA AUDINA ASTARI', 'B1', 'Sistem Informasi'),
(1048, '13120230048', 'NURUL HIDAYAH', 'B1', 'Sistem Informasi'),
(1049, '13120230049', 'A. SYIFA NUR SAUQIYA', 'B1', 'Sistem Informasi'),
(1050, '13120230052', 'NUR IREN GASRAWATY', 'B1', 'Sistem Informasi'),
(1051, '13120230058', 'ADILAH BALQIS DHIYAURROHMAN', 'B1', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` char(10) NOT NULL,
  `nama_matkul` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `tahun_ajaran` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `kode_matkul`, `nama_matkul`, `jurusan`, `tahun_ajaran`) VALUES
(1, '1303PPA207', 'Basis Data I', 'Teknik Informatika', 'Ganjil'),
(2, '1303PPA205', 'Algoritma & Pemrograman 2', 'Teknik Informatika', 'Ganjil'),
(3, '1303KKA203', 'Elektronika Dasar', 'Teknik Informatika', 'Ganjil'),
(4, '1303KKA403', 'Pemrograman Berorientasi Objek', 'Teknik Informatika', 'Ganjil'),
(5, '1303KKA408', 'Pemrograman Web', 'Teknik Informatika', 'Ganjil'),
(6, '1303KKA407', 'Jaringan Komputer', 'Teknik Informatika', 'Ganjil'),
(7, '1', 'Algoritma dan Struktur Data', 'Sistem Informasi', 'Ganjil'),
(8, '2', 'Pemrograman Mobile', 'Sistem Informasi', 'Ganjil'),
(9, '3', 'Multimedia', 'Sistem Informasi', 'Ganjil'),
(10, '1303PPA105', 'Algoritma & Pemrograman 1', 'Teknik Informatika', 'Genap'),
(11, '1303PPA104', 'Pengantar Teknologi Informasi', 'Teknik Informatika', 'Genap'),
(12, '1303PPA302', 'Struktur Data', 'Teknik Informatika', 'Genap'),
(13, '1303PPA304', 'Basis Data II', 'Teknik Informatika', 'Genap'),
(14, '1303KKA504', 'Microcontroller', 'Teknik Informatika', 'Genap'),
(15, '1313KKB109', 'Sistem dan Teknologi Informasi', 'Sistem Informasi', 'Genap'),
(16, '1313KKB306', 'Jaringan Komputer', 'Sistem Informasi', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_frekuensi`
--

CREATE TABLE `penilaian_frekuensi` (
  `id_penilaian_frekuensi` int(11) NOT NULL,
  `id_frekuensi` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_kehadiran` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `MID` int(3) DEFAULT NULL,
  `project` int(3) DEFAULT NULL,
  `nilai_akhir` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `praktikum`
--

CREATE TABLE `praktikum` (
  `id_praktikum` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `tugas_1` int(3) DEFAULT NULL,
  `tugas_2` int(3) DEFAULT NULL,
  `tugas_3` int(3) DEFAULT NULL,
  `tugas_4` int(3) DEFAULT NULL,
  `tugas_5` int(3) DEFAULT NULL,
  `tugas_6` int(3) DEFAULT NULL,
  `tugas_7` int(3) DEFAULT NULL,
  `tugas_8` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','asisten','dosen') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `role`) VALUES
(1, 'admin@umi.ac.id', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 'admin'),
(2, 'asisten@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(3, 'dosen@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(4, 'purwansyah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(5, 'aulfah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(6, 'sittirahmah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(7, 'wistianiastuti@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(8, 'sthajrahmansyur@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(9, 'hadrianaiddas@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(10, 'muhaliyazidmude@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(11, 'syahrulmubarak@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(12, 'ramdansatra@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(13, 'ramdaniah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(14, 'mardiyyahhasnawi@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(15, 'herdianti@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(16, 'andiwidya@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(17, 'dedyatmajaya@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(18, 'drdollyindra@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(19, 'siskaanraeni@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(20, 'erickirawadi@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(21, 'syamsulbahri@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(22, 'rosmiyani@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(23, 'ihwanaasad@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(24, 'amaliahfaradibah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(25, 'suwitopomalingo@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(26, 'muhammadarfahas@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(27, 'fitriyaniumar@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(28, 'huzainazis@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(29, 'lutfibudiilmawan@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(30, 'abdulrachmanmanga@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(31, 'lukmansyafie@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(32, 'tasrifhasanuddin@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(33, 'herman@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(34, 'farniwatifattah@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(35, 'niakurniati@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(36, 'irawati@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(37, 'lilisnurhayati@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(38, 'dewiwidyawati@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(39, 'sugiarti@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(40, 'yulitasalim@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(41, 'hjharlindal@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(42, 'poetrilokapitasari@umi.ac.id', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 'dosen'),
(43, '13020210242@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(44, '13120210008@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(45, '13020210287@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(46, '13020210023@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(47, '13020210066@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(48, '13020210205@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(49, '13020210134@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(50, '13020210048@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(51, '13120210005@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(52, '13020200103@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(53, '13120210004@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(54, '13020200318@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten'),
(55, '13020210053@umi.ac.id', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 'asisten');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk1_admin_user_idx` (`id_user`);

--
-- Indexes for table `asisten`
--
ALTER TABLE `asisten`
  ADD PRIMARY KEY (`id_asisten`),
  ADD UNIQUE KEY `NIM_UNIQUE` (`nim`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk1_asisten_user_idx` (`id_user`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nidn_UNIQUE` (`nidn`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk1_dosen_user_idx` (`id_user`);

--
-- Indexes for table `frekuensi`
--
ALTER TABLE `frekuensi`
  ADD PRIMARY KEY (`id_frekuensi`),
  ADD UNIQUE KEY `kode_frekuensi_UNIQUE` (`kode_frekuensi`),
  ADD KEY `fk1_frekuensi_dosen_idx` (`id_dosen`),
  ADD KEY `fk2_frekuensi_asisten1_idx` (`id_asisten1`),
  ADD KEY `fk3_frekuensi_asisten2_idx` (`id_asisten2`),
  ADD KEY `fk4_laboratorium_idx` (`id_laboratorium`),
  ADD KEY `fk5_mata_kuliah_idx` (`id_matkul`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id_laboratorium`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim_UNIQUE` (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`),
  ADD UNIQUE KEY `kode_matkul_UNIQUE` (`kode_matkul`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `fk2_mengajar_mata_kuliah_idx` (`id_matkul`),
  ADD KEY `fk1_mengajar_dosen_idx` (`id_dosen`);

--
-- Indexes for table `penilaian_frekuensi`
--
ALTER TABLE `penilaian_frekuensi`
  ADD PRIMARY KEY (`id_penilaian_frekuensi`),
  ADD KEY `fk3_nilai_kehadiran_idx` (`id_kehadiran`),
  ADD KEY `fk4_nilai_tugas_idx` (`id_tugas`),
  ADD KEY `fk2_nilai_frekuensi_mahasiswa_idx` (`id_mahasiswa`),
  ADD KEY `fk1_nilai_frekuensi_frekuensi` (`id_frekuensi`);

--
-- Indexes for table `praktikum`
--
ALTER TABLE `praktikum`
  ADD PRIMARY KEY (`id_praktikum`),
  ADD KEY `fk1_praktikum_mahasiswa_idx` (`id_mahasiswa`),
  ADD KEY `fk1_praktikum_mata_kuliah_idx` (`id_matkul`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asisten`
--
ALTER TABLE `asisten`
  MODIFY `id_asisten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `frekuensi`
--
ALTER TABLE `frekuensi`
  MODIFY `id_frekuensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id_laboratorium` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian_frekuensi`
--
ALTER TABLE `penilaian_frekuensi`
  MODIFY `id_penilaian_frekuensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `praktikum`
--
ALTER TABLE `praktikum`
  MODIFY `id_praktikum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk1_admin_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asisten`
--
ALTER TABLE `asisten`
  ADD CONSTRAINT `fk1_asisten_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `fk1_dosen_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `frekuensi`
--
ALTER TABLE `frekuensi`
  ADD CONSTRAINT `fk1_frekuensi_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2_frekuensi_asisten1` FOREIGN KEY (`id_asisten1`) REFERENCES `asisten` (`id_asisten`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk3_frekuensi_asisten2` FOREIGN KEY (`id_asisten2`) REFERENCES `asisten` (`id_asisten`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk4_laboratorium` FOREIGN KEY (`id_laboratorium`) REFERENCES `laboratorium` (`id_laboratorium`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk5_mata_kuliah` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk1_mengajar_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2_mengajar_mata_kuliah` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `penilaian_frekuensi`
--
ALTER TABLE `penilaian_frekuensi`
  ADD CONSTRAINT `fk1_nilai_frekuensi_frekuensi` FOREIGN KEY (`id_frekuensi`) REFERENCES `frekuensi` (`id_frekuensi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2_nilai_frekuensi_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk3_nilai_kehadiran` FOREIGN KEY (`id_kehadiran`) REFERENCES `kehadiran` (`id_kehadiran`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk4_nilai_tugas` FOREIGN KEY (`id_tugas`) REFERENCES `tugas` (`id_tugas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `praktikum`
--
ALTER TABLE `praktikum`
  ADD CONSTRAINT `fk1_praktikum_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk1_praktikum_mata_kuliah` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
