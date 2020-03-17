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
  `no_telp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dealers`
--

INSERT INTO `dealers` (`id`, `id_dealer`, `nama_dealer`, `alamat`, `kota`, `provinsi`, `kontak_person`, `no_telp`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'DLRJKI0000', 'manual', 'manual', 'manual', 'manual', 'manual', 'manual', 1, '2020-01-15 19:28:05', NULL, NULL),
(1, 'DLRJKI0001', 'Dealer Satu', 'Jl. Satu Dua No.1, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Satu', '0877 1234 0001', 1, '2020-01-15 19:28:05', '2020-03-02 02:28:32', '2020-03-02 02:28:32'),
(2, 'DLRJKI0002', 'Dealer Dua', 'Jl. Satu Dua No.2, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Dua', '0877 1234 0002', 1, '2020-01-15 19:28:05', '2020-03-02 02:29:42', '2020-03-02 02:29:42'),
(3, 'DLRJKI0003', 'Dealer Tiga', 'Jl. Satu Dua No.3, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Tiga', '0877 1234 0003', 1, '2020-01-15 19:28:05', '2020-03-02 02:29:42', '2020-03-02 02:29:42'),
(4, 'DLRJKI0004', 'Dealer Empat', 'Jl. Satu Dua No.4, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Empat', '0877 1234 0004', 1, '2020-01-15 19:28:05', '2020-03-02 02:29:42', '2020-03-02 02:29:42'),
(5, 'DLRJKI0005', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-15 19:28:05', '2020-03-02 02:29:42', '2020-03-02 02:29:42'),
(6, 'DLRJKI0006', 'Dealer Enam Jaya Indonesia Cb. Jakarta', 'Jl Kemanggisan No 6', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Enam', '0877 1234 0006', 1, '2020-01-17 00:42:27', '2020-03-02 02:29:42', '2020-03-02 02:29:42'),
(7, 'DLRJKI0007', 'RAHMAT ABADI MOTOR', 'JLN RAYA BOGOR KM 27,5 NO 7 PEKAYON PASAR REBO JAKARTA TIMUR', 'JAKARTA TIMUR', '', 'BPK DODO', '87788800545', 1, '2020-03-02 02:00:00', NULL, NULL),
(8, 'DLRJKI0008', 'BAPAK YACOB', 'ORA ET LABORA ANGGREK LOKA SEKOTOR II NO 1 BUMI SERPONG DAMAI TANGERANG SELATAN', 'TANGERANG 15318', '', 'BPK YACOB ', '8161654933', 1, '2020-03-02 02:00:00', NULL, NULL),
(9, 'DLRJKI0009', 'PRO AUDIO', 'JLN MARGONDA RAYA PUSAT PERTOKOAN RAMANDA DEPOK BLOK B1-3 ', 'DEPOK', '', 'BPK ARIF', '0812-2460-2007', 1, '2020-03-02 02:00:00', NULL, NULL),
(10, 'DLRJKI0010', 'RS AUDIO SEMARANG', 'JLN KEDUNG MUNDU RAYA NO 200 SAMBIROTO TEMBALANG SEMARANG ', '50274 JAWA TENGAH', '', 'BPK ROSID', '82227198828', 1, '2020-03-02 02:00:00', NULL, NULL),
(11, 'DLRJKI0011', 'CEMPAKA WARNA', 'BSD Autoparts Blok. C36 Serpong,Tangerang selatan', 'Tangerang', '', 'Bpk Apri', '81310444350', 1, '2020-03-02 02:00:00', NULL, NULL),
(12, 'DLRJKI0012', 'BAPAK ASEP/PELABUHAN RATU', 'JLN KH HASYIM AZHARI 23 CIPONDOH ( DPN PERUM BANJAR TANGERANG )', 'TANGERANG', '', 'BPK ASEP', '021-50484188/0888895058', 1, '2020-03-02 02:00:00', NULL, NULL),
(13, 'DLRJKI0013', 'ARJUNA AUDIO', 'JLN RAYA BOGOR KM 27 CIBUBUR NO 6 JAKARTA TIMUR', 'JAKARTA TIMUR', '', 'IBU MELLY', '081317571571/081288658833', 1, '2020-03-02 02:00:00', NULL, NULL),
(14, 'DLRJKI0014', 'CAHAYA MANDIRI FILM', 'Jln.Perintis Kemerdekaan No.9 RT 1-03 ', 'Pekalongan', '', 'Bpk Ramon', '85780802177', 1, '2020-03-02 02:00:00', NULL, NULL),
(15, 'DLRJKI0015', 'CK MOTOR', 'Bursa Mobil Sumarecon Serpong Blk H No 8 Gading Serpong Tangerang', 'Tangerang', '', 'Bpk Willy', '87882299055', 1, '2020-03-02 02:00:00', NULL, NULL),
(16, 'DLRJKI0016', 'AYU VARIASI MOTOR/AVM', 'Pasar Segar Jln Peta Timur No 40 Blk KBC NO 16 Kalideres Cengkareng', 'Jakarta Barat', '', 'Bpk Rianto', '0813-8864-9993', 1, '2020-03-02 02:00:00', NULL, NULL),
(17, 'DLRJKI0017', 'CV TERMINAL MOTOR', 'Jl. Boulevar Emiral No. 1-2, RT 003 RW 001, Masale', 'Sulawesi Selatan 90231', '', 'Ibu Mery / Ibu Wenny', '0411-449102 / F. 0411-421409 / 08114113521', 1, '2020-03-02 02:00:00', NULL, NULL),
(18, 'DLRJKI0018', 'V TWO', 'MEGA GLODOK KEMAYORAN (MGK)LT 5 BLK A 12 NO 2 JAKARTA PUSAT', 'JAKARTA PUSAT', '', 'BPK APRIL', '082114977272/087886672558', 1, '2020-03-02 02:00:00', NULL, NULL),
(19, 'DLRJKI0019', 'BAPAK SULARNO/RATNO', 'JLN TARUNA 3 NO 12 RT 006/002 GAMPIT JATIWARINGIN PONDOK GEDE BEKASI', 'BEKASI JAWA BARAT', '', 'BAPAK SULARNO', '81388468527', 1, '2020-03-02 02:00:00', NULL, NULL),
(20, 'DLRJKI0020', 'OMEGA JAYA', 'JLN RAYA BUNDARAN KEDAWUNG NO 9 KEDAWUNG CIREBON JAWA BARAT ', 'JAWA BARAT', '', 'BPK ALGI ', '85224466672', 1, '2020-03-02 02:00:00', NULL, NULL),
(21, 'DLRJKI0021', 'JAYA ABADI MOTOR', 'Jln Mayor Salim Batubara No 35 Sekip Pangkal-Palembang', 'Palembang', '', 'Bpk Afuk/Ci Beti', '0711-356 885', 1, '2020-03-02 02:00:00', NULL, NULL),
(22, 'DLRJKI0022', 'KARUNIA AGUNG MOTOR', 'PASAR PALMERAH Lt 3 BLOK B No 58-59 Jakarta Pusat', 'Jakarta Pusat', '', 'Bpk Unwan/Ibu Berti', '0818233099/087823835152', 1, '2020-03-02 02:00:00', NULL, NULL),
(23, 'DLRJKI0023', 'SARANG VARIASI', 'Jln Hos Cokroaminoto No 4 Jambi ', 'Jambi', '', 'Ibu Ing Ing', '0741-443624/0813689527', 1, '2020-03-02 02:00:00', NULL, NULL),
(24, 'DLRJKI0024', 'CV JAYA MANDIRI MOTOR', 'BSD Auto Part Blk C No 37 Tangerang', 'Tangerang', '', 'Bpk Rudi', '021-5378961/08129032245', 1, '2020-03-02 02:00:00', NULL, NULL),
(25, 'DLRJKI0025', 'NEW CHAMPION VARIASI', 'Jln P.Sudirman No 22 Kartoharjo Madiun ', 'Jawa Timur', '', 'Ibu Lea Lindawati', '81802710806', 1, '2020-03-02 02:00:00', NULL, NULL),
(26, 'DLRJKI0026', 'RAJA VARIASI', 'Jln Komp M Taher No 03-04 Talang Banjar Jambi', 'Jambi', '', 'Bpk Iwan', '085266978080/085396980088', 1, '2020-03-02 02:00:00', NULL, NULL),
(27, 'DLRJKI0027', 'FUK KO AC', 'JLN JEND SUDIRMAN NO 588(samping kodam 2 Sriwijaya)Palembang', 'Palembang', '', 'Bpk Fuk Ko', '0711-373156/081368080988', 1, '2020-03-02 02:00:00', NULL, NULL),
(28, 'DLRJKI0028', 'ATLANTIC (Audio Auto Accessories)', 'Jln Soekarno Hatta No 599  Bandung', 'Jawa Barat', '', 'Bpk Afat', '081218152707/022-70000419', 1, '2020-03-02 02:00:00', NULL, NULL),
(29, 'DLRJKI0029', 'CENTRO AUTO SOUND', 'Jln Rosela 1 Blok FF No 10 Wijaya Kusuma Grogol Petamburan Jakarta Barat', 'Jakarta Barat', '', 'Koh Roni', '0813-6858-8338', 1, '2020-03-02 02:00:00', NULL, NULL),
(30, 'DLRJKI0030', 'ROBIN JAYA MOTOR', 'JLN SYEH MOCH NAWAWI ALBANTANI(Jln Polda No 10)Banjar Agung Serang', 'Banten', '', 'Bpk Robin', '81994640852', 1, '2020-03-02 02:00:00', NULL, NULL),
(31, 'DLRJKI0031', 'BAPAK HERI WIBOWO', 'PT STASIOEN MOTOR JAYA ', 'Jawa Barat', '', 'Bpk Heri Wibowo', '811986345', 1, '2020-03-02 02:00:00', NULL, NULL),
(32, 'DLRJKI0032', 'FORTUNA JAYA', 'Jln Gatot Subroto No 7 Belakang tugu Patung guru Patimus Medan', 'Medan', '', 'Ko Aguan', '08126070571/082166297500', 1, '2020-03-02 02:00:00', NULL, NULL),
(33, 'DLRJKI0033', 'YOLA ACCESSORIES', 'Jalan M. Yamin,SH. No. 153-155, Belakang Tangsi,', 'Sumatera Barat', '', 'Bp. Dasril Tanjung', '(0751)-23952/36797', 1, '2020-03-02 02:00:00', NULL, NULL),
(34, 'DLRJKI0034', 'BEST AUTO ACC', 'Jalan Kapten Bakarudin No 66 (Depan Jamtos) Jambi', 'Jambi', '', 'Ibu Silvani', '0741-64988/081366000909', 1, '2020-03-02 02:00:00', NULL, NULL),
(35, 'DLRJKI0035', 'AWANG FILM (GDC)', 'GRAND DEPOK CITY BLOK C NO 3 ANGGIRA', 'DEPOK', '', 'Pak Wono', '0813 21736599', 1, '2020-03-02 02:00:00', NULL, NULL),
(36, 'DLRJKI0036', 'ALPHINE AUTO CENTER', 'JLN SULTAN AGUNG NO 10A Kec PASAR JAMBI KELURAHAN BERINGIN JAMBI', 'JAMBI', '', 'Bpk Ferdy', '08127416686/02741-311197', 1, '2020-03-02 02:00:00', NULL, NULL),
(37, 'DLRJKI0037', 'SS JAYA VARIASI', 'JLN RESIDENT ABDUL ROZAK NO 11 DEPAN SMA KUMBANG PALEMBANG', 'PALEMBANG', '', 'IBU DIAN', '081390829288/071171101', 1, '2020-03-02 02:00:00', NULL, NULL),
(38, 'DLRJKI0038', 'TRENDY', 'JLN VETERAN NO 31 E PALEMBANG', 'PALEMBANG', '', 'IBU BETTY S', '8127342966', 1, '2020-03-02 02:00:00', NULL, NULL),
(39, 'DLRJKI0039', 'SALIM JAYA CONCEPTZ', 'Jl. Jend. Sudirman No. 39-39A, Pesisir, ', 'Riau 28114', '', 'Bpk Gunawan Salim', '0761-31471/38528', 1, '2020-03-02 02:00:00', NULL, NULL),
(40, 'DLRJKI0040', 'MULYA GLAS', 'JLN RAYA PACARTIRTO 24 PEKALONGAN', 'JAWA TENGAH', '', 'BPK SYARIFUDIN', '85869167007', 1, '2020-03-02 02:00:00', NULL, NULL),
(41, 'DLRJKI0041', 'BAPAK YUDI', 'JLN MAWAR 3 NO 23 C RT 006/005 KELURAHAN BINTARO KECAMATAN PESANGGRAHAN JAKARTA SELATAN ', 'JAKARTA SELATAN /12330', '', 'BPK YUDI', '085892362697/081310671027', 1, '2020-03-02 02:00:00', NULL, NULL),
(42, 'DLRJKI0042', 'MULYA ABADI MOTOR', 'INDUSTRI NO 80 PERTIGAAN TELENG BUNI ASIH CIKARANG KOTA', 'Cikarang', '', 'Didi Suhendi', '085282679227/08974155510', 1, '2020-03-02 02:00:00', NULL, NULL),
(43, 'DLRJKI0043', 'SANJAYA VARIASI', 'JLN DEPATI HAMZAH (SEMABUNG)PANGKAL PINANG BANGKA', 'PANGKALPINANG BANGKA', '', 'BPK HENDRI', '82181550088', 1, '2020-03-02 02:00:00', NULL, NULL),
(44, 'DLRJKI0044', 'JAYA ABADI', 'PASAR SEGAR DEPOK JLN TOLE ISKANDAR DEPOK 2 KAB 29', 'DEPOK', '', 'BPK RESKY', '87876271661', 1, '2020-03-02 02:00:00', NULL, NULL),
(45, 'DLRJKI0045', 'DWI JAYA VARIASI', 'Jl. A. Yani KM. 4,5 RT. 002, Kel. Pemurus Baru,', 'Kalimantan Selatan 70249', '', 'Bp. Dorie', '0511-7588433 / 0811-508411', 1, '2020-03-02 02:00:00', NULL, NULL),
(46, 'DLRJKI0046', 'PLANET JAYA', 'JLN GR.DJAMIN DT.BAGINDO NO 21 RT 06 TALANG BANJAR JAMBI', 'JAMBI', '', 'BPK HANAFI', '0711-23011', 1, '2020-03-02 02:00:00', NULL, NULL),
(47, 'DLRJKI0047', 'MERCURY VARIASI & AC', 'JLN KOMP.POL.ZAINAL ABIDIN JAMBI', 'JAMBI', '', 'BPK RUDI', '0852 6679 3999/0741-20765', 1, '2020-03-02 02:00:00', NULL, NULL),
(48, 'DLRJKI0048', 'SAVE / CV.SUMBER AGUNG VARIASI', 'JL.RAYA JEMUR SARI 12 RT.002 RW.008', 'SURABAYA', '', 'BPK FANDI', '0811321536/031-70985327', 1, '2020-03-02 02:00:00', NULL, NULL),
(49, 'DLRJKI0049', 'RINA JAYA FILM', 'PASAR CINERE AUTOPARTS BLK OBH 23', 'DEPOK', '', 'Bapak Ling', '81318111183', 1, '2020-03-02 02:00:00', NULL, NULL),
(50, 'DLRJKI0050', 'KING VARIASI', 'JLN GAJAH MADA NO 7-8 JAMBI', 'JAMBI', '', 'BPK JONI', '0741-3069367/082155816888', 1, '2020-03-02 02:00:00', NULL, NULL),
(51, 'DLRJKI0051', 'SUGENG FILM', 'JLN BUNGUR RAYA NO 6 KEBON BAYAM PINGGIR REL KERETA STASIUN SENEN ', 'JAKARTA PUSAT', '', 'BPK SUGENG', '81212728320', 1, '2020-03-02 02:00:00', NULL, NULL),
(52, 'DLRJKI0052', 'BERKAH AUTO FILM', 'JLN TOLE ISKANDAR PASAR SEGAR DEPOK BLOK KCB 3 NO 5 ', 'DEPOK', '', 'BAPAK SOLEH', '81243191434', 1, '2020-03-02 02:00:00', NULL, NULL),
(53, 'DLRJKI0053', 'ARAWFILM (Car Accesories)', 'Jl. Veteran No 91 Padang', 'Sumatera Barat', '', 'Bpk Yan Farizon', '085263967771/0751-22120', 1, '2020-03-02 02:00:00', NULL, NULL),
(54, 'DLRJKI0054', 'REZA KACA FILM ', 'Jl. Puspanjolo Timur VII 2A, Kel. Bojongsalaman,', 'Jawa Tengah', '', 'Bp. Rheza Pramudita ', '081229555618 / 085100444360', 1, '2020-03-02 02:00:00', NULL, NULL),
(55, 'DLRJKI0055', 'PT COOLZONE INDONESIA', 'JLN PEMUDA NO 9C KRANJI RT 1 RW 4 BEKASI BARAT', 'Jawa Barat', '', 'Bpk Ricky', '021-22101169/08111542354', 1, '2020-03-02 02:00:00', NULL, NULL),
(56, 'DLRJKI0056', 'BETA AUTOCUSTOM', 'JLN KH NOER ALI NO 5 KALIMALANG BEKASI 17145', 'BEKASI', '', 'BPK ANDREAS M', '081314400700/021-8842732', 1, '2020-03-02 02:00:00', NULL, NULL),
(57, 'DLRJKI0057', 'PASTI JAYA FILM', 'PASAR MOBIL KEMAYORAN BLOK B NO 6 JAKARTA PUSAT', 'JAKARTA PUSAT', '', 'Bpk Tikno', '85773690046', 1, '2020-03-02 02:00:00', NULL, NULL),
(58, 'DLRJKI0058', 'BAHANA ACCESORIES', 'JLN RAYA BOGOR KM 25 NO 24 CIRACAS JAKARTA TIMUR', 'JAKARTA TIMUR', '', 'BPK DANI', '81292431765', 1, '2020-03-02 02:00:00', NULL, NULL),
(59, 'DLRJKI0059', 'MULIA FILM', 'MEGA GLODOK KEMAYORAN LT 5 BLOK D1 NO 5 JAKARTA PUSAT', 'JAKARTA PUSAT', '', 'BPK WANDI', '081288237878/081511216611', 1, '2020-03-02 02:00:00', NULL, NULL),
(60, 'DLRJKI0060', 'AUVI TEKHNIK', 'Pasar Mobil Kemayoran Blok E No. 27', 'Jakarta Pusat', '', 'Bpk Hj Tofik', '082289878909/654 57 31', 1, '2020-03-02 02:00:00', NULL, NULL),
(61, 'DLRJKI0061', 'ABC MOTOR', 'JLN PAJAJARAN NO 16 BANDUNG', 'JAWA BARAT', '', 'Bpk Billy', '8164864842', 1, '2020-03-02 02:00:00', NULL, NULL),
(62, 'DLRJKI0062', 'ALPHA DELTA KACA FILM & STIKER', 'JLN RAYA BUKIT TINGGI PAYAKUMBUH KEC AMPEK ANGKEK KE NAGARION BIARO GADANG JORONG BATANG AIA KATIAK ', 'SUMATERA BARAT 26191', '', 'BPK ADE ARIADI', '81268108644', 1, '2020-03-02 02:00:00', NULL, NULL),
(63, 'DLRJKI0063', 'CV. PUTRA NUGRAHA PRIMA / AUTODECOR', 'Ruko Gajah Mada Plaza Blok A. 3-4 RT 03 RW 10, Mugasari,', 'Jawa Tengah', '', 'Bp. Hary Nugroho', '024-8314174 / 0818492538', 1, '2020-03-02 02:00:00', NULL, NULL),
(64, 'DLRJKI0064', 'AZONA VARIASI', 'JLN LINTAS SUMATERA KM3 DEPAN LAPANGAN BANGKO MERANGIN JAMBI', 'JAMBI', '', 'BAPAK ASEP/IBU RIA', '82280485811', 1, '2020-03-02 02:00:00', NULL, NULL),
(65, 'DLRJKI0065', 'BAPAK H. SENI', 'RT 009/03 KEMBANGAN JAKARTA BARAT', 'JAKARTA BARAT', '', 'H. SENI', '81381226067', 1, '2020-03-02 02:00:00', NULL, NULL),
(66, 'DLRJKI0066', 'CITRA BARU MOTOR', 'BLOK M MALL LANTAI BASEMENT BLK B NO 11 & BLK D NO 7-8 JAKARTA SELATAN', 'JAKARTA SELATAN', '', 'BPK TOTO', '8129018899', 1, '2020-03-02 02:00:00', NULL, NULL),
(67, 'DLRJKI0067', 'PRIMA VARIASI', 'JLN MANGGA DUA RAYA NO 14 (Dpn SLB)-Bengkulu', 'BENGKULU', '', 'Pak Triyanto', '811737302', 1, '2020-03-02 02:00:00', NULL, NULL),
(68, 'DLRJKI0068', 'COMAL AUTO VARIASI', 'JLN IMAM BONJOL BLOK B NO 10 RUKO WR KARAWACI TANGERANG', 'TANGERANG', '', 'BPK AGUNG', '81297231329', 1, '2020-03-02 02:00:00', NULL, NULL),
(69, 'DLRJKI0069', 'PHOENIX', 'JLN DEMPO LUAR NO 897(SEBRANG PULAU MAS,SEBELAH HOTEL RIAU)PALEMBANG', 'SUMATERA SELATAN', '', 'IBU LINAWATI', '85769011949', 1, '2020-03-02 02:00:00', NULL, NULL),
(70, 'DLRJKI0070', 'SARANG VARIASI (MUARA BUNGO)', 'Jl Lintas Sumatera pasar atas sebelah Honda Wiltop Muara Bungo', 'Sumetera Barat', '', 'Ibu Sherly', '81360208500', 1, '2020-03-02 02:00:00', NULL, NULL),
(71, 'DLRJKI0071', 'SINAR JAYA AUDIO & ACCESORIES', 'JLN AHMAD A WAHABNO 7 LUHU TELAGA,GORONTALO', 'GORONTALO', '', 'BPK RICHARD GERARD', '0852 9807 4835', 1, '2020-03-02 02:00:00', NULL, NULL),
(72, 'DLRJKI0072', 'PIONEER (Formula Variasi Accesories)', 'JLN HZ MUSTOFA 314 TASIKMALAYA', 'Jawa Barat', '', 'Koh Hendra', '0265-335731/321200', 1, '2020-03-02 02:00:00', NULL, NULL),
(73, 'DLRJKI0073', 'AUDIO MOBIL', 'JLN KOL POL M.TAHER NO 65 PAKUAN BARU JAMBI(SEBELAH ALFAMART TALANG BANJAR', 'JAMBI', '', 'CI SELVI', '81368633707', 1, '2020-03-02 02:00:00', NULL, NULL),
(74, 'DLRJKI0074', 'PUTRA JAYA MANDIRI', 'JLN RAYA JAKARTA BOGOR KM 27 SIMPANG CIBUBUR JAKARTA TIMUR', 'JAKARTA TIMUR', '', 'BPK GUSTAFO', '087887033881/081319991113', 1, '2020-03-02 02:00:00', NULL, NULL),
(75, 'DLRJKI0075', 'JPRACING (Modif House)', 'JLN GERILYA BARAT NO 732 PURWOKERTO', 'JAWA TENGAH', '', 'BAPAK LILIK', '0281-7773337/089650808833', 1, '2020-03-02 02:00:00', NULL, NULL),
(76, 'DLRJKI0076', 'JAVA MOTOR', 'JLN KESEHATAN RAYA 18C BINTARO JAYA SEKTOR 1 ', 'TANGERANG', '', 'BPK NANANG', '81398131318', 1, '2020-03-02 02:00:00', NULL, NULL),
(77, 'DLRJKI0077', 'NEW PRIMA MOTOR', 'JLN RAYA TIRTO NO 673 KELURAHAN TIRTO KABUPATEN PEKALONGAN 51151', 'JAWA TENGAH', '', 'KOH YUSAN/CI GIATSUN', '8164242555', 1, '2020-03-02 02:00:00', NULL, NULL),
(78, 'DLRJKI0078', 'JIHAAN (Car Accessories & Audio)', 'JLN RAYA BUKITTINGGI PADANG KM4 OBAY PD LUAR DEPAN TOYOTA AUTO 2000 (BUKITTINGGI)', 'BUKITTINGGI', '', 'DATUAK', '81286007677', 1, '2020-03-02 02:00:00', NULL, NULL),
(79, 'DLRJKI0079', 'ARZ MOTOR', 'JLN RAYA CIBANTENG RT 01/04(dpn SMK Farmasi Galenium)Bogor(dekat kampus IPB)Kecamatan Ciampea', 'Jawa Barat', '', 'Bpk Adon', '85692478780', 1, '2020-03-02 02:00:00', NULL, NULL),
(80, 'DLRJKI0080', 'EXCEL AUDIO TEBET', 'JLN TEBET TIMUR RAYA NO 17 (Dari arah warung warmo sebelum Alfamart)', 'Jakarta Selatan', '', 'Bpk Yono', '85291784523', 1, '2020-03-02 02:00:00', NULL, NULL),
(81, 'DLRJKI0081', 'BERLIN MOTOR', 'JLN HAYAM WURUK NO 70 JAMBI ', 'JAMBI ', '', 'BPK IRWAN', '74125907', 1, '2020-03-02 02:00:00', NULL, NULL),
(82, 'DLRJKI0082', 'VIRGO VARIASI', 'JLN M ISA NO 216 PALEMBANG ', 'SUMATERA SELATAN', '', 'BPK GUNAWAN', '81312864876', 1, '2020-03-02 02:00:00', NULL, NULL),
(83, 'DLRJKI0083', 'KRAMAT MOTOR', 'JLN IR SUTAMI NO 6-7 TANJUNG PINANG-RIAU', 'RIAU', '', 'BPK AWANG', '0771-313603', 1, '2020-03-02 02:00:00', NULL, NULL),
(84, 'DLRJKI0084', 'GELORA MOTOR VARIASI', 'JLN KAPTEN MULYONO NO 86 SAMPIT KALIMANTAN TENGAH', 'KALIMANTAN TENGAH', '', 'BAPAK YUDI', '81349177251', 1, '2020-03-02 02:00:00', NULL, NULL),
(85, 'DLRJKI0085', 'PT PRATAMA PERKASA INDAH', 'JLN HOS COKROAMINOTO RT 001 NO 4 SUKA KARYA KOTA BARU JAMBI', 'JAMBI', '', 'IBU ING ING', '0741-443624/0813689527', 1, '2020-03-02 02:00:00', NULL, NULL),
(86, 'DLRJKI0086', 'CV SINAR OTOMOTIVE JAYA', 'JLN AHMAD A WAHABNO 7 BULILA LUHU TELAGA,GORONTALO', 'GORONTALO', '', 'BPK RICHARD GERARD', '0852 9807 4835', 1, '2020-03-02 02:00:00', NULL, NULL),
(87, 'DLRJKI0087', 'JAYA AGUNG MANDIRI', 'BINTARO TRADE CENTER BLK H2 NO 22 Tangerang Selatan', 'Tangerang Selatan', '', 'Bpk Ending', '81282010001', 1, '2020-03-02 02:00:00', NULL, NULL),
(88, 'DLRJKI0088', 'NEW PRIMA MOTOR', 'Jl. Raya Tirto No. 673, Bener, Wiradesa,', 'Jawa Tengah', '', 'Bp. Kho Giauw San', '0285-427555 / 08164242555', 1, '2020-03-02 02:00:00', NULL, NULL),
(89, 'DLRJKI0089', 'CV. SUMBER MAS MEGAH AUTO', 'Jalan IR. Sutami No. 30E, Komp. Pergudangan 30 Bira,', 'Tamalanrea Kota Makassar, Sulawesi Selat', '', 'Ibu Mery / Ibu Wenny', 'F. 0411-421409 / 08114113521', 1, '2020-03-02 02:00:00', NULL, NULL),
(90, 'DLRJKI0090', 'MAKMUR JAYA FILM', 'JALAN TOLE ISKANDAR PASAR SEGAR DEPOK BLOK KAB 1 NO 23', 'DEPOK', '', 'PAK FAUZI', '81389010007', 1, '2020-03-02 02:00:00', NULL, NULL),
(91, 'DLRJKI0091', 'JAYA MEGA (Window Film, Car audio and accessories)', 'Taman surya 2 Blok C1/No 53(Depan sekolah kanan Global)Jakarta Barat', 'Jakarta Barat', '', 'Koh Amin', '08118488827/021-5410080', 1, '2020-03-02 02:00:00', NULL, NULL),
(92, 'DLRJKI0092', 'GEMILANG VARIASI', 'Jl. Soekarno-Hatta ( Jalan Koba ) No. 5, Bukitbesar', 'Kepulauan Bangka Belitung', '', 'Bpk Darman', '08127174571 / 08117179986', 1, '2020-03-02 02:00:00', NULL, NULL),
(93, 'DLRJKI0093', 'HOTEL SHERATON GANDARIA CITY', 'JL. ATERI PONDOK INDAH, KEBAYORAN LAMA JAKARTA', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(94, 'DLRJKI0094', 'AUVI ART JAYA', 'JLN KOBA KM4.5 NO 18 PANGKALPINANG BANGKA ', 'BANGKA', '', 'KOH ASIUNG', '0717-435041', 1, '2020-03-02 02:00:00', NULL, NULL),
(95, 'DLRJKI0095', 'TIDAR 21 AUTO CARE', 'JLN D.I PANJAITAN NO 99 PESAPEN PEMALANG', 'JAWA TENGAH', '', 'Bpk Andi', '0284-323228', 1, '2020-03-02 02:00:00', NULL, NULL),
(96, 'DLRJKI0096', 'JAMBI AUDIO', 'JLN RAYA BOGOR KM 27 CIBUBUR NO 6 JAKARTA TIMUR', 'JAKARTA TIMUR', '', 'BAPAK JHONY', '0821 1011 2127', 1, '2020-03-02 02:00:00', NULL, NULL),
(97, 'DLRJKI0097', 'TRI LIDYA AUDIO (TRL CAR AUDIO)', 'JLN RAYA BOGOR KM 27.NO 25 JAKARTA TIMUR ', 'JAKARTA TIMUR', '', 'Ibu Lydia', '0878 8528 4666/087778106674', 1, '2020-03-02 02:00:00', NULL, NULL),
(98, 'DLRJKI0098', 'LUMION', 'JLN MH THAMRIN NO 45 A CIKOKOL TANGERANG', 'TANGERANG', '', 'LUMION', '81293523567', 1, '2020-03-02 02:00:00', NULL, NULL),
(99, 'DLRJKI0099', 'SUDI MAMPIR II', 'PERGUDANGAN CIKUPA MAS BELAKANG GUDANG STANLEY CUCIAN MOBIL(MANDI SALJU 4 SAUDARA)', 'TANGERANG', '', 'BPK BOBY/IBU LAZIMA', '8577550314', 1, '2020-03-02 02:00:00', NULL, NULL),
(100, 'DLRJKI0100', 'EXTREME AUDIO', 'Taman Aries Blk H4/1 Meruya Ilir Jakarta Barat', 'Jakarta Barat', '', 'Bpk David Iskandar', '021-5853515/021-5844414/081585102425', 1, '2020-03-02 02:00:00', NULL, NULL),
(101, 'DLRJKI0101', 'PAK NURDIN', 'JLN KEMBANGAN SELATAN RT 1 RW 2 NO 39 ', 'JAKARTA BARAT', '', 'PAK NURDIN/PAK IBNU', '87775196204', 1, '2020-03-02 02:00:00', NULL, NULL),
(102, 'DLRJKI0102', 'PRATAMA PALEMBANG', 'JLN VETERAN NO 150 PALEMBANG', 'PALEMBANG', '', 'IBU YEFTA', '85377777720', 1, '2020-03-02 02:00:00', NULL, NULL),
(103, 'DLRJKI0103', 'TWIN JAYA', 'JLN. LEGENDA NO.62 MUSTIKA JAYA BEKASI TIMUR ', '', '', 'BPK. HASAN', '82244682519', 1, '2020-03-02 02:00:00', NULL, NULL),
(104, 'DLRJKI0104', 'JOLLY VARIASI (Variasi Mobil)', 'Jln Dr.M.ISA No 12B (TAKSAM) Palembang', 'Palembang', '', 'Bpk Joli', '085100780801/082182881776', 1, '2020-03-02 02:00:00', NULL, NULL),
(105, 'DLRJKI0105', 'CV VM AUDIO', 'Jln Gatot Subroto No 33 Sei Sikambing Medan Petisah (Sebelah RS Advent)', 'Medan', '', 'Hemy', '061-453-5100/0811607970', 1, '2020-03-02 02:00:00', NULL, NULL),
(106, 'DLRJKI0106', 'JAYA ABADI', 'PASAR SEGAR CINERE BLOK  OBH 16 PINTU SELATAN 3 ', 'DEPOK', '', 'BPK KAMTO', '85311479294', 1, '2020-03-02 02:00:00', NULL, NULL),
(107, 'DLRJKI0107', 'JAYA MANDIRI MOTOR', 'Cibubur Point Automotive Center Ground Floor Ruko Blk B No 2 Cibubur Jaktim', 'Jakarta Timur', '', 'Bpk Komar', '082211092280/02184594969', 1, '2020-03-02 02:00:00', NULL, NULL),
(108, 'DLRJKI0108', 'KHARISMA VARIASI', 'Jln Riau No 11 A, Pekanbaru Riau ', 'Pekanbaru', '', 'Ibu Angelia', '081275880/0761-21903', 1, '2020-03-02 02:00:00', NULL, NULL),
(109, 'DLRJKI0109', 'ISTANA VARIASI', 'Jln Pangerang Hidayat samping kantor KUA Pal 5 Kotabaru Jambi', 'Jambi', '', 'Koh Toni', '85283888388', 1, '2020-03-02 02:00:00', NULL, NULL),
(110, 'DLRJKI0110', 'AGUNG JENNY MOTOR', 'Ruko Sentral Otomotive Harapan Indah Blk ED No 14 Bekasi', 'Bekasi', '', 'Bpk sam', '085319966662/02188873872', 1, '2020-03-02 02:00:00', NULL, NULL),
(111, 'DLRJKI0111', 'BASENJA MOTOR', 'Jln Pelajar No 24 Sukajadi Pekanbaru ', 'Pekanbaru', '', 'Ibu Narti', '811765376', 1, '2020-03-02 02:00:00', NULL, NULL),
(112, 'DLRJKI0112', 'PANORAMA KACA FILM', 'Pasar Segar Tole Iskandar Blok B-4 No 11', 'Depok', '', 'Bpk Dedi Oyet', '085811157535/085216671984', 1, '2020-03-02 02:00:00', NULL, NULL),
(113, 'DLRJKI0113', 'MJM / MUGI JAYA FILM', 'Sentra Otomotive Pasar segar Depok Blok KFB-1 NO 05', 'Depok', '', 'Bpk Riyu', '81287479936', 1, '2020-03-02 02:00:00', NULL, NULL),
(114, 'DLRJKI0114', 'SUMBER BERKAT VARIASI', 'Jln terusan Jakarta No 10D Bandung', 'Jawa Barat', '', 'Chandra Setiawan', '022-7279561/085317177775', 1, '2020-03-02 02:00:00', NULL, NULL),
(115, 'DLRJKI0115', 'AGUS FILM', 'Pasar Cipete Fatmawati Blk HKS 19 depan Anugrah Film Jakarta Selatan', 'Jakarta Selatan', '', 'Bpk Agus', '81319082126', 1, '2020-03-02 02:00:00', NULL, NULL),
(116, 'DLRJKI0116', 'PAK YUZRORI', 'Jln Kusuma Bangsa Gang Mbeji RT2 RW 2 Panjang Baru kec Pekalongan Utara', 'Jawa Tengah', '', 'Bpk Yuzrori', '085700000905/085725000968', 1, '2020-03-02 02:00:00', NULL, NULL),
(117, 'DLRJKI0117', 'KARYA VARIASI', 'Jln Raya Kukun-Daon Kios 1C Desa Sukatani Rajeg Tangerang', 'Tangerang', '', 'Bpk Anwar', '085329364219/082312932499', 1, '2020-03-02 02:00:00', NULL, NULL),
(118, 'DLRJKI0118', 'ISTANA AUDIO VARIASI', 'Jl. KH. Ahmad Dahlan no. 76 Samarinda', 'Samarinda', '', 'Bp. Aji Junaedi', '0541-741475 / 0811586891', 1, '2020-03-02 02:00:00', NULL, NULL),
(119, 'DLRJKI0119', 'MAKMUR JAYA MANDIRI', 'Auto Part Pasar Segar Cinere Blk OBA 3 Depok', 'Depok', '', 'Bpk Sugi', '0812-9494-3344', 1, '2020-03-02 02:00:00', NULL, NULL),
(120, 'DLRJKI0120', 'NICO FILM', 'Jln Senen Raya Plaza Atrium Lt 5 Blk B No 33', 'Jakarta Pusat', '', 'Bpk Teja', '021-3516483/08179112365', 1, '2020-03-02 02:00:00', NULL, NULL),
(121, 'DLRJKI0121', 'MKM / Andalan Car Wash', 'Jln Jati Kubang Blk A 13/3 Kompas (SKU) Tambun Selatan', 'Tambun ', '', 'Bpk Abu', '81319465718', 1, '2020-03-02 02:00:00', NULL, NULL),
(122, 'DLRJKI0122', 'RVM (Windows Film Specialist)', 'Jln Gaharu No 110 Medan Sumatera Utara 20235', 'Sumatera Utara', '', 'Corrie', '0821-6636-7355/0851-0026-7355/0819202-6688', 1, '2020-03-02 02:00:00', NULL, NULL),
(123, 'DLRJKI0123', 'KREASI MANDIRI MOTOR', 'Ruko Sentral Otomotive Harapan Indah Blk ED No 15 Bekasi', 'Bekasi', '', 'Bpk Sam', '085319966662/02188873872', 1, '2020-03-02 02:00:00', NULL, NULL),
(124, 'DLRJKI0124', 'KRISTAL MOBIL', 'KOMP BUMI SEROJA PERMAI JLN GAGAK HITAM NO 20 MEDAN', 'MEDAN', '', 'Koh Amin', '0811655351/081397515351/0895331661864', 1, '2020-03-02 02:00:00', NULL, NULL),
(125, 'DLRJKI0125', '63 VARIASI', 'Pasar Smart Ampera Jln Daan Mogot Blk K No 15 KM 19 Ampera Batu Ceper Tangerang', 'Banten', '', 'Ibu Endang', '87877902540', 1, '2020-03-02 02:00:00', NULL, NULL),
(126, 'DLRJKI0126', 'BERDIKARI MOTOR', 'Jln Sutomo No 106 Ciledug', 'Jln Sutomo No 106 Ciledug', '', 'Bpk Saifudin', '87871454647', 1, '2020-03-02 02:00:00', NULL, NULL),
(127, 'DLRJKI0127', 'Bintang Abadi', 'Jln Semarang No 46 B Medan ', 'Sumatera Utara', '', 'Koh Ameng', '81397010000', 1, '2020-03-02 02:00:00', NULL, NULL),
(128, 'DLRJKI0128', 'DINO VARIASI', 'JLN RAYA PARUNG GUNUNG SINDUR BOGOR', 'JAWA BARAT', '', 'TOMY', '85695428715', 1, '2020-03-02 02:00:00', NULL, NULL),
(129, 'DLRJKI0129', 'XTRA HOTEL', 'Jln Sutoyo No 31A Tanah Patah Bengkulu', 'Bengkulu', '', 'Ibu Melanie', '0736-346333/085788109403', 1, '2020-03-02 02:00:00', NULL, NULL),
(130, 'DLRJKI0130', 'Bapak Hartono', 'Jl. Raya Kartasura KM.8 Pabelan , Kartosuro', 'Jawa Tengah', '', 'Bpk Hartono', '81226665456', 1, '2020-03-02 02:00:00', NULL, NULL),
(131, 'DLRJKI0131', 'CV Senta Jaya Sentosa', 'Jln Pajajaran VI/BB No 14 RT 3 RW 029 Sempur sari Kaliwates Jember Jawa Timur', 'Jawa Timur', '', 'Bpk Rudi', '331110', 1, '2020-03-02 02:00:00', NULL, NULL),
(132, 'DLRJKI0132', 'Karya Tiga Variasi', 'Pasar Mandiri Blk D No 50 Kelapa Gading Jakarta Timur', 'Jakarta Timur', '', 'Bpk Jefri', '81290393660', 1, '2020-03-02 02:00:00', NULL, NULL),
(133, 'DLRJKI0133', 'New Hayam Wuruk Variasi', 'Jln Teuku Umar No 71 Kediri Jawa Timur', 'Jawa Timur', '', 'Bpk Julyanto Hadi Oetomo', '0354-683996', 1, '2020-03-02 02:00:00', NULL, NULL),
(134, 'DLRJKI0134', 'SUMBER JAYA', 'Jln Let Kol Darmo Sugondo No 49 Palangkaraya-Kalimantan Tengah', 'Kalimantan Tengah', '', 'Bpk Arif', '0536-3221707/0811520368', 1, '2020-03-02 02:00:00', NULL, NULL),
(135, 'DLRJKI0135', 'KHARISMA MOTOR', 'Pasar Smarta Ampera Jln Daan Mogot KM19 Blok L8-9 Ampera batu ceper Tangerang', 'Tangerang', '', 'Bpk Adi Sarono', '87889105988', 1, '2020-03-02 02:00:00', NULL, NULL),
(136, 'DLRJKI0136', 'OZORA KACA FILM', 'Grand Depok City The Market Otomotive Center Blk D No 12 Depok', 'depok', '', 'Bp Ipong', '81314110956', 1, '2020-03-02 02:00:00', NULL, NULL),
(137, 'DLRJKI0137', 'WIJAYA MOTOR (CAR AUDIO ACCESSORIES KACA FILM)', 'Kp Buwek Desa Sumber Jaya Kec Tambun Beksai Selatan(depan perum koperindag)', 'Bekasi', '', 'Bpk Sujarwo', '087875327527/081317560677', 1, '2020-03-02 02:00:00', NULL, NULL),
(138, 'DLRJKI0138', 'WIN\'Z AUTO CAR AUDIO INTERIOR & MODIFICATION ACCESORIES', 'JL.Balai kota 1 No.25 (Depan pinaesaan motor tikala)', 'Manado', '', 'Bpk Edwin', '0431-870007/0816231207', 1, '2020-03-02 02:00:00', NULL, NULL),
(139, 'DLRJKI0139', 'BPK. RIVAN', 'JL. RC. VETERAN NO. 11 Q', '', '', '', '85645731148', 1, '2020-03-02 02:00:00', NULL, NULL),
(140, 'DLRJKI0140', 'RATU FILM', 'Atrium Senen lt 5 Blok E No. 146 - 147', 'Jakarta Pusat', '', 'Bapak Adi', '81586444976', 1, '2020-03-02 02:00:00', NULL, NULL),
(141, 'DLRJKI0141', 'LIAN MANDIRI', 'Jln Margonda Raya Komp Auto Part Ramanda Depok Blk A-9 Blok D No5', 'Depok', '', 'Bpk Lian', '85220707680', 1, '2020-03-02 02:00:00', NULL, NULL),
(142, 'DLRJKI0142', 'BANGKIT MAJU VARIASI', 'Jln Raya Cadas-Kukun Kp Leles Sindang sari Psar Kemis 15560 Tangerang-Banten', 'Banten', '', 'Bpk Kaswanto', '021/59357286/087877191264/081310790017', 1, '2020-03-02 02:00:00', NULL, NULL),
(143, 'DLRJKI0143', 'M-NEXT STICKER', 'Jln Kh.Hasyim Ashari No 78 Pinang Tangerang', 'Tangerang', '', 'Bpk Shodik', '82226772092', 1, '2020-03-02 02:00:00', NULL, NULL),
(144, 'DLRJKI0144', 'Maju Jaya', 'Pasa Mobil Kemayoran Blk S No 101 B Jakarta Pusat', 'Jakarta Pusat', '', 'Pak Jeo', '021-6543029/021-6544807/08161906943/081551817029', 1, '2020-03-02 02:00:00', NULL, NULL),
(145, 'DLRJKI0145', 'SOERYA CALYPSO', 'Jl. A. Yani 96 C, Purwodadi,', 'Jawa Timur 65125', '', 'Bpk Dodi', '0341-415500/(0818381258)', 1, '2020-03-02 02:00:00', NULL, NULL),
(146, 'DLRJKI0146', 'KHARISMA VARIASI', 'Jln Kusuma Bangsa Gang Mbeji RT2 RW 2 Panjang Baru kec Pekalongan Utara', 'Jawa Tengah', '', 'Bpk Yuzrori', '085700000905/085725000968', 1, '2020-03-02 02:00:00', NULL, NULL),
(147, 'DLRJKI0147', 'BUKU PINTAR INDONESIA', 'Green Garden Blk E1 No 7 Jakarta Barat', 'Jakarta Barat', '', 'Ibu Ulfa', '021-22584304', 1, '2020-03-02 02:00:00', NULL, NULL),
(148, 'DLRJKI0148', 'SAM AUTO', 'JLN RINGROAD TIMUR RUKO JOGORAGAN NO 17 BANGUNATAP BANTUL JOGJAKARTA', 'JAWA TENGAH', '', 'Martin', '87884568959', 1, '2020-03-02 02:00:00', NULL, NULL),
(149, 'DLRJKI0149', 'MANDIRI FILM', 'Pasar Automotive Duren sawit Jln Duren sawit AKS 023 Jakarta Timur', 'Jakarta Timur', '', 'Bpk Edi', '81386217493', 1, '2020-03-02 02:00:00', NULL, NULL),
(150, 'DLRJKI0150', 'BAPAK SAIMIN', 'Perumahan Unggul Permai Blok C6A No 2 Tambun Bekasi', 'Jawa Barat', '', 'Bapak Saimin', '8129943095', 1, '2020-03-02 02:00:00', NULL, NULL),
(151, 'DLRJKI0151', 'GEMA AUDIO', 'Jln Muara Karang L9 Timur No 21 Jakarta Utara', 'Jakarta Utara', '', 'Bapak Mardi', '021-6615570/08161924915', 1, '2020-03-02 02:00:00', NULL, NULL),
(152, 'DLRJKI0152', 'ISTANA VARIASI MOBIL', 'Jln Dr.M Isa No 26 Palembang', 'Palembang', '', 'Bpk Erik Gusnaidy', '0711-36408', 1, '2020-03-02 02:00:00', NULL, NULL),
(153, 'DLRJKI0153', 'GRC', 'Pasar duren sawit AKS 090 Jakarta Timur', 'Jakarta Timur', '', 'Bpk Alang ', '81299207785', 1, '2020-03-02 02:00:00', NULL, NULL),
(154, 'DLRJKI0154', 'AUTOZONE', 'Jln segaran No 43/9 Palembang', 'Sumatera', '', 'Koh Kiki', '8117834483', 1, '2020-03-02 02:00:00', NULL, NULL),
(155, 'DLRJKI0155', 'SINAR VARIASI', 'Jl. Lapangan Tembak Kav. 198, Cibubur,', 'DKI Jakarta 13720', '', 'Bp. Arianto ', '81218819790', 1, '2020-03-02 02:00:00', NULL, NULL),
(156, 'DLRJKI0156', 'PANDU FILM', 'PLAZA ATRIUM SENEN LT 5 BLOK E NO 141 ', 'Jakarta Pusat', '', 'Bpk Harvin', '021-3512505', 1, '2020-03-02 02:00:00', NULL, NULL),
(157, 'DLRJKI0157', 'PT. TRAS AUTO MOTOR', 'Intermark Building Basement I-LG C B1.02', 'Tangerang', '', 'Bpk Andjar Wenang', '87775196257', 1, '2020-03-02 02:00:00', NULL, NULL),
(158, 'DLRJKI0158', 'MUL KACA FILM', 'JLN GRIYA BUKIT JAYA BLOK L3 NO 8 GUNUNG PUTRI BOGOR', 'JAWA BARAT', '', 'BAPAK MAULANA', '81380266903', 1, '2020-03-02 02:00:00', NULL, NULL),
(159, 'DLRJKI0159', 'PAK EBET', 'Jln Karang Anyar E No 31 Sawah Besar Jakarta Pusat', 'Jakarta Pusat', '', 'Bpk Ebet', '81291321522', 1, '2020-03-02 02:00:00', NULL, NULL),
(160, 'DLRJKI0160', 'CV. JAYA MAKMUR', 'Jl. Komplek Balikpapan baru Ruko Sentra Eropa III Blok AC 1 No. 06, RT/RW 09 Kelurahan Damai Baru,', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(161, 'DLRJKI0161', 'MUSTIKA VARIASI', 'PLAZA SHINTA BLOK B NO.40 ', 'TANGERANG', '', 'BPK.ALUNG', '81808281921', 1, '2020-03-02 02:00:00', NULL, NULL),
(162, 'DLRJKI0162', 'Mobil Gaul', 'Jl. Majapahit No. 15', '', '', '', '0813-58918855', 1, '2020-03-02 02:00:00', NULL, NULL),
(163, 'DLRJKI0163', 'Mobil Triple CA', 'Jln Auto Center Blok V6 No 30 City market Citra raya Cikupa', 'Tangerang', '', 'pak Wempi', '81289088095', 1, '2020-03-02 02:00:00', NULL, NULL),
(164, 'DLRJKI0164', 'Abadi Variasi', 'Jln Cut Meutia raya No 28 rawa panjang Bekasi up Mulyadi 081932810543', 'Bekasi', '', 'Mulyadi', '81932810543', 1, '2020-03-02 02:00:00', NULL, NULL),
(165, 'DLRJKI0165', 'AUTOSOUND / CV.MICA SEJAHTERA ABADI', 'Jl. Pangeran Diponegoro No. 81F', '', '', '811794545', '0721-472931', 1, '2020-03-02 02:00:00', NULL, NULL),
(166, 'DLRJKI0166', 'Utama Window Film', 'Kp Sawah dalam RT 2/4 Pinang Panunggangan Tangerang', 'Tangerang', '', 'Bpk Ismani', '81384431828', 1, '2020-03-02 02:00:00', NULL, NULL),
(167, 'DLRJKI0167', 'OTOVARIASI', 'JL.Jend.A.Yani No.9 Pematang Siantar Sumatera Utara', 'Sumatera Utara', '', 'Ibu Erica', '081376116828/0622-432483', 1, '2020-03-02 02:00:00', NULL, NULL),
(168, 'DLRJKI0168', 'RALLY UTAMA', 'Jln Gedong kuning No 44 Yogjakarta ', 'Jawa Tengah', '', 'Bpk Iwan', '0274-382870', 1, '2020-03-02 02:00:00', NULL, NULL),
(169, 'DLRJKI0169', 'OTO VARIASI', 'Jln Sarwoediwibowo No 17 Magelang(dpn ktr pemriantahan kota Magelang)', 'Jawa Tengah', '', 'Bpk Chandra Riyanto/Ibu Ayu', '0293-3662400/0811268913/087700362400', 1, '2020-03-02 02:00:00', NULL, NULL),
(170, 'DLRJKI0170', 'Target Automotive', 'Jl. Nangka Ujung (Sebelah SD SMP AL Ulum)Pekanbaru', 'Pekanbaru ', '', 'Bpk Hengki', '082388767366/081275534394', 1, '2020-03-02 02:00:00', NULL, NULL),
(171, 'DLRJKI0171', 'NICO JAYA', 'Jln Airan Raya No 8 Way Hui Bandar Lampung', 'Sumatera', '', 'Ibu Gita', '81221562727', 1, '2020-03-02 02:00:00', NULL, NULL),
(172, 'DLRJKI0172', 'CV ACCEL CIPTA MITRA ERAJAYA', 'Jln Bratang Wetan No 50 RT 007/008 Ngagelrejo Wonokromo Surabaya', 'Jawa Timur', '', 'Bpk Sariputra Adiwidya', '811339677', 1, '2020-03-02 02:00:00', NULL, NULL),
(173, 'DLRJKI0173', 'GEMA KREASI', 'Jln dayung raya No 23 Perum Kelapa Dua Tangerang(dpn pegadaian)', 'Tangerang', '', 'Bpk Lili', '81235425756', 1, '2020-03-02 02:00:00', NULL, NULL),
(174, 'DLRJKI0174', 'Kencana Variasi II (Pasar segar)', 'Jln Tole Iskandar ruko pasar segar Blk RC 1 No 16 Depok', 'Jawa Barat', '', 'Pyan', '81218324828', 1, '2020-03-02 02:00:00', NULL, NULL),
(175, 'DLRJKI0175', 'BUANA AUTO CENTER', 'Jln S Parman No 81(samping selatan bioskop rajawali)Purwokerto', 'Jawa Tengah', '', 'Bpk Randi', '0281-632745/641979', 1, '2020-03-02 02:00:00', NULL, NULL),
(176, 'DLRJKI0176', 'INDRA AUTO ACESORIES', 'Jln Gerilya Timur No 54 Purwokerto', 'Jawa Tengah', '', 'Bpk Andreas Nugroho', '0281-625555', 1, '2020-03-02 02:00:00', NULL, NULL),
(177, 'DLRJKI0177', 'CREATIVE AUDIO CONCEPT', 'Jln.Harapan Raya No.144 Pekanbaru', 'Pekanbaru', '', 'Koh Yanto', '0761- 8402455/08127682535/081277827576', 1, '2020-03-02 02:00:00', NULL, NULL),
(178, 'DLRJKI0178', 'FENYEN CIREBON', 'Jl. Harja Mulya Indah Blok AV No.1 Cirebon. ', 'Jawa Barat', '', 'Koh Atek', '0231 - 230308/82119629406', 1, '2020-03-02 02:00:00', NULL, NULL),
(179, 'DLRJKI0179', 'DACOK CUTTING KACA FILM', 'Jln. Jendral sudirman pekanbaru No.498A (Sebrang KFC) ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(180, 'DLRJKI0180', 'KWG Acesories / Daniel Audio', 'GDC Grand Depok City Blk A NO3 Depok', 'Jawa Barat', '', 'Bpk Daniel ', '81310853139', 1, '2020-03-02 02:00:00', NULL, NULL),
(181, 'DLRJKI0181', 'CV Istana Makmur', 'Jln Let Jend Suprapto No 6 Kelurahan Pelita Kec Enggal Bandar Lampung', 'Bandar Lampung', '', 'Ibu Mely', '82280540555', 1, '2020-03-02 02:00:00', NULL, NULL),
(182, 'DLRJKI0182', 'CV. Istana Makmur / IM Variasi', 'Jln Let Jend Suprapto No 6 Kelurahan Pelita Kec Enggal Bandar Lampung', 'Sumatera', '', 'Ibu Melly', '82280540555', 1, '2020-03-02 02:00:00', NULL, NULL),
(183, 'DLRJKI0183', 'KING VARIASI', 'Jln Kusuma Bangsa Gang Mbeji RT2 RW 2 Panjang Baru kec Pekalongan Utara', 'Jawa Tengah', '', 'Bpk Yuzrori', '085700000905/085725000968', 1, '2020-03-02 02:00:00', NULL, NULL),
(184, 'DLRJKI0184', 'CV. JAYA ABADI', 'JL. Cinere raya pasar segar Rt 001/008 Kel. Cinere - Kec. Cinere, Depok', 'JAWA BARAT', '', 'Bpk Jhony', '0813-8130-0003', 1, '2020-03-02 02:00:00', NULL, NULL),
(185, 'DLRJKI0185', 'Mega Tech Auto ACC', 'JlN Prof M Yamin SH No 41-42 Jambi', 'Jambi', '', 'Bpk Dedi', '85266144533', 1, '2020-03-02 02:00:00', NULL, NULL),
(186, 'DLRJKI0186', 'Samudra Auto Garage / CV Samudra Jaya', 'JL. RAYA PANGLIMA SUDIRMAN NO. 168, ', 'Jawa Timur', '', 'Bpk Andika', '0335-430999', 1, '2020-03-02 02:00:00', NULL, NULL),
(187, 'DLRJKI0187', 'Daniel Audio', 'Pasar Mandiri Blk M 4D No 48 Kelapa Gading', 'Jakarta Utara', '', 'Ci Anna', '81283851871', 1, '2020-03-02 02:00:00', NULL, NULL),
(188, 'DLRJKI0188', 'Tunas Jaya AC', 'Ruko permata Taman Palem Blok  B6 No. 5 ', 'Jakarta Barat', '', 'Bpk Robert', '0812 944 6174', 1, '2020-03-02 02:00:00', NULL, NULL),
(189, 'DLRJKI0189', 'Mangundana Windows Film', 'Jln KH.Hasyim Ashari No 36 Ciledug (dpn superindo)Pinang Tangerang', 'Tangerang', '', 'Bpk Dodi', '87871110194', 1, '2020-03-02 02:00:00', NULL, NULL),
(190, 'DLRJKI0190', 'BERKAT VARIASI', 'Jln Pangeran Antasari No 1 Bandar Lampung', 'Bandar Lampung', '', 'Pak Agustinus', '0721 708775 ', 1, '2020-03-02 02:00:00', NULL, NULL),
(191, 'DLRJKI0191', 'ANUGRAH JAYA FILM', 'BTC BIntaro Jaya Blk H2 NO 8 Jaksel', 'Jakarta Selatan', '', 'Up Bpk Rudi', '87774436182', 1, '2020-03-02 02:00:00', NULL, NULL),
(192, 'DLRJKI0192', 'PRIMA MOTOR', 'Jln Pangeran Antasari No 145 Banjarmasin', 'Kalimantan Selatan', '', 'Koh Acin', '0511-3264567/0511-3254169', 1, '2020-03-02 02:00:00', NULL, NULL),
(193, 'DLRJKI0193', 'ERVIN MOTOR', 'Pasar Palmerah Lt 3 Blk A No 17 Jakarta Pusat', 'Jakarta Pusat', '', 'Bpk Amir', '2153678349', 1, '2020-03-02 02:00:00', NULL, NULL),
(194, 'DLRJKI0194', 'BAPAK SULARNO', 'Jln Gampit Raya No 103 RT 06/02 Jatiwaringin Pondok Gede(depan JNE Gamprit)', 'Bekasi', '', 'Bpk Sularno ', '81388468527', 1, '2020-03-02 02:00:00', NULL, NULL),
(195, 'DLRJKI0195', 'GEMILANG', 'BSD AUTOPART BLK A 5-6 TANGERANG', 'TANGERANG', '', 'KO HAN', '818739528', 1, '2020-03-02 02:00:00', NULL, NULL),
(196, 'DLRJKI0196', 'MAKMUR MOTOR', 'Jl. Adam Malik no. 8-9 - Bengkulu ', '', '', '', '0736-51248/52584', 1, '2020-03-02 02:00:00', NULL, NULL),
(197, 'DLRJKI0197', 'Bapak Wandi', 'Kampung Pabuaran Cimonejaya Tangerang(depan mall cimone indah plaza)', 'Tangerang', '', 'Bpk Wandi', '8161380895', 1, '2020-03-02 02:00:00', NULL, NULL),
(198, 'DLRJKI0198', 'CV. AUTO GEMILANG SUKSES / NEW MEGA', 'Ruko Hitam Jl. Raya Pandeglang Km. 5', '', '', 'Ko Andrew', '83896700097', 1, '2020-03-02 02:00:00', NULL, NULL),
(199, 'DLRJKI0199', 'GRIYA AUTO FILM', 'Mega Glodok Kemayoran Lt 5 Blk F1 No 7-8 Kemayoran Jakpus', 'Jakarta Pusat', '', 'Bpk Agus Setiadi', '021-2664 6552/081388006064', 1, '2020-03-02 02:00:00', NULL, NULL),
(200, 'DLRJKI0200', 'BPK. YONO', 'JLN. SERDANG BARU 4 Gg.5 / 19 A RT.0011 / RW.04', '', '', 'BPK. YONO', '81315636699', 1, '2020-03-02 02:00:00', NULL, NULL),
(201, 'DLRJKI0201', 'FN Riki / FN Variasi', 'Jl. Paus Ujung ( simpang Arifin )  Ruko 12 Petak No. 3', '', '', '0811-763647', '0761-7762359', 1, '2020-03-02 02:00:00', NULL, NULL),
(202, 'DLRJKI0202', 'PT. PANTS MITRA ABADI', 'Jl.Boulevard Selatan Sumarecon bekasi', '', '', '', '818492538', 1, '2020-03-02 02:00:00', NULL, NULL),
(203, 'DLRJKI0203', 'MARDIAN AC/TAMA JAYA AC', 'TAJUR BOGOR JL. RAYA TAJUR NO 67 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(204, 'DLRJKI0204', 'CHANDRA SETIAWAN / ICS CHANDRA', 'Jl. Komp. Ujung Berung Indah blok 10 No. 5', '', '', '', '022-7803756', 1, '2020-03-02 02:00:00', NULL, NULL),
(205, 'DLRJKI0205', 'Padma / Semarang', 'Jl. Singosari Raya no. 6', '', '', '', '024-8455992 / 8455993', 1, '2020-03-02 02:00:00', NULL, NULL),
(206, 'DLRJKI0206', 'CV.2001 Motor', 'Jl. AKBP Cek Agus No.9', '', '', '', '0711-711041/713918', 1, '2020-03-02 02:00:00', NULL, NULL),
(207, 'DLRJKI0207', 'Audio Style', 'Jl. Yos Sudarso No. 272 / 116', '', '', '', '0411-331920', 1, '2020-03-02 02:00:00', NULL, NULL),
(208, 'DLRJKI0208', 'Mega Jaya Abadi UD', 'Jl. Kedungdoro No. 117 A', '', '', '', '031-536917', 1, '2020-03-02 02:00:00', NULL, NULL),
(209, 'DLRJKI0209', 'Winner Acc', 'Jl. Panjang Jiwo Permai 5 No. 33', '', '', '', '031-8490263', 1, '2020-03-02 02:00:00', NULL, NULL),
(210, 'DLRJKI0210', 'VX Variasi Mobil', 'Jl. Padjajaran VI/BB NO.12A ', '', '', '', '0331-331110', 1, '2020-03-02 02:00:00', NULL, NULL),
(211, 'DLRJKI0211', 'Mini Motor', 'Jl. Raya Sultan Agung No. 32', '', '', '', '0331-421203', 1, '2020-03-02 02:00:00', NULL, NULL),
(212, 'DLRJKI0212', 'CHOKI FILM', 'Ramanda Jl Margonda raya komp aoutopark Depok ', 'Jawa Barat', '', 'Bpk Nico', '021-70526723 /085717117113', 1, '2020-03-02 02:00:00', NULL, NULL),
(213, 'DLRJKI0213', 'Opera Audio ACC', 'Jl. Kedoya Raya No. 72', '', '', '', '021-5828319', 1, '2020-03-02 02:00:00', NULL, NULL),
(214, 'DLRJKI0214', 'Jaya Motor', 'JL.Tarumanegara ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(215, 'DLRJKI0215', 'Mila Motor', 'Jl. Raya veteran No. 5 ', '', '', '', '021-73882747', 1, '2020-03-02 02:00:00', NULL, NULL),
(216, 'DLRJKI0216', 'Kadosh', 'Jl. Kertajaya Indah Timur Blok O Gg XI No. 23', '', '', '0816-536947', '031-5965030', 1, '2020-03-02 02:00:00', NULL, NULL),
(217, 'DLRJKI0217', 'Clarissa', 'Jl. Jend. Sudirman BTC Lt. 1 Blok H2 No. 9', '', '', '', '021-7457557', 1, '2020-03-02 02:00:00', NULL, NULL),
(218, 'DLRJKI0218', 'Multi Audio', 'Jl. Raden Intan No.118A Tanjung Karang', '', '', '', '0721-250732 / 0721-261198', 1, '2020-03-02 02:00:00', NULL, NULL),
(219, 'DLRJKI0219', 'PRIMA AC / PT. PRIMA ASNAWI CERIA', 'JLN. AIRLANGGA NO.86 RT.004/001 KEL.SUKEREJO', 'KEDIRI', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(220, 'DLRJKI0220', 'Bambang', 'Bintaro Permai 2 No.35 RT.05 RW.001', '', '', '0815-85032150', '021-73691777', 1, '2020-03-02 02:00:00', NULL, NULL),
(221, 'DLRJKI0221', 'RAMA MOTOR', 'JL. STATSIUN SENEN NO 2F BUNGUR SENEN', 'Jakarta Pusat', '', 'Koh Ohin', '089665801807/021-4211320', 1, '2020-03-02 02:00:00', NULL, NULL),
(222, 'DLRJKI0222', 'PT. NIKI SENTOSA VARIASI', 'Jl. Peta no. 165', 'BANDUNG', '', '', '022-6035507 / 022-6039029', 1, '2020-03-02 02:00:00', NULL, NULL),
(223, 'DLRJKI0223', 'Fenyen Motor / Karawang', 'Jl. Surotokunto No. 18 A', '', '', '0812-19626778', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(224, 'DLRJKI0224', 'UD Iman Sejati', 'Jl. Labunan Raya No.2', '', '', '', '024-8445689', 1, '2020-03-02 02:00:00', NULL, NULL),
(225, 'DLRJKI0225', 'Vick Variasi', 'Auto Part Komp Onderdil Mobil', '', '', 'Bpk Vicky', '8561630429', 1, '2020-03-02 02:00:00', NULL, NULL),
(226, 'DLRJKI0226', 'Roda Mas Audio ', 'Bintaro Trade Center', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(227, 'DLRJKI0227', 'Masagung Auto Film / PT.YAZAKTII', 'Jl. Kedungdoro No. 50 A', '', '', '', '031-5460875', 1, '2020-03-02 02:00:00', NULL, NULL),
(228, 'DLRJKI0228', 'Audi Variasi / INDRA KUSUMA', 'Jl Soekarno Hatta No.1  Puri Waringin Indah', '', '', '', '0761-61047 / 0761-62297', 1, '2020-03-02 02:00:00', NULL, NULL),
(229, 'DLRJKI0229', 'SUMBER MAKMUR', 'JL. LAUTZE NO 76A JAKARTA PUSAT', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(230, 'DLRJKI0230', 'Bintang Dunia', 'Jl. Letda Sujono Baru No. 35', '', '', '', '061-7352605', 1, '2020-03-02 02:00:00', NULL, NULL),
(231, 'DLRJKI0231', 'PT. Jilbert Kreasindo Kurnia', 'Rukan Bukit Gading Indah Blok L No.27', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(232, 'DLRJKI0232', 'Mandiri Jaya Film', 'JL.Raya Pekayon No.12 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(233, 'DLRJKI0233', 'Rahmi Variasi', 'Jl Soekarno Hatta (Arengka Atas ) No. 91 B', '', '', '0812-68628887', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(234, 'DLRJKI0234', 'Tama Jaya AC', 'Jl. Raya Tajur No. 67 Samping Hotel Puri Mira', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(235, 'DLRJKI0235', 'Era Motor', 'Jl. Tengku Umar no. 7 & 9', '', '', '0811-1568115', '0561-739384', 1, '2020-03-02 02:00:00', NULL, NULL),
(236, 'DLRJKI0236', 'Bunda Jaya Motor', 'Jl. S. Parman No. 226', 'Sumatera Barat', '', 'Ibu Efni Yanti ', '0751-55843/08126768250', 1, '2020-03-02 02:00:00', NULL, NULL),
(237, 'DLRJKI0237', 'TIARA MOTOR', 'Pasar mobil kemayoran Blok S 104 PRJ', 'Jakarta Pusat', '', 'Bpk Amjad', '0878-82858506', 1, '2020-03-02 02:00:00', NULL, NULL),
(238, 'DLRJKI0238', 'Karya Sentosa', 'Jl. Segaran no. 62/119', '', '', '', '0711-373952', 1, '2020-03-02 02:00:00', NULL, NULL),
(239, 'DLRJKI0239', 'Bintang Mas', 'Jl. Siliwangi no. 132', '', '', '', '0251-8322627', 1, '2020-03-02 02:00:00', NULL, NULL),
(240, 'DLRJKI0240', 'Berkah Variasi', 'Jl. Industri Lippo Cikarang No.151', '', '', '', '021-9216887', 1, '2020-03-02 02:00:00', NULL, NULL),
(241, 'DLRJKI0241', 'Genio Motor', 'Jl. Tuperev No. 329', '', '', '', '0267-410176', 1, '2020-03-02 02:00:00', NULL, NULL),
(242, 'DLRJKI0242', 'GM Variasi', 'JL Sandhubhaya No. 100', '', '', '', '0370-673700', 1, '2020-03-02 02:00:00', NULL, NULL),
(243, 'DLRJKI0243', 'Mentari Motor', 'Jl. Margonda Raya, Gedung Ramanda  Lt 1 BlokB No. 4', '', '', '', '021-77210064', 1, '2020-03-02 02:00:00', NULL, NULL),
(244, 'DLRJKI0244', 'Fenyen Bandung / PT.PASTI JAYA', 'Jl. Peta No.66A Lingkar Selatan', '', '', '', '022-6036555 / 022-6035526', 1, '2020-03-02 02:00:00', NULL, NULL),
(245, 'DLRJKI0245', 'Amor Film', 'Jl. Panjang (Dekat Metro Motor)', '', '', 'Bpk. Iping', '0818-873994', 1, '2020-03-02 02:00:00', NULL, NULL),
(246, 'DLRJKI0246', 'SETYA JAYA', 'Jl . Raden Intan No. 85', '', '', 'Bapak Bambang', '021-98099782/08128147979', 1, '2020-03-02 02:00:00', NULL, NULL),
(247, 'DLRJKI0247', 'Gilar-Gilar Variasi', 'Ps. Duren sawit Blok O No. 21', '', '', '', '8159089577', 1, '2020-03-02 02:00:00', NULL, NULL),
(248, 'DLRJKI0248', 'Cimone Mega Motor', 'Plaza Shinta Blok B no. 7', '', '', '', '021-5538767', 1, '2020-03-02 02:00:00', NULL, NULL),
(249, 'DLRJKI0249', 'Masdar Film', 'Jl. H. Pasyar No. 19', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(250, 'DLRJKI0250', 'Intermas', 'BTC Bintaro Blok E4 No.17', 'Tangerang', '', 'Bpk Novendry', '8129797243', 1, '2020-03-02 02:00:00', NULL, NULL),
(251, 'DLRJKI0251', 'Carisma Auto Modified', 'Jl. M T Haryono 75 A', '', '', '', '0542-874496', 1, '2020-03-02 02:00:00', NULL, NULL),
(252, 'DLRJKI0252', 'TOM OTO', 'Kompleks BMS Blok I No.5 (sebrang Summarecon Mall Gading Serpong)', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(253, 'DLRJKI0253', 'Fenyen Motor / Bogor', 'Jl. Pajajaran No. 28 A', '', '', '', '0251-9226334', 1, '2020-03-02 02:00:00', NULL, NULL),
(254, 'DLRJKI0254', 'Alpha Abadi', 'Jln Raya PIP Curug(dari arah utara bitung setelah Pemadam kebakaran)', 'Tangerang', '', 'Bpk Hendro', '0813 8001 3032 / 2614 7225', 1, '2020-03-02 02:00:00', NULL, NULL),
(255, 'DLRJKI0255', 'Rama Film', 'Jl. Stasiun Senen No. 2 F ', '', '', '', '021-4211320', 1, '2020-03-02 02:00:00', NULL, NULL),
(256, 'DLRJKI0256', 'Citra Variasi', 'Autopart Jati Uwung Blok. B1-2-3 Jl.Prabu Kian Santang', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(257, 'DLRJKI0257', 'Padma Variasi / Yogya', 'Jl. Kyai Mojo No.75', '', '', '81229443010', '0274-553236', 1, '2020-03-02 02:00:00', NULL, NULL),
(258, 'DLRJKI0258', 'Millennia', 'Jl. Kolonel Atmo No. 576 C ', 'Sumatera ', '', '', '0711-353143', 1, '2020-03-02 02:00:00', NULL, NULL),
(259, 'DLRJKI0259', 'Merlin Jaya Service', 'Jl. Setia Budi No. 125 Tj - Rejo', '', '', '', '061-8214385', 1, '2020-03-02 02:00:00', NULL, NULL),
(260, 'DLRJKI0260', 'New Nai Motor', 'Jl. Laksamana Bintan Komp. Inti Batam', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(261, 'DLRJKI0261', 'Citra AC', 'Atrium Senen Atrium Plaza Lt.5 Blok.E No.178', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(262, 'DLRJKI0262', 'Bambang Kaca', 'Jl. DR.Sutomo No. 53', '', '', '', '0274-543791', 1, '2020-03-02 02:00:00', NULL, NULL),
(263, 'DLRJKI0263', 'PT.SUMBER KARYA BERLIMPAH', 'JL. Peta Utara No.9 B Kel.Pegadungan Kec.Kalideres', '', '', 'KO FERRY', '54375183', 1, '2020-03-02 02:00:00', NULL, NULL),
(264, 'DLRJKI0264', 'GS Motor', 'Blok A No. 31', '', '', '0856-8115906', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(265, 'DLRJKI0265', 'Prabu Film', 'PRJ Blok B No. 27', '', '', '', '021-71646330', 1, '2020-03-02 02:00:00', NULL, NULL),
(266, 'DLRJKI0266', 'Surya Indah', 'Jl.Raya Serang KM 16.8 Cihedeung', '', '', '0812-8146175', '021-59401885', 1, '2020-03-02 02:00:00', NULL, NULL),
(267, 'DLRJKI0267', 'Amazone Padang', 'Jl. Pondok No.135 RT.003/001', '', '', 'Heri Chandra', '0751-32127', 1, '2020-03-02 02:00:00', NULL, NULL),
(268, 'DLRJKI0268', 'Lia Motor', 'Harapan Indah Blok EJ No. 4', '', '', '', '021-8882764', 1, '2020-03-02 02:00:00', NULL, NULL),
(269, 'DLRJKI0269', 'D. Plus', 'BTC Bintaro Blok G 4 No.19', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(270, 'DLRJKI0270', 'Adam Accesories', 'JL.Veteran No.62 ', 'Sumatera Barat', '', 'Bpk Agri', '08126623099/0751-36221 / 0751-    27118', 1, '2020-03-02 02:00:00', NULL, NULL),
(271, 'DLRJKI0271', 'Asep', 'Jl. H. Ridan  1 Rt 01/02 Poris Plewad Indah ', '', '', '888095058', '021-99871700', 1, '2020-03-02 02:00:00', NULL, NULL),
(272, 'DLRJKI0272', 'Garuda Jaya Variasi', 'Jl.Dr. Cipto No. 252 A', '', '', '', '024-8312613', 1, '2020-03-02 02:00:00', NULL, NULL),
(273, 'DLRJKI0273', 'BPK. DARWIN', 'SHINTA PLAZA BLOK B NO.14 CIMONE', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(274, 'DLRJKI0274', 'Oto Audio', 'Jl Guru Patimpus no. 15 C-F', '', '', '', '061-4528639 / 061-4528502', 1, '2020-03-02 02:00:00', NULL, NULL),
(275, 'DLRJKI0275', 'Izuta Film', 'Kalimalang Kampung II', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(276, 'DLRJKI0276', 'Kencana Variasi / Lampung', 'Perum Pagar Alam Residence No. 22', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(277, 'DLRJKI0277', 'Graha Film', 'Komp. Onderdil Autopart Amanda Blok C5', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(278, 'DLRJKI0278', 'Mega Top', 'Plaza Atrium Senen Lt.5 - 009', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(279, 'DLRJKI0279', 'SUMBER JAYA VARIASI', 'Jln Raden Intan No 27 Tanjung karang Bandar Lampung', 'Bandar Lampung', '', 'Ibu Gita ', '81221562727', 1, '2020-03-02 02:00:00', NULL, NULL),
(280, 'DLRJKI0280', 'Mulia Baru', 'Jl. Pelita No. 12', '', '', '', '0541-206348 / 0541-202119', 1, '2020-03-02 02:00:00', NULL, NULL),
(281, 'DLRJKI0281', 'Sumber Mas Variasi', 'Ciputat, JL.RE. Mathadinata No.32 Pondok Cabe ', 'Tangerang Selatan', '', 'Bpk Dana', '021-7494409 ', 1, '2020-03-02 02:00:00', NULL, NULL),
(282, 'DLRJKI0282', 'Diemaz Motor', 'jl. Margonda Komp Ramanda Auto Part', '', '', '', '021-77205425 / 0813-21736599', 1, '2020-03-02 02:00:00', NULL, NULL),
(283, 'DLRJKI0283', 'Jaya Mandiri', 'Pasar Mobil Kemayoran Blok S 125', '', '', '0816-1465102', '021-65865606', 1, '2020-03-02 02:00:00', NULL, NULL),
(284, 'DLRJKI0284', 'SIANTAR VARIASI', 'JL.Merdeka No.353-355 ', '', '', 'Ci Apin', '08197400809 / 0622-29012', 1, '2020-03-02 02:00:00', NULL, NULL),
(285, 'DLRJKI0285', 'Wijaya Film', 'PRJ Blok S No. 104 Gh', 'Jakarta Pusat', '', '0852-82441188', '021-97020838', 1, '2020-03-02 02:00:00', NULL, NULL),
(286, 'DLRJKI0286', 'Nico Film', 'Jl. Senen Plaza Atrium Lt. 5 B1 B-33', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(287, 'DLRJKI0287', 'Serimpi Motor', 'Pasar Mobil Kemayoran Blok C-20', '', '', '', '021-70771581', 1, '2020-03-02 02:00:00', NULL, NULL),
(288, 'DLRJKI0288', 'Jonathan', 'Jl. Pandean IV no. 45 Penele', '', '', '0817-3377787', '031-70377877 / 031-5479137', 1, '2020-03-02 02:00:00', NULL, NULL),
(289, 'DLRJKI0289', 'Ferso Automotive', 'Jl. Soekarno Hatta D 409', '', '', '', '0341-490252', 1, '2020-03-02 02:00:00', NULL, NULL);
INSERT INTO `dealers` (`id`, `id_dealer`, `nama_dealer`, `alamat`, `kota`, `provinsi`, `kontak_person`, `no_telp`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(290, 'DLRJKI0290', 'Pandawa', 'Jl. Rawa Wangun No. 248', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(291, 'DLRJKI0291', 'Sonic', 'Sentral Onderdill BSD Blok A No. 7', '', '', '', '021-5379015', 1, '2020-03-02 02:00:00', NULL, NULL),
(292, 'DLRJKI0292', 'Cahaya Film', 'Plaza Atrium Lt. 5 Blok C No. 85', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(293, 'DLRJKI0293', 'Kencana Variasi', 'Komp. Auto Part', '', '', '', '021-77202986', 1, '2020-03-02 02:00:00', NULL, NULL),
(294, 'DLRJKI0294', 'ONE CAR AUDIO', 'JLN.KAPTEN SUDIBYO NO 98 TEGAL ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(295, 'DLRJKI0295', 'Karet Jaya', 'Psr Cipete Blok AKS No. 61', '', '', '', '021-72799087', 1, '2020-03-02 02:00:00', NULL, NULL),
(296, 'DLRJKI0296', 'Mobil Mas Autocar', 'Jl. Sholeh Iskandar 51 (Seberang Kedai Sunda 3)', '', '', '', '0251-7559231/7559226', 1, '2020-03-02 02:00:00', NULL, NULL),
(297, 'DLRJKI0297', 'Astri Motor', 'Citra Raya auto center Blk V 06 B No 5 ', 'Tangerang', '', 'Bpk Agus', '021 225971291/021 29005432', 1, '2020-03-02 02:00:00', NULL, NULL),
(298, 'DLRJKI0298', 'Angga Motor', 'Jl.Raya cibarusa (Samping CTC Cikarang/Ruko kuning)', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(299, 'DLRJKI0299', 'Ideal Variasi Mobil', 'Jl. Riau No. 52', '', '', '', '0761-832951', 1, '2020-03-02 02:00:00', NULL, NULL),
(300, 'DLRJKI0300', 'VICTORIA SERVICE', 'Jl. Kelapa Dua Raya', '', '', '', '021 - 44384634', 1, '2020-03-02 02:00:00', NULL, NULL),
(301, 'DLRJKI0301', 'Auto Raya', 'JL.BRIGJEND DARSONO NO.112', 'Jawa Barat', '', 'Bpk Heru', '0231-482409', 1, '2020-03-02 02:00:00', NULL, NULL),
(302, 'DLRJKI0302', 'Berlin 888', 'Plaza AT. Senen Lt. 5 Blok E No. 122', '', '', '0856-93213053', '021-3459048', 1, '2020-03-02 02:00:00', NULL, NULL),
(303, 'DLRJKI0303', 'Dolphine Car Audio', 'Jl. Lingkaran 1 No. 23 A Samping Multikom', '', '', '', '0711-7903898', 1, '2020-03-02 02:00:00', NULL, NULL),
(304, 'DLRJKI0304', 'Ladindas', 'Pusat Onderdil Summarecon Serpong Blok I No. 21', '', '', '0816-1152561', '021-3800311', 1, '2020-03-02 02:00:00', NULL, NULL),
(305, 'DLRJKI0305', 'Sinar Harapan', 'Jl. Banceuy no. 69', '', '', '0813-20632288', '022-4232117', 1, '2020-03-02 02:00:00', NULL, NULL),
(306, 'DLRJKI0306', 'Berkah Arum Jaya Film', 'Blok S No. 105 C', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(307, 'DLRJKI0307', 'Putra Ayu', 'Jl. Jend A. Yani no. 351', '', '', '0811-541728', '0542-427835', 1, '2020-03-02 02:00:00', NULL, NULL),
(308, 'DLRJKI0308', 'Sumber Mas', 'Jl. Sulawesi No. 228', '', '', '', '0411-449102 / 0411-323611', 1, '2020-03-02 02:00:00', NULL, NULL),
(309, 'DLRJKI0309', 'PROLINK', 'Jln.MT Haryono No.15 RT 6 Balikpapan', 'Balikpapan', '', 'Bpk Steven', '8125435569', 1, '2020-03-02 02:00:00', NULL, NULL),
(310, 'DLRJKI0310', 'Cahaya Dunia', 'Jl. Ramanda Depok Blok B/4 Margonda', '', '', '', '021-70526723', 1, '2020-03-02 02:00:00', NULL, NULL),
(311, 'DLRJKI0311', 'PT.SUMBER MAKMUR AUTO SUPPLY', 'JL. Lautze Raya No.76', '', '', '', '021-3519111/3501665', 1, '2020-03-02 02:00:00', NULL, NULL),
(312, 'DLRJKI0312', 'Cempaka Warna', 'Pusat Onderdil BSD Autopart BSD No.15', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(313, 'DLRJKI0313', 'AM Motor (Auto Milenium)', 'Ruko Poris Paradise Blok B 11 no.29. depan sekolah SMP Poris Indah', '', '', '0812-80878158', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(314, 'DLRJKI0314', 'Star Variasi', 'Jl. Magelang Km 5,6', '', '', '0815-7982435', '0274-623414', 1, '2020-03-02 02:00:00', NULL, NULL),
(315, 'DLRJKI0315', 'Garasi Mobil Acc', 'Jl. Kuripan No. 22/28', '', '', '0812-5102923', '0511-7437050', 1, '2020-03-02 02:00:00', NULL, NULL),
(316, 'DLRJKI0316', 'Hosana Variasi', 'Jl. A. Yani km 1', '', '', '0811-5133052', '0511-3251774', 1, '2020-03-02 02:00:00', NULL, NULL),
(317, 'DLRJKI0317', 'Mega Makmur', 'Ruko Anggrek Loka Blok A8 No.7B', '', '', '0816-953591', '021-7327458', 1, '2020-03-02 02:00:00', NULL, NULL),
(318, 'DLRJKI0318', 'LISA VARIASI', 'Cengkareng Pusat Niaga Puri Agung blok CG 3 No.12', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(319, 'DLRJKI0319', 'Rais Variasi', 'Jl. Wolter Mongonsidi No.6, RT.02 RT 4', 'Kalimantan Timur', '', 'Bpk Rais', '0812-53662212', 1, '2020-03-02 02:00:00', NULL, NULL),
(320, 'DLRJKI0320', 'Yuda Motor', 'JL.Raya Bukit Tinggi Payakumbu KM.5 Simpang Tanjung Alam Bukit Tinggi', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(321, 'DLRJKI0321', 'Universal Audio', 'Blok B15', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(322, 'DLRJKI0322', 'MAWAR CAR AUDIO', 'BSD Auto Part Blok I No 9&10', 'Tangerang', '', 'Bpk Hendra', '021-531 51703', 1, '2020-03-02 02:00:00', NULL, NULL),
(323, 'DLRJKI0323', 'Hadi', 'Pool Taxi Expres Jl. Mohammad Kahfi no. 15A', '', '', '', '0818-07365398', 1, '2020-03-02 02:00:00', NULL, NULL),
(324, 'DLRJKI0324', 'Hodori', 'Jl. Danau Sunter Utara Blok C1 No. 15', '', '', '', '021-64716878', 1, '2020-03-02 02:00:00', NULL, NULL),
(325, 'DLRJKI0325', 'Istana Audio', 'Jl. KH Ahmad Dahlan No. 76', '', '', '0811-586891', '0541-741475', 1, '2020-03-02 02:00:00', NULL, NULL),
(326, 'DLRJKI0326', 'King Auto Interior', 'Jl. Surya Sumantri Kav. 1', '', '', '', '022-2021729', 1, '2020-03-02 02:00:00', NULL, NULL),
(327, 'DLRJKI0327', 'CV. Putra Nugraha Prima', 'Jl. Jend.A Yani Rt.54 No. 199', '', '', '', '0542-411004', 1, '2020-03-02 02:00:00', NULL, NULL),
(328, 'DLRJKI0328', 'CV. Sumber Jaya Sakti', 'Jln Sidosermo Indah VI/6 Surabaya', 'Jawa Timur', '', 'Ibu Linda', '031-8418100/081331562222', 1, '2020-03-02 02:00:00', NULL, NULL),
(329, 'DLRJKI0329', 'PT. TRIMAS WAHANA PRATAMA / TERMINAL MOTOR', 'Jl. Sulawesi No. 234 Melayu Baru', '', '', 'CI WENI', '0411-449102', 1, '2020-03-02 02:00:00', NULL, NULL),
(330, 'DLRJKI0330', 'Luminoz', 'Jl. Lapangan Bola No. 34 E Kb. Jeruk', '', '', '', '021-5484102', 1, '2020-03-02 02:00:00', NULL, NULL),
(331, 'DLRJKI0331', 'UD USAHA KITA / Llumar Zone', 'Jln.Cokroaminoto No 18 Pemecutan Klod Denpasar Utara Kota Denpasar Bali ', '80231', '', 'Ibu Ayu/Bpk Agung', '0361-430362', 1, '2020-03-02 02:00:00', NULL, NULL),
(332, 'DLRJKI0332', 'Arizona', 'Jl. Pondok No. 88 D', '', '', '', '0751-31161', 1, '2020-03-02 02:00:00', NULL, NULL),
(333, 'DLRJKI0333', 'Subur Variasi', 'Jln Gerilya Timur No 1124 Purwokerto', 'Jawaq Tengah', '', 'Bpk Edwin Efendi', '2817666611', 1, '2020-03-02 02:00:00', NULL, NULL),
(334, 'DLRJKI0334', 'WORD AUDIO', 'JL. KyH Hasim Azhari No.44 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(335, 'DLRJKI0335', 'Citra Indah Film', 'Jl. Alternatif Cibubur KM 32(Setelah kota wisata)', '', '', 'Bpk Udin', '81385540336', 1, '2020-03-02 02:00:00', NULL, NULL),
(336, 'DLRJKI0336', 'GOYA MEKANIK MOTOR', 'Atrium senen Lt 5 Blk A No 51 Jakarta Pusat', 'Jakarta Pusat', '', 'Bpk Yaya', '0821246095982/087781312082', 1, '2020-03-02 02:00:00', NULL, NULL),
(337, 'DLRJKI0337', 'Wanda Variasi', 'Blok E No.25', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(338, 'DLRJKI0338', 'PT. SOLO INDONESIA UTAMA', 'Jl. Raya Kartasura KM.8 Pabelan , Kartosuro', 'Jawa Tengah', '', 'Bpk Yonathan', '81226665456', 1, '2020-03-02 02:00:00', NULL, NULL),
(339, 'DLRJKI0339', 'Purnomo', 'Jl. Raya Joglo 33A Joglo - Kembangan', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(340, 'DLRJKI0340', 'Fenyen Motor / Greenville', 'Komplek Green Ville Blok AX No.22', '', '', '', '021-5656677', 1, '2020-03-02 02:00:00', NULL, NULL),
(341, 'DLRJKI0341', 'JOGJA MOTOR', 'Jl. Akses UI No. 29(Ke arah pasar minggu terus ke kelapa 2 sebelum tikungan toko ada sebelah kiri)', '', '', 'Bpk Adon', '85692478780', 1, '2020-03-02 02:00:00', NULL, NULL),
(342, 'DLRJKI0342', 'Bintang Variasi', 'Jl. Jendral Sudirman No. 15', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(343, 'DLRJKI0343', 'Mitra Auto / Usaha Film', 'Blok K2 No.2', '', '', '8161187103', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(344, 'DLRJKI0344', 'V-CAR', 'Komplek dutamas fatmawati Lt.2 No.33', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(345, 'DLRJKI0345', 'BRAVO FILM', 'Auto Centre Blok V06/27', 'Banten', '', 'Bpk Ino', '8,13178E+11', 1, '2020-03-02 02:00:00', NULL, NULL),
(346, 'DLRJKI0346', 'Anugrah Motor', 'Komp. Mitra Bekasi Blok B No. 31', '', '', '', '021-8816469', 1, '2020-03-02 02:00:00', NULL, NULL),
(347, 'DLRJKI0347', 'BOS 88', 'Jl Kusuma Bangsa No. 54', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(348, 'DLRJKI0348', 'Kuda Motor', 'Jl. Jati Mekar No. 7B', '', '', '', '021-8242720', 1, '2020-03-02 02:00:00', NULL, NULL),
(349, 'DLRJKI0349', 'Raja Film', 'Blok A 120 G', 'Jakarta Pusat', '', '818789867', '021-99174046/65861568', 1, '2020-03-02 02:00:00', NULL, NULL),
(350, 'DLRJKI0350', 'Paulus Sugianto', 'Jl. Pondok  Wiyung Barat VII GY No. 22 Tm. Pondok Indah', '', '', '', '031-7533750', 1, '2020-03-02 02:00:00', NULL, NULL),
(351, 'DLRJKI0351', 'Sumber Mas Variasi / Ciputat', 'Jl. RE. Mathadinata No. 32', 'Tangerang Selatan', '', 'Bpk Dana', '021-7494409 ', 1, '2020-03-02 02:00:00', NULL, NULL),
(352, 'DLRJKI0352', 'Raja Film', 'Lantai 5', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(353, 'DLRJKI0353', 'Surya Kencana Auto (SKA)', 'Ruko Permata Taman Palem Blok A3 No. 22', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(354, 'DLRJKI0354', 'Maestro Variasi', 'Jl. Raya Cilegon No. 10', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(355, 'DLRJKI0355', 'Buana Motor', 'Plaza Shinta B No. 1', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(356, 'DLRJKI0356', 'Istana Variasi', 'Serpong Plaza Lt. 3  Blok B No. 1-2', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(357, 'DLRJKI0357', 'Raja Car Interior', 'Jl. Pajajaran Raya No. 17', 'Jawa Barat', '', 'Bpk Hisyam', '0858-81532123', 1, '2020-03-02 02:00:00', NULL, NULL),
(358, 'DLRJKI0358', 'Surya Car Audio', 'Jl. Kartini 188-190', '', '', '', '0361-226523', 1, '2020-03-02 02:00:00', NULL, NULL),
(359, 'DLRJKI0359', 'Permata Motor', 'Blok S No.77', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(360, 'DLRJKI0360', 'Tiga Saudara Cuci Salju', 'Jl. Victor Buaran', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(361, 'DLRJKI0361', 'Bapak Sumardi', 'Jln Hankam Raya No 39 depab bengkel motor Honda pondok Gede ', 'Bekasi', '', 'Bapak Sumardi', '082111803036/08778022547', 1, '2020-03-02 02:00:00', NULL, NULL),
(362, 'DLRJKI0362', 'CATALYST', 'City Market Auto Center VO 6 Blk D11 Citra Raya Tangerang', '', '', 'Bpk Soleh', '85319127712', 1, '2020-03-02 02:00:00', NULL, NULL),
(363, 'DLRJKI0363', 'UNION 4X4', 'Jln Borubudur utara raya No 4 Manyaran Semarang ', 'Jawa Tengah', '', 'Bpk Ismu Novi', '81329310631', 1, '2020-03-02 02:00:00', NULL, NULL),
(364, 'DLRJKI0364', 'Wijaya Film (mangga dua)', 'WTC Mangga Dua tahap 2 Blok D3 No 1&2', 'Jakarta Pusat', '', '', '021-97020838/0852-82441188', 1, '2020-03-02 02:00:00', NULL, NULL),
(365, 'DLRJKI0365', 'Rado Motor / Fan Variasi', 'Jln Raya Radin Inten II No 81 Duren Sawit Jakarta Timur', 'Jakarta Timur', '', 'Wahyu/Waluyo', '81388333828', 1, '2020-03-02 02:00:00', NULL, NULL),
(366, 'DLRJKI0366', 'Sudi Mampir', 'jLn Raya Perancis Kosambi Dadap Up Ibu Lazima Tangerang Tlp 081388326300', 'Tangerang', '', 'Ibu Lazima', '81388326300', 1, '2020-03-02 02:00:00', NULL, NULL),
(367, 'DLRJKI0367', 'Anugerah Jaya Vkool', 'Jln Majapahit nom 87A Semarang', 'Jawa Tengah', '', 'Ibu Elwin', '024-6720487', 1, '2020-03-02 02:00:00', NULL, NULL),
(368, 'DLRJKI0368', 'Electrick Variasi', 'Pasar Mandiri Blk M 4D No 43 Kelapa Gading', 'Jakarta Utara', '', 'Ci Iing', '021-452-0970', 1, '2020-03-02 02:00:00', NULL, NULL),
(369, 'DLRJKI0369', 'Galang Auto', 'Jln Curug Raya Pondok Kelapa Kaliamalang Jakarta Timur', 'Jakarta Timur', '', 'Bpk Eko', '81398332977', 1, '2020-03-02 02:00:00', NULL, NULL),
(370, 'DLRJKI0370', 'N.I Variasi', 'Jln Twk M Daud Syah No 32 Banda Aceh ', 'Banda Aceh', '', 'Bpk Rustam', '811689368', 1, '2020-03-02 02:00:00', NULL, NULL),
(371, 'DLRJKI0371', 'Tunas Variasi', 'Jln Raya Kresek KM 15 Balaraja', 'Serang', '', 'Ibu Tenrita Murni', '81398547148', 1, '2020-03-02 02:00:00', NULL, NULL),
(372, 'DLRJKI0372', 'OPEC JAYA', 'Jl. Petemon I no. 110 A Surabaya', 'Jawa Timur', '', 'Bp. Dojo Purwowisanto', '031-5318621 / 031-5351038 / 031-5485008', 1, '2020-03-02 02:00:00', NULL, NULL),
(373, 'DLRJKI0373', 'KATALIS', 'Auto center VO6 Blk D 11 Citra raya Tangerang', 'Banten', '', 'Bpk Soleh', '85319127712', 1, '2020-03-02 02:00:00', NULL, NULL),
(374, 'DLRJKI0374', 'R & B Variasi', 'Jl. Yos Sudarso No.88 Teluk Betung', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(375, 'DLRJKI0375', 'ANUGRAH PRIMA MOTOR', 'Jln.Diponegoro 13, by pass klaten  ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(376, 'DLRJKI0376', 'Berkah Jaya Film', 'Pusat Onderdil Duta Mas Fatmawati LT2 No 66', 'Jakarta Selatan', '', 'Bpk Martin', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(377, 'DLRJKI0377', 'LAMUSH AUTO FILM', 'JL. DAAN MOGOT KM 9 PASAR AMPER BLOK DD NO 09', '', '', '', '87774361103', 1, '2020-03-02 02:00:00', NULL, NULL),
(378, 'DLRJKI0378', 'H&F VARIASI', 'BLOK G NO 6 PRJ KEMAYORAN', '', '', '', '85811345446', 1, '2020-03-02 02:00:00', NULL, NULL),
(379, 'DLRJKI0379', 'MODERN AUDIO WORKSHOP', 'JL CUT MUTIA RAYA KARANG KIRI DEPAN BETOS (ARAH TERMINAL BEKASI)', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(380, 'DLRJKI0380', 'LIA AUTO FILM', 'JL. RAYA MERUYA ILIR NO 48 KEBON JERUK', '', '', '', '85268681188', 1, '2020-03-02 02:00:00', NULL, NULL),
(381, 'DLRJKI0381', 'CENTRA VARIASI', 'JL. SHANDU BHAYA BLOK U NO. 12 A. LOMBOK', '', '', '', '0370-6677016', 1, '2020-03-02 02:00:00', NULL, NULL),
(382, 'DLRJKI0382', 'WR VARIASI', 'JL. SANDUBAYA BLOK A8 SWETA / LOMBOK', '', '', '', '0370-6175487 / 081907735686', 1, '2020-03-02 02:00:00', NULL, NULL),
(383, 'DLRJKI0383', 'PT. MAJU AUTO MEGAH', 'Jl. Rajawali No. 858 RT/RW.016/005 9 Ilir - Ilir Timur', 'Palembang ', '', '', '0711-369234', 1, '2020-03-02 02:00:00', NULL, NULL),
(384, 'DLRJKI0384', 'CV. GOLDEN PEGASUS VARIASI', 'JL. KLAMPIS JAYA 33K SURABAYA', '', '', '', '031-5981298', 1, '2020-03-02 02:00:00', NULL, NULL),
(385, 'DLRJKI0385', 'CARROZZA', 'Jln Sultan Alauddin No 85 Pa\'Baeng,Makasar (kiri jln stlh Brimob)', 'Makasar', '', 'Ibu Anggelina ', '8110679/085322668888', 1, '2020-03-02 02:00:00', NULL, NULL),
(386, 'DLRJKI0386', 'Bapak Dirman', 'JL Teuku Umar No.25 Rt.04/08 Cimone Karawaci Tangerang ', 'Tangerang', '', 'Bpk Dirman', '87888428381', 1, '2020-03-02 02:00:00', NULL, NULL),
(387, 'DLRJKI0387', 'SUKSES VARIASI MOBIL', 'Jl. Lingkaran 1 No. 1096, 15 Ilir,', 'Sumatera Selatan 30125', '', 'Bp. Man', '82378174376', 1, '2020-03-02 02:00:00', NULL, NULL),
(388, 'DLRJKI0388', 'RAFIKA JAYA KACA FILM', 'Jl. S. Parman, Kedung, Menjangan (Samping Masjid Nurul Huda)', 'Jawa Tengah 53314', '', '', '8529185559', 1, '2020-03-02 02:00:00', NULL, NULL),
(389, 'DLRJKI0389', 'IDEAL VARIASI', 'JL. SEPAKAT NO.148, KULIM, PEKANBARU', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(390, 'DLRJKI0390', 'ALFA ACCESSORIES (Window Film, Car Audio and ACC)', 'JLN KAMPUNG NIAS II NO 47 (Blkg Pondok)Padang 0 Sumatera Barat', 'Sumatera Barat', '', 'Bpk Nanang K', '0751-35576,081363481199', 1, '2020-03-02 02:00:00', NULL, NULL),
(391, 'DLRJKI0391', 'ADJIE KACA FILM', 'Pasar Fatmawati Blk AKS No 28 Jakarta Selatan ', 'Jakarta Selatan', '', 'Ibu Novi', '82214977778', 1, '2020-03-02 02:00:00', NULL, NULL),
(392, 'DLRJKI0392', 'Bapak Yonatan', 'Jl. Raya Kartasura KM.8 Pabelan , Kartosuro', 'Jawa Tengah', '', 'Bpk Yonatan', '82137504108', 1, '2020-03-02 02:00:00', NULL, NULL),
(393, 'DLRJKI0393', 'Bapak Yonatan', 'Jl. Raya Kartasura KM.8 Pabelan , Kartosuro', 'Jwa Tengah', '', 'Bapak Yonatan', '82137504108', 1, '2020-03-02 02:00:00', '2020-03-02 02:00:00', '2020-03-02 02:00:00'),
(394, 'DLRJKI0394', 'PT. NARA CITRA OTOWARNA', 'JL JABABEKA VI BLOK J4E, KAW. INDUSTRI JABABEKA, CIKARANG, BKS', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(395, 'DLRJKI0395', 'YUDA VARIASI', 'Jln.Raden Intan perumahan kimia parma 2 Blk AG No.6 Duren Sawit', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(396, 'DLRJKI0396', 'ELING JAYA', 'Pasar Cipete Blok AKS No.1', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(397, 'DLRJKI0397', 'BPK.ALI', 'Jln.Raya Bogor Cilodong RT.03 RW.01 No.64', '', '', '', '021-99527488', 1, '2020-03-02 02:00:00', NULL, NULL),
(398, 'DLRJKI0398', 'YUDA MOTOR', 'Jln By Pass Aurkuning  Bukit Tinggi Sumatera Barat', 'Bukittinggi', '', 'Ibu Rita', '85263114931', 1, '2020-03-02 02:00:00', NULL, NULL),
(399, 'DLRJKI0399', 'TIDAR JAYA MOTOR', 'JL.Kyai M.Yusuf Depok Jawa Barat', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(400, 'DLRJKI0400', 'SAUBER', 'JL.Danau Sunter Barat A1 No.7 Sunter Podomoro', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(401, 'DLRJKI0401', 'LUMINER', 'Ruko haiwaian resort Blok A No.39', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(402, 'DLRJKI0402', 'YEN.Z. MOTOR', 'JL.SIKAMBING NO 61B ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(403, 'DLRJKI0403', 'Rizky Film', 'Pasar Cipete Blk A No 69 Jaksel ', 'Jakarta Selatan', '', 'Bpk Wono', '08159932204/0217254488', 1, '2020-03-02 02:00:00', NULL, NULL),
(404, 'DLRJKI0404', 'Surya Indah Motor', 'Jl Raya Serang KM 16.8 Cikupa Cihedeung', 'Tangerang', '', 'Bpk Doel Sakat', '0812-8146175', 1, '2020-03-02 02:00:00', NULL, NULL),
(405, 'DLRJKI0405', 'BCA Motor', 'Jln Borobudur I No I Perumnas II Tangerang', 'Tangerang', '', 'Ibu Susi', '021-55658077(55656025)', 1, '2020-03-02 02:00:00', NULL, NULL),
(406, 'DLRJKI0406', 'ACUN RIBEN', 'JL.Glugur No.18 Medan', 'Sumatera Utara', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(407, 'DLRJKI0407', 'SANTO MOTOR', 'JL.Pekayon Raya No.24 E', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(408, 'DLRJKI0408', 'MEGA AUTO', 'Serta Palemsari C1/2', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(409, 'DLRJKI0409', 'PT. KARYA CEMERLANG DAYA ABADI', 'JL. Toba no.1, petisah tengah, medan petisah ', '', '', 'IBU DIAH / BPK HERI', '061-4524022 / 08126094535', 1, '2020-03-02 02:00:00', NULL, NULL),
(410, 'DLRJKI0410', 'TIGA SAHABAT ABADI', 'Jln.Hayam Wuruk No.31 D ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(411, 'DLRJKI0411', 'GLOBAL OPTIMA', 'MEGA GLODOK KEMAYORAN LANTAI 5 BLOK 7 NO 5', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(412, 'DLRJKI0412', 'GITI VARIASI', 'JLN PANDAWA RAYA INDRA PRASTA BLOK A NO 22', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(413, 'DLRJKI0413', 'ARIZONA', 'Jl. Pondok No.18', '', '', '81266674438', '0751-31161', 1, '2020-03-02 02:00:00', NULL, NULL),
(414, 'DLRJKI0414', 'BPK.HADI', 'JL.Mohammad Kahfi No.15 A Ciganjur, Jawa Barat', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(415, 'DLRJKI0415', 'CV.AUTO RAYA MOTOR INTERMEDIA', 'JL.Brigjend Darsono No.112 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(416, 'DLRJKI0416', 'FAN VARIASI', 'KOMPLEK TAMAN RAFLESIA BEKASI TIMUR', '', '', '8131511487', '021-97216122', 1, '2020-03-02 02:00:00', NULL, NULL),
(417, 'DLRJKI0417', 'GOLDEN MOTOR', 'Jln.Meruya Utara Blok.VII No.86/8D ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(418, 'DLRJKI0418', 'JAYA AGUNG MANDIRI / CV.ANUGRAH KARYA CEMERLANG', ' Mutiara Taman Palem Blok D1 No.33', '', '', '', '021-70676667/98886667', 1, '2020-03-02 02:00:00', NULL, NULL),
(419, 'DLRJKI0419', 'CV. GUNAWAN KARYA GEMILANG / GTS VARIASI', 'Jl. Jend. A. Yani No.199 RT/RW. 054/017 Gunung Sari Ilir Balikpapan', '', '', '', '0542-411004/418711', 1, '2020-03-02 02:00:00', NULL, NULL),
(420, 'DLRJKI0420', 'MENTARI VARIASI', 'Jl. Raya Lenteng Agung Timur No.18 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(421, 'DLRJKI0421', 'PT. SOLO INDONESIA UTAMA', 'JL.Raya Kartasura KM.8.', '', '', 'Ibu Santi / BPK.HARTONO', '0271-725488 / 718595', 1, '2020-03-02 02:00:00', NULL, NULL),
(422, 'DLRJKI0422', 'CAHAYA ABADI', 'Jln.Raya Cilegon Kawasid No.20 Kepandean ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(423, 'DLRJKI0423', 'DINARMAS VARIASI', 'JL.RE.Martadinata No.59 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(424, 'DLRJKI0424', 'ATLANTIS', 'Gunung sahari raya permai Blok.D No.10', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(425, 'DLRJKI0425', 'VENY MOTOR', 'Blok C No.2 PRJ Kemayoran', 'Jakarta Pusat', '', 'Ci Veny', '8987773385', 1, '2020-03-02 02:00:00', NULL, NULL),
(426, 'DLRJKI0426', 'Awang Film', 'Jl. Margonda Raya Blok A No. 38', 'Depok', '', 'Bpk Wono', '0813 21736599', 1, '2020-03-02 02:00:00', NULL, NULL),
(427, 'DLRJKI0427', 'LANGGENG JAYA', 'JL.MARGONDA RAYA GEDUNG RAMANDA Lt.1 Blok B ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(428, 'DLRJKI0428', 'KOSAMBI JAYA', 'Perum kosambi baru blok Ext 1 No.1 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(429, 'DLRJKI0429', 'ONE VARIASI', 'PERUM GRAHA BUKIT RAYA 3 (GBR3)BLK B6/18 RT 7/25 DESA CILAME KEC NGAMPRAH KABUPATEN BANDUNG BARAT', 'JAWA BARAT', '', 'BPK WAWAN ', '82216677710', 1, '2020-03-02 02:00:00', NULL, NULL),
(430, 'DLRJKI0430', 'NYOTO FILM', 'Mega glodok kemayoran Lt. 6 BL. D8 No.3', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(431, 'DLRJKI0431', 'MEGA MULYA', 'Jln.Raya Bantar Gebang Km.1 Pedurenan Bekasi', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(432, 'DLRJKI0432', 'HUPER OPTIC / CV.SUMBER SEJUK SEJATI', 'JL.Hibrida Timur Raya Ruko Rivera Plaza', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(433, 'DLRJKI0433', 'KHARISMA VARIASI', 'Jln.Raya argopuro ruko kembang sore B 18 ', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(434, 'DLRJKI0434', 'DAMAI MOTOR', 'Pasar Mobil Kemayoran Blok B/11', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(435, 'DLRJKI0435', 'REHAN FILM', 'Jln.Raya Pekayon No.9 Pekayon Bekasi', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(436, 'DLRJKI0436', 'PLATINUM AUTO CENTER', 'Jl. Raya Tuparev No. 91, Sutawinangun, ', 'Jawa Barat 45122', '', 'Bpk Enrico', '0231-205397', 1, '2020-03-02 02:00:00', NULL, NULL),
(437, 'DLRJKI0437', 'HIDAYAH MOTOR', 'Jln.Raya Industri tegal gede no.50', '', '', '', '', 1, '2020-03-02 02:00:00', NULL, NULL),
(438, 'DLRJKI0438', 'MAJU ABADI KACA FILM', 'Jl. Galunggung No. 70, Tawangsari, ', 'Jawa Barat', '', 'Bp. Sony', '81323060477', 1, '2020-03-02 02:00:00', NULL, NULL),
(439, 'DLRJKI0439', 'CV.SUMBER JAYA SAKTI', 'JL.Raya Prapen No.311', '', '', '', '031-420588 / 031-8491990', 1, '2020-03-02 02:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealers_lawas`
--

CREATE TABLE `dealers_lawas` (
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
-- Dumping data untuk tabel `dealers_lawas`
--

INSERT INTO `dealers_lawas` (`id`, `id_dealer`, `nama_dealer`, `alamat`, `kota`, `provinsi`, `kontak_person`, `no_telp`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DLRJKI0001', 'Dealer Satu', 'Jl. Satu Dua No.1, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Satu', '0877 1234 0001', 1, '2020-01-16 02:28:05', NULL, NULL),
(2, 'DLRJKI0002', 'Dealer Dua', 'Jl. Satu Dua No.2, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Dua', '0877 1234 0002', 1, '2020-01-16 02:28:05', NULL, NULL),
(3, 'DLRJKI0003', 'Dealer Tiga', 'Jl. Satu Dua No.3, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Tiga', '0877 1234 0003', 1, '2020-01-16 02:28:05', NULL, NULL),
(4, 'DLRJKI0004', 'Dealer Empat', 'Jl. Satu Dua No.4, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Empat', '0877 1234 0004', 1, '2020-01-16 02:28:05', NULL, NULL),
(5, 'DLRJKI0005', 'Dealer Lima', 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Lima', '0877 1234 0005', 0, '2020-01-16 02:28:05', '2020-01-17 08:45:48', NULL),
(6, 'DLRJKI0006', 'Dealer Enam ENAM', 'Jl Kemanggisan No 6', 'Jakarta Barat', 'DKI Jakarta', 'Bpk Enam', '0877 1234 0006', 1, '2020-01-17 07:42:27', '2020-01-18 02:31:30', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_15_142546_create_dealers_table', 1),
(4, '2020_01_15_142739_create_sales_admins_table', 1),
(5, '2020_01_15_142805_create_sales_rekaps_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_admins`
--

CREATE TABLE `sales_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_akses` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'salescpf_adm1',
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales_admins`
--

INSERT INTO `sales_admins` (`id`, `nik`, `kode_akses`, `last_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '201901150857', 'salescpf_adm1', '2020-01-16 09:28:05', NULL, NULL, NULL),
(2, '201909020880', 'salescpf_adm1', '2020-01-16 09:28:05', NULL, NULL, NULL),
(3, '201912020890', 'salescpf_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL),
(4, '201912020891', 'salescpf_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL),
(5, '201912020893', 'saleslmr_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL),
(6, '201912020894', 'saleslmr_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL),
(7, '201912020895', 'salesgrb_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL),
(8, '201912020896', 'salesgrb_adm1', '2020-01-16 14:03:18', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_rekaps`
--

CREATE TABLE `sales_rekaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dealer` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_kunjungan` datetime NOT NULL DEFAULT current_timestamp(),
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales_rekaps`
--

INSERT INTO `sales_rekaps` (`id`, `nik`, `id_dealer`, `tgl_kunjungan`, `lat`, `lng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '201901150857', 'DLRJKI0001', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(2, '201909020880', 'DLRJKI0002', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(3, '201901150857', 'DLRJKI0003', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(4, '201909020880', 'DLRJKI0004', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(5, '201901150857', 'DLRJKI0005', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(6, '201909020880', 'DLRJKI0006', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(7, '201901150857', 'DLRJKI0001', '2020-01-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(8, '201909020880', 'DLRJKI0002', '2020-03-16 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(9, '201901150857', 'DLRJKI0003', '2020-03-11 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(10, '201909020880', 'DLRJKI0004', '2020-03-10 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(11, '201901150857', 'DLRJKI0005', '2020-03-10 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(12, '201909020880', 'DLRJKI0007', '2020-03-10 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(13, '201901150857', 'DLRJKI0039', '2020-03-10 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL),
(14, '201901150857', 'DLRJKI0429', '2020-03-10 09:27:39', '-6.17724300', '106.76630400', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dealers_lawas`
--
ALTER TABLE `dealers_lawas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales_admins`
--
ALTER TABLE `sales_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales_rekaps`
--
ALTER TABLE `sales_rekaps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1542;

--
-- AUTO_INCREMENT untuk tabel `dealers_lawas`
--
ALTER TABLE `dealers_lawas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sales_admins`
--
ALTER TABLE `sales_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sales_rekaps`
--
ALTER TABLE `sales_rekaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
