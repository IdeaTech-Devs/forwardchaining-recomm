-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230513.2d5cb03077
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 11:06 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispaktest`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kesimpulan`
--

CREATE TABLE `tb_kesimpulan` (
  `kode_kesimpulan` int NOT NULL,
  `solusi` varchar(50) NOT NULL,
  `fakta` varchar(255) NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kesimpulan`
--

-- Dumping data for table `tb_kesimpulan`
INSERT INTO `tb_kesimpulan` (`kode_kesimpulan`, `solusi`, `fakta`, `oleh`, `status`) VALUES
(1, 'D3 Elektronika', 'Apakah Anda suka bekerja dengan detail kecil dan memeriksa rangkaian elektronik?', 'pakar', 'setuju'),
(2, 'D3 Elektronika', 'Apakah Anda tertarik mempelajari strategi pemasaran dan manajemen bisnis?', 'pakar', 'setuju'),
(3, 'D3 Elektronika', 'Apakah Anda suka bekerja di laboratorium dengan melakukan analisis sampel?', 'pakar', 'setuju'),
(4, 'D3 Elektronika', 'Apakah Anda tertarik dengan cara bahan kimia berinteraksi dan bereaksi?', 'pakar', 'setuju'),

(5, 'D3/D4 Teknik Listrik', 'Apakah Anda tertarik mempelajari bagaimana listrik bekerja dan mengalir dalam berbagai sistem?', 'pakar', 'setuju'),
(6, 'D3/D4 Teknik Listrik', 'Apakah Anda merasa nyaman bekerja dengan alat-alat yang memiliki kabel dan sambungan listrik?', 'pakar', 'setuju'),
(7, 'D3/D4 Teknik Listrik', 'Apakah Anda suka memperbaiki atau memasang instalasi listrik di rumah atau lingkungan?', 'pakar', 'setuju'),
(8, 'D3/D4 Teknik Listrik', 'Apakah Anda tertarik dengan teknologi yang digunakan dalam pembangkit listrik?', 'pakar', 'setuju'),
(9, 'D3/D4 Teknik Listrik', 'Apakah Anda tertarik memecahkan masalah teknis yang berkaitan dengan kelistrikan dan peralatan listrik?', 'pakar', 'setuju'),

(10, 'D3 Telekomunikasi', 'Apakah Anda menikmati mempelajari teknik jaringan komputer dan keamanannya?', 'pakar', 'setuju'),
(11, 'D3 Telekomunikasi', 'Apakah Anda tertarik mengembangkan dan mengelola jaringan telekomunikasi?', 'pakar', 'setuju'),
(12, 'D3 Telekomunikasi', 'Apakah Anda tertarik dengan proses perancangan infrastruktur telekomunikasi?', 'pakar', 'setuju'),
(13, 'D3 Telekomunikasi', 'Apakah Anda tertarik dengan teknologi digital dan perkembangannya?', 'pakar', 'setuju'),
(14, 'D3 Telekomunikasi', 'Apakah Anda tertarik dengan desain dan implementasi sistem berbasis teknologi?', 'pakar', 'setuju'),

(15, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Apakah Anda menikmati mempelajari teknik jaringan komputer dan keamanannya?', 'pakar', 'setuju'),
(16, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Apakah Anda tertarik mengembangkan dan mengelola jaringan telekomunikasi?', 'pakar', 'setuju'),
(17, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Apakah Anda tertarik dengan proses perancangan infrastruktur telekomunikasi?', 'pakar', 'setuju'),
(18, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Apakah Anda tertarik dengan teknologi digital dan perkembangannya?', 'pakar', 'setuju'),
(19, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Apakah Anda tertarik dengan desain dan implementasi sistem berbasis teknologi?', 'pakar', 'setuju'),

(20, 'D3 Teknik Konstruksi Sipil', 'Apakah Anda suka memahami proses konstruksi seperti pembangunan jalan dan jembatan?', 'pakar', 'setuju'),
(21, 'D3 Teknik Konstruksi Sipil', 'Apakah Anda suka merencanakan dan mengelola proyek konstruksi?', 'pakar', 'setuju'),
(22, 'D3 Teknik Konstruksi Sipil', 'Apakah Anda tertarik dengan pekerjaan yang membutuhkan perencanaan struktur?', 'pakar', 'setuju'),
(23, 'D3 Teknik Konstruksi Sipil', 'Apakah Anda merasa puas saat bekerja dengan alat berat dan di lingkungan lapangan?', 'pakar', 'setuju'),

(24, 'D3 Teknik Konstruksi Gedung', 'Apakah Anda tertarik memecahkan masalah teknis yang berkaitan dengan kelistrikan dan peralatan listrik?', 'pakar', 'setuju'),
(25, 'D3 Teknik Konstruksi Gedung', 'Apakah Anda merasa nyaman bekerja dengan teknologi yang berhubungan dengan energi terbarukan?', 'pakar', 'setuju'),
(26, 'D3 Teknik Konstruksi Gedung', 'Apakah Anda suka membuat desain bangunan yang estetis dan fungsional?', 'pakar', 'setuju'),
(27, 'D3 Teknik Konstruksi Gedung', 'Apakah Anda tertarik dengan teknologi dan metode terbaru dalam konstruksi bangunan?', 'pakar', 'setuju'),

(28, 'D4 Jasa Konstruksi', 'Apakah Anda suka merencanakan dan mengelola proyek konstruksi?', 'pakar', 'setuju'),
(29, 'D4 Jasa Konstruksi', 'Apakah Anda merasa tertarik dengan manajemen proyek yang membutuhkan koordinasi tinggi?', 'pakar', 'setuju'),
(30, 'D4 Jasa Konstruksi', 'Apakah Anda suka menganalisis bagaimana proyek dapat berjalan lebih efisien?', 'pakar', 'setuju'),
(31, 'D4 Jasa Konstruksi', 'Apakah Anda tertarik dengan peran pengawasan dalam proyek konstruksi?', 'pakar', 'setuju'),

(32, 'D4 Perancangan Bangunan Gedung', 'Apakah Anda suka mendesain sesuatu yang unik dan bermanfaat bagi banyak orang?', 'pakar', 'setuju'),
(33, 'D4 Perancangan Bangunan Gedung', 'Apakah Anda tertarik menggunakan perangkat lunak desain untuk membuat gambar bangunan?', 'pakar', 'setuju'),
(34, 'D4 Perancangan Bangunan Gedung', 'Apakah Anda suka memikirkan solusi desain yang inovatif dan ramah lingkungan?', 'pakar', 'setuju'),
(35, 'D4 Perancangan Bangunan Gedung', 'Apakah Anda tertarik mempelajari proses kimia dalam skala industri?', 'pakar', 'setuju'),

(36, 'D3 Teknik Konversi Energi', 'Apakah Anda tertarik mempelajari bagaimana energi diubah dari satu bentuk ke bentuk lain?', 'pakar', 'setuju'),
(37, 'D3 Teknik Konversi Energi', 'Apakah Anda suka bekerja dengan mesin pembangkit energi seperti turbin atau generator?', 'pakar', 'setuju'),
(38, 'D3 Teknik Konversi Energi', 'Apakah Anda suka menganalisis dan meningkatkan performa pembangkit energi?', 'pakar', 'setuju'),
(39, 'D3 Teknik Konversi Energi', 'Apakah Anda tertarik dengan teknologi yang digunakan dalam pembangkit listrik?', 'pakar', 'setuju'),

(40, 'D3 Perawatan Alat Berat', 'Apakah Anda suka bekerja dengan alat berat dan memahami cara kerjanya?', 'pakar', 'setuju'),
(41, 'D3 Perawatan Alat Berat', 'Apakah Anda suka mempelajari teknik pengolahan yang lebih ramah lingkungan?', 'pakar', 'setuju'),
(42, 'D3 Perawatan Alat Berat', 'Apakah Anda merasa nyaman bekerja di lingkungan teknis yang melibatkan alat besar?', 'pakar', 'setuju'),
(43, 'D3 Perawatan Alat Berat', 'Apakah Anda suka memecahkan masalah teknis pada alat berat?', 'pakar', 'setuju'),

(44, 'D3 Teknik Mesin', 'Apakah Anda tertarik merancang dan memperbaiki mesin?', 'pakar', 'setuju'),
(45, 'D3 Teknik Mesin', 'Apakah Anda suka bekerja dengan bagian mekanik dan memahami cara kerjanya?', 'pakar', 'setuju'),
(46, 'D3 Teknik Mesin', 'Apakah Anda tertarik dengan cara meningkatkan kinerja mesin?', 'pakar', 'setuju'),
(47, 'D3 Teknik Mesin', 'Apakah Anda suka bekerja dengan detail kecil dan memeriksa rangkaian elektronik?', 'pakar', 'setuju'),

(48, 'D3 Teknik Otomotif', 'Apakah Anda suka mempelajari bagaimana mesin kendaraan bermotor bekerja?', 'pakar', 'setuju'),
(49, 'D3 Teknik Otomotif', 'Apakah Anda merasa tertarik untuk memperbaiki mobil atau motor?', 'pakar', 'setuju'),
(50, 'D3 Teknik Otomotif', 'Apakah Anda suka mengikuti perkembangan teknologi di industri otomotif?', 'pakar', 'setuju'),
(51, 'D3 Teknik Otomotif', 'Apakah Anda merasa puas saat berhasil memperbaiki mesin kendaraan?', 'pakar', 'setuju'),

(52, 'D4 Teknik Manufaktur', 'Apakah Anda suka mempelajari proses produksi barang dalam skala besar?', 'pakar', 'setuju'),
(53, 'D4 Teknik Manufaktur', 'Apakah Anda tertarik mencari cara untuk meningkatkan efisiensi proses produksi?', 'pakar', 'setuju'),
(54, 'D4 Teknik Manufaktur', 'Apakah Anda merasa nyaman bekerja di lingkungan pabrik dengan teknologi canggih?', 'pakar', 'setuju'),
(55, 'D4 Teknik Manufaktur', 'Apakah Anda suka merancang dan mengembangkan produk baru?', 'pakar', 'setuju'),

(56, 'D4 Teknik Mekatronika', 'Apakah Anda tertarik dengan penggabungan mekanik, elektronik, dan komputer dalam satu sistem?', 'pakar', 'setuju'),
(57, 'D4 Teknik Mekatronika', 'Apakah Anda suka merancang sistem otomatis seperti robot?', 'pakar', 'setuju'),
(58, 'D4 Teknik Mekatronika', 'Apakah Anda tertarik dengan energi terbarukan seperti angin atau matahari?', 'pakar', 'setuju'),
(59, 'D4 Teknik Mekatronika', 'Apakah Anda tertarik dengan sistem kendali dan teknologi robotik?', 'pakar', 'setuju'),

(60, 'D4 Teknik Pembangkit Energi', 'Apakah Anda tertarik bekerja di pembangkit listrik dan memahami cara kerjanya?', 'pakar', 'setuju'),
(61, 'D4 Teknik Pembangkit Energi', 'Apakah Anda suka menganalisis dan meningkatkan performa pembangkit energi?', 'pakar', 'setuju'),
(62, 'D4 Teknik Pembangkit Energi', 'Apakah Anda merasa nyaman bekerja dengan teknologi yang berhubungan dengan energi terbarukan?', 'pakar', 'setuju'),
(63, 'D4 Teknik Pembangkit Energi', 'Apakah Anda tertarik dengan pengoperasian dan pemeliharaan sistem pembangkit energi?', 'pakar', 'setuju'),

(64, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Apakah Anda tertarik dengan energi terbarukan seperti angin atau matahari?', 'pakar', 'setuju'),
(65, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Apakah Anda suka mencari solusi untuk energi yang lebih ramah lingkungan?', 'pakar', 'setuju'),
(66, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Apakah Anda merasa nyaman bekerja di lingkungan teknis yang melibatkan alat besar?', 'pakar', 'setuju'),
(67, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Apakah Anda tertarik dengan inovasi teknologi yang memanfaatkan energi alam?', 'pakar', 'setuju'),

(68, 'D3 Analisis Kimia', 'Apakah Anda suka bekerja di laboratorium dengan melakukan analisis sampel?', 'pakar', 'setuju'),
(69, 'D3 Analisis Kimia', 'Apakah Anda tertarik dengan cara bahan kimia berinteraksi dan bereaksi?', 'pakar', 'setuju'),
(70, 'D3 Analisis Kimia', 'Apakah Anda suka bekerja dengan alat laboratorium dan teknik analisis?', 'pakar', 'setuju'),
(71, 'D3 Analisis Kimia', 'Apakah Anda merasa puas saat menemukan hasil dari analisis bahan kimia?', 'pakar', 'setuju'),

(72, 'D4 Teknologi Kimia Industri', 'Apakah Anda tertarik mempelajari proses kimia dalam skala industri?', 'pakar', 'setuju'),
(73, 'D4 Teknologi Kimia Industri', 'Apakah Anda suka mengembangkan cara baru untuk meningkatkan efisiensi proses kimia?', 'pakar', 'setuju'),
(74, 'D4 Teknologi Kimia Industri', 'Apakah Anda tertarik bekerja dengan teknologi pengolahan bahan di pabrik kimia?', 'pakar', 'setuju'),
(75, 'D4 Teknologi Kimia Industri', 'Apakah Anda suka mempelajari teknik pengolahan yang lebih ramah lingkungan?', 'pakar', 'setuju'),

(76, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Apakah Anda tertarik dengan teknologi yang membuat proses kimia lebih ramah lingkungan?', 'pakar', 'setuju'),
(77, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Apakah Anda suka mencari cara inovatif untuk mengurangi dampak negatif dari proses kimia?', 'pakar', 'setuju'),
(78, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Apakah Anda tertarik bekerja pada proyek yang berfokus pada keberlanjutan dalam industri kimia?', 'pakar', 'setuju'),
(79, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Apakah Anda merasa puas ketika berhasil mengembangkan solusi kimia yang lebih hijau?', 'pakar', 'setuju'),

(80, 'D3 Akuntansi', 'Apakah Anda merasa nyaman bekerja dengan angka dan laporan keuangan?', 'pakar', 'setuju'),
(81, 'D3 Akuntansi', 'Apakah Anda tertarik dengan pengelolaan pajak dan perencanaan keuangan?', 'pakar', 'setuju'),
(82, 'D3 Akuntansi', 'Apakah Anda suka pekerjaan yang membutuhkan ketelitian dan analisis detail?', 'pakar', 'setuju'),
(83, 'D3 Akuntansi', 'Apakah Anda tertarik menganalisis data keuangan untuk mendukung strategi dan pengambilan keputusan bisnis?', 'pakar', 'setuju'),

(84, 'D4 Akuntansi Manajerial', 'Apakah Anda merasa nyaman bekerja dengan angka dan laporan keuangan?', 'pakar', 'setuju'),
(85, 'D4 Akuntansi Manajerial', 'Apakah Anda tertarik dengan pengelolaan pajak dan perencanaan keuangan?', 'pakar', 'setuju'),
(86, 'D4 Akuntansi Manajerial', 'Apakah Anda suka pekerjaan yang membutuhkan ketelitian dan analisis detail?', 'pakar', 'setuju'),
(87, 'D4 Akuntansi Manajerial', 'Apakah Anda tertarik menganalisis data keuangan untuk mendukung strategi dan pengambilan keputusan bisnis?', 'pakar', 'setuju'),

(88, 'D3/D4 Administrasi Bisnis', 'Apakah Anda suka bekerja dengan orang dan mengelola operasional bisnis?', 'pakar', 'setuju'),
(89, 'D3/D4 Administrasi Bisnis', 'Apakah Anda tertarik mempelajari strategi pemasaran dan manajemen bisnis?', 'pakar', 'setuju'),
(90, 'D3/D4 Administrasi Bisnis', 'Apakah Anda suka mencari solusi untuk energi yang lebih ramah lingkungan?', 'pakar', 'setuju'),
(91, 'D3/D4 Administrasi Bisnis', 'Apakah Anda suka merencanakan dan mengelola administrasi bisnis secara efisien?', 'pakar', 'setuju'),

(92, 'D4 Teknik Komputer dan Jaringan', 'Apakah Anda suka menganalisis peluang pasar dan mengembangkan strategi bisnis yang efektif?', 'pakar', 'setuju'),
(93, 'D4 Teknik Komputer dan Jaringan', 'Apakah Anda suka memecahkan masalah teknis dalam jaringan komputer?', 'pakar', 'setuju'),
(94, 'D4 Teknik Komputer dan Jaringan', 'Apakah Anda tertarik menganalisis data keuangan untuk mendukung strategi dan pengambilan keputusan bisnis?', 'pakar', 'setuju'),
(95, 'D4 Teknik Komputer dan Jaringan', 'Apakah Anda suka menganalisis bagaimana proyek dapat berjalan lebih efisien?', 'pakar', 'setuju'),

(96, 'D4 Teknik Multimedia dan Jaringan', 'Apakah Anda suka bekerja dengan desain visual dan konten digital?', 'pakar', 'setuju'),
(97, 'D4 Teknik Multimedia dan Jaringan', 'Apakah Anda tertarik mengembangkan aplikasi multimedia yang interaktif?', 'pakar', 'setuju'),
(98, 'D4 Teknik Multimedia dan Jaringan', 'Apakah Anda suka mempelajari cara teknologi jaringan mendukung multimedia?', 'pakar', 'setuju'),
(99, 'D4 Teknik Multimedia dan Jaringan', 'Apakah Anda suka mempelajari cara teknologi jaringan mendukung multimedia?', 'pakar', 'setuju');
-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(200) NOT NULL,
  `next_question_yes` varchar(50) DEFAULT NULL,
  `next_question_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tb_pertanyaan`
--
INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`, `next_question_yes`, `next_question_no`) VALUES
('m1', 'Apakah Anda tertarik dengan pengelolaan pajak dan perencanaan keuangan?', 'm2', 'm3'),
('m2', 'Apakah Anda tertarik mempelajari strategi pemasaran dan manajemen bisnis?', 'm4', 'm5'),
('m3', 'Apakah Anda suka bekerja di laboratorium dengan melakukan analisis sampel?', 'm6', 'm7'),
('m4', 'Apakah Anda tertarik dengan cara bahan kimia berinteraksi dan bereaksi?', 'm8', 'm9'),
('m5', 'Apakah Anda suka bekerja dengan bagian mekanik dan memahami cara kerjanya?', 'm10', 'm11'),
('m6', 'Apakah Anda suka mencari solusi untuk energi yang lebih ramah lingkungan?', 'm12', 'm13'),
('m7', 'Apakah Anda tertarik dengan sistem kendali dan teknologi robotik?', 'm14', 'm15'),
('m8', 'Apakah Anda suka memperbaiki atau memasang instalasi listrik di rumah atau lingkungan?', 'm16', 'm17'),
('m9', 'Apakah Anda suka bekerja dengan mesin pembangkit energi seperti turbin atau generator?', 'm18', 'm19'),
('m10', 'Apakah Anda tertarik dengan peran pengawasan dalam proyek konstruksi?', 'm20', 'm21'),
('m11', 'Apakah Anda tertarik dengan penggabungan mekanik, elektronik, dan komputer dalam satu sistem?', 'm22', 'm23'),
('m12', 'Apakah Anda suka memecahkan masalah teknis pada alat berat?', 'm24', 'm25'),
('m13', 'Apakah Anda merasa nyaman bekerja dengan alat-alat yang memiliki kabel dan sambungan listrik?', 'm26', 'm27'),
('m14', 'Apakah Anda suka mengikuti perkembangan teknologi di industri otomotif?', 'm28', 'm29'),
('m15', 'Apakah Anda suka memahami proses konstruksi seperti pembangunan jalan dan jembatan?', 'm30', 'm31'),
('m16', 'Apakah Anda suka merencanakan dan mengelola proyek konstruksi?', 'm32', 'm33'),
('m17', 'Apakah Anda suka mengelola dan merancang jaringan komunikasi serta memahami teknologi terbaru di bidang ini?', 'm34', 'm35'),
('m18', 'Apakah Anda suka mendesain sesuatu yang unik dan bermanfaat bagi banyak orang?', 'm36', 'm37'),
('m19', 'Apakah Anda tertarik memecahkan masalah teknis yang berkaitan dengan kelistrikan dan peralatan listrik?', 'm38', 'm39'),
('m20', 'Apakah Anda merasa nyaman bekerja dengan teknologi yang berhubungan dengan energi terbarukan?', 'm40', 'm41'),
('m21', 'Apakah Anda tertarik menggunakan perangkat lunak desain untuk membuat gambar bangunan?', 'm42', 'm43'),
('m22', 'Apakah Anda suka memecahkan masalah teknis dalam jaringan komunikasi?', 'm44', 'm45'),
('m23', 'Apakah Anda tertarik dengan teknologi yang digunakan dalam pembangkit listrik?', 'm46', 'm47'),
('m24', 'Apakah Anda tertarik mempelajari bagaimana listrik bekerja dan mengalir dalam berbagai sistem?', 'm48', 'm49'),
('m25', 'Apakah Anda suka merencanakan dan mengelola administrasi bisnis secara efisien?', 'm50', 'm51'),
('m26', 'Apakah Anda suka menganalisis peluang pasar dan mengembangkan strategi bisnis yang efektif?', 'm52', 'm53'),
('m27', 'Apakah Anda merasa tertarik untuk memperbaiki mobil atau motor?', 'm54', 'm55'),
('m28', 'Apakah Anda suka merancang sistem otomatis seperti robot?', 'm56', 'm57'),
('m29', 'Apakah Anda tertarik dengan teknologi dan metode terbaru dalam konstruksi bangunan?', 'm58', 'm59'),
('m30', 'Apakah Anda tertarik mempelajari proses kimia dalam skala industri?', 'm60', 'm61'),
('m31', 'Apakah Anda merasa puas saat menciptakan konten yang kreatif dan inovatif?', 'm62', 'm63'),
('m32', 'Apakah Anda tertarik dengan bagaimana perangkat bisa terhubung melalui jaringan?', 'm64', 'm65'),
('m33', 'Apakah Anda suka mengembangkan cara baru untuk meningkatkan efisiensi proses kimia?', 'm66', 'm67'),
('m34', 'Apakah Anda merasa tertarik dengan manajemen proyek yang membutuhkan koordinasi tinggi?', 'm68', 'm69'),
('m35', 'Apakah Anda suka bekerja dengan alat berat dan memahami cara kerjanya?', 'm70', 'm71'),
('m36', 'Apakah Anda suka mempelajari teknik pengolahan yang lebih ramah lingkungan?', 'm72', 'm73'),
('m37', 'Apakah Anda suka menganalisis dan meningkatkan performa pembangkit energi?', 'm74', 'm75'),
('m38', 'Apakah Anda suka memikirkan solusi desain yang inovatif dan ramah lingkungan?', 'm76', 'm77'),
('m39', 'Apakah Anda suka memecahkan masalah teknis dalam jaringan komputer?', 'm78', 'm79'),
('m40', 'Apakah Anda tertarik dengan teknologi yang membuat proses kimia lebih ramah lingkungan?', 'm80', 'm81'),
('m41', 'Apakah Anda suka membuat desain bangunan yang estetis dan fungsional?', 'm82', 'm83'),
('m42', 'Apakah Anda suka bekerja dengan detail kecil dan memeriksa rangkaian elektronik?', 'm84', 'm85'),
('m43', 'Apakah Anda merasa puas ketika berhasil mengembangkan solusi kimia yang lebih hijau?', 'm86', 'm87'),
('m44', 'Apakah Anda suka bekerja dengan desain visual dan konten digital?', 'm88', 'm89'),
('m45', 'Apakah Anda suka mempelajari proses produksi barang dalam skala besar?', 'm90', 'm91'),
('m46', 'Apakah Anda tertarik dengan inovasi teknologi yang memanfaatkan energi alam?', NULL, NULL),
('m47', 'Apakah Anda tertarik mencari cara untuk meningkatkan efisiensi proses produksi?', NULL, NULL),
('m48', 'Apakah Anda tertarik merancang dan memperbaiki mesin?', NULL, NULL),
('m49', 'Apakah Anda merasa nyaman bekerja dengan angka dan laporan keuangan?', NULL, NULL),
('m50', 'Apakah Anda suka pekerjaan yang membutuhkan ketelitian dan analisis detail?', NULL, NULL),
('m51', 'Apakah Anda tertarik dengan pekerjaan yang membutuhkan perencanaan struktur?', NULL, NULL),
('m52', 'Apakah Anda merasa puas saat menemukan hasil dari analisis bahan kimia?', NULL, NULL),
('m53', 'Apakah Anda tertarik dengan energi terbarukan seperti angin atau matahari?', NULL, NULL),
('m54', 'Apakah Anda suka merancang dan mengembangkan produk baru?', NULL, NULL),
('m55', 'Apakah Anda tertarik dengan pengoperasian dan pemeliharaan sistem pembangkit energi?', NULL, NULL),
('m56', 'Apakah Anda merasa nyaman bekerja di lingkungan pabrik dengan teknologi canggih?', NULL, NULL),
('m57', 'Apakah Anda tertarik dengan teknologi yang digunakan dalam pembangkit listrik?', NULL, NULL),
('m58', 'Apakah Anda tertarik mempelajari bagaimana energi diubah dari satu bentuk ke bentuk lain?', NULL, NULL),
('m59', 'Apakah Anda suka mempelajari bagaimana mesin kendaraan bermotor bekerja?', NULL, NULL),
('m60', 'Apakah Anda tertarik dengan pengelolaan pajak dan perencanaan keuangan?', NULL, NULL),
('m61', 'Apakah Anda merasa nyaman bekerja di lingkungan teknis yang melibatkan alat besar?', NULL, NULL),
('m62', 'Apakah Anda tertarik bekerja di pembangkit listrik dan memahami cara kerjanya?', NULL, NULL),
('m63', 'Apakah Anda merasa puas saat berhasil memperbaiki mesin kendaraan?', NULL, NULL),
('m64', 'Apakah Anda suka mempelajari cara teknologi jaringan mendukung multimedia?', NULL, NULL),
('m65', 'Apakah Anda tertarik bekerja pada proyek yang berfokus pada keberlanjutan dalam industri kimia?', NULL, NULL),
('m66', 'Apakah Anda suka merancang sistem otomatis seperti robot?', NULL, NULL),
('m67', 'Apakah Anda tertarik dengan teknologi yang digunakan dalam pembangkit listrik?', NULL, NULL),
('m68', 'Apakah Anda merasa puas saat bekerja dengan alat berat dan di lingkungan lapangan?', NULL, NULL),
('m69', 'Apakah Anda tertarik bekerja dengan teknologi pengolahan bahan di pabrik kimia?', NULL, NULL),
('m70', 'Apakah Anda suka mencari cara inovatif untuk mengurangi dampak negatif dari proses kimia?', NULL, NULL),
('m71', 'Apakah Anda tertarik dengan cara kerja sinyal dan jaringan yang digunakan untuk komunikasi?', NULL, NULL),
('m72', 'Apakah Anda tertarik dengan cara meningkatkan kinerja mesin?', NULL, NULL),
('m73', 'Apakah Anda tertarik dengan teknologi yang membuat komunikasi jarak jauh menjadi mungkin?', NULL, NULL),
('m74', 'Apakah Anda suka bekerja dengan alat laboratorium dan teknik analisis?', NULL, NULL),
('m75', 'Apakah Anda tertarik dengan proses perancangan dan pembangunan gedung?', NULL, NULL),
('m76', 'Apakah Anda tertarik dengan cara bahan kimia berinteraksi dan bereaksi?', NULL, NULL),
('m77', 'Apakah Anda tertarik mempelajari bagaimana mengatur dan mengelola keuangan perusahaan?', NULL, NULL),
('m78', 'Apakah Anda suka bekerja dengan angka dan laporan keuangan?', NULL, NULL),
('m79', 'Apakah Anda suka bekerja dengan orang dan mengelola operasional bisnis?', NULL, NULL),
('m80', 'Apakah Anda suka merencanakan dan mengelola administrasi bisnis secara efisien?', NULL, NULL),
('m81', 'Apakah Anda tertarik mengembangkan aplikasi multimedia yang interaktif?', NULL, NULL),
('m82', 'Apakah Anda suka mencari solusi untuk energi yang lebih ramah lingkungan?', NULL, NULL),
('m83', 'Apakah Anda tertarik menganalisis peluang pasar dan mengembangkan strategi bisnis yang efektif?', NULL, NULL),
('m84', 'Apakah Anda suka mempelajari teknik pengolahan yang lebih ramah lingkungan?', NULL, NULL),
('m85', 'Apakah Anda tertarik dengan teknologi yang membuat proses kimia lebih ramah lingkungan?', NULL, NULL),
('m86', 'Apakah Anda tertarik menganalisis data keuangan untuk mendukung strategi dan pengambilan keputusan bisnis?', NULL, NULL),
('m87', 'Apakah Anda suka menganalisis bagaimana proyek dapat berjalan lebih efisien?', NULL, NULL),
('m88', 'Apakah Anda suka bekerja dengan angka dan laporan keuangan?', NULL, NULL),
('m89', 'Apakah Anda tertarik mengembangkan aplikasi multimedia yang interaktif?', NULL, NULL),
('m90', 'Apakah Anda merasa tertarik dengan manajemen proyek yang membutuhkan koordinasi tinggi?', NULL, NULL),
('m91', 'Apakah Anda suka mempelajari cara teknologi jaringan mendukung multimedia?', NULL, NULL);
-- --------------------------------------------------------

