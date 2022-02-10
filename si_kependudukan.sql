-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Feb 2022 pada 04.55
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_kependudukan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keluarga`
--

CREATE TABLE `data_keluarga` (
  `No_KK` int(16) NOT NULL,
  `NIK` int(16) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_Kelamin` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `Status` enum('Kawin','Belum Kawin','','') NOT NULL,
  `Ttl` varchar(100) NOT NULL,
  `Agama` varchar(30) NOT NULL,
  `Pendidikan_Terakhir` varchar(50) NOT NULL,
  `Pekerjaan` varchar(50) NOT NULL,
  `Buta_Huruf` enum('Ya','Tidak','','') NOT NULL,
  `Kewarganegaraan` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Kedudukan_dalam_Keluarga` enum('Kepala Keluarga','Istri','Suami','Anak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduk`
--

CREATE TABLE `data_penduduk` (
  `No_KK` int(16) NOT NULL,
  `No_Urut` int(11) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_keluarga`
--
ALTER TABLE `data_keluarga`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD PRIMARY KEY (`No_Urut`),
  ADD KEY `No_KK` (`No_KK`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD CONSTRAINT `data_penduduk_ibfk_1` FOREIGN KEY (`No_KK`) REFERENCES `data_keluarga` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
