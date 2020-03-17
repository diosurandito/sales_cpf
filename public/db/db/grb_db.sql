-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2020 pada 05.45
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grb_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_pt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_customer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp_customer` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_customer` enum('reguler','khusus') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'reguler',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `nm_pt`, `nm_customer`, `tlp_customer`, `jns_customer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PT Khusus Indonesia', 'Bpk Khusus', '0877 1234 0000', 'khusus', '2020-01-30 08:25:14', NULL, NULL),
(2, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'reguler', '2020-01-30 08:25:14', NULL, NULL),
(3, 'PT Biasa Dua Indonesia', 'Bpk Biasa 2', '0877 1234 2222', 'reguler', '2020-01-30 08:25:14', NULL, NULL),
(4, 'PT Biasa Tiga Indonesia', 'Bpk Biasa 3', '0877 1234 3333', 'reguler', '2020-01-30 08:25:14', NULL, NULL),
(13, 'PT Biasa Empat Indonesia', 'Bpk Biasa 4', '0877 1234 4444', 'reguler', '2020-02-13 06:34:25', '2020-02-14 02:31:50', NULL),
(14, 'PT. Karya Anak Bangsa', 'Bpk. Nadiem', '0877 1000 2000', 'khusus', '2020-02-21 02:28:58', '2020-02-21 02:28:58', NULL),
(15, 'PT. Jaya Jaya Jaya', 'Hj. Andre', '0877 3456 0009', 'reguler', '2020-02-29 06:38:36', '2020-02-29 06:38:36', NULL),
(16, 'PT. Khusus Sejahtera', 'Bpk. Ginanjar', '0877 4567 3333', 'khusus', '2020-03-04 08:24:47', '2020-03-04 08:24:47', NULL),
(17, 'PT. Khusus Jaya Abadi', 'Bpk. Oman Sumantri', '0877 2345 0011', 'khusus', '2020-03-04 08:25:53', '2020-03-10 04:25:49', NULL),
(18, 'PT. Jaya Kaya Raya', 'Bpk. Jaenudin', '0877 6666 1234', 'khusus', '2020-03-04 09:21:33', '2020-03-04 09:21:33', NULL),
(19, 'PT. Abadi Selamanya', 'Bpk. Budi', '0877 1234 6666', 'reguler', '2020-03-04 09:22:47', '2020-03-04 09:40:36', '2020-03-04 09:40:36'),
(20, 'PT. Gaharu Indonesia 2', 'Bpk. Sodiqin', '0877 2121 0000', 'khusus', '2020-03-05 02:00:15', '2020-03-16 15:24:59', NULL),
(21, 'PT. Maxindo Jaya', 'Bpk. Entis', '0877 1234 0012', 'reguler', '2020-03-05 02:01:46', '2020-03-05 03:29:47', NULL),
(22, 'PT. Merdeka Part Indonesia 2', 'Bpk. Karno', '0877 1234 0909', 'khusus', '2020-03-05 03:42:55', '2020-03-05 03:46:43', '2020-03-05 03:46:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `grb_admins`
--

CREATE TABLE `grb_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_akses` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admingrb_adm1',
  `nickname` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `grb_admins`
--

INSERT INTO `grb_admins` (`id`, `nik`, `kode_akses`, `nickname`, `last_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '201809010837', 'admingrb_adm1', 'Siera', '2020-01-30 15:33:57', NULL, NULL, NULL),
(2, '201305220407', 'admingrb_adm1', 'Umro', '2020-01-30 15:33:57', NULL, NULL, NULL),
(3, '200101230011', 'admingrb_adm1', 'Parmi', '2020-01-30 15:33:57', NULL, NULL, NULL),
(4, '201912020890', 'admingrb_adm2', NULL, '2020-01-30 15:33:57', NULL, NULL, NULL),
(5, '201912020891', 'admingrb_tnt1', NULL, '2020-01-30 15:33:57', NULL, NULL, NULL),
(6, '201912020892', 'admingrb_tnt1', NULL, '2020-01-30 15:33:57', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_04_015136_create_po_rekaps_table', 1),
(2, '2019_12_17_084417_create_riwayat_tinters_table', 1),
(3, '2020_01_09_145225_create_customers_table', 1),
(4, '2020_01_30_112736_create_grb_admins_table', 1),
(5, '2020_01_30_143206_create_window_films_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_rekaps`
--

CREATE TABLE `po_rekaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_po` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_po` date NOT NULL,
  `no_rangka_kendaraan` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jns_transaksi` enum('project','retail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_kendaraan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_kendaraan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn_kendaraan` year(4) NOT NULL,
  `wrn_kendaraan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaca_depan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kiri1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kanan2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kiri3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kanan4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kiri5` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_samping_kanan6` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kaca_backdoor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_tambahan` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` bigint(20) NOT NULL,
  `nm_pt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_customer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp_customer` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `almt_kirim` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_kirim` date NOT NULL,
  `bukti_po` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edited_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_so` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `po_rekaps`
--

INSERT INTO `po_rekaps` (`id`, `no_po`, `tgl_po`, `no_rangka_kendaraan`, `jns_transaksi`, `nm_kendaraan`, `tp_kendaraan`, `thn_kendaraan`, `wrn_kendaraan`, `kaca_depan`, `kaca_samping_kiri1`, `kaca_samping_kanan2`, `kaca_samping_kiri3`, `kaca_samping_kanan4`, `kaca_samping_kiri5`, `kaca_samping_kanan6`, `kaca_backdoor`, `item_tambahan`, `harga`, `nm_pt`, `nm_customer`, `tlp_customer`, `almt_kirim`, `tgl_kirim`, `bukti_po`, `status`, `created_at`, `updated_at`, `approved_at`, `created_by`, `edited_by`, `approved_by`, `deleted_by`, `no_so`, `deleted_at`) VALUES
(1, 'Z67OQ5DO4KF7FQES7T', '2020-01-12', '3KTK7FAH5ACE4ARA8', 'retail', 'Think Global City', 'SUV', 2017, 'Silver Green', 'BRAY 50', 'UNIGLOBE 40', 'CPF1 60', 'SunMaster 60', 'UNIGLOBE 40', 'SunMaster 60', 'SunMaster 60', 'SunMaster 60', NULL, 1350000, 'UD Purnawati Tbk', 'Zelda Cici Susanti S.H.', '0453 9332 887', 'Ki. Tentara Pelajar No. 402, Kediri 80098, Lampung', '2020-02-12', 'bukti_po/bukti_po4.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 07:47:01', '2020-03-09 06:07:00', '201809010837', NULL, '201809010837', NULL, 'S-0000001', '2020-03-09 07:47:01'),
(2, 'QTE7HTYDC5OJUR0MBM', '2020-01-06', '0FWFH9EF8AV13Z6L2', 'retail', 'Norster 600R', 'station wagon', 2012, 'Ice LawnGreen', 'SunMaster 60', 'BRAY 50', 'LLumar 40', 'SunMaster 60', 'LLumar 40', 'BRAY 50', 'LLumar 40', 'BRAY 50', NULL, 450000, 'PT Susanti Salahudin', 'Lala Mayasari', '0810 3686 178', 'Kpg. Abdul Muis No. 297, Palopo 80361, MalUt', '2020-02-08', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 07:43:53', '2020-03-09 06:08:11', '201809010837', NULL, '201809010837', NULL, 'S-0000002', '2020-03-09 07:43:53'),
(3, 'OKQYOWIVS2UREBMNGV', '2020-01-27', 'NZA5Y5DB4AMLU626H', 'project', 'TVR V8', 'hatchback', 2002, 'Indi Indigo', 'SunMaster 60', 'CPF1 60', 'SunMaster 60', 'BRAY 50', 'UNIGLOBE 40', 'LLumar 40', 'CPF1 60', 'CPF1 60', NULL, 2000000, 'Perum Usamah', 'Gabriella Nasyiah', '020 1524 4009', 'Ds. Qrisdoren No. 886, Tual 21186, KalTeng', '2020-02-06', 'bukti_po/bukti_po4.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 07:51:36', '2020-03-09 06:08:25', '201809010837', NULL, '201809010837', NULL, 'S-0000003', '2020-03-09 07:51:36'),
(5, 'TSOFXKABZOWFS8XOQ9', '2020-01-28', 'RHD2ZPCC1A4LWXTZG', 'retail', 'Humvee Marshal', 'convertible', 2005, 'Cool SteelBlue', 'UNIGLOBE 40', 'UNIGLOBE 40', 'UNIGLOBE 40', 'SunMaster 60', 'LLumar 40', 'SunMaster 60', 'SunMaster 60', 'UNIGLOBE 40', NULL, 1500000, 'Perum Suartini Tbk', 'Kariman Hardi Tarihoran S.Gz', '(+62) 468 5935 ', 'Gg. Rajawali Timur No. 686, Sorong 31775, Jambi', '2020-02-04', 'bukti_po/bukti_po2.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 07:54:02', '2020-03-09 07:13:23', '201809010837', NULL, '201809010837', NULL, 'S-0000005', '2020-03-09 07:54:02'),
(7, '5Y1J5D9RKQ8G838S78', '2020-01-05', 'BY69J0DZ7AE3XMX5T', 'project', 'Barkas (Баркас) VEB', 'small', 2017, 'Digital PaleGreen', 'BRAY 50', 'CPF1 60', 'BRAY 50', 'BRAY 50', 'LLumar 40', 'UNIGLOBE 40', 'UNIGLOBE 40', 'UNIGLOBE 40', NULL, 1000000, 'PT Wibisono Hutapea', 'Kezia Wastuti', '0837 441 743', 'Dk. Panjaitan No. 420, Probolinggo 83825, SulTeng', '2020-02-06', 'bukti_po/bukti_po2.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 08:03:16', '2020-03-09 07:48:55', '201809010837', NULL, '201809010837', NULL, 'S-0000007', '2020-03-09 08:03:16'),
(8, '6VTBKZEHFOB8MXWI6L', '2020-01-02', 'EDVKBAS82ADDBLG25', 'retail', 'Fiat Stilo', 'convertible', 2000, 'Vitamin C Crimson', 'BRAY 50', 'LLumar 40', 'BRAY 50', 'SunMaster 60', 'UNIGLOBE 40', 'UNIGLOBE 40', 'UNIGLOBE 40', 'BRAY 50', NULL, 1350000, 'UD Pertiwi (Persero) Tbk', 'Cahyono Najmudin', '(+62) 455 7110 ', 'Jln. Ciumbuleuit No. 530, Magelang 41931, Lampung', '2020-01-31', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 08:55:55', '2020-03-09 07:50:46', '201305220407', NULL, '201809010837', NULL, 'U-0000001', '2020-03-09 08:55:55'),
(9, 'XT9SHNAVXUZT8B6RQI', '2020-01-05', 'FAUZ0WN20AAE364M4', 'project', 'Land Rover Freelander', 'sedan', 2005, 'Glacier Lime', 'CPF1 60', 'CPF1 60', 'LLumar 40', 'SunMaster 60', 'CPF1 60', 'UNIGLOBE 40', 'BRAY 50', 'UNIGLOBE 40', NULL, 1350000, 'Perum Rahmawati Puspasari', 'Zamira Kani Agustina S.IP', '(+62) 925 0941 ', 'Jr. Yosodipuro No. 203, Administrasi Jakarta Timur 59773, SumUt', '2020-02-01', 'bukti_po/bukti_po2.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 07:53:29', '2020-03-09 07:53:29', '201305220407', NULL, '201809010837', NULL, 'U-0000002', NULL),
(10, 'HOYJPBRBPIJQSBVXQO', '2020-01-24', '54RYHHXL6AGBPWL6P', 'retail', 'Jeep Wrangler', 'MPV', 1999, 'Rocks MediumOrchid', 'SunMaster 60', 'UNIGLOBE 40', 'UNIGLOBE 40', 'UNIGLOBE 40', 'UNIGLOBE 40', 'BRAY 50', 'SunMaster 60', 'SunMaster 60', NULL, 1350000, 'CV Lazuardi Zulaika Tbk', 'Zaenab Zahra Aryani M.Ak', '0307 0380 262', 'Dk. Ketandan No. 649, Cimahi 29858, NTB', '2020-02-11', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-02-19 03:16:37', NULL, '201305220407', NULL, NULL, NULL, 'U-0000003', '2020-02-19 03:16:37'),
(11, '5WLGDLP2XJM6JCKBY6', '2020-01-04', 'NWTAL04D7ACG9E4YK', 'project', 'Caterham 7', 'small', 2011, 'Anvil LightCoral', 'SunMaster 60', 'LLumar 40', 'SunMaster 60', 'LLumar 40', 'LLumar 40', 'UNIGLOBE 40', 'LLumar 40', 'BRAY 50', NULL, 1000000, 'Perum Utami Rajasa', 'Sadina Riyanti', '(+62) 357 2321 ', 'Ds. Sam Ratulangi No. 48, Malang 93811, Jambi', '2020-02-03', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-03-07 07:23:15', NULL, '201305220407', NULL, NULL, NULL, 'U-0000004', '2020-03-07 07:23:15'),
(12, 'LULFN5CRQHYD9IH8JG', '2020-01-28', 'RNTZ6DF10A300JZ5J', 'project', 'Abarth Fiat 595', 'sedan', 2007, 'Indi Wheat', 'UNIGLOBE 40', 'UNIGLOBE 40', 'SunMaster 60', 'SunMaster 60', 'SunMaster 60', 'CPF1 60', 'SunMaster 60', 'CPF1 60', NULL, 2000000, 'PD Wijaya Budiman', 'Zulaikha Calista Hariyah', '(+62) 454 1176 ', 'Gg. Gambang No. 938, Manado 88544, KepR', '2020-02-01', 'bukti_po/bukti_po3.png', 'complete', '2020-01-30 08:25:13', '2020-03-07 07:21:10', NULL, '201305220407', NULL, NULL, NULL, 'U-0000005', '2020-03-07 07:21:10'),
(13, '0FUPDULYCLT3JKEQ2D', '2020-01-12', 'F8AXB5E36AS59VUMY', 'retail', 'Xiaolong XLW', 'convertible', 2006, 'Horizon LawnGreen', 'CPF1 60', 'UNIGLOBE 40', 'LLumar 40', 'BRAY 50', 'SunMaster 60', 'SunMaster 60', 'UNIGLOBE 40', 'UNIGLOBE 40', NULL, 450000, 'PT Maheswara Tbk', 'Sakti Kardi Damanik M.Ak', '(+62) 362 8191 ', 'Dk. Muwardi No. 630, Parepare 50254, KalTim', '2020-02-03', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 06:11:16', '2020-03-09 06:11:16', '201305220407', NULL, '201809010837', NULL, 'U-0000006', NULL),
(14, 'HLC4JGFKTLRPNFM8WQ', '2020-01-27', 'X6NM17F47AJAJUCG9', 'project', 'Hafei Ruiyi', 'SUV', 2017, 'Surf BurlyWood', 'SunMaster 60', 'SunMaster 60', 'CPF1 60', 'SunMaster 60', 'SunMaster 60', 'UNIGLOBE 40', 'UNIGLOBE 40', 'CPF1 60', NULL, 1000000, 'CV Lestari Mayasari (Persero) Tbk', 'Nilam Uyainah', '0355 3580 591', 'Jr. PHH. Mustofa No. 636, Pematangsiantar 52255, Maluku', '2020-02-12', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 08:46:01', '2020-03-09 08:46:01', '201305220407', NULL, '201809010837', NULL, 'U-0000007', NULL),
(15, 'GUA7K5VKRQEMRNWYR8', '2020-01-10', 'C3E5SFBL1AT26A0VJ', 'project', 'Austin-Healey 3000', 'small', 2008, 'Starlight Cornsilk', 'SunMaster 60', 'CPF1 60', 'CPF1 60', 'LLumar 40', 'CPF1 60', 'SunMaster 60', 'UNIGLOBE 40', 'SunMaster 60', NULL, 1350000, 'PT Hutasoit Hasanah', 'Clara Rahayu', '0566 0649 972', 'Ds. S. Parman No. 369, Tomohon 16725, SulTra', '2020-02-09', 'bukti_po/bukti_po3.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 08:50:23', '2020-03-09 08:50:23', '200101230011', NULL, '201809010837', NULL, 'P-0000001', NULL),
(16, 'B2IDFZTUCWDF8XLDMF', '2020-01-05', '0LXLE6DY4AYGZRVKB', 'retail', 'Maserati Bora', 'small', 2001, 'Cosmic MediumSpringGreen', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'UNIGLOBE 40', 'CPF1 60', 'CPF1 60', 'LLumar 40', 'LLumar 40', NULL, 1000000, NULL, 'Kairav Manullang', '(+62) 808 2674', 'Psr. Tubagus Ismail No. 787, Madiun 70982, DIY', '2020-02-09', 'bukti_po/bukti_po3.png', 'complete', '2020-01-30 08:25:13', '2020-03-09 09:01:35', '2020-03-09 08:54:52', '200101230011', '201809010837', '201809010837', NULL, 'P-0000002', '2020-03-09 09:01:35'),
(17, 'CSNEDMVLCFNE3VK1W8', '2020-01-03', 'RKC7F3TVXAA3C6V79', 'project', 'Adler Trumpf', 'SUV', 2015, 'Panther Maroon', 'BRAY 50', 'LLumar 40', 'SunMaster 60', 'UNIGLOBE 40', 'SunMaster 60', 'UNIGLOBE 40', 'LLumar 40', 'BRAY 50', NULL, 2100000, 'UD Wastuti', 'Putu Narpati', '021-415814', 'Ki. Labu No. 562, Sungai Penuh 97717, JaBar', '2020-02-05', 'bukti_po/bukti_po2.png', 'complete', '2020-01-30 08:25:13', '2020-03-14 01:40:28', '2020-03-14 01:40:27', '200101230011', '201809010837', '201809010837', NULL, 'P-0000003', NULL),
(18, '01OSYVRHYM9KSVWDDB', '2020-01-25', 'ZHKALEY19AGR5NSS5', 'retail', 'Hummer Hummer', 'convertible', 2007, 'Mahogany BlanchedAlmond', 'LLumar 40', 'LLumar 40', 'CPF1 60', 'SunMaster 60', 'SunMaster 60', 'LLumar 40', 'LLumar 40', 'CPF1 60', NULL, 2000000, 'PT Pudjiastuti Safitri', 'Mustika Utama', '0742 6908 240', 'Jln. Basmol Raya No. 419, Tegal 37322, Jambi', '2020-01-31', 'bukti_po/bukti_po3.png', 'complete', '2020-01-30 08:25:14', '2020-03-09 08:38:28', '2020-03-09 08:38:28', '200101230011', NULL, '201809010837', NULL, 'P-0000004', NULL),
(19, 'MONO-W25', '2020-01-02', 'CT437RPX2AHFJ33U2', 'project', 'Dagger GT', 'coupe', 2018, 'Plum RoyalBlue', 'CPF1 60', 'LLumar 40', 'UNIGLOBE 40', 'LLumar 40', 'LLumar 40', 'BRAY 50', 'SunMaster 60', 'CPF1 60', NULL, 90000000, 'PT Hariyah Hastuti', 'Kariman Mustofa', '0840 2097 508', 'Gg. Nangka No. 625, Banjar 58161, JaTeng', '2020-02-10', 'bukti_po/bukti_po4.png', 'pending', '2020-01-30 08:25:14', '2020-02-10 07:50:02', NULL, '200101230011', '201809010837', NULL, NULL, 'P-0000005', NULL),
(20, 'M3LKB-100', '2020-01-26', 'LRUM9ZZK8AKEFR1U2', 'project', 'Studebaker Starlight', 'hatchback', 2014, 'Indi NavajoWhite', 'CPF1 60', 'LLumar 40', 'CPF1 60', 'SunMaster 60', 'BRAY 50', 'SunMaster 60', 'LLumar 40', 'UNIGLOBE 40', NULL, 1350000, 'CV Kuswoyo Prakasa (Persero) Tbk', 'Cawisadi Dacin Mustofa S.I.Kom', '(+62) 422 1757 ', 'Psr. Gegerkalong Hilir No. 746, Palangka Raya 16987, Aceh', '2020-01-31', 'bukti_po/bukti_po1.png', 'complete', '2020-01-30 08:25:14', '2020-03-07 07:25:34', NULL, '200101230011', NULL, NULL, NULL, 'P-0000006', '2020-03-07 07:25:34'),
(62, '123-MINITG-9998', '2020-02-06', '1234567890QWERTYU', 'retail', 'Mitsubishi Xpander', 'SUV', 2019, 'Hitam', 'LLumar 40', 'BRAY 50', 'CPF1 60', NULL, 'CPF1 60', 'CPF1 60', NULL, 'CPF1 60', NULL, 700000, NULL, 'Bpk Ritel', '0877 3778 1099', 'Palmerah', '2020-02-08', 'bukti_po/AZgaX23HQP5nh9RQhOlkxqT4llfbfoKGZGa0WRGJ.png', 'complete', '2020-02-06 06:43:27', '2020-02-21 06:47:49', NULL, '201809010837', '201809010837', NULL, '201305220407', 'S-0000009', '2020-02-21 06:47:49'),
(63, 'MINI-008-JKI', '2020-02-12', '1234567POIUYTREDS', 'project', 'Xpander Ultimate', 'SUV', 2019, 'Hitam', 'LLumar 40', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'SunMaster 60', NULL, 1400000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Tangerang Selatan', '2020-02-16', 'bukti_po/R57xXnEmIBL1UqmesHBaN99zpqtSVastw8HDo2vZ.png', 'complete', '2020-02-12 03:18:11', '2020-03-09 08:55:38', NULL, '201809010837', NULL, NULL, NULL, 'S-0000010', '2020-03-09 08:55:38'),
(64, 'MINI-0012-JKI', '2020-02-12', '1234567MNBVCFDGHA', 'retail', 'Pajero Sport', 'SUV', 2019, 'Hitam', 'LLumar 40', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'BRAY 50', 'Poles All', 1700000, NULL, 'Bpk Ritel Dua', '0877 3778 1111', 'Duri Kepa', '2020-02-15', 'bukti_po/UzUQRo9SJbRHJWRs2NTeMdST3Dzi7y0ZzjV4BNrO.png', 'complete', '2020-02-12 03:29:27', '2020-02-19 02:46:03', NULL, '201809010837', '201809010837', NULL, NULL, 'S-0000011', NULL),
(65, 'MINI-098-JKI', '2020-02-12', '1234567YIKLMNBVVV', 'project', 'Avanza', 'SUV', 2020, 'Hitam', 'LLumar 40', 'BRAY 50', 'BRAY 50', NULL, NULL, NULL, NULL, 'CPF1 60', NULL, 1000000, 'PT Biasa Tiga Indonesia', 'Bpk Biasa 3', '0877 1234 3333', 'Tangerang', '2020-02-14', 'bukti_po/zOVtxdsz67ShkG1NrHIWmI9H4f2QeBoGVpBgiftV.png', 'complete', '2020-02-12 03:55:48', '2020-02-21 06:46:43', NULL, '201809010837', NULL, NULL, NULL, 'S-0000012', '2020-02-21 06:46:43'),
(66, '1234567-JKI', '2020-02-12', '1234567OIUYTFGHVN', 'project', 'Avanza', 'MPV', 2019, 'Hitam', 'LLumar 40', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'Poles All', 700000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Kemanggisan3', '2020-02-14', 'bukti_po/n6rP4Dm5hf9Is3Ym5xnJIzlG2w26apcCpYQdRJYN.pdf', 'pending', '2020-02-12 04:18:19', '2020-02-14 03:09:00', NULL, '201809010837', '201809010837', NULL, NULL, 'S-0000013', NULL),
(67, 'JKI-MAX-0001', '2020-02-20', '123456YTRHKILMNVC', 'project', 'Honda Civic', 'City Car', 2019, 'Grey', 'LLumar 40', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'CPF1 60', 'Poles All', 700000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Jalan Kembangan No 2 Jakarta Barat', '2020-02-22', 'bukti_po/M2TwIlikVVc5Y3JADABwMiakSnfehbGZOfFleHRG.png', 'complete', '2020-02-20 07:28:26', '2020-03-09 07:36:03', '2020-03-09 07:33:49', '201809010837', '201305220407', '201809010837', NULL, 'S-0000014', '2020-03-09 07:36:03'),
(68, 'JKI-MAX-1234', '2020-02-21', '123456789KTRQWERT', 'project', 'Avanza', 'MPV', 2014, 'Hitam', 'BRAY 50', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'SunMaster 60', NULL, 1400000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Kebon Jeruk', '2020-02-23', 'bukti_po/VEIGHExT3rq72PMmE9zkPGgECwdetYncJ73sL2JK.png', 'complete', '2020-02-21 01:50:06', '2020-03-09 07:41:12', '2020-02-21 06:37:03', '200101230011', NULL, '201305220407', NULL, 'P-0000007', '2020-03-09 07:41:12'),
(69, 'JKI-MAX-4401', '2020-03-04', '123456789KTRQWERT', 'project', 'Avanza', 'MPV', 2014, 'Hitam', 'BRAY 50', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'SunMaster 60', NULL, 1400000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Kebon Jeruk', '2020-02-23', 'bukti_po/VEIGHExT3rq72PMmE9zkPGgECwdetYncJ73sL2JK.png', 'complete', '2020-02-21 01:50:06', '2020-02-21 06:37:03', '2020-02-21 06:37:03', '200101230011', NULL, '201305220407', NULL, 'P-0000007', NULL),
(70, 'JKI-MAX-4402', '2020-03-03', '123456YTRHKILMNVC', 'project', 'Honda Civic', 'City Car', 2019, 'Grey', 'LLumar 40', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'CPF1 60', 'Poles All', 700000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Jalan Kembangan No 2 Jakarta Barat', '2020-02-22', 'bukti_po/M2TwIlikVVc5Y3JADABwMiakSnfehbGZOfFleHRG.png', 'complete', '2020-02-20 07:28:26', '2020-03-09 08:04:43', '2020-03-09 04:44:46', '201809010837', '201305220407', '201809010837', NULL, 'S-0000014', '2020-03-09 08:04:43'),
(71, 'JKI-MAX-4403', '2020-03-03', '1234567OIUYTFGHVN', 'project', 'Avanza', 'MPV', 2019, 'Hitam', 'LLumar 40', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'CPF1 60', 'Poles All', 700000, 'PT Biasa Satu Indonesia', 'Bpk Biasa 1', '0877 1234 1111', 'Kemanggisan3', '2020-02-14', 'bukti_po/n6rP4Dm5hf9Is3Ym5xnJIzlG2w26apcCpYQdRJYN.pdf', 'complete', '2020-02-12 04:18:19', '2020-03-09 08:38:03', '2020-03-09 07:40:04', '201809010837', '201809010837', '201809010837', NULL, 'S-0000013', '2020-03-09 08:38:03'),
(72, 'JKI-MAX-4404', '2020-03-05', '1234567YIKLMNBVVV', 'project', 'Avanza', 'SUV', 2020, 'Hitam', 'LLumar 40', 'BRAY 50', 'BRAY 50', NULL, NULL, NULL, NULL, 'CPF1 60', NULL, 1000000, 'PT Biasa Tiga Indonesia', 'Bpk Biasa 3', '0877 1234 3333', 'Tangerang', '2020-03-05', 'bukti_po/zOVtxdsz67ShkG1NrHIWmI9H4f2QeBoGVpBgiftV.png', 'complete', '2020-02-12 03:55:48', '2020-02-21 06:46:43', NULL, '201809010837', NULL, NULL, NULL, 'S-0000012', NULL),
(73, 'JKI-KHS-00007', '2020-03-01', NULL, 'project', 'Wuling Almaz', 'SUV', 2019, 'Putih', 'LLumar 40', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'BRAY 50', 'LLumar SB 70', NULL, 900000, 'PT Khusus Indonesia', 'Bpk Khusus', '0877 1234 0000', 'Kec. Palmerah Timur, Jakarta Barat', '2020-03-11', 'bukti_po/rhS6YqmYdWZ6ET5RouDkPjF0P48uOrDAFlV3s5yc.png', 'pending', '2020-03-09 09:30:31', '2020-03-09 09:30:31', NULL, '201809010837', NULL, NULL, NULL, 'S-0000013', NULL),
(74, 'JKI-NOPO-123456', '2020-03-10', NULL, 'project', 'Honda BRV', 'SUV', 2020, 'Black', 'BRAY 50', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', NULL, NULL, 'LLumar SB 70', NULL, 1000000, 'PT. Khusus Sejahtera', 'Bpk. Ginanjar', '0877 4567 3333', 'Kemanggisan, Jakarta Barat', '2020-03-13', 'bukti_po/q5Lk9KEqHVZztJ75Y33JZg8mywDZjQhF686YJZyA.png', 'pending', '2020-03-10 01:54:45', '2020-03-10 01:54:45', NULL, '201809010837', NULL, NULL, NULL, 'S-0000014', NULL),
(75, 'JKI-NOPO-00033', '2020-03-10', NULL, 'project', 'Honda City Car', 'Sedan', 2019, 'Black', 'LLumar 40', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'SunMaster 60', 'Poles All', 1800000, 'PT. Merdeka Part Indonesia 2', 'Bpk. Karno', '0877 1234 0909', 'BSD, Tangerang', '2020-03-13', 'bukti_po/KTFvfVfM7Kjkfx1MMNVgsNbiwXKp0fLCBS7uN5jz.png', 'pending', '2020-03-10 02:13:41', '2020-03-10 02:13:41', NULL, '201809010837', NULL, NULL, NULL, 'S-0000015', NULL),
(76, 'JKI-NOPO-00034', '2020-03-10', NULL, 'project', 'Toyota Fortuner', 'SUV', 2015, 'Dark Grey', 'LLumar 40', 'LLumar SB 70', 'LLumar SB 70', 'LLumar SB 70', 'LLumar SB 70', 'LLumar SB 70', 'LLumar SB 70', 'LLumar SB 70', NULL, 2500000, 'PT. Khusus Sejahtera', 'Bpk. Ginanjar', '0877 4567 3333', 'Perumahan Jaya Abadi, Tangerang Selatan', '2020-03-13', 'bukti_po/DICPIGpw2Wlgoi8t39ayiIiWR8Q5Yv5aNCPMaz3I.png', 'pending', '2020-03-10 02:17:43', '2020-03-10 03:56:40', NULL, '201809010837', '201809010837', NULL, NULL, 'S-0000016', NULL),
(77, 'JKI-NOPO-00035', '2020-03-10', '12345FTHR2WRRDSAD', 'project', 'Mitsubishi Xpander', 'MPV', 2019, 'Grey', 'LLumar 40', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', 'BRAY SB 60', NULL, NULL, 'LLumar SB 70', NULL, 1300000, 'PT. Karya Anak Bangsa', 'Bpk. Nadiem', '0877 1000 2000', 'Graha Permata Hijau, Bekasi', '2020-03-15', 'bukti_po/dKIx4QmlyDMj7xzp3mAayLeLOiUfvIFInblI2aMl.png', 'complete', '2020-03-10 02:22:38', '2020-03-12 08:51:01', '2020-03-12 08:51:01', '201809010837', '201809010837', '201809010837', NULL, 'S-0000017', NULL),
(78, 'JKI-NOPO-0088', '2020-03-13', 'FAS8970TGFLNCRT65', 'retail', 'Mitsubishi Xpander', 'MPV', 2019, 'Grey', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'LLumar 40', 'Poles All', 2300000, NULL, 'Bpk. Bagja Hasyim', '021-5656-988', 'Jl. KH Ahmad Dahlan No.3, Kuningan, Jakarta', '2020-03-18', 'bukti_po/nfl4B7w362sJwfJkMvo7t5sUOYB1lLKnwwwUrajk.png', 'pending', '2020-03-14 01:59:07', '2020-03-14 01:59:07', NULL, '201809010837', NULL, NULL, NULL, 'S-0000018', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_tinters`
--

CREATE TABLE `riwayat_tinters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_po` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `tgl_scan` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat_tinters`
--

INSERT INTO `riwayat_tinters` (`id`, `nik`, `no_po`, `lat`, `lng`, `tgl_scan`) VALUES
(1, '201912020891', 'PK56784XY', '-6.17724300', '106.76630400', '2020-01-30 15:32:17'),
(2, '201912020891', 'PK56784XZ', '-6.17724300', '106.76630400', '2020-01-30 15:32:17'),
(3, '201912020892', 'PK56784XW', '-6.17724300', '106.76630400', '2020-01-30 15:32:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `window_films`
--

CREATE TABLE `window_films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_kaca` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `window_films`
--

INSERT INTO `window_films` (`id`, `nm_kaca`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LLumar 40', '2020-01-30 08:25:14', NULL, NULL),
(2, 'CPF1 60', '2020-01-30 08:25:14', NULL, NULL),
(3, 'SunMaster 60', '2020-01-30 08:25:14', NULL, NULL),
(4, 'BRAY 50', '2020-01-30 08:25:14', NULL, NULL),
(5, 'UNIGLOBE 40', '2020-01-30 08:25:14', NULL, NULL),
(16, 'CPF1 Super Black 65', '2020-02-20 02:57:38', '2020-02-20 02:58:26', '2020-02-20 02:58:26'),
(17, 'CPF1 Dark 60', '2020-02-21 02:16:16', '2020-02-21 02:17:34', '2020-02-21 02:17:34'),
(18, 'LLumar SB 70', '2020-02-21 02:21:22', '2020-02-21 02:21:22', NULL),
(19, 'BRAY SB 60', '2020-02-25 03:28:56', '2020-02-27 08:23:38', NULL),
(20, 'asasas', '2020-02-25 03:30:27', '2020-02-27 07:12:36', '2020-02-27 07:12:36'),
(21, 'COBA', '2020-02-25 03:31:31', '2020-02-27 07:12:16', '2020-02-27 07:12:16'),
(22, 'sdsd', '2020-02-25 03:32:46', '2020-02-27 07:12:10', '2020-02-27 07:12:10'),
(23, 'HMMM123456789', '2020-02-25 03:32:57', '2020-02-27 07:12:03', '2020-02-27 07:12:03'),
(24, 'COBA LAGI', '2020-02-25 03:38:34', '2020-02-25 04:55:19', '2020-02-25 04:55:19'),
(25, '12345667', '2020-02-27 07:11:50', '2020-02-27 07:11:57', '2020-02-27 07:11:57'),
(26, 'cobaaa', '2020-02-27 07:47:18', '2020-02-27 07:47:33', '2020-02-27 07:47:33'),
(27, 'ggdjdsj', '2020-02-27 07:49:19', '2020-02-27 07:49:27', '2020-02-27 07:49:27'),
(28, 'qwerty', '2020-02-27 07:50:54', '2020-02-27 07:51:00', '2020-02-27 07:51:00'),
(29, 'sddd', '2020-02-28 06:31:29', '2020-02-28 06:32:06', '2020-02-28 06:32:06'),
(30, 'dsdc', '2020-02-28 06:31:47', '2020-02-28 06:31:53', '2020-02-28 06:31:53'),
(31, 'sddd', '2020-02-28 06:32:15', '2020-02-28 06:34:13', '2020-02-28 06:34:13'),
(32, 'dsdsd', '2020-02-28 06:32:21', '2020-02-28 06:32:28', '2020-02-28 06:32:28'),
(33, 'asasas', '2020-02-29 03:10:23', '2020-02-29 03:10:23', NULL),
(34, 'sdsddsd', '2020-02-29 03:10:35', '2020-02-29 03:10:35', NULL),
(35, 'sdssd', '2020-02-29 03:10:47', '2020-02-29 03:10:47', NULL),
(36, 'ssdd', '2020-02-29 03:10:54', '2020-03-04 07:44:31', '2020-03-04 07:44:31'),
(37, 'asaasas', '2020-02-29 03:12:35', '2020-03-02 02:07:28', '2020-03-02 02:07:28'),
(38, 'asasas', '2020-02-29 03:13:13', '2020-03-02 01:55:52', '2020-03-02 01:55:52'),
(39, 'assa', '2020-02-29 03:13:52', '2020-03-02 01:55:35', '2020-03-02 01:55:35'),
(40, 'hmm', '2020-02-29 03:16:13', '2020-03-02 01:55:26', '2020-03-02 01:55:26'),
(41, 'add', '2020-02-29 03:17:05', '2020-03-02 01:53:59', '2020-03-02 01:53:59'),
(42, 'asasaasaass', '2020-02-29 03:20:21', '2020-03-02 01:53:46', '2020-03-02 01:53:46'),
(43, 'asasas', '2020-02-29 03:22:14', '2020-03-02 01:53:24', '2020-03-02 01:53:24'),
(44, '123', '2020-02-29 04:25:16', '2020-03-02 01:50:53', '2020-03-02 01:50:53'),
(45, '1234', '2020-02-29 04:25:27', '2020-03-02 01:50:42', '2020-03-02 01:50:42'),
(46, 'asd', '2020-02-29 04:31:37', '2020-03-02 01:50:21', '2020-03-02 01:50:21'),
(47, 'asd', '2020-02-29 04:31:45', '2020-03-02 01:47:56', '2020-03-02 01:47:56'),
(48, 'xc', '2020-02-29 04:31:59', '2020-03-02 01:47:47', '2020-03-02 01:47:47'),
(49, 'asd', '2020-02-29 04:42:25', '2020-03-02 01:47:36', '2020-03-02 01:47:36'),
(50, 'asd', '2020-02-29 04:42:28', '2020-03-02 01:47:10', '2020-03-02 01:47:10'),
(51, 'COBAIN', '2020-02-29 04:52:37', '2020-03-02 01:43:15', '2020-03-02 01:43:15'),
(52, 'PAAA', '2020-02-29 06:24:02', '2020-03-02 01:43:02', '2020-03-02 01:43:02'),
(53, 'Apaaaaaaaaaaaaaaaaaaaaaaaa', '2020-02-29 06:26:20', '2020-02-29 07:35:07', '2020-02-29 07:35:07'),
(54, 'astrewrw', '2020-02-29 06:28:37', '2020-02-29 07:33:47', '2020-02-29 07:33:47'),
(55, 'hmmmm', '2020-02-29 06:29:51', '2020-02-29 07:33:41', '2020-02-29 07:33:41'),
(56, 'apalallaala', '2020-02-29 06:31:01', '2020-02-29 07:33:17', '2020-02-29 07:33:17'),
(57, 'klk', '2020-02-29 06:34:47', '2020-02-29 07:32:56', '2020-02-29 07:32:56'),
(58, 'hjjj', '2020-02-29 06:35:02', '2020-02-29 07:31:55', '2020-02-29 07:31:55'),
(59, 'asadfff', '2020-02-29 06:36:07', '2020-02-29 07:29:21', '2020-02-29 07:29:21'),
(60, 'asdsdsd', '2020-02-29 06:37:23', '2020-02-29 07:21:37', '2020-02-29 07:21:37'),
(61, 'Coba Kaca', '2020-03-02 01:39:29', '2020-03-02 01:39:51', '2020-03-02 01:39:51'),
(62, 'Tambah', '2020-03-02 01:43:28', '2020-03-02 01:43:38', '2020-03-02 01:43:38'),
(63, 'asdsddddggggg 3477EDIT dfd', '2020-03-04 02:43:28', '2020-03-04 07:44:15', '2020-03-04 07:44:15'),
(64, 'coba hmm', '2020-03-04 03:01:59', '2020-03-04 03:02:20', '2020-03-04 03:02:20'),
(65, 'erereer', '2020-03-04 07:44:05', '2020-03-04 07:44:09', '2020-03-04 07:44:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grb_admins`
--
ALTER TABLE `grb_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `po_rekaps`
--
ALTER TABLE `po_rekaps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `po_rekaps_no_po_unique` (`no_po`);

--
-- Indeks untuk tabel `riwayat_tinters`
--
ALTER TABLE `riwayat_tinters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `window_films`
--
ALTER TABLE `window_films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `grb_admins`
--
ALTER TABLE `grb_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `po_rekaps`
--
ALTER TABLE `po_rekaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `riwayat_tinters`
--
ALTER TABLE `riwayat_tinters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `window_films`
--
ALTER TABLE `window_films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