--
-- Table structure for table `tb_solusi`
--

CREATE TABLE `tb_solusi` (
  `kode_solusi` varchar(50) NOT NULL,
  `isi_solusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_solusi`
--

INSERT INTO `tb_solusi` (`kode_solusi`, `isi_solusi`) VALUES
('S1', 'D3 Elektronika'),
('S2', 'D3/D4 Teknik Listrik'),
('S3', 'D3 Telekomunikasi'),
('S4', 'D4 Teknologi Rekayasa Jaringan Telekomunikasi'),
('S5', 'D3 Teknik Konstruksi Sipil'),
('S6', 'D3 Teknik Konstruksi Gedung'),
('S7', 'D4 Jasa Konstruksi'),
('S8', 'D4 Perancangan Bangunan Gedung'),
('S9', 'D3 Teknik Konversi Energi'),
('S10', 'D3 Perawatan Alat Berat'),
('S11', 'D3 Teknik Mesin'),
('S12', 'D3 Teknik Otomotif'),
('S13', 'D4 Teknik Manufaktur'),
('S14', 'D4 Teknik Mekatronika'),
('S15', 'D4 Teknik Pembangkit Energi'),
('S16', 'D4 Teknologi Rekayasa Energi Terbarukan'),
('S17', 'D3 Analisis Kimia'),
('S18', 'D4 Teknologi Kimia Industri'),
('S19', 'D4 Teknologi Rekayasa Kimia Berkelanjutan'),
('S20', 'D3 Akuntansi'),
('S21', 'D4 Akuntansi Manajerial'),
('S22', 'D3/D4 Administrasi Bisnis'),
('S23', 'D4 Teknik Komputer dan Jaringan'),
('S24', 'D4 Teknik Multimedia dan Jaringan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  ADD PRIMARY KEY (`kode_kesimpulan`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indexes for table `tb_solusi`
--
ALTER TABLE `tb_solusi`
  ADD PRIMARY KEY (`kode_solusi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  MODIFY `kode_kesimpulan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
