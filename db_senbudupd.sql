-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Jan 2019 pada 13.02
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_senbudupd`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `query_siswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `query_siswa` (
`nis` varchar(10)
,`nama` varchar(50)
,`rombel` varchar(10)
,`rayon` varchar(20)
,`id_senbud` varchar(30)
,`id_upd` varchar(30)
,`nama_senbud` varchar(30)
,`hari_senbud` varchar(10)
,`instruktur_senbud` varchar(30)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_senbud`
--

CREATE TABLE `tb_senbud` (
  `id_senbud` varchar(15) NOT NULL,
  `nama_senbud` varchar(30) NOT NULL,
  `hari_senbud` varchar(10) NOT NULL,
  `kuota` int(20) NOT NULL,
  `instruktur_senbud` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_senbud`
--

INSERT INTO `tb_senbud` (`id_senbud`, `nama_senbud`, `hari_senbud`, `kuota`, `instruktur_senbud`) VALUES
('1', 'seni suara', 'senin', 30, 'Arif Dimas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `rombel` varchar(10) NOT NULL,
  `rayon` varchar(20) NOT NULL,
  `id_senbud` varchar(30) NOT NULL,
  `id_upd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_upd`
--

CREATE TABLE `tb_upd` (
  `id_upd` varchar(15) NOT NULL,
  `nama_upd` varchar(30) NOT NULL,
  `hari_upd` varchar(10) NOT NULL,
  `kuota` int(20) NOT NULL,
  `instruktur_upd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_upd`
--

INSERT INTO `tb_upd` (`id_upd`, `nama_upd`, `hari_upd`, `kuota`, `instruktur_upd`) VALUES
('2', 'Paskibra', 'Sabtu', 60, 'Shandy');

-- --------------------------------------------------------

--
-- Struktur untuk view `query_siswa`
--
DROP TABLE IF EXISTS `query_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query_siswa`  AS  select `tb_siswa`.`nis` AS `nis`,`tb_siswa`.`nama` AS `nama`,`tb_siswa`.`rombel` AS `rombel`,`tb_siswa`.`rayon` AS `rayon`,`tb_siswa`.`id_senbud` AS `id_senbud`,`tb_siswa`.`id_upd` AS `id_upd`,`tb_senbud`.`nama_senbud` AS `nama_senbud`,`tb_senbud`.`hari_senbud` AS `hari_senbud`,`tb_senbud`.`instruktur_senbud` AS `instruktur_senbud` from ((`tb_siswa` join `tb_senbud` on((`tb_siswa`.`id_senbud` = `tb_siswa`.`id_senbud`))) join `tb_upd` on((`tb_siswa`.`id_upd` = `tb_siswa`.`id_upd`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_senbud`
--
ALTER TABLE `tb_senbud`
  ADD PRIMARY KEY (`id_senbud`);

--
-- Indexes for table `tb_upd`
--
ALTER TABLE `tb_upd`
  ADD PRIMARY KEY (`id_upd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
