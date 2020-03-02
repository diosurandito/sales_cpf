-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2020 pada 06.04
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_cpf_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dealer` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dealer` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak_person` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dealers`
--

INSERT INTO `dealers` (`id`, `id_dealer`, `nama_dealer`, `alamat`, `kota`, `provinsi`, `kontak_person`, `no_telp`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'DLRJKI0000', 'manual', 'manual', 'manual', 'manual', 'manual', 'manual', 1, '2020-01-17 07:42:27', '2020-01-18 02:31:30', NULL),
(1, 'DLRJKI0001', 'Dealer Satu', 'Jl. Satu Dua No.1, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Satu', '0877 1234 0001', 1, '2020-01-16 02:28:05', NULL, NULL),
(2, 'DLRJKI0002', 'Dealer Dua', 'Jl. Satu Dua No.2, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Dua', '0877 1234 0002', 1, '2020-01-16 02:28:05', NULL, NULL),
(3, 'DLRJKI0003', 'Dealer Tiga', 'Jl. Satu Dua No.3, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk TigA', '0877 1234 0003', 1, '2020-01-16 02:28:05', '2020-02-03 08:26:50', NULL),
(4, 'DLRJKI0004', 'Dealer Empat', 'Jl. Satu Dua No.4, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Empat', '0877 1234 0004', 1, '2020-01-16 02:28:05', NULL, NULL),
(5, 'DLRJKI0005', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(6, 'DLRJKI0006', 'Dealer Makmur Jaya Indonesia Cabang Karawang', 'Jl. Perjuangan Panjang No 45C, Kedoya Selatan, Kebon Jeruk, Kota Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Enam', '0877 1234 0006', 1, '2020-01-17 07:42:27', '2020-01-18 02:31:30', NULL),
(7, 'DLRJKI0007', 'Dealer 7', 'Kemanggisan', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Tujuh', '0877 377 0007', 1, '2020-02-03 08:00:12', '2020-02-03 08:00:12', NULL),
(9, 'DLRJKI0008', 'c', 'c', 'c', 'c', 'c', '0877356567', 1, '2020-02-13 04:12:32', '2020-02-13 04:12:53', '2020-02-13 04:12:53'),
(10, 'DLRJKI0009', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(11, 'DLRJKI0010', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(12, 'DLRJKI0011', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(13, 'DLRJKI0012', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(14, 'DLRJKI0013', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(15, 'DLRJKI0014', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(16, 'DLRJKI0015', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(17, 'DLRJKI0016', 'ALFA ACCESSORIES (Window Film, Car Audio and ACC)', 'JLN RAYA BUKIT TINGGI PAYAKUMBUH KEC AMPEK ANGKEK KE NAGARION BIARO GADANG JORONG BATANG AIA KATIAK', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(18, 'DLRJKI0017', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(19, 'DLRJKI0018', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(20, 'DLRJKI0019', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(21, 'DLRJKI0020', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(22, 'DLRJKI0021', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(23, 'DLRJKI0022', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(24, 'DLRJKI0023', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(25, 'DLRJKI0024', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(26, 'DLRJKI0025', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(27, 'DLRJKI0026', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(28, 'DLRJKI0027', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(29, 'DLRJKI0028', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(30, 'DLRJKI0029', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(31, 'DLRJKI0030', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(32, 'DLRJKI0031', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(33, 'DLRJKI0032', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(34, 'DLRJKI0033', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(35, 'DLRJKI0034', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(36, 'DLRJKI0035', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(37, 'DLRJKI0036', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(38, 'DLRJKI0037', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(39, 'DLRJKI0038', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(40, 'DLRJKI0039', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(41, 'DLRJKI0040', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(42, 'DLRJKI0041', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(43, 'DLRJKI0042', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(44, 'DLRJKI0043', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(45, 'DLRJKI0044', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(46, 'DLRJKI0045', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(47, 'DLRJKI0046', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(48, 'DLRJKI0047', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(49, 'DLRJKI0048', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(50, 'DLRJKI0049', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(51, 'DLRJKI0050', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
