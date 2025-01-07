-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 02:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ra_alfathunnisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `nm_user` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nm_user`, `username`, `password`, `level`) VALUES
(1, 'RA AL-FATHUNNISA', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `jabatan`, `email`, `foto`) VALUES
(24, 'FAUZI NOORSYABANI', '', 'Kepala Sekolah ', 'ozi@gmail.com', 'images.png'),
(28, 'Heru Iskandar', '', 'Investor', 'holyrezim@gmail.com', 'Untitled_design-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(5) NOT NULL,
  `jadwal` text NOT NULL,
  `syarat` text NOT NULL,
  `tempat` text NOT NULL,
  `biaya` varchar(100) NOT NULL,
  `kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `jadwal`, `syarat`, `tempat`, `biaya`, `kontak`) VALUES
(1, 'Pendaftaran 20 November 2024 (Gelombang 1) </br>', 'Foto Copy KK (Kartu Keluarga)</br>\r\nFoto Copy KIP (Kartu Indonesia Pintar)</br>\r\nFoto 4x6 Background Merah (2 Pcs)</br>\r\nFoto Copy Akta </br>\r\nFoto Copy Transkrip Nilai Legalisir (2 Pcs)</br>\r\nFoto Copy Ijazah Legalisir (2 Pcs)</br>', 'Jl. Pangkal Perjuangan Blok STM TK No.21, RT.3/RW.27, Tanjungpura, Kec. Karawang Barat, Kab. Karawang, 41316', '500.000', '<b>0897-7502-0604</b>');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `id` int(4) NOT NULL,
  `moto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`id`, `moto`) VALUES
(1, 'MENGEMBANGKAN POTENSI ANAK MELALUI METODE PEMBELAJARAN YANG MENYENANGKAN DAN BERBASIS KARAKTER ISLAMI');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kel` enum('Pria','Wanita') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Konghuch','Budha') NOT NULL,
  `nm_ayah` varchar(255) NOT NULL,
  `nm_ibu` varchar(255) NOT NULL,
  `job_ayah` varchar(255) NOT NULL,
  `kampung` varchar(255) NOT NULL,
  `rtrw` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `asal_sklh` varchar(255) NOT NULL,
  `jurusan` enum('Teknik Mesin','Teknik Pengelasan','Desain Grafis') NOT NULL,
  `no_siswa` varchar(255) NOT NULL,
  `no_ortu` varchar(255) NOT NULL,
  `tau_smk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id`, `nama_siswa`, `tempat`, `tgl_lahir`, `jenis_kel`, `agama`, `nm_ayah`, `nm_ibu`, `job_ayah`, `kampung`, `rtrw`, `desa`, `kecamatan`, `kabupaten`, `asal_sklh`, `jurusan`, `no_siswa`, `no_ortu`, `tau_smk`) VALUES
(21, 'Maryam', 'Bandung', '2000-02-14', 'Wanita', 'Islam', 'Eka', 'Sintia', 'Tentara', 'kcp', '01/09', 'Ramayana', 'Cikampek', 'Karawang', 'Techno', 'Teknik Pengelasan', '087898687845', '124565451232', 'Instagram'),
(25, 'Fauzi Noor syabani', '', '0000-00-00', 'Pria', 'Islam', 'aaa', '32ddd', 'ew', 'rambutan', '1', 'jepang', 'ssss', '', '', 'Teknik Mesin', '', '111', ''),
(44, 'ica', 'cikatomas', '2006-10-10', 'Wanita', 'Islam', 'santoso', 'aisyah', 'DPRD', 'rambutan', '10/01', 'Sukamulya', 'delhi', '', '', 'Teknik Mesin', '', '0812103923', ''),
(45, 'icaa', 'Tasikmalaya', '2012-10-20', 'Wanita', 'Islam', 'Asep', 'Ai', 'Bruh', 'Buruh', '1/2', 'Kamulyan', 'Cikatomas', '', '', 'Teknik Mesin', '', '081210121232', '');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(5) NOT NULL,
  `profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `profil`) VALUES
(1, 'RA Al-Fathunnisa\r\n<br>\r\n“Selamat datang di Raudhatul Athfal (RA) Al-Fathunnisa, tempatlahir di mana pendidikan anak usia dini (PAUD) dipadu dengan nilai-nilai islami yang kuat. Kami berkomitmen untuk menyediakan lingkungan belajar yang menyenangkan dan penuh kasih sayang, di mana anak-anak dapat berkembang secara optimal melalui permainan dan pembelajaran yang terstruktur”');

-- --------------------------------------------------------

--
-- Table structure for table `testi`
--

CREATE TABLE `testi` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `testi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testi`
--

INSERT INTO `testi` (`id`, `nama`, `testi`) VALUES
(1, 'Fabiano Milan Almufqi', 'RA Bagus dan akan berkembang !'),
(2, 'Neng Hera Nuraeni', 'Sekolah yang berkembang pesat !'),
(3, 'Anis Sulistyowati', 'Pengajarnya yang handal !'),
(4, 'aisha nadeen', 'Alat pembelajaran yang lengkap\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `id` int(5) NOT NULL,
  `tujuan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tujuan`
--

INSERT INTO `tujuan` (`id`, `tujuan`) VALUES
(1, 'Menjadi sekolah Go International');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` int(5) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visi`, `misi`) VALUES
(1, 'MENGEMBANGKAN POTENSI ANAK MELALUI METODE PEMBELAJARAN YANG MENYENANGKAN DAN BERBASIS KARAKTER ISLAMI', 'Raudhatul Athfal (RA) Al-Fathunnisa, tempatlahir di mana pendidikan anak usia dini (PAUD) dipadu dengan nilai-nilai islami yang kuat. Kami berkomitmen untuk menyediakan lingkungan belajar yang menyenangkan dan penuh kasih sayang, di mana anak-anak dapat berkembang secara optimal melalui permainan dan pembelajaran yang terstruktur”');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testi`
--
ALTER TABLE `testi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testi`
--
ALTER TABLE `testi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
