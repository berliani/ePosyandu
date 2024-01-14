-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 03:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eposyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ibu`
--

CREATE TABLE `ibu` (
  `id_ibu` int(11) NOT NULL,
  `nik_ibu` varchar(20) NOT NULL,
  `nama_ibu` varchar(35) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_kontak` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ibu`
--

INSERT INTO `ibu` (`id_ibu`, `nik_ibu`, `nama_ibu`, `tgl_lahir`, `no_kontak`, `alamat`) VALUES
(1, '337601000812850001', 'Maria Setiawati', '1985-03-12', '08678536906', 'Jl. Anggrek No. 12, Kelurahan Randugunting, Tegal '),
(2, '337601000807900002', 'Siti Rahmawati', '1990-07-25', '087654321098', 'Jl. Mawar Indah No. 5, Kelurahan Randugunting, Tegal'),
(3, '337601000811800003', 'Lina Widodo', '1980-11-03', '081112223344', 'Jl. Merdeka Raya No. 8, Kelurahan Randugunting, Tegal'),
(4, '337601000805780004', 'Dewi Purnamasari', '1978-05-19', '081567890123', 'Jl. Purnama Sari No. 15, Kelurahan Randugunting, Tegal'),
(5, '337601000809920005', 'Yulia Hartanti', '1992-09-08', '081234567890', 'Jl. Harapan Indah No. 3, Kelurahan Randugunting, Tegal'),
(6, '337601000802870006', 'Rina Wijaya', '1987-02-14', '087654321098', 'Jl. Wijaya Kusuma No. 9, Kelurahan Randugunting, Tegal'),
(7, '337601000812950007', 'Maya Kusumawati', '1995-12-30', '081112223344', 'Jl. Kusuma Jaya No. 11, Kelurahan Randugunting, Tegal'),
(8, '337601000806820008', 'Ani Purnamasari', '1982-06-27', '081567890123', 'Jl. Purnama Asri No. 7, Kelurahan Randugunting, Tegal'),
(9, '337601000804890009', 'Sri Rahayu', '1989-04-05', '081234567890', 'Jl. Rahayu Indah No. 2, Kelurahan Randugunting, Tegal'),
(10, '337601000808930010', 'Nita Suryani', '1993-08-20', '087654321098', 'Jl. Surya Murni No. 6, Kelurahan Randugunting, Tegal'),
(11, '337601000801840011', 'Linda Kurniawati', '1984-01-15', '081234567890', 'Jl. Kurnia Sejahtera No. 4, Kelurahan Randugunting, Tegal'),
(12, '337601000805910012', 'Rita Puspita', '1991-05-09', '087654321098', 'Jl. Puspita Mulya No. 7, Kelurahan Randugunting, Tegal'),
(13, '337601000809860013', 'Diana Fitriani', '1986-09-22', '081112223344', 'Jl. Fitri Murni No. 8, Kelurahan Randugunting, Tegal'),
(14, '337601000804790014', 'Tuti Widjaja', '1979-04-18', '081567890123', 'Jl. Widjaja Berseri No. 12, Kelurahan Randugunting, Tegal'),
(15, '337601000810940015', 'Eva Suryana', '1994-10-05', '081234567890', 'Jl. Surya Damai No. 3, Kelurahan Randugunting, Tegal'),
(16, '337601000802830016', 'Indah Permata', '1983-02-28', '087654321098', 'Jl. Permata Indah No. 10, Kelurahan Randugunting, Tegal'),
(17, '337601000806960017', 'Wulan Sari', '1996-06-12', '081112223344', 'Jl. Sari Murni No. 15, Kelurahan Randugunting, Tegal'),
(18, '337601000812880018', 'Ratna Puspita', '1988-12-24', '081567890123', 'Jl. Puspita Jaya No. 20, Kelurahan Randugunting, Tegal'),
(19, '337601000808810019', 'Dewi Fitriani', '1981-08-16', '081234567890', 'Jl. Fitri Damai No. 5, Kelurahan Randugunting, Tegal'),
(20, '337601000803900020', 'Rita Susanti', '1990-03-07', '087654321098', 'Jl. Susanti Sejahtera No. 6, Kelurahan Randugunting, Tegal'),
(21, '337601000811760021', 'Sri Muliani', '1976-11-01', '081112223344', 'Jl. Mulia Indah No. 8, Kelurahan Randugunting, Tegal'),
(22, '337601000804890022', 'Lina Purnama', '1989-04-15', '081567890123', 'Jl. Purnama Jaya No. 18, Kelurahan Randugunting, Tegal');

-- --------------------------------------------------------

--
-- Table structure for table `ref_anak`
--

CREATE TABLE `ref_anak` (
  `id_anak` int(11) NOT NULL,
  `nama_anak` varchar(50) NOT NULL,
  `nik_anak` varchar(25) NOT NULL,
  `tempat_lahir_anak` varchar(255) NOT NULL,
  `tgl_lahir_anak` date NOT NULL,
  `usia_anak` int(10) NOT NULL,
  `jk_anak` enum('P','L') NOT NULL,
  `id_ibu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_anak`
--

INSERT INTO `ref_anak` (`id_anak`, `nama_anak`, `nik_anak`, `tempat_lahir_anak`, `tgl_lahir_anak`, `usia_anak`, `jk_anak`, `id_ibu`) VALUES
(1, 'Adi Prima', '337601000802050001', 'Tegal', '2020-02-05', 3, 'L', 1),
(2, 'Bima Sakti', '337601000805100002', 'Tegal', '2019-05-10', 4, 'P', 1),
(3, 'Cinta Dewi', '337601000815180003', 'Tegal', '2018-08-15', 5, 'P', 2),
(4, 'Dian Jaya', '337601002010210004', 'Tegal', '2021-10-20', 2, 'P', 2),
(5, 'Erlan Abadi', '337601002501190005', 'Tegal', '2019-01-25', 4, 'L', 3),
(6, 'Fitri Rahayu', '337601000303190006', 'Tegal', '2019-03-03', 4, 'P', 4),
(7, 'Gilang Perkasa', '337601000806200007', 'Tegal', '2020-06-08', 3, 'L', 5),
(8, 'Hani Mutiara', '337601001209190008', 'Tegal', '2019-09-12', 4, 'P', 6),
(9, 'Irfan Kurnia', '337601001811180009', 'Tegal', '2018-11-18', 5, 'L', 7),
(10, 'Joko Santoso', '337601002212210010', 'Tegal', '2021-12-22', 2, 'L', 8),
(11, 'Kiki Anggun', '33760100070420011', 'Tegal', '2020-04-07', 3, 'P', 9),
(12, 'Lana Permata', '33760100140720012', 'Tegal', '2020-07-14', 3, 'P', 10),
(13, 'Mira Putri', '337601002009210013', 'Tegal', '2021-09-20', 2, 'P', 11),
(14, 'Nando Wijaya', '33760100251120014', 'Tegal', '2020-11-25', 3, 'L', 12),
(15, 'Ola Dini', '337601000202190015', 'Tegal', '2019-02-02', 4, 'P', 13),
(16, 'Prima Wira', '337601000905180016', 'Tegal', '2018-05-09', 5, 'L', 13),
(17, 'Rina Mulia', '337601001508190017', 'Tegal', '2019-08-15', 4, 'P', 14),
(18, 'Surya Agung', '33760100201020018', 'Tegal', '2020-10-20', 3, 'L', 15),
(19, 'Tari Indah', '337601002601220019', 'Tegal', '2022-01-26', 1, 'P', 16),
(20, 'Ulan Ramadhani', '33760100010320020', 'Tegal', '2020-03-01', 3, 'P', 17),
(21, 'Vina Laras', '337601000806190021', 'Tegal', '2019-06-08', 4, 'L', 18),
(22, 'Wahyu Arjuna', '337601001209180022', 'Tegal', '2018-09-12', 5, 'L', 19),
(23, 'Xena Ptri', '337601001811190023', 'Tegal', '2019-11-18', 4, 'P', 20),
(24, 'Yuni Santika', '337601002412210024', 'Tegal', '2021-12-24', 2, 'P', 21),
(25, 'Zara Anugerah', '337601003003190025', 'Tegal', '2019-03-30', 4, 'P', 22);

-- --------------------------------------------------------

--
-- Table structure for table `ref_imunisasi`
--

CREATE TABLE `ref_imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `tgl_imunisasi` date NOT NULL,
  `tinggi_badan` int(3) NOT NULL,
  `berat_badan` int(3) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `id_vaksin` varchar(255) DEFAULT NULL,
  `id_anak` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_ibu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_imunisasi`
--

INSERT INTO `ref_imunisasi` (`id_imunisasi`, `tgl_imunisasi`, `tinggi_badan`, `berat_badan`, `periode`, `id_vaksin`, `id_anak`, `id_petugas`, `id_ibu`) VALUES
(1, '2023-06-12', 95, 13, '1 bulan', '1', 1, 1, 1),
(2, '2023-06-12', 94, 19, '1 bulan', '1', 2, 1, 1),
(3, '2023-06-12', 110, 20, '1 bulan', '1', 3, 2, 2),
(4, '2023-06-12', 92, 13, '1 bulan', '1', 4, 3, 2),
(5, '2023-06-12', 100, 18, '1 bulan', '1', 5, 3, 3),
(6, '2023-06-12', 100, 18, '1 bulan', '1', 6, 4, 4),
(7, '2023-06-12', 95, 15, '1 bulan', '1', 7, 1, 5),
(8, '2023-06-12', 98, 18, '1 bulan', '1', 8, 5, 6),
(9, '2023-06-12', 93, 18, '1 bulan', '1', 9, 7, 7),
(10, '2023-06-12', 95, 17, '1 bulan', '1', 10, 6, 8),
(11, '2023-06-12', 97, 20, '1 bulan', '1', 11, 8, 9),
(12, '2023-06-12', 97, 18, '1 bulan', '1', 12, 9, 10),
(13, '2023-06-12', 92, 17, '1 bulan', '1', 13, 7, 11),
(14, '2023-06-12', 98, 20, '1 bulan', '1', 14, 1, 12),
(15, '2023-06-12', 112, 22, '1 bulan', '1', 15, 9, 13),
(16, '2023-06-12', 116, 25, '1 bulan', '1', 16, 10, 13),
(17, '2023-06-12', 112, 22, '1 bulan', '1', 17, 4, 14),
(18, '2023-06-12', 99, 18, '1 bulan', '1', 18, 3, 15),
(19, '2023-06-12', 91, 13, '1 bulan', '1', 19, 5, 16),
(20, '2023-06-12', 97, 18, '1 bulan', '1', 20, 9, 17),
(21, '2023-06-12', 125, 22, '1 bulan', '1', 21, 2, 18),
(22, '2023-06-12', 112, 24, '1 bulan', '1', 22, 5, 19),
(23, '2023-06-12', 111, 20, '1 bulan', '1', 23, 8, 20),
(24, '2023-06-12', 91, 16, '1 bulan', '1', 24, 3, 21),
(25, '2023-06-12', 100, 24, '1 bulan', '1', 25, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `ref_login`
--

CREATE TABLE `ref_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_petugas_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_login`
--

INSERT INTO `ref_login` (`id_login`, `username`, `password`, `id_petugas_login`) VALUES
(1, 'admin', '$2y$10$4E5NEooMTyAKWrQkUcgcBuZW1RwJImsc.XU1POuGBUEIAdfVKeveG', 0),
(3, 'petugas2', '$2y$10$vTs1.BBP47QnVjn/7GC56uO2YZ4kyRNxoSgs9liTTmukT704yj5uq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_petugas`
--

