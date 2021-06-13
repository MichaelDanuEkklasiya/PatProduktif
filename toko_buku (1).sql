-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2021 pada 08.37
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(100) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `noisbn` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` int(5) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_distributor`
--

CREATE TABLE `tbl_distributor` (
  `id_distributor` int(11) NOT NULL,
  `nama_distributor` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `telpon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasok`
--

CREATE TABLE `tbl_pasok` (
  `id_pasok` int(11) NOT NULL,
  `id_distributor` int(11) NOT NULL,
  `id_buku` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` varchar(100) NOT NULL,
  `id_buku` varchar(100) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting_lap`
--

CREATE TABLE `tbl_setting_lap` (
  `id_setting` int(2) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_tlpn` varchar(12) NOT NULL,
  `web` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_penjualan`
--

CREATE TABLE `tbl_tmp_penjualan` (
  `id_buku` varchar(100) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `akses` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `alamat`, `telpon`, `status`, `username`, `password`, `akses`) VALUES
(1, 'Admin', ' Jln. Raya Baru', '081234567890', 'admin', 'admin', 'admin123', 'admin'),
(2, 'Manager', 'Jln. Raya Pertigaan', '081122223333', 'Manager', 'manager', 'manager123', 'manager'),
(3, 'Kasir', 'Jln. Bakso no.15', '088877665544', 'kasir', 'kasir', 'kasir123', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tbl_distributor`
--
ALTER TABLE `tbl_distributor`
  ADD PRIMARY KEY (`id_distributor`);

--
-- Indeks untuk tabel `tbl_pasok`
--
ALTER TABLE `tbl_pasok`
  ADD PRIMARY KEY (`id_pasok`);

--
-- Indeks untuk tabel `tbl_setting_lap`
--
ALTER TABLE `tbl_setting_lap`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_distributor`
--
ALTER TABLE `tbl_distributor`
  MODIFY `id_distributor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pasok`
--
ALTER TABLE `tbl_pasok`
  MODIFY `id_pasok` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting_lap`
--
ALTER TABLE `tbl_setting_lap`
  MODIFY `id_setting` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
