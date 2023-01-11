-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 06:13 AM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_admin` varchar(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `sandi` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_admin`, `username`, `sandi`) VALUES
('a001', 'Narendra Zidane', '123456'),
('a002', 'Larry Dennis', 'Larry1234'),
('a003', 'Sovia Etya', 'Sovi1234');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `spesialisasi` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `kontak_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `spesialisasi`, `alamat`, `kontak_hp`) VALUES
('d001', 'Yudi Wahyu', 'Jantung & Pem. Darah', 'Jl. Soetta', '085236985214'),
('d002', 'Ludwiig Geovanni', 'Penyakit Dalam', 'Jl. Otista', '086321458632'),
('d003', 'Vera Hanin', 'THT', 'Jl. MH Thamrin', '08254563666'),
('d004', 'Verity Hunt', '', 'Jl. Diponegoro', '08263214911'),
('d005', 'Asep Solihin', 'Otak', 'Jl. Airlangga', '0887251369'),
('d006', 'Natasha Miquella', '', 'Jl. Hatshepsut', '087777563215');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(8) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `penyakit` varchar(30) NOT NULL,
  `usia` int(3) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kontak_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `penyakit`, `usia`, `jenis_kelamin`, `alamat`, `kontak_hp`) VALUES
('p001', 'Ujang', 'Tipes', 52, 'L', 'Jl. Kodok', '08463125879'),
('p0010', 'Sakura', 'Leukemia Limfoblastik Akut', 16, 'P', 'Jl. Cherry Blossom', '089999999991'),
('p002', 'Elizabeth', 'Kanker Otak', 99, 'P', 'Jl. Westminster', '0888888888'),
('p003', 'Louis', 'Covid-19', 37, 'P', 'Jl. Nanas', '0889664254'),
('p004', 'Sumanto', 'Kuru', 51, 'L', 'Jl. Tahu', '0864561865'),
('p005', 'Helen', 'Asam Urat', 47, 'P', 'Jl. Kemerdekaan', '0824534168'),
('p006', 'Daniella', 'DBD', 27, 'P', 'Jl. Veteran', '0838646165'),
('p007', 'Rusdi', 'Usus Buntu', 38, 'L', 'Perumahan Alexandrite', '086810452'),
('p008', 'Ruslan', 'Diabetes', 69, 'L', 'Jl. Rambutan', '08654348430'),
('p009', 'Nicholas', 'Ebola', 50, 'L', 'Jl. Asia Afrika', '0865243246');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(12) NOT NULL,
  `id_pasien` varchar(8) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `id_dokter` varchar(8) NOT NULL,
  `id_ruangan` varchar(8) NOT NULL,
  `penyakit` varchar(30) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `status_pembayaran` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pasien`, `nama_pasien`, `id_dokter`, `id_ruangan`, `penyakit`, `jumlah_bayar`, `status_pembayaran`) VALUES
('b001', 'p001', 'Ujang', 'd004', 'r006', 'Tipes', 750000, 'Belum'),
('b0010', 'p0010', '?? ???', 'd001', 'r005', 'Leukemia Limfoblastik Akut', 40000000, 'Lunas'),
('b002', 'p002', 'Elizabeth', 'd005', 'r001', 'Kanker Otak', 150000000, 'Lunas'),
('b003', 'p003', 'Louis', 'd003', 'r007', 'Covid-19', 2000000, 'Lunas'),
('b004', ' p004', 'Sumanto', 'd005', 'r002', 'Kuru', 67000000, 'Lunas'),
('b005', 'p005', 'Helen', 'd006', 'r006', 'Asam Urat', 1500000, 'Belum'),
('b006', 'p006', 'Daniella', 'd006', 'r008', 'DBD', 8000000, 'Belum'),
('b007', 'p007', 'Rusdi', 'd002', 'r003', 'Usus Buntu', 23000000, 'Lunas'),
('b008', 'p008', 'Ruslan', 'd004', 'r009', 'Diabetes', 56850000, 'Lunas'),
('b009', 'p009', 'Nicholas', 'd003', 'r0010', 'Ebola', 98375000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` varchar(8) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL,
  `kapasitas` int(2) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama_ruangan`, `kapasitas`, `jenis`) VALUES
('r001', 'ICU', 1, 'Rawat'),
('r0010', 'Middlemist Red', 1, 'Rawat'),
('r002', 'IGD', 5, 'Rawat'),
('r003', 'Operasi', 1, 'Eksekusi'),
('r004', 'Radiologi', 1, 'Rawat'),
('r005', 'Mayat', 20, 'Storage'),
('r006', 'Lilac', 15, 'Rawat'),
('r007', 'Jade Vine', 7, 'Rawat'),
('r008', 'Orchid', 5, 'Rawat'),
('r009', 'Cosmos', 3, 'Rawat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
