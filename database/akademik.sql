-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 05:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `iddosen` int(11) NOT NULL,
  `nmdosen` varchar(50) DEFAULT '',
  `gelar` varchar(30) DEFAULT '',
  `tempat_lhr` varchar(30) DEFAULT '',
  `tanggal_lhr` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT '',
  `idprodi` int(11) NOT NULL,
  `idpendidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`iddosen`, `nmdosen`, `gelar`, `tempat_lhr`, `tanggal_lhr`, `sex`, `idprodi`, `idpendidikan`) VALUES
(1, 'Subarjo', 'S.Kom.', 'Metro', '1978-10-10', 'L', 1, 2),
(2, 'Wendi', 'S.E., M.M.', 'Jakarta', '1977-10-11', 'L', 2, 2),
(3, 'Heni', 'S.E.,M.M.', 'Bandung', '1980-02-19', 'P', 3, 2),
(4, 'Suwondo', 'S.P.', 'Jakarta', '1980-09-22', 'L', 4, 1),
(5, 'Hendro', 'S.P., M.P.', ' ', '1981-01-17', 'L', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `idjenjang` int(11) NOT NULL,
  `nmjenjang` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`idjenjang`, `nmjenjang`) VALUES
(1, 'D3'),
(2, 'D4'),
(3, 'S2'),
(4, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `idmhs` int(11) NOT NULL,
  `npm` varchar(8) DEFAULT '',
  `nama` varchar(50) DEFAULT '',
  `tempat_lhr` varchar(30) DEFAULT '',
  `tanggal_lhr` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT '',
  `thn_masuk` varchar(4) DEFAULT '',
  `idprodi` int(11) NOT NULL,
  `idstatusaka` int(11) NOT NULL,
  `email` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`idmhs`, `npm`, `nama`, `tempat_lhr`, `tanggal_lhr`, `sex`, `thn_masuk`, `idprodi`, `idstatusaka`, `email`) VALUES
(1, '17750001', 'Ria', 'Metro', '2000-10-10', 'P', '2017', 1, 1, NULL),
(2, '17760001', 'Agus', 'Kalianda', '2000-10-16', 'L', '2017', 2, 1, NULL),
(3, '17770001', 'Santi', 'Jakarta', '2000-09-19', 'P', '2017', 3, 1, NULL),
(4, '17780001', 'Riana', 'Bandung', '2002-09-02', 'P', '2017', 4, 1, NULL),
(5, '17790001', 'Budi', 'Bengkulu', '2001-02-17', 'L', '2017', 5, 1, NULL),
(6, '17750002', 'Edi', 'Kotabumi', '2001-03-11', 'L', '2017', 1, 1, NULL),
(7, '17760002', 'Maya', 'Natar', '2002-03-12', 'P', '2017', 2, 1, NULL),
(8, '17770002', 'Hardi', 'Natar', '2001-03-16', 'L', '2017', 3, 1, NULL),
(9, '17780002', 'Rendi', 'Metro', '2000-01-03', 'L', '2017', 4, 1, NULL),
(10, '17790002', 'Rudi', 'Mesuji', '2000-05-04', 'L', '2017', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `idpendidikan` int(11) NOT NULL,
  `nmpendidikan` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`idpendidikan`, `nmpendidikan`) VALUES
(1, 'S1'),
(2, 'S2'),
(3, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `idprodi` int(11) NOT NULL,
  `nmprodi` varchar(50) DEFAULT '',
  `akreditasi` varchar(1) DEFAULT '',
  `thn_berdiri` varchar(4) DEFAULT '',
  `idjenjang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `nmprodi`, `akreditasi`, `thn_berdiri`, `idjenjang`) VALUES
(1, 'Manajemen Informatika', 'B', '2006', 1),
(2, 'Akuntansi', 'A', '2004', 1),
(3, 'Akuntansi Perpajakan', '-', '2018', 2),
(4, 'Agribisnis', 'B', '2002', 1),
(5, 'Aribisnis Pangan', '-', '2018', 2),
(7, 'Perjalanan Wisata', '', '2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_akademik`
--

CREATE TABLE `status_akademik` (
  `idstatusaka` int(11) NOT NULL,
  `nmstatusaka` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_akademik`
--

INSERT INTO `status_akademik` (`idstatusaka`, `nmstatusaka`) VALUES
(1, 'Aktif'),
(2, 'Aktif - Cuti'),
(3, 'Mengundurkan Diri - Berhenti'),
(4, 'Mengundurkan Diri - Pindah'),
(5, 'Transfer Studi'),
(6, 'Dikeluarkan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_user` enum('0','1') NOT NULL DEFAULT '0',
  `level` enum('00','01','11') NOT NULL DEFAULT '00',
  `status` enum('T','F') NOT NULL DEFAULT 'F',
  `idprodi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `jenis_user`, `level`, `status`, `idprodi`) VALUES
(1, 'admin', 'admin', '1', '11', 'F', 1),
(2, 'user', 'user', '0', '00', 'F', 2),
(3, 'client', 'client', '0', '01', 'F', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`iddosen`),
  ADD KEY `dosen_to_prodi` (`idprodi`),
  ADD KEY `dosen_to_pendidikan` (`idpendidikan`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`idjenjang`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`idmhs`),
  ADD UNIQUE KEY `Unique_npm` (`npm`),
  ADD KEY `mahasiswa_to_prodi` (`idprodi`),
  ADD KEY `mahasiswa_to_status_akademik` (`idstatusaka`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`idpendidikan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`),
  ADD KEY `prodi_to_jenjang` (`idjenjang`);

--
-- Indexes for table `status_akademik`
--
ALTER TABLE `status_akademik`
  ADD PRIMARY KEY (`idstatusaka`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD KEY `user_to_prodi` (`idprodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `iddosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `idjenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `idmhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `idpendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `idprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status_akademik`
--
ALTER TABLE `status_akademik`
  MODIFY `idstatusaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_to_pendidikan` FOREIGN KEY (`idpendidikan`) REFERENCES `pendidikan` (`idpendidikan`),
  ADD CONSTRAINT `dosen_to_prodi` FOREIGN KEY (`idprodi`) REFERENCES `prodi` (`idprodi`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_to_prodi` FOREIGN KEY (`idprodi`) REFERENCES `prodi` (`idprodi`),
  ADD CONSTRAINT `mahasiswa_to_status_akademik` FOREIGN KEY (`idstatusaka`) REFERENCES `status_akademik` (`idstatusaka`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_to_jenjang` FOREIGN KEY (`idjenjang`) REFERENCES `jenjang` (`idjenjang`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_to_prodi` FOREIGN KEY (`idprodi`) REFERENCES `prodi` (`idprodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
