-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 01:48 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispak`
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
  `kode_kesimpulan` int(11) NOT NULL,
  `solusi` varchar(50) NOT NULL,
  `fakta` varchar(100) NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kesimpulan`
--

INSERT INTO `tb_kesimpulan` (`kode_kesimpulan`, `solusi`, `fakta`, `oleh`, `status`) VALUES
(1, 'D3 Teknik Mesin', 'Senang bekerja dengan alat dan mesin', 'pakar', 'setuju'),
(2, 'D3 Perawatan Alat Berat', 'Senang bekerja dengan alat dan mesin', 'pakar', 'setuju'),
(3, 'D3 Teknik Otomotif', 'Suka memperbaiki kendaraan atau alat elektronik', 'pakar', 'setuju'),
(4, 'D3 Elektronika', 'Suka memperbaiki kendaraan atau alat elektronik', 'pakar', 'setuju'),
(5, 'D3 Teknik Konstruksi Sipil', 'Tertarik bekerja di lapangan daripada di kantor', 'pakar', 'setuju'),
(6, 'D3 Teknik Konversi Energi', 'Tertarik bekerja di lapangan daripada di kantor', 'pakar', 'setuju'),
(7, 'D3 Teknik Konversi Energi (PSDKU Kolaka)', 'Lebih suka pekerjaan fisik daripada pekerjaan yang melibatkan banyak perhitungan', 'pakar', 'setuju'),
(8, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Lebih suka pekerjaan fisik daripada pekerjaan yang melibatkan banyak perhitungan', 'pakar', 'setuju'),
(9, 'D4 Teknologi Kimia Industri', 'Menikmati pekerjaan yang membutuhkan keterampilan teknis atau tangan', 'pakar', 'setuju'),
(10, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Menikmati pekerjaan yang membutuhkan keterampilan teknis atau tangan', 'pakar', 'setuju'),
(11, 'D4 Teknik Mekatronika', 'Suka merakit atau membongkar perangkat keras', 'pakar', 'setuju'),
(12, 'D4 Teknik Manufaktur', 'Suka merakit atau membongkar perangkat keras', 'pakar', 'setuju'),
(13, 'D3 Analisis Kimia', 'Senang menganalisis data untuk menemukan solusi', 'pakar', 'setuju'),
(14, 'D3 Telekomunikasi', 'Senang menganalisis data untuk menemukan solusi', 'pakar', 'setuju'),
(15, 'D4 Teknologi Kimia Industri', 'Tertarik dengan eksperimen ilmiah', 'pakar', 'setuju'),
(16, 'D4 Teknologi Rekayasa Kimia Berkelanjutan', 'Tertarik dengan eksperimen ilmiah', 'pakar', 'setuju'),
(17, 'D3 Teknik Listrik', 'Menikmati memecahkan masalah yang kompleks', 'pakar', 'setuju'),
(18, 'D4 Teknik Pembangkit Energi', 'Menikmati memecahkan masalah yang kompleks', 'pakar', 'setuju'),
(19, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Suka mencari tahu bagaimana sesuatu bekerja', 'pakar', 'setuju'),
(20, 'D3 Elektronika', 'Suka mencari tahu bagaimana sesuatu bekerja', 'pakar', 'setuju'),
(21, 'D4 Teknik Komputer dan Jaringan', 'Merasa tertantang oleh masalah teknis yang sulit', 'pakar', 'setuju'),
(22, 'D4 Teknologi Multimedia dan Jaringan', 'Merasa tertantang oleh masalah teknis yang sulit', 'pakar', 'setuju'),
(23, 'D4 Teknologi Rekayasa Energi Terbarukan', 'Lebih suka pekerjaan yang melibatkan penelitian dan penemuan', 'pakar', 'setuju'),
(24, 'D4 Teknik Pembangkit Energi', 'Lebih suka pekerjaan yang melibatkan penelitian dan penemuan', 'pakar', 'setuju'),
(25, 'D4 Perancangan Bangunan Gedung', 'Senang berkreasi dengan desain atau seni', 'pakar', 'setuju'),
(26, 'D4 Teknologi Multimedia dan Jaringan', 'Senang berkreasi dengan desain atau seni', 'pakar', 'setuju'),
(27, 'D4 Jasa Konstruksi', 'Lebih suka bekerja di lingkungan yang fleksibel dan tidak terstruktur', 'pakar', 'setuju'),
(28, 'D4 Perancangan Bangunan Gedung', 'Lebih suka bekerja di lingkungan yang fleksibel dan tidak terstruktur', 'pakar', 'setuju'),
(29, 'D4 Teknik Multimedia dan Jaringan', 'Menikmati pekerjaan yang memungkinkan mengekspresikan kreativitas', 'pakar', 'setuju'),
(30, 'D4 Teknologi Rekayasa Jaringan Telekomunikasi', 'Menikmati pekerjaan yang memungkinkan mengekspresikan kreativitas', 'pakar', 'setuju'),
(31, 'D3 Teknik Konstruksi Gedung', 'Tertarik dengan bidang arsitektur atau desain interior', 'pakar', 'setuju'),
(32, 'D4 Perancangan Bangunan Gedung', 'Tertarik dengan bidang arsitektur atau desain interior', 'pakar', 'setuju'),
(33, 'D3 Teknik Konstruksi Gedung', 'Suka merancang atau menggambar proyek atau ide', 'pakar', 'setuju'),
(34, 'D4 Jasa Konstruksi', 'Suka merancang atau menggambar proyek atau ide', 'pakar', 'setuju'),
(35, 'D4 Teknik Multimedia dan Jaringan', 'Merasa puas ketika menciptakan sesuatu yang baru dan berbeda', 'pakar', 'setuju'),
(36, 'D4 Perancangan Bangunan Gedung', 'Merasa puas ketika menciptakan sesuatu yang baru dan berbeda', 'pakar', 'setuju'),
(37, 'D3 Administrasi Bisnis', 'Senang membantu orang lain memecahkan masalah mereka', 'pakar', 'setuju'),
(38, 'D4 Administrasi Bisnis', 'Senang membantu orang lain memecahkan masalah mereka', 'pakar', 'setuju'),
(39, 'D4 Akuntansi Manajerial', 'Merasa puas ketika bekerja sama dengan orang lain untuk mencapai tujuan bersama', 'pakar', 'setuju'),
(40, 'D3 Administrasi Bisnis', 'Merasa puas ketika bekerja sama dengan orang lain untuk mencapai tujuan bersama', 'pakar', 'setuju'),
(41, 'D4 Administrasi Bisnis', 'Tertarik dengan pekerjaan yang melibatkan komunikasi dengan banyak orang', 'pakar', 'setuju'),
(42, 'D4 Akuntansi Manajerial', 'Tertarik dengan pekerjaan yang melibatkan komunikasi dengan banyak orang', 'pakar', 'setuju'),
(43, 'D3 Administrasi Bisnis', 'Suka mengajar atau membimbing orang lain', 'pakar', 'setuju'),
(44, 'D4 Administrasi Bisnis', 'Suka mengajar atau membimbing orang lain', 'pakar', 'setuju'),
(45, 'D3 Akuntansi', 'Merasa senang ketika bisa membantu orang lain belajar hal baru', 'pakar', 'setuju'),
(46, 'D4 Akuntansi Manajerial', 'Merasa senang ketika bisa membantu orang lain belajar hal baru', 'pakar', 'setuju'),
(47, 'D3 Administrasi Bisnis', 'Lebih suka pekerjaan yang melibatkan interaksi langsung dengan orang lain', 'pakar', 'setuju'),
(48, 'D4 Administrasi Bisnis', 'Lebih suka pekerjaan yang melibatkan interaksi langsung dengan orang lain', 'pakar', 'setuju'),
(49, 'D3 Administrasi Bisnis', 'Tertarik dengan dunia bisnis dan manajemen', 'pakar', 'setuju'),
(50, 'D4 Akuntansi Manajerial', 'Tertarik dengan dunia bisnis dan manajemen', 'pakar', 'setuju'),
(51, 'D3 Administrasi Bisnis', 'Menikmati mengambil risiko untuk mencapai hasil yang lebih baik', 'pakar', 'setuju'),
(52, 'D4 Administrasi Bisnis', 'Menikmati mengambil risiko untuk mencapai hasil yang lebih baik', 'pakar', 'setuju'),
(53, 'D4 Akuntansi Manajerial', 'Merasa tertantang oleh kesempatan untuk memimpin proyek atau tim', 'pakar', 'setuju'),
(54, 'D4 Administrasi Bisnis', 'Merasa tertantang oleh kesempatan untuk memimpin proyek atau tim', 'pakar', 'setuju'),
(55, 'D3 Administrasi Bisnis', 'Tertarik dengan karier yang melibatkan penjualan atau pemasaran', 'pakar', 'setuju'),
(56, 'D4 Administrasi Bisnis', 'Tertarik dengan karier yang melibatkan penjualan atau pemasaran', 'pakar', 'setuju'),
(57, 'D4 Administrasi Bisnis', 'Lebih suka bekerja dalam posisi yang memungkinkan membuat keputusan penting', 'pakar', 'setuju'),
(58, 'D4 Akuntansi Manajerial', 'Lebih suka bekerja dalam posisi yang memungkinkan membuat keputusan penting', 'pakar', 'setuju'),
(59, 'D3 Akuntansi', 'Merasa tertantang oleh tugas yang melibatkan perencanaan strategi', 'pakar', 'setuju'),
(60, 'D4 Akuntansi Manajerial', 'Merasa tertantang oleh tugas yang melibatkan perencanaan strategi', 'pakar', 'setuju'),
(61, 'D3 Akuntansi', 'Senang bekerja dengan angka dan statistik', 'pakar', 'setuju'),
(62, 'D4 Akuntansi Manajerial', 'Senang bekerja dengan angka dan statistik', 'pakar', 'setuju'),
(63, 'D3 Akuntansi', 'Lebih suka pekerjaan yang terstruktur dan teratur', 'pakar', 'setuju'),
(64, 'D4 Akuntansi Manajerial', 'Lebih suka pekerjaan yang terstruktur dan teratur', 'pakar', 'setuju'),
(65, 'D3 Administrasi Bisnis', 'Merasa nyaman dengan tugas administratif seperti mengelola dokumen atau laporan', 'pakar', 'setuju'),
(66, 'D4 Administrasi Bisnis', 'Merasa nyaman dengan tugas administratif seperti mengelola dokumen atau laporan', 'pakar', 'setuju'),
(67, 'D3 Akuntansi', 'Tertarik dengan pekerjaan yang membutuhkan perhatian terhadap detail', 'pakar', 'setuju'),
(68, 'D4 Akuntansi Manajerial', 'Tertarik dengan pekerjaan yang membutuhkan perhatian terhadap detail', 'pakar', 'setuju'),
(69, 'D3 Akuntansi', 'Lebih suka bekerja dengan rutinitas yang tetap dan terencana', 'pakar', 'setuju'),
(70, 'D4 Administrasi Bisnis', 'Lebih suka bekerja dengan rutinitas yang tetap dan terencana', 'pakar', 'setuju'),
(71, 'D3 Administrasi Bisnis', 'Merasa senang ketika bisa mengatur dan menyusun data secara rapi', 'pakar', 'setuju'),
(72, 'D4 Akuntansi Manajerial', 'Merasa senang ketika bisa mengatur dan menyusun data secara rapi', 'pakar', 'setuju');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`) VALUES
('m1', 'Saya senang bekerja dengan alat dan mesin.'),
('m2', 'Saya suka memperbaiki kendaraan atau alat elektronik.'),
('m3', 'Saya tertarik bekerja di lapangan daripada di kantor.'),
('m4', 'Saya lebih suka pekerjaan fisik daripada pekerjaan yang melibatkan banyak perhitungan.'),
('m5', 'Saya menikmati pekerjaan yang membutuhkan keterampilan teknis atau tangan.'),
('m6', 'Saya suka merakit atau membongkar perangkat keras.'),
('m7', 'Saya senang menganalisis data untuk menemukan solusi.'),
('m8', 'Saya tertarik dengan eksperimen ilmiah.'),
('m9', 'Saya menikmati memecahkan masalah yang kompleks.'),
('m10', 'Saya suka mencari tahu bagaimana sesuatu bekerja.'),
('m11', 'Saya merasa tertantang oleh masalah teknis yang sulit.'),
('m12', 'Saya lebih suka pekerjaan yang melibatkan penelitian dan penemuan.'),
('m13', 'Saya senang berkreasi dengan desain atau seni.'),
('m14', 'Saya lebih suka bekerja di lingkungan yang fleksibel dan tidak terstruktur.'),
('m15', 'Saya menikmati pekerjaan yang memungkinkan saya untuk mengekspresikan kreativitas saya.'),
('m16', 'Saya tertarik dengan bidang arsitektur atau desain interior.'),
('m17', 'Saya suka merancang atau menggambar proyek atau ide.'),
('m18', 'Saya merasa puas ketika saya menciptakan sesuatu yang baru dan berbeda.'),
('m19', 'Saya senang membantu orang lain memecahkan masalah mereka.'),
('m20', 'Saya merasa puas ketika bekerja sama dengan orang lain untuk mencapai tujuan bersama.'),
('m21', 'Saya tertarik dengan pekerjaan yang melibatkan komunikasi dengan banyak orang.'),
('m22', 'Saya suka mengajar atau membimbing orang lain.'),
('m23', 'Saya merasa senang ketika saya bisa membantu orang lain belajar hal baru.'),
('m24', 'Saya lebih suka pekerjaan yang melibatkan interaksi langsung dengan orang lain.'),
('m25', 'Saya tertarik dengan dunia bisnis dan manajemen.'),
('m26', 'Saya menikmati mengambil risiko untuk mencapai hasil yang lebih baik.'),
('m27', 'Saya merasa tertantang oleh kesempatan untuk memimpin proyek atau tim.'),
('m28', 'Saya tertarik dengan karier yang melibatkan penjualan atau pemasaran.'),
('m29', 'Saya lebih suka bekerja dalam posisi yang memungkinkan saya untuk membuat keputusan penting.'),
('m30', 'Saya merasa tertantang oleh tugas yang melibatkan perencanaan strategi.'),
('m31', 'Saya senang bekerja dengan angka dan statistik.'),
('m32', 'Saya lebih suka pekerjaan yang terstruktur dan teratur.'),
('m33', 'Saya merasa nyaman dengan tugas administratif seperti mengelola dokumen atau laporan.'),
('m34', 'Saya tertarik dengan pekerjaan yang membutuhkan perhatian terhadap detail.'),
('m35', 'Saya lebih suka bekerja dengan rutinitas yang tetap dan terencana.'),
('m36', 'Saya merasa senang ketika saya bisa mengatur dan menyusun data secara rapi.');

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


-- Masukkan data baru
INSERT INTO `tb_solusi` (`kode_solusi`, `isi_solusi`) VALUES
('S1', 'D3 Elektronika'),
('S2', 'D3 Teknik Listrik'),
('S3', 'D3 Telekomunikasi'),
('S4', 'D4 Teknologi Rekayasa Jaringan Telekomunikasi'),
('S5', 'D3 Teknik Konstruksi Sipil'),
('S6', 'D3 Teknik Konstruksi Gedung'),
('S7', 'D4 Jasa Konstruksi'),
('S8', 'D4 Perancangan Bangunan Gedung'),
('S9', 'D3 Analisis Kimia'),
('S10', 'D4 Teknologi Kimia Industri'),
('S11', 'D4 Teknologi Rekayasa Kimia Berkelanjutan'),
('S12', 'D3 Teknik Konversi Energi'),
('S13', 'D3 Perawatan Alat Berat'),
('S14', 'D3 Teknik Mesin'),
('S15', 'D3 Teknik Otomotif'),
('S16', 'D3 Teknik Konversi Energi (PSDKU Kolaka)'),
('S17', 'D4 Teknik Manufaktur'),
('S18', 'D4 Teknik Mekatronika'),
('S19', 'D4 Teknik Pembangkit Energi'),
('S20', 'D4 Teknologi Rekayasa Energi Terbarukan'),
('S21', 'D3 Akuntansi'),
('S22', 'D4 Akuntansi Manajerial'),
('S23', 'D3 Administrasi Bisnis'),
('S24', 'D4 Administrasi Bisnis'),
('S25', 'D4 Teknik Komputer dan Jaringan'),
('S26', 'D4 Teknologi Multimedia dan Jaringan');

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
  MODIFY `kode_kesimpulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