CREATE TABLE `ref_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `jk_petugas` enum('L','P') NOT NULL,
  `tempat_lahir_petugas` varchar(50) NOT NULL,
  `tgl_lahir_petugas` date NOT NULL,
  `alamat_petugas` text NOT NULL,
  `no_telp_petugas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_petugas`
--

INSERT INTO `ref_petugas` (`id_petugas`, `nama_petugas`, `pendidikan`, `jk_petugas`, `tempat_lahir_petugas`, `tgl_lahir_petugas`, `alamat_petugas`, `no_telp_petugas`) VALUES
(1, 'Dewi Indriani', 'D4', 'P', 'Tegal', '1990-01-10', 'Jl. Cucakrawa, no. 18, Randugunting, Kota Tegal', '081345678901'),
(2, 'Budi Santoso', 'S1', 'L', 'Tegal', '1978-08-20', 'Jl. Nuri, no. 12, Randugunting, Kota Tegal', '087654321098'),
(3, 'Sanjaya', 'S1', 'L', 'Tegal', '1979-01-10', 'Jl. Gelatik, no. 15, Randugunting, Kota Tegal', '087654123098'),
(4, 'Inne Asmawati', 'S1', 'P', 'Tegal', '1988-05-20', 'Jl. Lontrong 14, no. 12, Randugunting, Kota Tegal', '085712791234'),
(5, 'Tuti Susanti', 'S1', 'P', 'Tegal', '1998-05-20', 'Jl. Arum indah, no. 5, Randugunting, Kota Tegal', '085799805678'),
(6, 'Devi Indah', 'D3', '', 'Tegal', '1994-09-12', 'Jl. Nuri, no. 9, Randugunting, Kota Tegal', '085712348890'),
(7, 'Nikken setya Asih', 'D3', '', 'Tegal', '1995-10-29', 'Jl. Lontrong 15, no. 10, Randuguting, Kota Tegal', '085755548890'),
(8, 'Cahya Hidayah', 'S1', '', 'Tegal', '1995-09-22', 'Jl. Puter, no. 2, Randugunting, Kota Tegal', '085755548777'),
(9, 'Mulyono', 'S1', 'L', 'Tegal', '1980-07-13', 'Jl. Srigunting, no. 6, Randugunting, Kota Tegal', '085712875567'),
(10, 'Sri Sulistia', 'S1', 'P', 'Tegal', '1989-03-18', 'Jl. Sriti, no. 1, Randugunting, Kota Tegal', '085712878945');

-- --------------------------------------------------------

--
-- Table structure for table `ref_vaksin`
--

CREATE TABLE `ref_vaksin` (
  `id_vaksin` int(11) NOT NULL,
  `nama_vaksin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_vaksin`
--

INSERT INTO `ref_vaksin` (`id_vaksin`, `nama_vaksin`) VALUES
(1, 'HB'),
(2, 'BCG'),
(3, 'DPT 1'),
(4, 'DPT 2'),
(6, 'IPV'),
(7, 'MR'),
(8, 'DPT 4 (Lanjutan)'),
(9, 'MR 2'),
(10, 'Polio 1'),
(11, 'Polio 2'),
(12, 'Polio 3'),
(13, 'Polio 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ibu`
--
ALTER TABLE `ibu`
  ADD PRIMARY KEY (`id_ibu`);

--
-- Indexes for table `ref_anak`
--
ALTER TABLE `ref_anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indexes for table `ref_imunisasi`
--
ALTER TABLE `ref_imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `ref_login`
--
ALTER TABLE `ref_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `ref_petugas`
--
ALTER TABLE `ref_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `ref_vaksin`
--
ALTER TABLE `ref_vaksin`
  ADD PRIMARY KEY (`id_vaksin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_anak`
--
ALTER TABLE `ref_anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ref_imunisasi`
--
ALTER TABLE `ref_imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ref_login`
--
ALTER TABLE `ref_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_petugas`
--
ALTER TABLE `ref_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_vaksin`
--
ALTER TABLE `ref_vaksin`
  MODIFY `id_vaksin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
