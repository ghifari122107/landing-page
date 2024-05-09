-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Mei 2024 pada 03.14
-- Versi Server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_bisnis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_jenis_bibit_ikan`
--

CREATE TABLE `jenis_jenis_bibit_ikan` (
  `harga` int(11) NOT NULL,
  `id_ikan` int(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan`
--

CREATE TABLE `keuangan` (
  `id_transaksi` int(11) NOT NULL,
  `nomer_seri` int(50) NOT NULL,
  `saldo` int(50) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `ID_penjualan` int(50) NOT NULL,
  `nomer_seri` int(50) NOT NULL,
  `harga_penjualan` int(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `pasword`, `alamat`, `email`, `nama`, `role`) VALUES
(1234, 'lolo', '123', 'jambangan', 'mghifaribaihaqi@gmail.com', 'haqi', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_jenis_bibit_ikan`
--
ALTER TABLE `jenis_jenis_bibit_ikan`
  ADD PRIMARY KEY (`id_ikan`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`ID_penjualan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_jenis_bibit_ikan`
--
ALTER TABLE `jenis_jenis_bibit_ikan`
  MODIFY `id_ikan` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `ID_penjualan` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
