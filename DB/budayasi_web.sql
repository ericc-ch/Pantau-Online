-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Bulan Mei 2020 pada 08.20
-- Versi server: 10.3.22-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budayasi_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_akun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `id_akun`, `created_at`, `updated_at`) VALUES
(1, 'Admin Cici', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id_aktifitas` bigint(20) UNSIGNED NOT NULL,
  `nama_aktifitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aktifitas`
--

INSERT INTO `aktifitas` (`id_aktifitas`, `nama_aktifitas`, `created_at`, `updated_at`) VALUES
(1, 'Ngaji', NULL, NULL),
(2, 'Makan Sahur', '2020-05-03 16:11:36', '2020-05-03 16:11:36'),
(3, 'Berbuka Puasa', '2020-05-03 16:11:50', '2020-05-03 16:11:50'),
(4, 'Sholat Tarawih', '2020-05-03 16:12:03', '2020-05-03 16:12:03'),
(5, 'Tadarus Al-Quran', '2020-05-03 16:12:15', '2020-05-03 16:12:15'),
(6, 'Olahraga Ringan', '2020-05-03 16:12:26', '2020-05-03 16:12:26'),
(7, 'Membersihkan rumah', '2020-05-03 16:12:42', '2020-05-03 16:12:42'),
(8, 'Mengikuti pembelajaran online', '2020-05-03 16:12:54', '2020-05-03 16:12:54'),
(9, 'Mengikuti kegiatan pesantren kilat online', '2020-05-03 16:13:16', '2020-05-03 16:13:16'),
(10, 'Sodaqoh', '2020-05-03 16:15:45', '2020-05-03 16:15:45'),
(11, 'Menyaksikan ceramah keagamaan melalui TV/Youtube', '2020-05-03 16:16:09', '2020-05-03 16:16:09'),
(12, 'Doa Pagi (Agama Kristen)', '2020-05-03 16:16:41', '2020-05-03 16:16:41'),
(13, 'Doa Siang (Agama Kristen)', '2020-05-03 16:17:05', '2020-05-03 16:17:05'),
(14, 'Doa Sore (Agama Kristen)', '2020-05-03 16:17:30', '2020-05-03 16:17:30'),
(15, '1.	Duduk hening/meditasi pernafasan (Agama Budha)', '2020-05-03 16:18:14', '2020-05-03 16:18:14'),
(16, 'Doa pagi namakara gatha (Agama Budha)', '2020-05-03 16:19:00', '2020-05-03 16:19:00'),
(17, 'Melafal mantra/ sutra (Agama Budha)', '2020-05-03 16:19:20', '2020-05-03 16:19:20'),
(18, 'Doa pelimpahan jasa ( Etavata) - (Agama Budha)', '2020-05-03 16:19:37', '2020-05-03 16:19:37'),
(19, 'Duduk hening/ meditasi pernafasan (Agama Budha)', '2020-05-03 16:19:57', '2020-05-03 16:19:57'),
(20, 'Puja Tri Sandya (Agama Hindu)', '2020-05-03 16:20:43', '2020-05-03 16:20:43'),
(21, 'Membaca Sri Gita Calista - 1 dokumentasi dengan voice note (Agama Hindu)', '2020-05-03 16:21:06', '2020-05-03 16:21:06'),
(22, 'Menentukan dan renungkan sloka pilihan harian (Senin hingga Jumat) - (Agama Hindu)', '2020-05-03 16:21:22', '2020-05-03 16:21:22'),
(23, 'Menuliskan terjemahan sloka pilihan harian dengan tulisan indah (Agama Hindu)', '2020-05-03 16:21:41', '2020-05-03 16:21:41'),
(24, 'Tonton video YouTube - Channel Hindu Times: Jenis-jenis Hujan (Agama Hindu)', '2020-05-03 16:21:58', '2020-05-03 16:21:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jadwal`
--

CREATE TABLE `detail_jadwal` (
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `id_aktifitas` int(10) UNSIGNED NOT NULL,
  `id_mapel` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_jadwal`
--

INSERT INTO `detail_jadwal` (`id_jadwal`, `jam_mulai`, `jam_akhir`, `id_aktifitas`, `id_mapel`, `created_at`, `updated_at`) VALUES
('125020520', '01:00:00', '01:00:00', 1, 1, '2020-05-02 00:41:54', '2020-05-02 00:41:54'),
('125020520', '00:00:00', '01:01:00', 1, 1, '2020-05-02 01:09:09', '2020-05-02 01:09:09'),
('125020520', '01:00:00', '01:00:00', 1, 1, '2020-05-02 01:09:32', '2020-05-02 01:09:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `pj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_akun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `id_mapel`, `pj`, `ps`, `id_akun`, `created_at`, `updated_at`) VALUES
(190, 'Guru Ujang', 1, 'RPL XI-2', 'Cicurug 2', 8, '2020-04-30 09:35:34', '2020-04-30 09:35:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `id_aktifitas` int(11) UNSIGNED NOT NULL,
  `id_mapel` int(11) UNSIGNED NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `validasi` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `nis`, `tanggal`, `jam_mulai`, `jam_akhir`, `id_aktifitas`, `id_mapel`, `bukti`, `validasi`, `updated_at`, `created_at`) VALUES
(1, 11806479, '2020-05-05', '10:25:45', '10:25:45', 1, 1, 'blablablal.png', 'no', '2020-05-03 03:26:50', '2020-05-03 03:26:50'),
(2, 125, '2020-05-05', '00:00:00', '00:00:00', 1, 1, NULL, NULL, '2020-05-02 21:48:47', '2020-05-02 21:48:47'),
(3, 125, '2020-05-03', '01:00:00', '01:00:00', 1, 1, 'Demo Ngaji.jpeg', 'yes', '2020-05-03 16:11:49', '2020-05-02 21:54:38'),
(4, 125, '2020-05-04', '00:00:00', '01:00:00', 1, 1, NULL, NULL, '2020-05-02 21:55:38', '2020-05-02 21:55:38'),
(5, 125, '2020-05-13', '03:02:00', '01:03:00', 1, 1, NULL, 'no', '2020-05-03 07:10:24', '2020-05-03 07:10:24'),
(6, 125, '2020-05-04', '03:00:00', '03:45:00', 1, 1, NULL, 'no', '2020-05-03 15:44:39', '2020-05-03 15:44:39'),
(7, 125, '2020-05-05', '08:00:00', '09:00:00', 7, 1, NULL, 'no', '2020-05-03 16:23:31', '2020-05-03 16:23:31'),
(8, 125, '2020-05-04', '10:45:00', '11:00:00', 7, 2, NULL, 'no', '2020-05-03 21:46:01', '2020-05-03 21:46:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kegiatan`
--

CREATE TABLE `jadwal_kegiatan` (
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_kegiatan`
--

INSERT INTO `jadwal_kegiatan` (`id_jadwal`, `nis`, `tanggal`, `created_at`, `updated_at`) VALUES
('125020520', 125, '2002-05-20', '2020-05-02 01:09:09', '2020-05-02 01:09:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan Agama dan Budi Pekerti', NULL, '2020-05-03 16:15:25'),
(2, 'PPKn', '2020-05-03 16:13:54', '2020-05-03 16:13:54'),
(3, 'Pendidikan Olahraga dan Kesehatan', '2020-05-03 16:14:08', '2020-05-03 16:14:08'),
(4, 'Sejarah Indonesaia', '2020-05-03 16:14:23', '2020-05-03 16:14:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_28_115042_create_jadwal_kegiatan_table', 1),
(5, '2020_04_28_120333_create_detail_jadwal_table', 1),
(6, '2020_04_28_120525_create_pembuktian_table', 1),
(7, '2020_04_28_120553_create_ortu_table', 1),
(8, '2020_04_28_120641_create_admin_table', 1),
(9, '2020_04_28_120717_create_guru_table', 1),
(10, '2020_04_28_120741_create_mapel_table', 1),
(11, '2020_04_28_120804_create_aktifitas_table', 1),
(12, '2020_04_30_131209_create_siswas_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ortu`
--

CREATE TABLE `ortu` (
  `nik` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(10) UNSIGNED NOT NULL,
  `id_akun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ortu`
--

INSERT INTO `ortu` (`nik`, `nama`, `nis`, `id_akun`, `created_at`, `updated_at`) VALUES
(167, 'Orang Tua Ucok', 125, 9, '2020-04-30 09:44:11', '2020-04-30 09:44:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembuktian`
--

CREATE TABLE `pembuktian` (
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_aktifitas` int(10) UNSIGNED NOT NULL,
  `tanggal_mengumpulkan` date NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `nis` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_akun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`nis`, `nama`, `jk`, `rombel`, `rayon`, `id_akun`, `created_at`, `updated_at`) VALUES
(125, 'Murid Ucok', 'Laki-laki', 'RPL XI-2', 'Cicurug 2', 5, '2020-04-30 08:33:05', '2020-04-30 08:33:05'),
(11706236, 'Muhammad Ilyas Destira', 'L', 'MMD XI-1', 'Cia 5', 725, NULL, NULL),
(11706248, 'M. Rayhan Alghifari Nugroho', 'L', 'TKJ XI-4', 'Cic 4', 726, NULL, NULL),
(11706343, 'Rosita', 'P', 'BDP XI-1', 'Taj 5', 727, NULL, NULL),
(11806458, 'Abdul Hilman Thiusana', 'L', 'RPL XI-2', 'Taj 1', 728, NULL, NULL),
(11806459, 'ABDULLAH AL FARIZI', 'L', 'TKJ XI-3', 'Cic 2', 729, NULL, NULL),
(11806460, 'Achmad Alwan H', 'L', 'TBG XI-1', 'Cic 4', 730, NULL, NULL),
(11806461, 'Achmad Zabal Zaenuddin', 'L', 'TKJ XI-1', 'Taj 1', 731, NULL, NULL),
(11806462, 'Adam Albani', 'L', 'HTL XI-1', 'Cis 6', 732, NULL, NULL),
(11806463, 'Adam Cahyo Nugroho', 'L', 'RPL XI-4', 'Cis 4', 733, NULL, NULL),
(11806464, 'Adam Khalsia Muchtar', 'L', 'TKJ XI-3', 'Taj 1', 734, NULL, NULL),
(11806465, 'Ade Rahma', 'P', 'OTKP XI-2', 'Cib 2', 735, NULL, NULL),
(11806466, 'ADE RODILLA', 'P', 'HTL XI-1', 'Wik 1', 736, NULL, NULL),
(11806467, 'Adelia Pratiwi Firdasyari', 'P', 'MMD XI-2', 'Wik 3', 737, NULL, NULL),
(11806468, 'Adi Pramono', 'L', 'MMD XI-2', 'Cis 6', 738, NULL, NULL),
(11806469, 'Addin Nurachman', 'L', 'TKJ XI-1', 'Cis 5', 739, NULL, NULL),
(11806470, 'ADINDA FATHIMAH ADHA', 'P', 'MMD XI-2', 'Taj 5', 740, NULL, NULL),
(11806471, 'Adinda Zahra Kusuma', 'P', 'MMD XI-1', 'Cic 6', 741, NULL, NULL),
(11806472, 'Adis Susilawati', 'P', 'OTKP XI-1', 'Cib 3', 742, NULL, NULL),
(11806473, 'Adit Surya Muzaqi', 'L', 'HTL XI-1', 'Cib 1', 743, NULL, NULL),
(11806474, 'Adjie Syeraffi Rahmat', 'L', 'TKJ XI-1', 'Taj 1', 744, NULL, NULL),
(11806475, 'Adnan Musthafa Al-amin', 'L', 'TKJ XI-2', 'Cic 4', 745, NULL, NULL),
(11806476, 'Adrian Aszhar Maulana', 'L', 'TKJ XI-3', 'Taj 4', 746, NULL, NULL),
(11806477, 'Agisti Setia Putri', 'P', 'RPL XI-3', 'Cic 7', 747, NULL, NULL),
(11806478, 'Agung Nugraha', 'L', 'TKJ XI-1', 'Taj 2', 748, NULL, NULL),
(11806479, 'Agung Prasetio', 'L', 'RPL XI-3', 'Suk 2', 749, NULL, NULL),
(11806480, 'AHMAD HAFIZ', 'L', 'BDP XI-1', 'Cib 2', 1189, NULL, NULL),
(11806481, 'AHMAD YUNUS SEPTIAN', 'L', 'TKJ XI-4', 'Suk 1', 1190, NULL, NULL),
(11806483, 'Ahsal Fadilah', 'L', 'TBG XI-1', 'Cis 6', 750, NULL, NULL),
(11806484, 'Ajeng Sri Mulyaningsih', 'P', 'OTKP XI-1', 'Cis 4', 751, NULL, NULL),
(11806485, 'Akbar Fazar Almahendra', 'L', 'TKJ XI-3', 'Cis 1', 752, NULL, NULL),
(11806487, 'Alaisya Salwa Fatihah', 'L', 'BDP XI-1', 'Taj 2', 753, NULL, NULL),
(11806488, 'Aldhika Haikal Ika Putera', 'L', 'MMD XI-1', 'Cib 1', 754, NULL, NULL),
(11806490, 'Aldiyansyah Nugraha', 'L', 'TKJ XI-2', 'Cic 5', 755, NULL, NULL),
(11806491, 'ALFARIZZY SUBHAN', 'L', 'TKJ XI-1', 'Wik 2', 756, NULL, NULL),
(11806492, 'Ali Syarief', 'L', 'TKJ XI-4', 'Wik 1', 757, NULL, NULL),
(11806493, 'Alia Fani', 'P', 'BDP XI-1', 'Cis 3', 758, NULL, NULL),
(11806494, 'Alif Caesar Awaludin', 'L', 'TKJ XI-3', 'Cib 3', 759, NULL, NULL),
(11806495, 'Aliya Zia Zahra', 'P', 'BDP XI-2', 'Taj 4', 760, NULL, NULL),
(11806496, 'Alya Nuralifa', 'P', 'BDP XI-2', 'Wik 2', 761, NULL, NULL),
(11806497, 'Alysa Saptari', 'P', 'BDP XI-1', 'Wik 1', 762, NULL, NULL),
(11806498, 'Amalia Sapta Mega', 'P', 'OTKP XI-2', 'Cic 2', 763, NULL, NULL),
(11806499, 'Amanda Yuniar', 'P', 'OTKP XI-1', 'Cic 4', 764, NULL, NULL),
(11806500, 'Andika Rizki Pratama', 'L', 'TKJ XI-2', 'Cis 2', 765, NULL, NULL),
(11806501, 'Andika Putra Firmansyah', 'L', 'TBG XI-1', 'Wik 3', 766, NULL, NULL),
(11806502, 'Andreas Davit Sinaga', 'L', 'TKJ XI-4', 'Cic 6', 767, NULL, NULL),
(11806503, 'Andreyan Syah', 'L', 'TKJ XI-3', 'Suk 1', 768, NULL, NULL),
(11806504, 'Angel Irfani Maruapey', 'P', 'MMD XI-2', 'Suk 2', 769, NULL, NULL),
(11806505, 'Angga Setiawan', 'L', 'RPL XI-1', 'Cic 2', 770, NULL, NULL),
(11806506, 'Anindya Maharani', 'P', 'TBG XI-1', 'Cis 6', 771, NULL, NULL),
(11806507, 'Anisa Rianto', 'P', 'TBG XI-1', 'Cis 1', 772, NULL, NULL),
(11806508, 'Anna Virlya Aryanto', 'P', 'HTL XI-1', 'Cic 3', 773, NULL, NULL),
(11806509, 'Annisa Zahra', 'P', 'OTKP XI-1', 'Cib 3', 774, NULL, NULL),
(11806510, 'Anshar Faisal Ismi', 'L', 'TKJ XI-2', 'Cic 4', 775, NULL, NULL),
(11806512, 'Ardi Aprianto', 'L', 'TKJ XI-2', 'Cic 7', 776, NULL, NULL),
(11806513, 'Aria Wardana', 'L', 'RPL XI-1', 'Cia 1', 777, NULL, NULL),
(11806514, 'ARIADITA PUTRI FADLLIKA', 'L', 'RPL XI-3', 'Cic 3', 778, NULL, NULL),
(11806515, 'Arya Dhievha Rusdiana', 'L', 'RPL XI-4', 'Taj 5', 779, NULL, NULL),
(11806517, 'Aryanto', 'L', 'TKJ XI-4', 'Taj 5', 780, NULL, NULL),
(11806518, 'Ashifa Azzahra', 'P', 'TBG XI-1', 'Suk 1', 781, NULL, NULL),
(11806519, 'Ashila Dzikry Nuffariq', 'L', 'RPL XI-1', 'Cic 7', 782, NULL, NULL),
(11806520, 'Atikah', 'P', 'OTKP XI-1', 'Cic 1', 783, NULL, NULL),
(11806521, 'Aulia Akbar', 'L', 'BDP XI-1', 'Cia 3', 784, NULL, NULL),
(11806522, 'Auliah Syahrani Ahmad', 'P', 'BDP XI-1', 'Cia 3', 785, NULL, NULL),
(11806523, 'Aura Firda Andita', 'P', 'MMD XI-1', 'Cic 1', 786, NULL, NULL),
(11806524, 'Aura Lutfira', 'P', 'OTKP XI-2', 'Cic 5', 787, NULL, NULL),
(11806525, 'Azis Hakim', 'L', 'TKJ XI-3', 'Taj 2', 788, NULL, NULL),
(11806526, 'Azka Qilan Anis', 'P', 'TBG XI-1', 'Cis 3', 789, NULL, NULL),
(11806527, 'Azkia Isnani Hasan', 'P', 'MMD XI-1', 'Cia 3', 790, NULL, NULL),
(11806528, 'Bagas Aditiya', 'L', 'TKJ XI-2', 'Cia 4', 791, NULL, NULL),
(11806529, 'Bagas Arya Wiratama', 'L', 'MMD XI-1', 'Cia 2', 792, NULL, NULL),
(11806530, 'Bambang Bayu Samudra', 'L', 'RPL XI-4', 'Cic 4', 793, NULL, NULL),
(11806531, 'Barkah Dwi Prasetyo', 'L', 'RPL XI-2', 'Cic 1', 794, NULL, NULL),
(11806533, 'Bimo Yulian Putra', 'L', 'TKJ XI-3', 'Cic 3', 795, NULL, NULL),
(11806534, 'Bintang Muda Yasir Nawafil', 'L', 'TKJ XI-3', 'Cic 7', 796, NULL, NULL),
(11806535, 'Bintang Yudha Natakusuma', 'L', 'RPL XI-4', 'Cis 4', 797, NULL, NULL),
(11806536, 'Brilian Satria Nusantara', 'L', 'RPL XI-3', 'Cic 6', 798, NULL, NULL),
(11806537, 'BUNGA ANNISA ALFATHIA', 'P', 'TBG XI-1', 'Suk 2', 1191, NULL, NULL),
(11806538, 'Cevin Marselly Ramda', 'L', 'TKJ XI-2', 'Cic 5', 799, NULL, NULL),
(11806539, 'Chaerul Figri Argika', 'L', 'TKJ XI-4', 'Suk 2', 800, NULL, NULL),
(11806540, 'Chikalola Rizkya Maesa', 'P', 'OTKP XI-1', 'Taj 2', 801, NULL, NULL),
(11806541, 'Christabel Antonia Notoadisardjono', 'P', 'HTL XI-1', 'Suk 2', 802, NULL, NULL),
(11806542, 'Cut Nurhaliza', 'P', 'BDP XI-1', 'Cic 1', 803, NULL, NULL),
(11806543, 'Dafa Maulana', 'L', 'TKJ XI-1', 'Taj 2', 804, NULL, NULL),
(11806544, 'Damayanti', 'P', 'BDP XI-1', 'Cia 4', 805, NULL, NULL),
(11806545, 'Dania Pratiwi', 'P', 'BDP XI-1', 'Cis 6', 806, NULL, NULL),
(11806546, 'Dania Rossi Yadi', 'P', 'BDP XI-2', 'Cic 4', 807, NULL, NULL),
(11806547, 'Dara Mulia Sundani', 'P', 'BDP XI-2', 'Cic 6', 808, NULL, NULL),
(11806548, 'Davina Safarinjani', 'P', 'TBG XI-1', 'Cic 5', 809, NULL, NULL),
(11806549, 'Dawson Flannery Susanto', 'L', 'RPL XI-3', 'Taj 1', 810, NULL, NULL),
(11806550, 'DAYU DWI REIHAN', 'L', 'TKJ XI-4', 'Cis 6', 811, NULL, NULL),
(11806551, 'Dea May Sela', 'P', 'BDP XI-1', 'Cic 6', 812, NULL, NULL),
(11806552, 'Dede Andika Pratama', 'L', 'MMD XI-1', 'Cib 1', 813, NULL, NULL),
(11806553, 'Della Aura Sabilla', 'P', 'BDP XI-1', 'Cic 4', 814, NULL, NULL),
(11806554, 'Della Puspita Sari', 'P', 'BDP XI-1', 'Cic 1', 815, NULL, NULL),
(11806555, 'Desfiana Siti Rahmadini', 'P', 'OTKP XI-2', 'Suk 2', 816, NULL, NULL),
(11806556, 'Desti Aryani', 'P', 'MMD XI-1', 'Cic 2', 817, NULL, NULL),
(11806557, 'Destia Andriani', 'P', 'OTKP XI-2', 'Taj 1', 818, NULL, NULL),
(11806558, 'Destiana Lestari Putri', 'P', 'BDP XI-2', 'Cic 4', 819, NULL, NULL),
(11806559, 'Devan Tritama', 'L', 'RPL XI-1', 'Suk 1', 820, NULL, NULL),
(11806561, 'DEVI DESTRIA', 'L', 'TBG XI-1', 'Suk 2', 1192, NULL, NULL),
(11806562, 'Dewiana Aryani Rahmat', 'P', 'RPL XI-4', 'Cia 4', 821, NULL, NULL),
(11806563, 'Dezani Haikal', 'L', 'RPL XI-3', 'Cis 1', 822, NULL, NULL),
(11806564, 'Dhea Jatiayu', 'P', 'BDP XI-2', 'Cib 3', 823, NULL, NULL),
(11806565, 'DHELIA AMANDA SASQIA PUTRI', 'P', 'BDP XI-1', 'Cib 1', 824, NULL, NULL),
(11806566, 'Dhiya Faza Yuniar', 'P', 'BDP XI-2', 'Wik 3', 825, NULL, NULL),
(11806567, 'Diana Sopianti', 'P', 'TBG XI-1', 'Cia 1', 826, NULL, NULL),
(11806568, 'Diandra Ihsan Ramadan', 'L', 'MMD XI-1', 'Cic 5', 827, NULL, NULL),
(11806569, 'Diky Saputra', 'L', 'TKJ XI-4', 'Suk 2', 828, NULL, NULL),
(11806570, 'Dimas Aditya', 'L', 'BDP XI-2', 'Cib 1', 829, NULL, NULL),
(11806571, 'Dimas Eka Saputra', 'L', 'TKJ XI-2', 'Cic 1', 830, NULL, NULL),
(11806572, 'Dimas Marcell Nurwahid', 'L', 'MMD XI-1', 'Cic 5', 831, NULL, NULL),
(11806573, 'Dimas Tegar Setiawan', 'L', 'TKJ XI-3', 'Wik 2', 832, NULL, NULL),
(11806574, 'Dira Faturachman', 'L', 'TKJ XI-1', 'Cic 4', 833, NULL, NULL),
(11806575, 'Diwangga Dafa Alkautsar', 'L', 'RPL XI-2', 'Cic 6', 834, NULL, NULL),
(11806576, 'Doni Arifitranto', 'L', 'TKJ XI-2', 'Taj 1', 835, NULL, NULL),
(11806577, 'Donni Triadi', 'L', 'TKJ XI-4', 'Cic 6', 836, NULL, NULL),
(11806578, 'Donnix Afrilliando', 'L', 'RPL XI-3', 'Taj 2', 837, NULL, NULL),
(11806579, 'Donny Dutaprima Halim', 'L', 'MMD XI-1', 'Cic 6', 838, NULL, NULL),
(11806580, 'DZAKY RABANI', 'L', 'RPL XI-2', 'Wik 3', 839, NULL, NULL),
(11806581, 'Dzikra Chairani', 'P', 'MMD XI-1', 'Cia 4', 840, NULL, NULL),
(11806582, 'Ega Adgania', 'L', 'RPL XI-2', 'Taj 2', 841, NULL, NULL),
(11806583, 'Eka Nurmala Fitri', 'P', 'RPL XI-2', 'Cic 5', 842, NULL, NULL),
(11806584, 'Elpa Septiana Sari', 'P', 'OTKP XI-1', 'Cib 2', 843, NULL, NULL),
(11806585, 'Endah Kisworo Jenar', 'P', 'OTKP XI-2', 'Cic 1', 844, NULL, NULL),
(11806586, 'Eneng Fitria', 'P', 'OTKP XI-2', 'Cic 4', 845, NULL, NULL),
(11806587, 'Erga Praniata Resmana', 'L', 'MMD XI-2', 'Cis 2', 846, NULL, NULL),
(11806588, 'Erick Christian Purwanto', 'L', 'RPL XI-2', 'Cic 2', 847, NULL, NULL),
(11806589, 'Fachri Fahreza', 'L', 'TKJ XI-2', 'Wik 3', 848, NULL, NULL),
(11806590, 'FADHILLAH MUHAMMAD WAHYUDI', 'L', 'TKJ XI-1', 'Suk 2', 849, NULL, NULL),
(11806591, 'Fadli Nurichsan', 'L', 'MMD XI-1', 'Cic 4', 850, NULL, NULL),
(11806592, 'Fahri Maarif Heriyanto', 'L', 'TKJ XI-1', 'Cia 4', 851, NULL, NULL),
(11806594, 'Fani Andrayani Irawan', 'P', 'MMD XI-1', 'Cia 1', 852, NULL, NULL),
(11806595, 'Fania Hafidtha', 'P', 'RPL XI-1', 'Cis 6', 853, NULL, NULL),
(11806596, 'Farhan Saputra Nasution', 'L', 'RPL XI-2', 'Cis 6', 854, NULL, NULL),
(11806597, 'Farhandito Zhafitra', 'L', 'TKJ XI-1', 'Suk 2', 855, NULL, NULL),
(11806598, 'Fathurahman Al-faridzi', 'L', 'TKJ XI-1', 'Taj 1', 856, NULL, NULL),
(11806599, 'Fatima Mutiara Azzahra', 'P', 'TBG XI-1', 'Cic 6', 857, NULL, NULL),
(11806600, 'Fatmawati', 'P', 'BDP XI-1', 'Cia 4', 858, NULL, NULL),
(11806602, 'Fauzan Mahdi Firdaus', 'L', 'TKJ XI-2', 'Wik 2', 859, NULL, NULL),
(11806603, 'Feby Anugrah Wati', 'P', 'HTL XI-1', 'Cia 4', 860, NULL, NULL),
(11806604, 'Felycia Angelica Permatasari', 'P', 'HTL XI-1', 'Taj 2', 861, NULL, NULL),
(11806605, 'Fera Safitri', 'P', 'BDP XI-2', 'Cic 4', 862, NULL, NULL),
(11806606, 'Ferdy Apriliyanto', 'L', 'RPL XI-1', 'Wik 2', 863, NULL, NULL),
(11806607, 'Ferina Putri', 'P', 'OTKP XI-1', 'Cic 3', 864, NULL, NULL),
(11806608, 'Firda Nur Wahyu Utomo', 'L', 'HTL XI-1', 'Cic 7', 865, NULL, NULL),
(11806609, 'FIRDAUS', 'L', 'TKJ XI-2', 'Suk 1', 866, NULL, NULL),
(11806610, 'Firman Syaputra', 'L', 'TKJ XI-1', 'Cic 7', 867, NULL, NULL),
(11806611, 'Fitrahani Puspitasari', 'P', 'OTKP XI-2', 'Suk 1', 868, NULL, NULL),
(11806612, 'Fitri Sembiring', 'P', 'BDP XI-2', 'Cis 6', 869, NULL, NULL),
(11806613, 'Fransisco Leonardo Gabriel', 'L', 'RPL XI-1', 'Suk 1', 870, NULL, NULL),
(11806614, 'Galih Rahmat Syarif', 'L', 'MMD XI-2', 'Wik 4', 871, NULL, NULL),
(11806615, 'Galih Zikri Rahman', 'L', 'RPL XI-3', 'Cia 3', 872, NULL, NULL),
(11806616, 'Galuh Gundewa Putra', 'L', 'TKJ XI-2', 'Wik 1', 873, NULL, NULL),
(11806617, 'Geraldy Ravael Suriabrata', 'L', 'RPL XI-3', 'Wik 3', 874, NULL, NULL),
(11806618, 'Ghevira Zahira Shofa', 'P', 'BDP XI-1', 'Cic 5', 875, NULL, NULL),
(11806619, 'Gina Aulia Nurussyifa', 'P', 'BDP XI-1', 'Taj 4', 876, NULL, NULL),
(11806620, 'Ginan Ardiansyah', 'L', 'TKJ XI-4', 'Cib 1', 877, NULL, NULL),
(11806621, 'Gracia Uli Artha', 'P', 'BDP XI-2', 'Suk 1', 878, NULL, NULL),
(11806622, 'Gunawan Randi Wardana', 'L', 'RPL XI-1', 'Cia 4', 879, NULL, NULL),
(11806623, 'Guntara Prawira Dermawan', 'L', 'TKJ XI-1', 'Cia 5', 880, NULL, NULL),
(11806624, 'HAFIDZAH ARBANI', 'P', 'MMD XI-1', 'Cib 2', 881, NULL, NULL),
(11806625, 'Hairil Anwar', 'L', 'TKJ XI-1', 'Cis 4', 882, NULL, NULL),
(11806626, 'Hala Sukmamelati Abdussalam', 'P', 'RPL XI-1', 'Taj 4', 883, NULL, NULL),
(11806627, 'Hanafi Abdillah', 'L', 'RPL XI-4', 'Cis 3', 884, NULL, NULL),
(11806628, 'Harfani Widiastuti', 'P', 'HTL XI-1', 'Taj 1', 885, NULL, NULL),
(11806629, 'Hari Yanuar Huda', 'L', 'RPL XI-3', 'Wik 4', 886, NULL, NULL),
(11806630, 'Haura Fauziah', 'P', 'RPL XI-4', 'Taj 1', 887, NULL, NULL),
(11806631, 'Hemaliya Kintan Azahra', 'P', 'BDP XI-1', 'Cis 4', 888, NULL, NULL),
(11806632, 'Hermansyah', 'L', 'RPL XI-3', 'Taj 2', 889, NULL, NULL),
(11806633, 'Hizkia Yuda Sitorus', 'L', 'TKJ XI-4', 'Cic 5', 890, NULL, NULL),
(11806634, 'Ichsan Arrizqi', 'L', 'RPL XI-1', 'Wik 4', 891, NULL, NULL),
(11806635, 'Ikhsan Arfian Nugraha', 'L', 'RPL XI-2', 'Cic 5', 892, NULL, NULL),
(11806636, 'Ilham Pratama Putra', 'L', 'TKJ XI-3', 'Cia 2', 893, NULL, NULL),
(11806638, 'Intan Fauzia', 'P', 'BDP XI-2', 'Cis 3', 894, NULL, NULL),
(11806639, 'Iqbal Fadhila Rahman', 'L', 'RPL XI-1', 'Cia 4', 895, NULL, NULL),
(11806640, 'IRGY FAJRIAN DESTRIANSYAH', 'L', 'TKJ XI-1', 'Cic 5', 896, NULL, NULL),
(11806642, 'Ivan Ichsan Fadillah', 'L', 'HTL XI-1', 'Cis 5', 897, NULL, NULL),
(11806643, 'Jabbar Ramadhan', 'L', 'TKJ XI-1', 'Wik 2', 898, NULL, NULL),
(11806644, 'Jihan Febrina', 'P', 'OTKP XI-2', 'Cia 1', 899, NULL, NULL),
(11806645, 'Joshua Satya Laksana', 'L', 'RPL XI-3', 'Wik 2', 900, NULL, NULL),
(11806646, 'Juliana Sulistiawati', 'P', 'OTKP XI-1', 'Cic 5', 901, NULL, NULL),
(11806647, 'Juwita Soraya Anjani Putri Irwandi', 'P', 'BDP XI-1', 'Cia 3', 902, NULL, NULL),
(11806648, 'Karin Aninda Pratiwi', 'P', 'MMD XI-2', 'Taj 1', 903, NULL, NULL),
(11806650, 'KARINA AMANDA PUTRI', 'P', 'RPL XI-1', 'Taj 1', 904, NULL, NULL),
(11806651, 'Khaerul Kahfi', 'L', 'TKJ XI-3', 'Cic 3', 905, NULL, NULL),
(11806652, 'Khoerunisa', 'P', 'MMD XI-1', 'Cic 2', 906, NULL, NULL),
(11806653, 'Khoirunnisa Maulidina Sazidah', 'P', 'RPL XI-1', 'Cia 1', 907, NULL, NULL),
(11806654, 'Ladita Nurfauziah', 'P', 'OTKP XI-1', 'Cis 6', 908, NULL, NULL),
(11806655, 'Lailatul Janah', 'P', 'OTKP XI-2', 'Cis 3', 909, NULL, NULL),
(11806656, 'Landrina Prawira', 'P', 'HTL XI-1', 'Wik 1', 910, NULL, NULL),
(11806657, 'Lingga Ayu Anastasya', 'P', 'RPL XI-4', 'Wik 4', 911, NULL, NULL),
(11806659, 'Luthvia Avrilliani', 'P', 'BDP XI-2', 'Cia 3', 912, NULL, NULL),
(11806660, 'M Ryan Maulana', 'L', 'MMD XI-2', 'Suk 1', 913, NULL, NULL),
(11806661, 'Mohammad Aksel Ghailan Putra', 'L', 'RPL XI-1', 'Wik 2', 914, NULL, NULL),
(11806662, 'M. Arda Dwi Januar', 'L', 'RPL XI-2', 'Cib 1', 915, NULL, NULL),
(11806663, 'M. BUSTOMI', 'L', 'TKJ XI-1', 'Cib 2', 1193, NULL, NULL),
(11806664, 'Muhammad Fadli Syauqi Ali', 'L', 'RPL XI-4', 'Wik 1', 916, NULL, NULL),
(11806665, 'Muchamad Fajar Rochmattullah', 'L', 'TKJ XI-3', 'Taj 4', 917, NULL, NULL),
(11806666, 'Muhamad Ferdiansyah', 'L', 'TKJ XI-3', 'Suk 1', 918, NULL, NULL),
(11806667, 'Muhamad Muhtarudin', 'L', 'TKJ XI-4', 'Cis 1', 919, NULL, NULL),
(11806668, 'M. Reval Fahlevi', 'L', 'TKJ XI-4', 'Cic 2', 920, NULL, NULL),
(11806669, 'M. Syahdan Baria', 'L', 'RPL XI-1', 'Taj 4', 921, NULL, NULL),
(11806670, 'M. SYAHRUL AWALUDIN', 'L', 'TKJ XI-4', 'Wik 3', 1194, NULL, NULL),
(11806671, 'Ma\'riffatul Ulya Putri Lestari', 'P', 'BDP XI-2', 'Cia 5', 922, NULL, NULL),
(11806672, 'Mahadewi Diah Pitaloka S P', 'P', 'TBG XI-1', 'Wik 3', 923, NULL, NULL),
(11806673, 'Maisya Putri', 'P', 'HTL XI-1', 'Wik 1', 924, NULL, NULL),
(11806674, 'Marcella Felicia', 'P', 'BDP XI-2', 'Cic 4', 925, NULL, NULL),
(11806675, 'Marchella Putri Sannie', 'P', 'RPL XI-3', 'Cic 4', 926, NULL, NULL),
(11806676, 'Maulidya Pujiane', 'P', 'BDP XI-2', 'Cis 2', 927, NULL, NULL),
(11806677, 'Maya Ayu Andani', 'P', 'RPL XI-1', 'Wik 3', 928, NULL, NULL),
(11806678, 'Mayrha Sabilla', 'P', 'TBG XI-1', 'Wik 1', 929, NULL, NULL),
(11806679, 'Melanie Nur Patricia', 'P', 'TBG XI-1', 'Cic 5', 930, NULL, NULL),
(11806680, 'Meli Maya Sari', 'P', 'OTKP XI-1', 'Cia 4', 931, NULL, NULL),
(11806681, 'Meliya Azzahra Putri', 'P', 'HTL XI-1', 'Cib 3', 932, NULL, NULL),
(11806682, 'Mia Yumna Nailah', 'P', 'BDP XI-2', 'Cic 4', 933, NULL, NULL),
(11806684, 'Mishell Melyana Ferlandi', 'P', 'OTKP XI-2', 'Cic 4', 934, NULL, NULL),
(11806685, 'Moch Faisal Syahwaludin', 'L', 'MMD XI-1', 'Cic 4', 935, NULL, NULL),
(11806686, 'MOCHAMMAD DANANG RA', 'L', 'TKJ XI-1', 'Cic 5', 936, NULL, NULL),
(11806687, 'Mochamad Diaz Prayoga', 'L', 'MMD XI-2', 'Taj 2', 937, NULL, NULL),
(11806688, 'MOCHAMAD FATHUL RISKY', 'L', 'MMD XI-2', 'Cis 2', 938, NULL, NULL),
(11806689, 'Mochamad Rifki Himawan', 'L', 'MMD XI-1', 'Cic 3', 939, NULL, NULL),
(11806690, 'MOCHAMAD VITO ANGGANA PRAWIRA', 'L', 'RPL XI-2', 'Cic 2', 940, NULL, NULL),
(11806691, 'Mochammad Haris Febrian', 'L', 'TKJ XI-1', 'Suk 1', 941, NULL, NULL),
(11806692, 'Moh Rizki Algifari', 'L', 'RPL XI-2', 'Taj 2', 942, NULL, NULL),
(11806693, 'Moh Wildan Ardiansyah', 'L', 'RPL XI-4', 'Cic 5', 943, NULL, NULL),
(11806694, 'Muhammad Ahsan Zidan', 'L', 'RPL XI-2', 'Taj 1', 944, NULL, NULL),
(11806695, 'Mohamad Imam Salji', 'L', 'RPL XI-1', 'Cic 1', 945, NULL, NULL),
(11806696, 'Mohamad Rifki Hidayat', 'L', 'TKJ XI-4', 'Cia 2', 946, NULL, NULL),
(11806697, 'MOHAMMAD GHASSAN ALGHIFARI', 'L', 'TKJ XI-4', 'Taj 1', 947, NULL, NULL),
(11806698, 'MOHAMMAD HAPIZ', 'L', 'RPL XI-4', 'Cis 2', 948, NULL, NULL),
(11806699, 'Muchamad Tegar Saputra', 'L', 'TKJ XI-2', 'Cis 1', 949, NULL, NULL),
(11806700, 'MUHAMAD ABDUL JALIL', 'L', 'MMD XI-1', 'Cib 2', 950, NULL, NULL),
(11806701, 'Muhamad Agil Riyandi', 'L', 'MMD XI-1', 'Cib 1', 951, NULL, NULL),
(11806702, 'Muhamad Akbar Irsyad', 'L', 'RPL XI-3', 'Wik 1', 952, NULL, NULL),
(11806703, 'Muhamad Al\'fitrah', 'L', 'MMD XI-2', 'Suk 2', 953, NULL, NULL),
(11806704, 'MUHAMAD ALKIL', 'L', 'HTL XI-1', 'Taj 1', 1195, NULL, NULL),
(11806705, 'Muhamad Amroe', 'L', 'RPL XI-3', 'Wik 4', 954, NULL, NULL),
(11806706, 'Muhamad Bagus Januar', 'L', 'TKJ XI-2', 'Taj 1', 955, NULL, NULL),
(11806707, 'Muhamad Fadhil', 'L', 'TKJ XI-3', 'Suk 2', 956, NULL, NULL),
(11806708, 'Muhamad Fadil Malik', 'L', 'RPL XI-1', 'Cis 3', 957, NULL, NULL),
(11806709, 'Muhamad Fahmi', 'L', 'RPL XI-1', 'Suk 2', 958, NULL, NULL),
(11806711, 'Muhamad Faldhy Maliki', 'L', 'RPL XI-2', 'Cis 2', 959, NULL, NULL),
(11806712, 'MUHAMAD FARHAN', 'L', 'TKJ XI-1', 'Wik 2', 1196, NULL, NULL),
(11806713, 'Muhamad Gymnastiar', 'L', 'RPL XI-1', 'Wik 2', 960, NULL, NULL),
(11806714, 'Muhamad Hadi Candra Maulana', 'L', 'TBG XI-1', 'Cic 4', 961, NULL, NULL),
(11806715, 'MUHAMAD HAFIZH ALIYUDDIN', 'L', 'RPL XI-4', 'Cib 1', 1197, NULL, NULL),
(11806716, 'MUHAMAD HASBY FAHRULLOH', 'L', 'RPL XI-1', 'Cic 3', 1198, NULL, NULL),
(11806717, 'Muhamad Hendrik', 'L', 'RPL XI-1', 'Cis 1', 962, NULL, NULL),
(11806718, 'Muhamad Ichsan', 'L', 'RPL XI-4', 'Cis 1', 963, NULL, NULL),
(11806719, 'Muhamad Idrus Alawi', 'L', 'RPL XI-2', 'Cic 2', 964, NULL, NULL),
(11806720, 'M. Iqbal Fadilah', 'L', 'RPL XI-2', 'Wik 2', 965, NULL, NULL),
(11806721, 'Muhamad Raja Dollar Sugih Harta', 'L', 'HTL XI-1', 'Cib 3', 966, NULL, NULL),
(11806722, 'Muhamad Ramdan', 'L', 'TKJ XI-1', 'Cic 6', 967, NULL, NULL),
(11806725, 'MUHAMAD RIANDI SUGIANA', 'L', 'TKJ XI-4', 'Cic 3', 968, NULL, NULL),
(11806726, 'Muhammad Richy Akbar', 'L', 'RPL XI-3', 'Cic 2', 969, NULL, NULL),
(11806727, 'Muhamad Rivaldi Rizky Hilmawan', 'L', 'TKJ XI-3', 'Cia 2', 970, NULL, NULL),
(11806728, 'Muhamad Rizhan', 'L', 'RPL XI-1', 'Cis 3', 971, NULL, NULL),
(11806729, 'MUHAMD RIZKIA KUSUMA', 'L', 'TKJ XI-3', 'Wik 3', 972, NULL, NULL),
(11806730, 'Muhamad Tio Arta Hidayat', 'L', 'TKJ XI-1', 'Cia 4', 973, NULL, NULL),
(11806732, 'Muhammad Adam Hamdani', 'L', 'MMD XI-1', 'Cis 1', 974, NULL, NULL),
(11806733, 'Muhammad Akbar Waliulu', 'L', 'TKJ XI-2', 'Cia 2', 975, NULL, NULL),
(11806734, 'Muhammad Akmal Bustomi', 'L', 'TKJ XI-4', 'Cis 6', 976, NULL, NULL),
(11806735, 'Muhammad Alfi Liendarto Wicaksono', 'L', 'HTL XI-1', 'Cia 4', 977, NULL, NULL),
(11806736, 'Muhammad Alghany Jagad Aryasatya', 'L', 'RPL XI-3', 'Cib 1', 978, NULL, NULL),
(11806737, 'Muhammad Alif Adrian Prasetyo', 'L', 'RPL XI-2', 'Cic 2', 979, NULL, NULL),
(11806738, 'Muhammad Bayu Fazri Firdaus', 'L', 'RPL XI-4', 'Taj 1', 980, NULL, NULL),
(11806739, 'Muhammad Bintang Adhitya Atthoriq', 'L', 'TKJ XI-2', 'Cic 1', 981, NULL, NULL),
(11806740, 'Muhammad Cahyayuana Irawan', 'L', 'MMD XI-2', 'Cis 1', 982, NULL, NULL),
(11806741, 'Muhammad Dzahra Yusallim', 'L', 'RPL XI-3', 'Cic 4', 983, NULL, NULL),
(11806742, 'Muhammad Fadlan Harahap', 'L', 'TKJ XI-3', 'Taj 2', 984, NULL, NULL),
(11806743, 'Muhammad Faizal Rizqi', 'L', 'RPL XI-1', 'Taj 1', 985, NULL, NULL),
(11806744, 'Muhammad Faizal Rojaq', 'L', 'RPL XI-3', 'Taj 4', 986, NULL, NULL),
(11806745, 'MUHAMMAD FAJAR SHODIQ', 'L', 'RPL XI-4', 'Cis 5', 987, NULL, NULL),
(11806746, 'Muhammad Fathurrohman', 'L', 'TKJ XI-3', 'Taj 1', 988, NULL, NULL),
(11806747, 'Muhamad Fauzi', 'L', 'TKJ XI-4', 'Cia 2', 989, NULL, NULL),
(11806748, 'Muhammad Febriyansyah', 'L', 'RPL XI-2', 'Cia 2', 990, NULL, NULL),
(11806749, 'Muhammad Fikri Adrian', 'L', 'TKJ XI-1', 'Cis 4', 991, NULL, NULL),
(11806750, 'Muhammad Habibi Ramadhan', 'L', 'RPL XI-4', 'Cia 1', 992, NULL, NULL),
(11806751, 'Muhammad Ibnan Rifa\'i', 'L', 'RPL XI-2', 'Cib 2', 993, NULL, NULL),
(11806752, 'Muhammad Indra Nuh Abdillah', 'L', 'TKJ XI-2', 'Cib 2', 994, NULL, NULL),
(11806753, 'Muhamad Irfan Maulana', 'L', 'TKJ XI-4', 'Taj 4', 995, NULL, NULL),
(11806754, 'MUHAMMAD IRFAN ZULKARNAIN', 'L', 'MMD XI-2', 'Wik 1', 1199, NULL, NULL),
(11806755, 'Muhamad Ivan Fadillah', 'L', 'TKJ XI-3', 'Cis 2', 996, NULL, NULL),
(11806756, 'Muhammad Naufal Munawwar', 'L', 'TKJ XI-1', 'Wik 3', 997, NULL, NULL),
(11806758, 'Muhammad Prima Fadhilah', 'L', 'MMD XI-2', 'Wik 4', 998, NULL, NULL),
(11806759, 'MUHAMMAD RAFA FAZLUR RAHMAN', 'L', 'RPL XI-4', 'Wik 4', 999, NULL, NULL),
(11806760, 'MUHAMAD RACHMAN HIDAYAT', 'L', 'TKJ XI-1', 'Cic 2', 1000, NULL, NULL),
(11806762, 'Muhammad Raihan', 'L', 'TKJ XI-2', 'Suk 1', 1001, NULL, NULL),
(11806763, 'Muhamad Raihan Pasha', 'L', 'TKJ XI-2', 'Cib 2', 1002, NULL, NULL),
(11806764, 'Muhammad Ramdhani', 'L', 'RPL XI-2', 'Cia 3', 1003, NULL, NULL),
(11806765, 'Muhammad Razan Arkan', 'L', 'TKJ XI-2', 'Taj 2', 1004, NULL, NULL),
(11806766, 'Muhammad Ridwan Pratama', 'L', 'RPL XI-3', 'Cic 2', 1005, NULL, NULL),
(11806768, 'Muhammad Rifki Kurniawan', 'L', 'TKJ XI-3', 'Cia 3', 1006, NULL, NULL),
(11806769, 'Muhammad Rivaldi Fahru Raihan', 'L', 'TKJ XI-1', 'Cia 4', 1007, NULL, NULL),
(11806770, 'Muhammad Rizki Fadillah', 'L', 'MMD XI-2', 'Cis 3', 1008, NULL, NULL),
(11806771, 'MUHAMMAD RIZKI FADLILLAH FAUZI', 'L', 'RPL XI-3', 'Cib 1', 1009, NULL, NULL),
(11806772, 'Muhammad Rizki Husaini', 'L', 'TBG XI-1', 'Cia 1', 1010, NULL, NULL),
(11806773, 'Muhamad Rizky', 'L', 'TKJ XI-2', 'Cic 4', 1011, NULL, NULL),
(11806775, 'Muhamad Sahri Ramadhan', 'L', 'TKJ XI-1', 'Cia 5', 1012, NULL, NULL),
(11806776, 'Muhammad Siyid Bangkit', 'L', 'RPL XI-2', 'Cic 5', 1013, NULL, NULL),
(11806777, 'Muhammad Virga Mulia', 'L', 'RPL XI-1', 'Cic 6', 1014, NULL, NULL),
(11806778, 'Muhyi Abdul Basith', 'L', 'RPL XI-1', 'Cia 2', 1015, NULL, NULL),
(11806779, 'Mutiara Rosminda Yanti', 'P', 'RPL XI-3', 'Cis 5', 1016, NULL, NULL),
(11806781, 'Nabila Nur Faiza', 'P', 'OTKP XI-2', 'Cib 2', 1017, NULL, NULL),
(11806782, 'Nabila Raegusitawati', 'P', 'TBG XI-1', 'Cia 1', 1018, NULL, NULL),
(11806783, 'Nabila Salma Marshanti', 'P', 'MMD XI-2', 'Wik 1', 1019, NULL, NULL),
(11806784, 'Nadila Indriyani Rangkuti', 'P', 'RPL XI-4', 'Wik 3', 1020, NULL, NULL),
(11806785, 'Nadila Putri Sania', 'P', 'OTKP XI-2', 'Cic 1', 1021, NULL, NULL),
(11806786, 'Nadira Azzahra', 'P', 'TBG XI-1', 'Cic 1', 1022, NULL, NULL),
(11806787, 'Nadya Octavina', 'P', 'BDP XI-1', 'Cic 5', 1023, NULL, NULL),
(11806788, 'Nanda Aditya Nugroho', 'L', 'TKJ XI-3', 'Wik 3', 1024, NULL, NULL),
(11806789, 'Nandi Ryandi Suhendi', 'L', 'RPL XI-4', 'Cic 5', 1025, NULL, NULL),
(11806790, 'Nashita Putri Rikamsani', 'P', 'MMD XI-2', 'Suk 1', 1026, NULL, NULL),
(11806791, 'Natia Puspita', 'P', 'BDP XI-2', 'Cis 4', 1027, NULL, NULL),
(11806792, 'NAUFAL HAMMAM AL MUBAROK', 'L', 'RPL XI-4', 'Wik 2', 1028, NULL, NULL),
(11806793, 'Nazla Nurhuda', 'P', 'OTKP XI-1', 'Cis 4', 1029, NULL, NULL),
(11806794, 'Nazman', 'L', 'RPL XI-1', 'Wik 1', 1030, NULL, NULL),
(11806795, 'Nazwa Nur Azizah Safitri', 'P', 'OTKP XI-2', 'Cia 4', 1031, NULL, NULL),
(11806796, 'Nazwa Salsabila', 'P', 'HTL XI-1', 'Cia 4', 1032, NULL, NULL),
(11806797, 'Nely Fikriyah', 'P', 'RPL XI-2', 'Cis 2', 1033, NULL, NULL),
(11806798, 'Neville Cornelius Tjampan', 'L', 'RPL XI-4', 'Wik 3', 1034, NULL, NULL),
(11806799, 'Nevin Benaya Putra Sihotang', 'L', 'MMD XI-1', 'Cic 4', 1035, NULL, NULL),
(11806801, 'Nisrina Kamiliya', 'P', 'BDP XI-1', 'Cis 3', 1036, NULL, NULL),
(11806802, 'NOER FAIZIR ROHMAN', 'L', 'RPL XI-3', 'Wik 4', 1037, NULL, NULL),
(11806803, 'NOVI AULIA KHOLIFAH', 'L', 'TBG XI-1', 'Cic 4', 1200, NULL, NULL),
(11806804, 'Novianti Mutiara Ramadhan', 'P', 'BDP XI-1', 'Cia 1', 1038, NULL, NULL),
(11806805, 'Novri Tyas Widyanti', 'P', 'BDP XI-2', 'Cic 6', 1039, NULL, NULL),
(11806806, 'Nur As-syifa Destiani', 'P', 'TBG XI-1', 'Taj 1', 1040, NULL, NULL),
(11806807, 'Nur Fazri Tsakila', 'P', 'OTKP XI-1', 'Cic 2', 1041, NULL, NULL),
(11806808, 'Nur Qasna Habibah', 'P', 'OTKP XI-2', 'Taj 4', 1042, NULL, NULL),
(11806809, 'Nurhalizah Lubis', 'P', 'HTL XI-1', 'Cia 5', 1043, NULL, NULL),
(11806810, 'Nurul Alifia', 'P', 'OTKP XI-1', 'Cis 2', 1044, NULL, NULL),
(11806811, 'Nurul Lovita Sari', 'P', 'MMD XI-2', 'Cis 2', 1045, NULL, NULL),
(11806812, 'Nurul Rizkiani Zahra', 'P', 'OTKP XI-2', 'Cic 2', 1046, NULL, NULL),
(11806814, 'PAHRIZAL', 'L', 'RPL XI-2', 'Taj 4', 1047, NULL, NULL),
(11806815, 'Pajirul Rijik', 'L', 'HTL XI-1', 'Cib 1', 1048, NULL, NULL),
(11806816, 'Peni Rahmawati', 'P', 'BDP XI-1', 'Cic 5', 1049, NULL, NULL),
(11806817, 'Pranowo Subakti', 'L', 'TKJ XI-4', 'Cic 1', 1050, NULL, NULL),
(11806818, 'Priscilia Intan Maharani', 'P', 'HTL XI-1', 'Cia 1', 1051, NULL, NULL),
(11806820, 'Putri Aprilia Agustin', 'P', 'BDP XI-2', 'Cic 5', 1052, NULL, NULL),
(11806821, 'Putri Nadia', 'P', 'OTKP XI-1', 'Cis 5', 1053, NULL, NULL),
(11806822, 'Putri Regina Kurniawan', 'P', 'MMD XI-1', 'Cic 2', 1054, NULL, NULL),
(11806823, 'Putri Sanita', 'P', 'BDP XI-1', 'Cis 2', 1055, NULL, NULL),
(11806824, 'Putri Septiani Wulandari', 'P', 'OTKP XI-2', 'Cib 1', 1056, NULL, NULL),
(11806825, 'Qurrota \'ayun Assyifatuz Zahro', 'P', 'MMD XI-2', 'Taj 1', 1057, NULL, NULL),
(11806826, 'R. Adhalfiansyah Suwandi', 'L', 'RPL XI-2', 'Wik 4', 1058, NULL, NULL),
(11806827, 'Rachelia Angelica', 'P', 'OTKP XI-2', 'Cia 3', 1059, NULL, NULL),
(11806828, 'Raden Ajeng Siti Oktorina', 'P', 'OTKP XI-1', 'Cia 5', 1060, NULL, NULL),
(11806829, 'Radian Rama Gumilang', 'L', 'RPL XI-1', 'Taj 1', 1061, NULL, NULL),
(11806830, 'Rafli Alfajri', 'L', 'HTL XI-1', 'Cic 2', 1062, NULL, NULL),
(11806831, 'Rafly Firmansyah', 'L', 'RPL XI-4', 'Cib 1', 1063, NULL, NULL),
(11806832, 'Rahayu Chaeruniesa', 'P', 'RPL XI-3', 'Taj 1', 1064, NULL, NULL),
(11806834, 'Rahma Yuna Astari', 'P', 'BDP XI-2', 'Cic 5', 1065, NULL, NULL),
(11806835, 'Rahman Hidayatuloh', 'L', 'TKJ XI-3', 'Cis 2', 1066, NULL, NULL),
(11806836, 'RAISA KANAYA MULYADI', 'P', 'MMD XI-2', 'Wik 1', 1067, NULL, NULL),
(11806837, 'Raisya Fadhina Balqis', 'P', 'MMD XI-1', 'Cic 4', 1068, NULL, NULL),
(11806838, 'Ramdhani Ardya Kurniawan', 'L', 'RPL XI-4', 'Cia 4', 1069, NULL, NULL),
(11806839, 'Rani Putri Kaerani', 'P', 'HTL XI-1', 'Suk 2', 1070, NULL, NULL),
(11806840, 'Ranti Nur Octaviani', 'P', 'BDP XI-2', 'Taj 2', 1071, NULL, NULL),
(11806841, 'Razdhan Hadi Ilyasa', 'L', 'TKJ XI-3', 'Taj 4', 1072, NULL, NULL),
(11806842, 'Rausan Fikri', 'L', 'RPL XI-4', 'Suk 2', 1073, NULL, NULL),
(11806843, 'RAVLY ANUGERAH MAHESA', 'L', 'TKJ XI-1', 'Wik 1', 1201, NULL, NULL),
(11806844, 'Rayi Deedat Ramadhan', 'L', 'RPL XI-4', 'Taj 1', 1074, NULL, NULL),
(11806845, 'Resta Minanda Putri', 'P', 'OTKP XI-1', 'Cis 5', 1075, NULL, NULL),
(11806846, 'Resti Nardiyanti', 'P', 'OTKP XI-2', 'Cia 4', 1076, NULL, NULL),
(11806847, 'Restuaji Eliansyah', 'L', 'RPL XI-1', 'Cic 1', 1077, NULL, NULL),
(11806848, 'Rheinada Herdianawati', 'P', 'BDP XI-2', 'Cib 2', 1078, NULL, NULL),
(11806849, 'Riandy Fauzi', 'L', 'RPL XI-2', 'Cic 3', 1079, NULL, NULL),
(11806850, 'RICKY ALFANDY RACHMAN', 'L', 'TBG XI-1', 'Cia 4', 1080, NULL, NULL),
(11806851, 'Riffa Raihan Azhari', 'L', 'TKJ XI-3', 'Cib 1', 1081, NULL, NULL),
(11806852, 'Rio Rahmadani', 'L', 'TKJ XI-2', 'Cis 6', 1082, NULL, NULL),
(11806853, 'Ririn Nurmalasari', 'P', 'OTKP XI-2', 'Cia 4', 1083, NULL, NULL),
(11806854, 'Risala Nikamturrahman', 'P', 'RPL XI-3', 'Cic 3', 1084, NULL, NULL),
(11806855, 'Riska Mawardi', 'P', 'RPL XI-2', 'Cic 4', 1085, NULL, NULL),
(11806856, 'RIVAL ASRI SUWANDI', 'L', 'TKJ XI-2', 'Cic 7', 1086, NULL, NULL),
(11806857, 'Rivan Hermawan', 'L', 'TKJ XI-3', 'Cib 3', 1087, NULL, NULL),
(11806858, 'Rizal Ihwan Sulaiman', 'L', 'RPL XI-3', 'Cic 3', 1088, NULL, NULL),
(11806859, 'Rizka Aulia Pramudhita Putri', 'P', 'MMD XI-2', 'Suk 1', 1089, NULL, NULL),
(11806860, 'Rizki Firmansyah', 'L', 'RPL XI-2', 'Taj 2', 1090, NULL, NULL),
(11806861, 'RIZKIANSYAH ALFIN', 'L', 'RPL XI-4', 'Cic 1', 1091, NULL, NULL),
(11806862, 'ROBI ARDIANSYAH', 'L', 'BDP XI-2', 'Cic 2', 1092, NULL, NULL),
(11806863, 'Roihan Ihsan Farasy', 'L', 'HTL XI-1', 'Suk 2', 1093, NULL, NULL),
(11806864, 'Roihan Khoirullah', 'L', 'RPL XI-3', 'Wik 3', 1094, NULL, NULL),
(11806865, 'Ronald Sianipar', 'L', 'RPL XI-3', 'Cic 6', 1095, NULL, NULL),
(11806866, 'Sabila Az Zahra', 'P', 'MMD XI-1', 'Cib 3', 1096, NULL, NULL),
(11806867, 'Sabrina Nadia Nirwani', 'P', 'TBG XI-1', 'Taj 2', 1097, NULL, NULL),
(11806868, 'Saddam Aziz Irfana', 'L', 'RPL XI-3', 'Cib 3', 1098, NULL, NULL),
(11806869, 'SADDAM GENTA RAMADHAN', 'L', 'MMD XI-2', 'Wik 1', 1099, NULL, NULL),
(11806870, 'Safitri Pangesti Dewi', 'P', 'TBG XI-1', 'Taj 1', 1100, NULL, NULL),
(11806871, 'Sahilah Husnah', 'P', 'BDP XI-1', 'Cib 2', 1101, NULL, NULL),
(11806872, 'Sahrul Saputra Hidayatulloh', 'L', 'TKJ XI-1', 'Cic 1', 1102, NULL, NULL),
(11806873, 'Sakinah Nursalimah', 'P', 'MMD XI-1', 'Cic 2', 1103, NULL, NULL),
(11806874, 'Salma Dilla Putri Julia', 'P', 'HTL XI-1', 'Taj 5', 1104, NULL, NULL),
(11806875, 'Salma Nur Anisa', 'P', 'BDP XI-2', 'Cis 2', 1105, NULL, NULL),
(11806876, 'Salma Vita Rianti', 'P', 'OTKP XI-1', 'Cia 3', 1106, NULL, NULL),
(11806877, 'Santika Putri Nursela', 'P', 'OTKP XI-1', 'Cic 4', 1107, NULL, NULL),
(11806878, 'Sarita Miftahul Janah', 'P', 'OTKP XI-1', 'Cic 4', 1108, NULL, NULL),
(11806879, 'Sasi Kirana R.', 'P', 'BDP XI-2', 'Cis 2', 1109, NULL, NULL),
(11806880, 'Sekar Aulia Putri', 'P', 'BDP XI-2', 'Wik 3', 1110, NULL, NULL),
(11806881, 'Sekar Aulia Zahara', 'P', 'MMD XI-1', 'Cic 4', 1111, NULL, NULL),
(11806882, 'Sekar Ayu Silihwangi', 'P', 'MMD XI-2', 'Suk 1', 1112, NULL, NULL),
(11806883, 'Sevi Risandi', 'L', 'TKJ XI-1', 'Cic 1', 1113, NULL, NULL),
(11806884, 'SHAKILA SALVA ZAHRANI', 'P', 'BDP XI-1', 'Suk 2', 1202, NULL, NULL),
(11806885, 'Sheila Putri Javana', 'P', 'RPL XI-3', 'Cib 1', 1114, NULL, NULL),
(11806886, 'SILVA SAKILA', 'L', 'BDP XI-2', 'Cic 2', 1203, NULL, NULL),
(11806887, 'Silvia Nur Aryani', 'P', 'OTKP XI-2', 'Cis 5', 1115, NULL, NULL),
(11806888, 'Sinta Agnesia', 'P', 'MMD XI-1', 'Cic 4', 1116, NULL, NULL),
(11806889, 'Sinta Permata Sari', 'P', 'RPL XI-2', 'Taj 4', 1117, NULL, NULL),
(11806890, 'Siti Adisya Fatimah', 'P', 'BDP XI-1', 'Cia 2', 1118, NULL, NULL),
(11806891, 'Siti Anisa', 'P', 'OTKP XI-1', 'Cia 4', 1119, NULL, NULL),
(11806892, 'Siti Aulia', 'P', 'TBG XI-1', 'Taj 2', 1120, NULL, NULL),
(11806893, 'SITI AULIYA RAMADANTI', 'L', 'BDP XI-1', 'Cic 1', 1204, NULL, NULL),
(11806894, 'Siti Azzahra', 'P', 'MMD XI-1', 'Cib 3', 1121, NULL, NULL),
(11806895, 'Siti Balqis Khaerani', 'P', 'BDP XI-1', 'Taj 1', 1122, NULL, NULL),
(11806896, 'Siti Fatimah Al-Zahra', 'P', 'OTKP XI-1', 'Cic 5', 1123, NULL, NULL),
(11806897, 'Siti Hamidah', 'P', 'RPL XI-2', 'Cib 2', 1124, NULL, NULL),
(11806898, 'Siti Hanipah', 'P', 'HTL XI-1', 'Cis 2', 1125, NULL, NULL),
(11806899, 'Siti Horiyah', 'P', 'MMD XI-2', 'Taj 3', 1126, NULL, NULL),
(11806900, 'Siti Kholipah', 'P', 'HTL XI-1', 'Taj 4', 1127, NULL, NULL),
(11806901, 'SITI LAPITA', 'P', 'BDP XI-2', 'Wik 1', 1128, NULL, NULL),
(11806902, 'Siti Maliani Hidayah', 'P', 'OTKP XI-2', 'Cia 1', 1129, NULL, NULL),
(11806903, 'Siti Mariyam', 'P', 'HTL XI-1', 'Cia 5', 1130, NULL, NULL),
(11806904, 'Siti Nafiza Andriany', 'P', 'OTKP XI-2', 'Cis 5', 1131, NULL, NULL),
(11806905, 'SITI NUR AVIVAH', 'P', 'TBG XI-1', 'Cis 2', 1132, NULL, NULL),
(11806906, 'Siti Nur Amalia Putri', 'P', 'HTL XI-1', 'Cic 1', 1133, NULL, NULL),
(11806907, 'Siti Nur Ameliah', 'P', 'OTKP XI-1', 'Cib 3', 1134, NULL, NULL),
(11806908, 'Siti Nur Evriyani', 'P', 'MMD XI-2', 'Suk 1', 1135, NULL, NULL),
(11806909, 'Siti Rahmawati', 'P', 'BDP XI-1', 'Taj 3', 1136, NULL, NULL),
(11806910, 'Siti Rosanti', 'P', 'HTL XI-1', 'Cib 2', 1137, NULL, NULL),
(11806911, 'Siti Sarah Ramadhani', 'P', 'BDP XI-1', 'Cis 1', 1138, NULL, NULL),
(11806912, 'Siti Silviani', 'P', 'OTKP XI-1', 'Cis 4', 1139, NULL, NULL),
(11806913, 'Sonia Amelia', 'P', 'HTL XI-1', 'Taj 3', 1140, NULL, NULL),
(11806914, 'Sri Rosyida', 'P', 'OTKP XI-1', 'Cis 3', 1141, NULL, NULL),
(11806915, 'Steven Mochammad Aljabar', 'L', 'MMD XI-1', 'Cic 3', 1142, NULL, NULL),
(11806916, 'Suci Aliza Fitri', 'P', 'OTKP XI-2', 'Taj 4', 1143, NULL, NULL),
(11806917, 'Sugiat Bagja', 'L', 'TKJ XI-2', 'Taj 2', 1144, NULL, NULL),
(11806918, 'Suhartono', 'L', 'RPL XI-2', 'Cib 1', 1145, NULL, NULL),
(11806919, 'Suharyanto', 'L', 'RPL XI-1', 'Cis 5', 1146, NULL, NULL),
(11806920, 'Suryo Slamet Mujahid Musyaffa', 'L', 'RPL X-2', 'WIK 2', 100, NULL, NULL),
(11806921, 'SUTAN IHSAN', 'L', 'TKJ XI-4', 'Taj 4', 1205, NULL, NULL),
(11806922, 'Sutilah Handayani', 'P', 'OTKP XI-2', 'Taj 1', 1147, NULL, NULL),
(11806923, 'Syahal Tastari', 'L', 'RPL XI-1', 'Cis 4', 1148, NULL, NULL),
(11806924, 'Syahla Salsabila Triyono Putri', 'P', 'MMD XI-2', 'Taj 1', 1149, NULL, NULL),
(11806925, 'Syahrul Ramadhan', 'L', 'TKJ XI-4', 'Cic 1', 1150, NULL, NULL),
(11806926, 'Syahrul Ramdani', 'L', 'TKJ XI-2', 'Cia 3', 1151, NULL, NULL),
(11806927, 'Syaifa Meisyabilla', 'P', 'OTKP XI-1', 'Cis 1', 1152, NULL, NULL),
(11806929, 'Syifa Nindi Alisa', 'P', 'OTKP XI-2', 'Taj 4', 1153, NULL, NULL),
(11806930, 'Tazilah Malilah', 'L', 'TKJ XI-1', 'Cis 1', 1154, NULL, NULL),
(11806931, 'Tegar Tri Permana', 'L', 'HTL XI-1', 'Cib 2', 1155, NULL, NULL),
(11806932, 'Tiara Septiani', 'P', 'OTKP XI-1', 'Suk 2', 1156, NULL, NULL),
(11806933, 'Tireya Claresta Na Yusuf', 'P', 'OTKP XI-1', 'Cic 6', 1157, NULL, NULL),
(11806934, 'Tjandra Darmo', 'L', 'RPL XI-3', 'Wik 1', 1158, NULL, NULL),
(11806935, 'Toti Laskin', 'L', 'BDP XI-1', 'Cic 3', 1159, NULL, NULL),
(11806936, 'Tri Suci Khairunissa', 'P', 'OTKP XI-2', 'Cis 3', 1160, NULL, NULL),
(11806937, 'Tyan Ananda Bayu', 'L', 'RPL XI-4', 'Taj 4', 1161, NULL, NULL),
(11806938, 'Tyara Efrillia Insani', 'P', 'OTKP XI-2', 'Cic 7', 1162, NULL, NULL),
(11806940, 'Utari Pisqi Wahyudi', 'P', 'OTKP XI-1', 'Cic 4', 1163, NULL, NULL),
(11806941, 'Valentina Witari', 'P', 'OTKP XI-1', 'Cia 2', 1164, NULL, NULL),
(11806942, 'Verdiana Putri Anugerah', 'P', 'MMD XI-1', 'Cic 2', 1165, NULL, NULL),
(11806943, 'Vini Puspitasari', 'P', 'TBG XI-1', 'Cic 3', 1166, NULL, NULL),
(11806944, 'Viola Intan Rachely', 'P', 'OTKP XI-2', 'Wik 2', 1167, NULL, NULL),
(11806945, 'Wian Pratama', 'L', 'TKJ XI-4', 'Cis 6', 1168, NULL, NULL),
(11806946, 'WIANDA SALNABILA ROSSAN', 'P', 'TBG XI-1', 'Cic 5', 1169, NULL, NULL),
(11806947, 'Wildhan Erzaputra Sanjaya', 'L', 'MMD XI-2', 'Suk 2', 1170, NULL, NULL),
(11806948, 'Wildan Haknurhapiz', 'L', 'MMD XI-1', 'Cia 2', 1171, NULL, NULL),
(11806949, 'Willy Hanseun', 'L', 'TKJ XI-3', 'Cic 1', 1172, NULL, NULL),
(11806950, 'Wishal Rafi Agung', 'P', 'MMD XI-2', 'Taj 2', 1173, NULL, NULL),
(11806951, 'Wiwit Thoyyibah', 'P', 'RPL XI-4', 'Cic 2', 1174, NULL, NULL),
(11806952, 'Yani Salsabila', 'P', 'OTKP XI-2', 'Taj 2', 1175, NULL, NULL),
(11806953, 'Yanji Saprudin Pohan', 'L', 'TKJ XI-4', 'Cis 1', 1176, NULL, NULL),
(11806954, 'Yarra Raja Seraf', 'L', 'RPL XI-4', 'Cia 2', 1177, NULL, NULL),
(11806955, 'Yoga Ardia Fadillah', 'L', 'TKJ XI-2', 'Cia 1', 1178, NULL, NULL),
(11806957, 'Yogi Setya Wardana', 'L', 'TKJ XI-4', 'Cis 5', 1179, NULL, NULL),
(11806958, 'Yuniar Shavitri', 'P', 'BDP XI-1', 'Suk 2', 1180, NULL, NULL),
(11806959, 'Yunita Asiyah', 'P', 'BDP XI-2', 'Cia 2', 1181, NULL, NULL),
(11806960, 'Yusti Sopiana Halizahra', 'P', 'OTKP XI-1', 'Suk 2', 1182, NULL, NULL),
(11806961, 'Yusup Supriyadi', 'L', 'RPL XI-1', 'Cic 4', 724, NULL, NULL),
(11806962, 'ZAHRAN RAKKAN KHOMAINI', 'L', 'MMD XI-2', 'Wik 4', 1183, NULL, NULL),
(11806963, 'Zalfa Shakila Iskandar', 'P', 'BDP XI-2', 'Taj 2', 1184, NULL, NULL),
(11806966, 'Zulfa Adilah', 'P', 'MMD XI-2', 'Taj 1', 1185, NULL, NULL),
(11806967, 'Zulkyfli Adnan', 'L', 'TBG XI-1', 'Cis 5', 1186, NULL, NULL),
(11806968, 'Salsabila Juliana Iskandar', 'P', 'OTKP XI-2', 'Taj 1', 1187, NULL, NULL),
(11806969, 'Rani Nur Azizah', 'P', 'HTL XI-1', 'Taj 3', 1188, NULL, NULL),
(11906970, 'Abdul Bastian', 'L', 'BDP X-1', 'CIC 3', 101, NULL, NULL),
(11906971, 'Abdul Muhsin', 'L', 'BDP X-1', 'CIA 3', 102, NULL, NULL),
(11906972, 'Abdullah Erfan Rahmadi', 'L', 'BDP X-2', 'CIC 6', 103, NULL, NULL),
(11906973, 'Abdurahman Algifari', 'L', 'HTL X-2', 'CIA 2', 104, NULL, NULL),
(11906974, 'Achmad Ristiansyah', 'L', 'RPL X-4', 'CIS 2', 105, NULL, NULL),
(11906975, 'Achmad Riyadh Semit', 'L', 'MMD X-1', 'CIA 3', 106, NULL, NULL),
(11906976, 'Adam Maulana', 'L', 'BDP X-2', 'SUK 1', 107, NULL, NULL),
(11906977, 'Ade Ilham', 'L', 'RPL X-1', 'CIA 4', 108, NULL, NULL),
(11906978, 'Adietya Yazid Alfikri', 'L', 'TKJ X-1', 'CIC 5', 109, NULL, NULL),
(11906979, 'Adilah Rachmania Putri', 'P', 'TBG X-1', 'CIC 3', 110, NULL, NULL),
(11906980, 'Adinda Rahayu Utami', 'P', 'HTL X-1', 'CIC 5', 111, NULL, NULL),
(11906982, 'Aditia Nurhakim', 'L', 'TBG X-1', 'CIA 3', 112, NULL, NULL),
(11906983, 'Aditya Kelvin', 'L', 'BDP X-1', 'WIK 4', 113, NULL, NULL),
(11906984, 'Aditya Pramuji', 'L', 'RPL X-2', 'WIK 2', 114, NULL, NULL),
(11906985, 'Adityandri Amadan Listanto', 'L', 'BDP X-2', 'CIA 4', 115, NULL, NULL),
(11906986, 'Adrian Maulidy Perdana', 'L', 'MMD X-2', 'CIS 4', 116, NULL, NULL),
(11906987, 'Afa Fathin Al-Aziz', 'L', 'RPL X-1', 'CIC 3', 117, NULL, NULL),
(11906988, 'Afifah Ramdhania Rahman', 'P', 'BDP X-1', 'TAJ 5', 118, NULL, NULL),
(11906989, 'Afipo Wildan Islam', 'L', 'TKJ X-2', 'TAJ 5', 119, NULL, NULL),
(11906990, 'Aghisna Aulia Nursyifa', 'P', 'BDP X-2', 'TAJ 2', 120, NULL, NULL),
(11906991, 'Agisna Ramadita Akbari', 'P', 'OTKP X-2', 'TAJ 4', 121, NULL, NULL),
(11906992, 'Ahmad Abdul Hafidz', 'L', 'TKJ X-2', 'CIS 6', 122, NULL, NULL),
(11906993, 'Ahmad Fatoni Hikayatullah', 'L', 'TKJ X-2', 'CIS 4', 123, NULL, NULL),
(11906994, 'Ahmad Ikhsan Maulana', 'L', 'RPL X-1', 'CIC 7', 124, NULL, NULL),
(11906995, 'Ahmad Nailulmarom', 'L', 'RPL X-4', 'TAJ 5', 125, NULL, NULL),
(11906996, 'Ahmad Zaky Fadilah', 'L', 'TKJ X-1', 'CIB 2', 126, NULL, NULL),
(11906997, 'Aisha Pangesti Wibowo', 'P', 'BDP X-1', 'WIK 1', 127, NULL, NULL),
(11906998, 'Aisya Ega Amelia Riski', 'P', 'MMD X-1', 'CIA 4', 128, NULL, NULL),
(11906999, 'Aisya Nazwa Aptiandari', 'P', 'OTKP X-1', 'CIC 2', 129, NULL, NULL),
(11907000, 'Aisyah Humairoh Salsabila', 'P', 'RPL X-3', 'WIK 2', 130, NULL, NULL),
(11907001, 'Ahmad Sukron', 'L', 'RPL X-1', 'CIS 5', 131, NULL, NULL),
(11907002, 'Akila Zahra Febriyanti', 'P', 'MMD X-2', 'CIC 4', 132, NULL, NULL),
(11907003, 'Akmal Munawir Napasadana Rangkuti', 'L', 'BDP X-2', 'TAJ 2', 133, NULL, NULL),
(11907004, 'Aldi Alamsyah', 'L', 'TKJ X-4', 'TAJ 2', 134, NULL, NULL),
(11907005, 'Alessandro Albany Syariff', 'L', 'RPL X-4', 'CIB 1', 135, NULL, NULL),
(11907006, 'Alfandi Ahmad', 'L', 'TKJ X-1', 'CIC 7', 136, NULL, NULL),
(11907007, 'Alfi Ilham', 'L', 'RPL X-1', 'WIK 4', 137, NULL, NULL),
(11907008, 'Alfin Wirarajasa', 'L', 'RPL X-3', 'WIK 3', 138, NULL, NULL),
(11907009, 'Ali Haikal Syahfarizi', 'L', 'BDP X-2', 'CIS 4', 139, NULL, NULL),
(11907010, 'Alia Siti Rahmah', 'P', 'OTKP X-2', 'CIC 7', 140, NULL, NULL),
(11907011, 'Alifia Kireina Kosasih', 'P', 'MMD X-1', 'CIS 3', 141, NULL, NULL),
(11907012, 'Aljibra Fisabilillah Adam', 'L', 'MMD X-2', 'CIC 3', 142, NULL, NULL),
(11907013, 'Almadinna Khaleshalla Senangia', 'P', 'HTL X-2', 'CIC 3', 143, NULL, NULL),
(11907014, 'Alpan Ramdanis Akbar', 'L', 'HTL X-2', 'CIS 2', 144, NULL, NULL),
(11907015, 'Alpin Ramdanis Akbar', 'L', 'RPL X-4', 'CIS 2', 145, NULL, NULL),
(11907016, 'Alvianti Azkia', 'P', 'OTKP X-2', 'CIS 4', 146, NULL, NULL),
(11907017, 'Alya Fatharani', 'P', 'MMD X-1', 'CIA 1', 147, NULL, NULL),
(11907018, 'Alya Naradita Junaedi', 'P', 'RPL X-1', 'CIC 6', 148, NULL, NULL),
(11907019, 'Alya Sabrina Putri', 'P', 'TBG X-1', 'TAJ 4', 149, NULL, NULL),
(11907020, 'Alya Sandrina', 'P', 'BDP X-1', 'CIA 5', 150, NULL, NULL),
(11907021, 'Amanda Agustin', 'P', 'RPL X-2', 'CIC 4', 151, NULL, NULL),
(11907022, 'Amanda Putri Alivia', 'P', 'BDP X-1', 'TAJ 2', 152, NULL, NULL),
(11907023, 'Amara Septiani', 'P', 'OTKP X-1', 'WIK 1', 153, NULL, NULL),
(11907024, 'Amelia Maya Sari', 'P', 'BDP X-2', 'TAJ 4', 154, NULL, NULL),
(11907025, 'Amelia Putri Septiawan', 'P', 'BDP X-1', 'CIA 5', 155, NULL, NULL),
(11907026, 'Ananda Firly Hako', 'L', 'RPL X-3', 'WIK 1', 156, NULL, NULL),
(11907027, 'Ananda Rahayu Utami', 'P', 'MMD X-2', 'CIC 5', 157, NULL, NULL),
(11907028, 'Ananda Ratu Syahla', 'P', 'MMD X-1', 'TAJ 3', 158, NULL, NULL),
(11907029, 'Andika Apriana', 'L', 'RPL X-2', 'TAJ 1', 159, NULL, NULL),
(11907030, 'Andika Wicaksono', 'L', 'MMD X-2', 'CIC 4', 160, NULL, NULL),
(11907032, 'Andrew Ksatria', 'L', 'BDP X-2', 'CIA 4', 161, NULL, NULL),
(11907033, 'Angga Hardianto', 'L', 'TKJ X-1', 'WIK 1', 162, NULL, NULL),
(11907034, 'Anida Ashri', 'P', 'HTL X-2', 'CIB 2', 163, NULL, NULL),
(11907035, 'Anindita Putri Nandini', 'P', 'MMD X-1', 'SUK 2', 164, NULL, NULL),
(11907036, 'Anisa Dira Juliana', 'P', 'HTL X-1', 'CIC 3', 165, NULL, NULL),
(11907037, 'Anisa Dwi Lestari', 'P', 'HTL X-1', 'CIS 4', 166, NULL, NULL),
(11907038, 'Anjeli Syafa Aurandini', 'P', 'HTL X-1', 'CIC 6', 167, NULL, NULL),
(11907039, 'Annisa Dwi Rahmadani', 'P', 'MMD X-2', 'CIC 5', 168, NULL, NULL),
(11907040, 'Annisa Kamilani', 'P', 'OTKP X-2', 'WIK 2', 169, NULL, NULL),
(11907041, 'Anastasya Rakasiwi Nugroho', 'P', 'MMD X-2', 'CIC 6', 170, NULL, NULL),
(11907042, 'Aprilia Tri Wulandari', 'P', 'RPL X-1', 'CIS 5', 171, NULL, NULL),
(11907043, 'Arba Maulidina', 'P', 'RPL X-3', 'TAJ 4', 172, NULL, NULL),
(11907044, 'Arianti', 'P', 'TBG X-2', 'SUK 2', 173, NULL, NULL),
(11907045, 'Arini Iradatusyifa', 'P', 'BDP X-1', 'CIA 4', 174, NULL, NULL),
(11907046, 'Arsilah Sebrina', 'P', 'OTKP X-1', 'CIA 3', 175, NULL, NULL),
(11907047, 'Artagracia Claudia Andriana', 'P', 'RPL X-3', 'WIK 3', 176, NULL, NULL),
(11907048, 'Artefia Putri', 'P', 'BDP X-2', 'SUK 1', 177, NULL, NULL),
(11907049, 'Arul Akbar Shahwan', 'L', 'TKJ X-1', 'TAJ 5', 178, NULL, NULL),
(11907050, 'Arvi Raka Muhamad Fatih', 'L', 'TKJ X-4', 'WIK 2', 179, NULL, NULL),
(11907051, 'Arvin Edrian', 'L', 'TKJ X-1', 'TAJ 4', 180, NULL, NULL),
(11907052, 'Arya Anil Hakim', 'L', 'TKJ X-3', 'TAJ 4', 181, NULL, NULL),
(11907053, 'Asep Muhamad Rizki', 'L', 'MMD X-1', 'CIA 4', 182, NULL, NULL),
(11907054, 'Asti Nuraliya', 'P', 'MMD X-1', 'CIS 3', 183, NULL, NULL),
(11907055, 'Asya Meira Maharani Putri', 'P', 'RPL X-2', 'TAJ 1', 184, NULL, NULL),
(11907056, 'Attar Rangga Hardiansyah', 'L', 'RPL X-4', 'TAJ 1', 185, NULL, NULL),
(11907057, 'Atqiya Salsabila', 'P', 'TBG X-2', 'CIS 1', 186, NULL, NULL),
(11907058, 'Aulia Alamanda', 'P', 'OTKP X-1', 'CIS 4', 187, NULL, NULL),
(11907059, 'Aulia Rahmah Efendi', 'P', 'HTL X-1', 'CIC 1', 188, NULL, NULL),
(11907060, 'Aura Chika Ramadhany', 'P', 'TBG X-1', 'CIS 2', 189, NULL, NULL),
(11907061, 'Aurandi Salsabila', 'P', 'BDP X-1', 'CIA 4', 190, NULL, NULL),
(11907062, 'Awan Ara Budiman', 'L', 'RPL X-1', 'CIB 3', 191, NULL, NULL),
(11907063, 'Ayi Maulana', 'L', 'MMD X-2', 'CIB 3', 192, NULL, NULL),
(11907064, 'Ayu Ratna Setia Nengsih', 'P', 'OTKP X-1', 'CIS 2', 193, NULL, NULL),
(11907065, 'Azriel Fauzi Hermansyah', 'L', 'RPL X-1', 'CIC 4', 194, NULL, NULL),
(11907066, 'Azriel Budiman', 'L', 'BDP X-1', 'CIB 1', 195, NULL, NULL),
(11907067, 'Azril Rizki Saputra', 'L', 'RPL X-3', 'CIS 5', 196, NULL, NULL),
(11907068, 'Bagas Ahmad Saputra', 'L', 'HTL X-1', 'TAJ 1', 197, NULL, NULL),
(11907069, 'Bima Saputra Sutisna', 'L', 'TBG X-1', 'CIS 3', 198, NULL, NULL),
(11907070, 'Bintang Azlina Putri', 'P', 'OTKP X-2', 'CIA 1', 199, NULL, NULL),
(11907071, 'Brian Eka Saputra', 'L', 'TKJ X-2', 'CIC 5', 200, NULL, NULL),
(11907072, 'Bunga Oktiva Ramadani', 'P', 'RPL X-4', 'CIC 4', 201, NULL, NULL),
(11907073, 'Cahya Putra', 'L', 'TKJ X-2', 'CIC 3', 202, NULL, NULL),
(11907074, 'Cahya Putri', 'P', 'BDP X-1', 'CIS 5', 203, NULL, NULL),
(11907075, 'Cantika Numadewi', 'P', 'BDP X-2', 'CIC 3', 204, NULL, NULL),
(11907076, 'Charisa Aulia Putri', 'P', 'TBG X-1', 'WIK 1', 205, NULL, NULL),
(11907077, 'Christoper Maximus Sairun', 'L', 'HTL X-1', 'CIS 4', 206, NULL, NULL),
(11907078, 'Cindy Aulia Cahyani', 'P', 'HTL X-1', 'CIC 3', 207, NULL, NULL),
(11907079, 'Cindycasari Amir Septianie', 'P', 'OTKP X-1', 'CIS 2', 208, NULL, NULL),
(11907080, 'Daffa Raditya Saputra', 'L', 'TKJ X-1', 'CIC 1', 209, NULL, NULL),
(11907081, 'Dalilah Fauziah', 'P', 'HTL X-1', 'WIK 1', 210, NULL, NULL),
(11907082, 'Damar Ruswan Ramadhan', 'L', 'TKJ X-3', 'TAJ 1', 211, NULL, NULL),
(11907083, 'David Dwijanarko', 'L', 'TKJ X-1', 'CIC 5', 212, NULL, NULL),
(11907084, 'David Satya Wibisono', 'L', 'RPL X-2', 'CIC 7', 213, NULL, NULL),
(11907085, 'Defani Cherylia Hamzani', 'P', 'TBG X-1', 'CIS 4', 214, NULL, NULL),
(11907086, 'Dela Saputri', 'P', 'BDP X-1', 'CIA 1', 215, NULL, NULL),
(11907087, 'Delta Tassakilah', 'P', 'OTKP X-1', 'CIS 4', 216, NULL, NULL),
(11907088, 'Denia Novebri', 'P', 'BDP X-1', 'CIS 2', 217, NULL, NULL),
(11907089, 'Dennis Muhammad Rifky Hidayat', 'L', 'RPL X-3', 'CIC 3', 218, NULL, NULL),
(11907090, 'Desfitriani Amelia Putri', 'P', 'HTL X-2', 'CIC 1', 219, NULL, NULL),
(11907091, 'Destiara Safrial Putri', 'P', 'BDP X-2', 'CIS 1', 220, NULL, NULL),
(11907092, 'Desy Fajriani', 'P', 'RPL X-2', 'CIB 1', 221, NULL, NULL),
(11907093, 'Devi Ferania', 'P', 'OTKP X-2', 'CIS 2', 222, NULL, NULL),
(11907094, 'Devina Putri Ramdani', 'P', 'MMD X-2', 'CIC 7', 223, NULL, NULL),
(11907095, 'Devina Salsabila', 'P', 'HTL X-2', 'CIB 1', 224, NULL, NULL),
(11907096, 'Devita Hasnasya Rahma', 'P', 'RPL X-2', 'CIA 1', 225, NULL, NULL),
(11907097, 'Devni Kusniawati', 'P', 'RPL X-1', 'CIC 5', 226, NULL, NULL),
(11907098, 'Dewi Apriani Abdullah', 'P', 'TBG X-2', 'CIC 1', 227, NULL, NULL),
(11907099, 'Dhea Destiani Putri', 'P', 'MMD X-1', 'CIC 5', 228, NULL, NULL),
(11907100, 'Dhiya Fauziah', 'P', 'MMD X-2', 'CIB 3', 229, NULL, NULL),
(11907101, 'Dhyah Ayu Putri Marida', 'P', 'MMD X-1', 'CIB 3', 230, NULL, NULL),
(11907102, 'Dian Nurhafidina', 'P', 'TBG X-2', 'CIS 4', 231, NULL, NULL),
(11907103, 'Diaz Hairul Ilyasa', 'L', 'BDP X-1', 'CIB 3', 232, NULL, NULL),
(11907105, 'Dilla Ariana Wijaya', 'P', 'TBG X-1', 'CIS 3', 233, NULL, NULL),
(11907106, 'Dimas Nurilahi', 'L', 'TKJ X-2', 'TAJ 4', 234, NULL, NULL),
(11907107, 'Dimas Prayoga', 'L', 'MMD X-2', 'CIC 4', 235, NULL, NULL),
(11907108, 'Dina Dessiyani', 'P', 'RPL X-3', 'CIS 6', 236, NULL, NULL),
(11907109, 'Dina Lestari', 'P', 'HTL X-2', 'CIS 2', 237, NULL, NULL),
(11907110, 'Dina Septiani', 'P', 'HTL X-1', 'CIC 1', 238, NULL, NULL),
(11907111, 'Dina Tri Septiani', 'P', 'BDP X-2', 'SUK 1', 239, NULL, NULL),
(11907112, 'Diny Khoerun Nida', 'P', 'MMD X-1', 'CIC 4', 240, NULL, NULL),
(11907113, 'Doni Rijki Ramadan', 'L', 'TKJ X-2', 'CIA 5', 241, NULL, NULL),
(11907114, 'Dwi Muchamad Rizky', 'L', 'TKJ X-2', 'WIK 2', 242, NULL, NULL),
(11907115, 'Dwi Prasetyo', 'L', 'RPL X-4', 'SUK 1', 243, NULL, NULL),
(11907116, 'Dwiky Juliyansyah', 'L', 'RPL X-4', 'WIK 2', 244, NULL, NULL),
(11907117, 'Dwina Tazkia Arifa', 'P', 'OTKP X-1', 'CIS 3', 245, NULL, NULL),
(11907118, 'Dzikra Derlyandra Azka Segara', 'L', 'TKJ X-2', 'CIC 6', 246, NULL, NULL),
(11907119, 'Edbert Fausto Pauce', 'L', 'TKJ X-2', 'SUK 1', 247, NULL, NULL),
(11907120, 'Elda Agustiani', 'P', 'TBG X-2', 'CIC 7', 248, NULL, NULL),
(11907121, 'Elsa Safira', 'P', 'OTKP X-1', 'CIC 3', 249, NULL, NULL),
(11907122, 'Enha Haykal Rayadi', 'L', 'TKJ X-4', 'CIS 1', 250, NULL, NULL),
(11907123, 'Erik Fazril Julian', 'L', 'TKJ X-2', 'CIC 3', 251, NULL, NULL),
(11907124, 'Erlangga Putra', 'L', 'TKJ X-4', 'CIC 3', 252, NULL, NULL),
(11907125, 'Erlita Putri M', 'P', 'HTL X-2', 'CIC 4', 253, NULL, NULL),
(11907126, 'Ervita Virna Dewi Pratama', 'P', 'TBG X-2', 'CIA 4', 254, NULL, NULL),
(11907127, 'Eva Juliandarin', 'P', 'HTL X-2', 'CIA 2', 255, NULL, NULL),
(11907128, 'Eva Ratnasari', 'P', 'OTKP X-1', 'CIB 2', 256, NULL, NULL),
(11907129, 'Evieng Nursuci Rahma', 'P', 'HTL X-2', 'CIC 6', 257, NULL, NULL),
(11907130, 'Ezar Rizarul Fiqry', 'L', 'MMD X-2', 'SUK 1', 258, NULL, NULL),
(11907131, 'Faaizah Lisannurrahmani', 'P', 'TBG X-1', 'CIB 1', 259, NULL, NULL),
(11907132, 'Fadhil Aryasatya Amanulloh', 'L', 'TKJ X-2', 'CIC 7', 260, NULL, NULL),
(11907134, 'Fadlan Diyanuar', 'L', 'RPL X-1', 'CIC 5', 261, NULL, NULL),
(11907135, 'Fadly Mubarok Nasution', 'L', 'RPL X-3', 'WIK 4', 262, NULL, NULL),
(11907136, 'Fahsa Aula Nasaul Husna', 'P', 'RPL X-1', 'WIK 2', 263, NULL, NULL),
(11907137, 'Faiq Roja Rusvandi', 'L', 'HTL X-2', 'CIC 6', 264, NULL, NULL),
(11907138, 'Faisal Ramadhan', 'L', 'BDP X-2', 'CIC 3', 265, NULL, NULL),
(11907139, 'Faiz Faqih Haidar', 'L', 'TKJ X-1', 'CIC 6', 266, NULL, NULL),
(11907141, 'Fajar Muhamad', 'L', 'TKJ X-1', 'CIS 6', 267, NULL, NULL),
(11907142, 'Fajar Sidhiq Ramadhan', 'L', 'HTL X-2', 'TAJ 1', 268, NULL, NULL),
(11907143, 'Fakhri Abbas Ailatat', 'L', 'TKJ X-3', 'CIS 5', 269, NULL, NULL),
(11907144, 'Fandi Ahmad', 'L', 'RPL X-1', 'CIS 2', 270, NULL, NULL),
(11907145, 'Farah Alya Nurhasanah', 'P', 'MMD X-2', 'CIA 1', 271, NULL, NULL),
(11907146, 'Farhan Muhammad Fajar', 'L', 'TKJ X-4', 'CIA 4', 272, NULL, NULL),
(11907147, 'Faricha Nailu Rahmi', 'P', 'TBG X-2', 'CIA 1', 273, NULL, NULL),
(11907148, 'Fatih Mohamad Rizki', 'L', 'HTL X-2', 'SUK 2', 274, NULL, NULL),
(11907149, 'Fatina Chaerunnisa', 'P', 'OTKP X-2', 'CIC 5', 275, NULL, NULL),
(11907150, 'Fauzan Dzikry Prasetya', 'L', 'RPL X-3', 'CIC 3', 276, NULL, NULL),
(11907151, 'Fauzy Agil Putrandy', 'L', 'RPL X-3', 'CIS 6', 277, NULL, NULL);
INSERT INTO `siswas` (`nis`, `nama`, `jk`, `rombel`, `rayon`, `id_akun`, `created_at`, `updated_at`) VALUES
(11907152, 'Febrian', 'L', 'BDP X-2', 'CIC 7', 278, NULL, NULL),
(11907153, 'Febriyanti Anjani', 'P', 'OTKP X-2', 'CIC 4', 279, NULL, NULL),
(11907154, 'Fema Flamelina Putri', 'P', 'RPL X-2', 'CIC 3', 280, NULL, NULL),
(11907155, 'Ferrawati Sudibyo', 'P', 'MMD X-2', 'CIS 3', 281, NULL, NULL),
(11907157, 'Firhan Afriansyah', 'L', 'BDP X-2', 'CIC 3', 282, NULL, NULL),
(11907158, 'Firmansyah', 'L', 'BDP X-2', 'CIS 1', 283, NULL, NULL),
(11907159, 'Fitrianthie Ravalina Firmansyah', 'P', 'MMD X-1', 'CIS 4', 284, NULL, NULL),
(11907160, 'Franciscus Rangga Yogianto', 'L', 'RPL X-1', 'CIC 6', 285, NULL, NULL),
(11907162, 'Ganjar Putra Perkasa', 'L', 'TBG X-2', 'CIC 4', 286, NULL, NULL),
(11907163, 'Gema Raihan Al Fatih', 'L', 'RPL X-4', 'CIA 5', 287, NULL, NULL),
(11907164, 'Geriyandi Juniarto', 'L', 'TKJ X-2', 'CIB 2', 288, NULL, NULL),
(11907165, 'Gesha Al Gifari', 'L', 'TKJ X-2', 'WIK 4', 289, NULL, NULL),
(11907166, 'Ghefary Pramesti', 'P', 'TBG X-1', 'CIB 1', 290, NULL, NULL),
(11907167, 'Ghozi Ahnaf Al-Hafiz', 'L', 'BDP X-2', 'TAJ 4', 291, NULL, NULL),
(11907168, 'Gian Lucky Trijaya', 'L', 'HTL X-1', 'CIA 5', 292, NULL, NULL),
(11907169, 'Gina Indriani', 'P', 'RPL X-4', 'CIB 3', 293, NULL, NULL),
(11907170, 'Giska Wafiq Azizah Setiawan', 'P', 'RPL X-3', 'CIC 7', 294, NULL, NULL),
(11907171, 'Gitiyas Virgi', 'L', 'TKJ X-3', 'SUK 2', 295, NULL, NULL),
(11907172, 'Hadi Mughny', 'L', 'RPL X-4', 'WIK 2', 296, NULL, NULL),
(11907173, 'Haidar Nazer', 'L', 'TKJ X-1', 'CIS 3', 297, NULL, NULL),
(11907174, 'Hardi Wijaya', 'L', 'TKJ X-4', 'CIA 2', 298, NULL, NULL),
(11907175, 'Harpan Pudoli Mukti', 'L', 'TKJ X-4', 'CIC 4', 299, NULL, NULL),
(11907176, 'Harry Sanaya Respathy Al-Mawardhy', 'L', 'MMD X-1', 'TAJ 5', 300, NULL, NULL),
(11907177, 'Hendria Wansyah', 'L', 'TKJ X-4', 'CIA 2', 301, NULL, NULL),
(11907178, 'Heri Aprizal', 'L', 'TKJ X-3', 'CIS 5', 302, NULL, NULL),
(11907179, 'Herlinda Lestari Putri', 'P', 'OTKP X-1', 'CIA 2', 303, NULL, NULL),
(11907180, 'Hilda Fauziah Setiawan Zafutri', 'P', 'OTKP X-2', 'CIA 2', 304, NULL, NULL),
(11907181, 'Hilman Nurfaizin', 'L', 'MMD X-2', 'CIC 5', 305, NULL, NULL),
(11907182, 'Hoerussaleh', 'L', 'TBG X-2', 'CIC 2', 306, NULL, NULL),
(11907183, 'Hotmarya Elisabeth Situmorang', 'P', 'TBG X-2', 'CIC 7', 307, NULL, NULL),
(11907184, 'Hussein Ismail', 'L', 'RPL X-2', 'TAJ 5', 308, NULL, NULL),
(11907185, 'I Made Dhanan Diar Wedantaputra', 'L', 'RPL X-1', 'CIC 4', 309, NULL, NULL),
(11907186, 'Ibnu Abi Safiki', 'L', 'RPL X-1', 'TAJ 2', 310, NULL, NULL),
(11907187, 'Ibnu Albian Dermawan', 'L', 'MMD X-1', 'CIC 7', 311, NULL, NULL),
(11907188, 'Ihsan Maulana', 'L', 'TKJ X-2', 'CIA 1', 312, NULL, NULL),
(11907189, 'Ika Roro Kusuma Tunggal Dewi', 'P', 'RPL X-1', 'CIS 6', 313, NULL, NULL),
(11907190, 'Iksan Maulana', 'L', 'TKJ X-3', 'CIS 1', 314, NULL, NULL),
(11907191, 'Ilham Farhan Ardiansyah', 'L', 'RPL X-4', 'TAJ 5', 315, NULL, NULL),
(11907192, 'Ilham Maulana', 'L', 'RPL X-1', 'TAJ 2', 316, NULL, NULL),
(11907193, 'Ilham Nurwanda', 'L', 'TKJ X-4', 'CIS 6', 317, NULL, NULL),
(11907194, 'Ilma Awaliah', 'P', 'RPL X-3', 'TAJ 4', 318, NULL, NULL),
(11907195, 'Ima Halimatusya\'diah', 'P', 'OTKP X-1', 'CIC 3', 319, NULL, NULL),
(11907196, 'Imam Jati Pratama', 'L', 'BDP X-1', 'CIC 6', 320, NULL, NULL),
(11907197, 'Indra Pauji', 'L', 'TKJ X-4', 'CIS 5', 321, NULL, NULL),
(11907198, 'Indriani', 'P', 'MMD X-2', 'CIC 6', 322, NULL, NULL),
(11907199, 'Indriyani', 'P', 'HTL X-1', 'CIB 2', 323, NULL, NULL),
(11907200, 'Intan Nuraeni', 'P', 'MMD X-1', 'CIC 7', 324, NULL, NULL),
(11907201, 'Intan Putri Pramesthy', 'P', 'MMD X-2', 'CIB 2', 325, NULL, NULL),
(11907202, 'Ira Maharani', 'P', 'HTL X-1', 'CIA 2', 326, NULL, NULL),
(11907203, 'Iren Kus Dhini', 'P', 'TBG X-2', 'SUK 1', 327, NULL, NULL),
(11907204, 'Irgi Ghifari', 'L', 'RPL X-3', 'CIB 2', 328, NULL, NULL),
(11907205, 'Irham Khoeruamani', 'L', 'RPL X-4', 'CIC 5', 329, NULL, NULL),
(11907206, 'Irma Heriyanti', 'P', 'TBG X-2', 'TAJ 5', 330, NULL, NULL),
(11907208, 'Isma Akilah', 'P', 'BDP X-2', 'CIA 3', 331, NULL, NULL),
(11907209, 'Ivan Apriyan', 'L', 'TKJ X-1', 'WIK 2', 332, NULL, NULL),
(11907210, 'Jannika Anwarulia', 'P', 'MMD X-1', 'CIB 1', 333, NULL, NULL),
(11907211, 'Jasmine Pratiwi', 'P', 'OTKP X-2', 'CIS 1', 334, NULL, NULL),
(11907212, 'Zidan Ardiansyah', 'L', 'TKJ X-4', 'WIK 2', 335, NULL, NULL),
(11907213, 'Julianto', 'L', 'TKJ X-4', 'TAJ 1', 336, NULL, NULL),
(11907214, 'Junita Rahmawati', 'P', 'TBG X-1', 'TAJ 5', 337, NULL, NULL),
(11907215, 'Juwita Dewi Purnama', 'P', 'BDP X-2', 'CIS 2', 338, NULL, NULL),
(11907216, 'Kadek Agus Arimbawa', 'L', 'RPL X-1', 'CIA 4', 339, NULL, NULL),
(11907217, 'Karchelli Meiandita', 'P', 'MMD X-2', 'CIC 6', 340, NULL, NULL),
(11907218, 'Kasyfi Syauqi', 'L', 'RPL X-3', 'CIC 7', 341, NULL, NULL),
(11907219, 'Keisya Pinaring Gusti', 'P', 'HTL X-2', 'WIK 1', 342, NULL, NULL),
(11907220, 'Kelvin', 'L', 'TKJ X-2', 'SUK 1', 343, NULL, NULL),
(11907221, 'Kezia Pramesti Sekar Kinasih Putri Pujiyanti', 'P', 'MMD X-1', 'CIC 5', 344, NULL, NULL),
(11907222, 'Khaeria Maulani Rukmana', 'P', 'MMD X-2', 'TAJ 4', 345, NULL, NULL),
(11907223, 'Kharnisa Lutfy Syabani', 'P', 'OTKP X-2', 'CIS 5', 346, NULL, NULL),
(11907224, 'Kinkin Marisa Cahyati', 'P', 'RPL X-3', 'CIB 3', 347, NULL, NULL),
(11907225, 'Kukuh Satriaji Siswanto', 'L', 'MMD X-1', 'CIC 6', 348, NULL, NULL),
(11907226, 'Laras Ayu Sekartaji', 'P', 'OTKP X-1', 'CIA 1', 349, NULL, NULL),
(11907227, 'Layla Ramadhanti', 'P', 'HTL X-1', 'CIS 5', 350, NULL, NULL),
(11907228, 'Lia Aprilia Ningsih', 'P', 'BDP X-2', 'CIA 3', 351, NULL, NULL),
(11907229, 'Liana Atelia', 'P', 'TBG X-1', 'CIC 5', 352, NULL, NULL),
(11907230, 'Lidiani Adelia Putri Marsyandi', 'P', 'OTKP X-1', 'CIC 3', 353, NULL, NULL),
(11907231, 'Louis Yudhistira', 'L', 'TKJ X-3', 'CIB 1', 354, NULL, NULL),
(11907232, 'Luthfi Mayoga', 'L', 'TKJ X-1', 'CIA 4', 355, NULL, NULL),
(11907233, 'M. Agung', 'L', 'TKJ X-4', 'CIS 2', 356, NULL, NULL),
(11907234, 'Muhamad Agung Laksana Putra', 'L', 'RPL X-2', 'TAJ 1', 357, NULL, NULL),
(11907235, 'Mochamad Alfa Reza', 'L', 'TKJ X-3', 'CIC 5', 358, NULL, NULL),
(11907237, 'M. Dika Handika', 'L', 'BDP X-1', 'CIC 1', 359, NULL, NULL),
(11907238, 'Muhammad Fachrurrozy Al-Mawardhy', 'L', 'MMD X-1', 'TAJ 5', 360, NULL, NULL),
(11907239, 'M. Fadhil Mauladhani', 'L', 'RPL X-2', 'CIS 2', 361, NULL, NULL),
(11907240, 'M. Fikri Maulana Yusup', 'L', 'TKJ X-2', 'CIB 2', 362, NULL, NULL),
(11907241, 'M. Fikri Saputra', 'L', 'BDP X-1', 'CIC 4', 363, NULL, NULL),
(11907242, 'Muhamad Firnando Werdayansah', 'L', 'TKJ X-4', 'CIS 5', 364, NULL, NULL),
(11907243, 'M. Iman Hidayat', 'L', 'RPL X-4', 'CIC 2', 365, NULL, NULL),
(11907244, 'Muhamad Qori Khairullah', 'L', 'TKJ X-1', 'SUK 2', 366, NULL, NULL),
(11907245, 'Muhammad Rafi Mauludi', 'L', 'TKJ X-1', 'CIA 2', 367, NULL, NULL),
(11907246, 'Muhamad Rahadzikri Kadhafi Rudiana', 'L', 'RPL X-1', 'CIS 2', 368, NULL, NULL),
(11907247, 'M. Raihan Saputra', 'L', 'TKJ X-1', 'CIS 4', 369, NULL, NULL),
(11907248, 'Muhammad Rakean Jati Permana Kusumah Hidayat', 'L', 'RPL X-2', 'WIK 2', 370, NULL, NULL),
(11907249, 'Muhammad Ramdoni', 'L', 'TKJ X-3', 'CIS 4', 371, NULL, NULL),
(11907250, 'M. Risky Firdaus', 'L', 'TBG X-1', 'TAJ 2', 372, NULL, NULL),
(11907251, 'Muhammad Rizal Arifin', 'L', 'RPL X-1', 'CIS 6', 373, NULL, NULL),
(11907252, 'M. Rizki Aditya', 'L', 'TKJ X-1', 'CIA 5', 374, NULL, NULL),
(11907253, 'Muhamad Rizki Pardiansyah', 'L', 'TKJ X-3', 'CIA 3', 375, NULL, NULL),
(11907254, 'M. Salman Farizi', 'L', 'TKJ X-2', 'CIC 1', 376, NULL, NULL),
(11907255, 'M. Virgiawan Tristanto', 'L', 'TKJ X-3', 'CIS 6', 377, NULL, NULL),
(11907256, 'Muhammad Yusuf Bachtiar Jaelani', 'L', 'TKJ X-2', 'CIA 4', 378, NULL, NULL),
(11907257, 'Muhammad Zain Quroisy', 'L', 'RPL X-2', 'CIS 3', 379, NULL, NULL),
(11907258, 'Muhammad Zaki Ats-Tsauri', 'L', 'MMD X-2', 'TAJ 2', 380, NULL, NULL),
(11907259, 'Muhammad Zidan Negarawan', 'L', 'BDP X-2', 'TAJ 1', 381, NULL, NULL),
(11907260, 'Marhaensalenindo Komara', 'L', 'RPL X-2', 'WIK 3', 382, NULL, NULL),
(11907261, 'Maria Gorethy Octaviani', 'P', 'MMD X-2', 'TAJ 4', 383, NULL, NULL),
(11907262, 'Mariana Salsa', 'P', 'HTL X-2', 'CIS 4', 384, NULL, NULL),
(11907263, 'Maritza Fadhila Affianti', 'P', 'TBG X-2', 'TAJ 1', 385, NULL, NULL),
(11907264, 'Mark Mbooh', 'L', 'RPL X-4', 'WIK 1', 386, NULL, NULL),
(11907265, 'Maudy Bunga Rizky', 'P', 'MMD X-2', 'CIA 4', 387, NULL, NULL),
(11907266, 'Maulana Ardiansyah', 'L', 'RPL X-2', 'CIC 1', 388, NULL, NULL),
(11907267, 'Maulana Iqbal Rivaldi', 'L', 'HTL X-2', 'CIB 1', 389, NULL, NULL),
(11907268, 'Mayola Gayatri Asrari', 'P', 'HTL X-2', 'CIB 3', 390, NULL, NULL),
(11907269, 'Melly Amelia', 'P', 'BDP X-1', 'CIB 2', 391, NULL, NULL),
(11907270, 'Mellya Sopyan', 'P', 'OTKP X-2', 'CIC 3', 392, NULL, NULL),
(11907271, 'Merlyn Kurnia Damayanti', 'P', 'OTKP X-1', 'CIA 2', 393, NULL, NULL),
(11907272, 'Michael Danu Ikklasiya', 'L', 'RPL X-1', 'CIS 3', 394, NULL, NULL),
(11907273, 'Millendra Michel Effendi', 'L', 'RPL X-1', 'TAJ 5', 395, NULL, NULL),
(11907274, 'Mimi Hardiyanti', 'P', 'TBG X-1', 'TAJ 5', 396, NULL, NULL),
(11907275, 'Mira Juniawati', 'P', 'OTKP X-1', 'CIA 2', 397, NULL, NULL),
(11907276, 'Mira Nur Aulia', 'P', 'RPL X-4', 'CIA 5', 398, NULL, NULL),
(11907277, 'Moch. Rayhan Agus Saputra', 'L', 'HTL X-2', 'CIB 3', 399, NULL, NULL),
(11907278, 'Muhammad Rizki Arba', 'L', 'RPL X-1', 'CIS 2', 400, NULL, NULL),
(11907279, 'Moch. Syahdan Damanik', 'L', 'TKJ X-3', 'CIC 7', 401, NULL, NULL),
(11907280, 'Mochamad Arsya Febrian', 'L', 'TKJ X-1', 'CIC 4', 402, NULL, NULL),
(11907281, 'Mochamad Haikal', 'L', 'RPL X-2', 'CIA 3', 403, NULL, NULL),
(11907282, 'Mochammad Hidayatullah', 'L', 'RPL X-1', 'CIA 5', 404, NULL, NULL),
(11907283, 'Mohamad Bayu Irsyandi', 'L', 'MMD X-1', 'SUK 1', 405, NULL, NULL),
(11907284, 'Mohammad Syahreza Fahlevi', 'L', 'MMD X-2', 'CIC 4', 406, NULL, NULL),
(11907285, 'Muamar Azzriel Fattah', 'L', 'TKJ X-3', 'TAJ 2', 407, NULL, NULL),
(11907286, 'Mohammad Danny Adibrata', 'L', 'RPL X-4', 'CIC 3', 408, NULL, NULL),
(11907287, 'Muchamad Nabil Hakim', 'L', 'RPL X-2', 'CIC 7', 409, NULL, NULL),
(11907288, 'Muhamad Aditya Mahesa', 'L', 'MMD X-1', 'SUK 1', 410, NULL, NULL),
(11907289, 'Muhamad Afi Chena', 'L', 'MMD X-2', 'CIC 3', 411, NULL, NULL),
(11907290, 'Muhamad Aldiansyah', 'L', 'TKJ X-1', 'CIS 2', 412, NULL, NULL),
(11907291, 'Muhamad Aldiko Satria', 'L', 'TKJ X-4', 'CIS 4', 413, NULL, NULL),
(11907292, 'Muhamad Ardiansyah', 'L', 'TKJ X-3', 'WIK 1', 414, NULL, NULL),
(11907293, 'Muhammad Arpian Erga Saputra', 'L', 'TKJ X-4', 'CIS 5', 415, NULL, NULL),
(11907294, 'Muhamad Arkan Akmal', 'L', 'TKJ X-1', 'CIC 6', 416, NULL, NULL),
(11907295, 'Muhammad Arlan Arridho', 'L', 'BDP X-2', 'CIS 6', 417, NULL, NULL),
(11907296, 'Muhamad Azril Fadhlurrahman Suhendrik', 'L', 'RPL X-3', 'WIK 1', 418, NULL, NULL),
(11907297, 'Muhamad Dandi Nurrizki', 'L', 'RPL X-2', 'SUK 2', 419, NULL, NULL),
(11907298, 'Muhamad Dwi Yanuar Saputra', 'L', 'TKJ X-2', 'CIS 5', 420, NULL, NULL),
(11907299, 'Muhammad Dzidan Sabillah', 'L', 'TKJ X-2', 'CIB 1', 421, NULL, NULL),
(11907300, 'Muhamad Fadlan', 'L', 'RPL X-3', 'CIB 1', 422, NULL, NULL),
(11907301, 'Muhamad Faelani', 'L', 'HTL X-1', 'TAJ 1', 423, NULL, NULL),
(11907302, 'Muhamad Fahmi Mustofa', 'L', 'TKJ X-3', 'CIA 1', 424, NULL, NULL),
(11907303, 'Muhamad Farhan Lubis', 'L', 'TKJ X-1', 'CIA 2', 425, NULL, NULL),
(11907304, 'Muhamad Firmansyah', 'L', 'TKJ X-2', 'CIA 5', 426, NULL, NULL),
(11907305, 'Muhamad Geovalza Valeriandi', 'L', 'RPL X-2', 'CIC 1', 427, NULL, NULL),
(11907306, 'Muhamad Geri Ramdan', 'L', 'RPL X-4', 'CIB 2', 428, NULL, NULL),
(11907307, 'Muhamad Ghiffary Judhan Ruslani', 'L', 'TKJ X-3', 'WIK 1', 429, NULL, NULL),
(11907308, 'Muhamad Ghofarul', 'L', 'TKJ X-2', 'CIS 4', 430, NULL, NULL),
(11907309, 'Muhamad Hilmi Assidiqi', 'L', 'TKJ X-1', 'TAJ 1', 431, NULL, NULL),
(11907311, 'Muhamad Ikbal', 'L', 'HTL X-1', 'CIA 3', 432, NULL, NULL),
(11907312, 'Muhamad Ilham Saputra', 'L', 'RPL X-4', 'TAJ 2', 433, NULL, NULL),
(11907313, 'Muhamad Iqbal Irsyad', 'L', 'RPL X-3', 'CIC 5', 434, NULL, NULL),
(11907314, 'Muhamad Lutfi', 'L', 'RPL X-4', 'CIS 2', 435, NULL, NULL),
(11907315, 'Muhamad Novyan Dwi Ramadhan', 'L', 'TKJ X-2', 'CIS 3', 436, NULL, NULL),
(11907316, 'Muhammad Nur Rabani', 'L', 'TKJ X-4', 'CIA 2', 437, NULL, NULL),
(11907317, 'Muhamad Raffi Ramdhani', 'L', 'TKJ X-1', 'CIA 4', 438, NULL, NULL),
(11907318, 'Muhamad Rafi', 'L', 'TKJ X-4', 'CIS 3', 439, NULL, NULL),
(11907319, 'Muhamad Rafli', 'L', 'RPL X-3', 'CIC 1', 440, NULL, NULL),
(11907320, 'Muhammad Rafli Akbar Fauzi', 'L', 'TKJ X-4', 'CIC 1', 441, NULL, NULL),
(11907321, 'Muhamad Ramadhan Firdaus', 'L', 'TKJ X-3', 'CIC 3', 442, NULL, NULL),
(11907322, 'Muhamad Ramdani', 'L', 'TKJ X-4', 'SUK 2', 443, NULL, NULL),
(11907323, 'Muhamad Rendi Syahril Saputra', 'L', 'RPL X-2', 'TAJ 1', 444, NULL, NULL),
(11907324, 'Muhamad Reza Rizky', 'L', 'RPL X-2', 'CIS 2', 445, NULL, NULL),
(11907325, 'Muhamad Ridwan Riansyah', 'L', 'TKJ X-1', 'CIB 3', 446, NULL, NULL),
(11907326, 'Muhamad Rifki', 'L', 'TKJ X-4', 'CIA 1', 447, NULL, NULL),
(11907327, 'Muhamad Rizki Tajudin', 'L', 'TKJ X-3', 'CIS 6', 448, NULL, NULL),
(11907328, 'Muhammad Royyan Ramadhan', 'L', 'TKJ X-2', 'CIB 2', 449, NULL, NULL),
(11907329, 'Muhamad Sabana', 'L', 'BDP X-1', 'CIS 1', 450, NULL, NULL),
(11907330, 'Muhamad Salim', 'L', 'TKJ X-1', 'TAJ 5', 451, NULL, NULL),
(11907332, 'Muhamad Syahdan Maulana', 'L', 'BDP X-1', 'CIS 1', 452, NULL, NULL),
(11907333, 'Muhamad Tawab Haykal', 'L', 'TKJ X-4', 'CIA 3', 453, NULL, NULL),
(11907334, 'M. Yusuf Faturahman', 'L', 'TKJ X-3', 'CIS 6', 454, NULL, NULL),
(11907335, 'Muhammad Abdurrasyid', 'L', 'RPL X-2', 'CIC 3', 455, NULL, NULL),
(11907336, 'Muhammad Agung Kusumawinata', 'L', 'TKJ X-4', 'WIK 4', 456, NULL, NULL),
(11907337, 'Muhammad Al Farizi', 'L', 'RPL X-1', 'CIS 2', 457, NULL, NULL),
(11907338, 'Muhammad Alfi Sahrin', 'L', 'TKJ X-3', 'CIC 6', 458, NULL, NULL),
(11907339, 'Mohammad Amrullah Zaqi', 'L', 'RPL X-4', 'CIC 4', 459, NULL, NULL),
(11907340, 'Muhammad Angga Hade Prayoga', 'L', 'RPL X-1', 'CIC 3', 460, NULL, NULL),
(11907341, 'Muhammad Angga Lesmana', 'L', 'TKJ X-3', 'CIA 5', 461, NULL, NULL),
(11907342, 'Muhammad Ardiansyah Subekti', 'L', 'TKJ X-3', 'TAJ 5', 462, NULL, NULL),
(11907343, 'Muhammad Arif Fazry', 'L', 'TKJ X-1', 'TAJ 1', 463, NULL, NULL),
(11907344, 'Muhammad Ariq Audhitama', 'L', 'TKJ X-2', 'CIB 3', 464, NULL, NULL),
(11907345, 'Muhammad Aulia Ramadhan', 'L', 'TKJ X-1', 'CIA 1', 465, NULL, NULL),
(11907346, 'Muhamad Cahya Maulana', 'L', 'RPL X-3', 'CIB 3', 466, NULL, NULL),
(11907347, 'Muhammad Cahya Wiguna', 'L', 'RPL X-2', 'CIS 6', 467, NULL, NULL),
(11907348, 'Muhammad Dhemi Prambudi Agung', 'L', 'TBG X-2', 'WIK 2', 468, NULL, NULL),
(11907350, 'Muhammad Fahmi Irawan', 'L', 'BDP X-1', 'CIC 1', 469, NULL, NULL),
(11907351, 'Muhammad Fahri Fauzan', 'L', 'TKJ X-2', 'CIS 4', 470, NULL, NULL),
(11907352, 'Muhammad Fajri Inastyar', 'L', 'TKJ X-3', 'CIS 4', 471, NULL, NULL),
(11907353, 'Muhamad Faturahman', 'L', 'BDP X-2', 'CIS 6', 472, NULL, NULL),
(11907354, 'Muhammad Fauzan Aflah', 'L', 'TKJ X-2', 'CIS 4', 473, NULL, NULL),
(11907355, 'Muhammad Fauzil Adhim', 'L', 'RPL X-3', 'TAJ 5', 474, NULL, NULL),
(11907356, 'Muhammad Haikal Khadafi', 'L', 'TKJ X-3', 'CIS 5', 475, NULL, NULL),
(11907357, 'Muhammad Haikkal Firman Arista', 'L', 'MMD X-1', 'WIK 4', 476, NULL, NULL),
(11907358, 'Muhammad Hanif Royyan Ramdhani', 'L', 'RPL X-4', 'SUK 2', 477, NULL, NULL),
(11907359, 'Muhammad Hilmy', 'L', 'RPL X-3', 'CIB 2', 478, NULL, NULL),
(11907360, 'Muhammad Ilham Wiranata', 'L', 'TKJ X-4', 'CIS 1', 479, NULL, NULL),
(11907361, 'Muhammad Lathiif Ghaffaridillah', 'L', 'RPL X-3', 'CIC 3', 480, NULL, NULL),
(11907362, 'Muhamad Lutfi Azizan', 'L', 'RPL X-1', 'CIC 5', 481, NULL, NULL),
(11907363, 'Muhammad Luthfi Chaidir', 'L', 'TKJ X-4', 'CIB 1', 482, NULL, NULL),
(11907365, 'Muhamad Miftah Hudin', 'L', 'BDP X-1', 'CIS 1', 483, NULL, NULL),
(11907366, 'Muhammad Naufal Athaya', 'L', 'MMD X-1', 'TAJ 5', 484, NULL, NULL),
(11907367, 'Muhammad Naufal Fadilah', 'L', 'HTL X-1', 'CIS 4', 485, NULL, NULL),
(11907368, 'Muhammad Naufal Nabiih', 'L', 'BDP X-2', 'CIA 5', 486, NULL, NULL),
(11907369, 'Muhammad Noval Septian', 'L', 'MMD X-1', 'SUK 1', 487, NULL, NULL),
(11907370, 'Muhammad Nurachman Musyaffa', 'L', 'RPL X-4', 'CIC 1', 488, NULL, NULL),
(11907371, 'Muhammad Nurfaisal', 'L', 'TKJ X-2', 'CIC 4', 489, NULL, NULL),
(11907372, 'Muhammad Razan Mutashim', 'L', 'RPL X-1', 'CIS 3', 490, NULL, NULL),
(11907373, 'Muhammad Rafli Afriansyah', 'L', 'TKJ X-1', 'CIC 1', 491, NULL, NULL),
(11907374, 'Muhammad Rakazeti Pandya', 'L', 'BDP X-1', 'TAJ 5', 492, NULL, NULL),
(11907375, 'Muhammad Randi Nur Priyatna', 'L', 'RPL X-3', 'CIB 1', 493, NULL, NULL),
(11907376, 'Muhammad Rangga Adrian', 'L', 'TKJ X-4', 'CIA 5', 494, NULL, NULL),
(11907377, 'Muhammad Razi Alif Al-Faiz', 'L', 'TKJ X-4', 'CIA 5', 495, NULL, NULL),
(11907378, 'Muhammad Reval Maulana', 'L', 'MMD X-2', 'CIS 4', 496, NULL, NULL),
(11907379, 'Muhamad Ridwan', 'L', 'TKJ X-3', 'CIA 5', 497, NULL, NULL),
(11907380, 'Muhammad Ridwan', 'L', 'MMD X-1', 'TAJ 1', 498, NULL, NULL),
(11907381, 'Muhammad Rio Dewantoro', 'L', 'RPL X-1', 'CIB 2', 499, NULL, NULL),
(11907382, 'Muhammad Rivaldi', 'L', 'RPL X-3', 'CIS 5', 500, NULL, NULL),
(11907385, 'Muhammad Rizky Riyadiansyah', 'L', 'TBG X-2', 'CIC 3', 501, NULL, NULL),
(11907386, 'Muhammad Shiddiq Priyono', 'L', 'RPL X-2', 'CIS 3', 502, NULL, NULL),
(11907387, 'Muhammad Syahid Cahya Kusuma', 'L', 'TKJ X-2', 'CIC 6', 503, NULL, NULL),
(11907388, 'Muhamad Syahril Febri Hasbullah', 'L', 'TKJ X-4', 'SUK 1', 504, NULL, NULL),
(11907389, 'Muhammad Tangguh Ferial', 'L', 'RPL X-3', 'WIK 4', 505, NULL, NULL),
(11907390, 'Muhammad Teguh Efendi', 'L', 'TKJ X-3', 'CIA 3', 506, NULL, NULL),
(11907391, 'Muhammad Wildan Firdaus', 'L', 'RPL X-1', 'WIK 2', 507, NULL, NULL),
(11907392, 'Muhammad Yardan Xavier', 'L', 'BDP X-1', 'CIC 3', 508, NULL, NULL),
(11907393, 'Muhamad Yusril', 'L', 'RPL X-3', 'CIS 1', 509, NULL, NULL),
(11907394, 'Muhammad Zidan Aminudin', 'L', 'MMD X-2', 'SUK 2', 510, NULL, NULL),
(11907395, 'Muhammad Zidan Sofian', 'L', 'TBG X-2', 'CIA 3', 511, NULL, NULL),
(11907396, 'Muhammad Zuandi Al-Malik', 'L', 'TKJ X-3', 'CIS 1', 512, NULL, NULL),
(11907397, 'Muhammad Zulvan Adzikro', 'L', 'TKJ X-1', 'CIA 4', 513, NULL, NULL),
(11907398, 'Mulyana', 'L', 'BDP X-1', 'CIB 1', 514, NULL, NULL),
(11907399, 'Murnia Azhari', 'P', 'OTKP X-1', 'TAJ 4', 515, NULL, NULL),
(11907400, 'Mutiara Egha Liasty Sukmana', 'P', 'HTL X-1', 'CIS 5', 516, NULL, NULL),
(11907401, 'Muzfirah Nadriani', 'P', 'RPL X-4', 'CIA 2', 517, NULL, NULL),
(11907402, 'Nabila Nakhwah Fajrin', 'P', 'MMD X-2', 'TAJ 1', 518, NULL, NULL),
(11907403, 'Nabilla Hermayanti', 'P', 'OTKP X-2', 'CIS 4', 519, NULL, NULL),
(11907404, 'Nadira Hilyatu Yasmin', 'P', 'TBG X-1', 'CIA 1', 520, NULL, NULL),
(11907405, 'Najwa Nada Utami', 'P', 'HTL X-2', 'CIS 6', 521, NULL, NULL),
(11907406, 'Nalisa Vianti', 'P', 'RPL X-2', 'CIB 1', 522, NULL, NULL),
(11907407, 'Nanda Aulia Maharani', 'P', 'OTKP X-1', 'CIA 1', 523, NULL, NULL),
(11907408, 'Nanda Aulia Suherman', 'P', 'MMD X-1', 'CIA 5', 524, NULL, NULL),
(11907409, 'Nara Dwi Rahma', 'P', 'HTL X-1', 'CIS 4', 525, NULL, NULL),
(11907410, 'Nasifa Irmalia Caesya', 'P', 'MMD X-2', 'CIC 4', 526, NULL, NULL),
(11907411, 'Naswa Joya Amani', 'P', 'BDP X-2', 'WIK 4', 527, NULL, NULL),
(11907412, 'Naswa Nurasilah', 'P', 'BDP X-2', 'CIS 5', 528, NULL, NULL),
(11907413, 'Naufal Herdiansyah', 'L', 'TKJ X-4', 'CIC 5', 529, NULL, NULL),
(11907414, 'Naya Elvira', 'P', 'HTL X-2', 'CIS 2', 530, NULL, NULL),
(11907415, 'Nazila Syahria Ramadhan', 'P', 'MMD X-1', 'CIC 7', 531, NULL, NULL),
(11907416, 'Neli Widia', 'P', 'TBG X-2', 'CIB 3', 532, NULL, NULL),
(11907417, 'Neliyana Ulfiyah', 'P', 'HTL X-1', 'TAJ 1', 533, NULL, NULL),
(11907418, 'Neysa Fabiola Isaak', 'P', 'HTL X-2', 'SUK 2', 534, NULL, NULL),
(11907419, 'Nikko Valentino Wikarta', 'L', 'RPL X-2', 'TAJ 2', 535, NULL, NULL),
(11907420, 'Ninda Augustinadia', 'P', 'RPL X-4', 'TAJ 2', 536, NULL, NULL),
(11907421, 'Nita Anggraeni', 'P', 'RPL X-3', 'CIA 4', 537, NULL, NULL),
(11907422, 'Noer Muhammad Abdian Ramdhanie', 'L', 'RPL X-3', 'CIS 4', 538, NULL, NULL),
(11907423, 'Nopaldo Nur Hidayat', 'L', 'RPL X-4', 'CIS 3', 539, NULL, NULL),
(11907424, 'Novy', 'P', 'OTKP X-2', 'CIB 1', 540, NULL, NULL),
(11907425, 'Nova Sastra Negara', 'P', 'OTKP X-2', 'CIB 2', 541, NULL, NULL),
(11907426, 'Noval Priantaka', 'L', 'TKJ X-3', 'CIC 3', 542, NULL, NULL),
(11907427, 'Novia Amelia Syaripudin', 'P', 'TBG X-2', 'CIS 3', 543, NULL, NULL),
(11907428, 'Novia Nur Safitri', 'P', 'MMD X-1', 'TAJ 3', 544, NULL, NULL),
(11907429, 'Nur Fitrah Hidayah', 'P', 'BDP X-1', 'CIB 3', 545, NULL, NULL),
(11907430, 'Nur Siti Shofwah Shofnawani', 'P', 'OTKP X-1', 'CIA 1', 546, NULL, NULL),
(11907431, 'Nurisma Muhoirul Andini', 'P', 'OTKP X-1', 'CIC 1', 547, NULL, NULL),
(11907432, 'Nur Soleha', 'P', 'OTKP X-2', 'CIS 3', 548, NULL, NULL),
(11907433, 'Nurul Asyifa Khoer', 'P', 'HTL X-2', 'CIA 4', 549, NULL, NULL),
(11907434, 'Nurul Aviah', 'P', 'RPL X-2', 'CIB 1', 550, NULL, NULL),
(11907435, 'Nurul Isna Septiani Gunawan', 'P', 'TBG X-2', 'TAJ 2', 551, NULL, NULL),
(11907436, 'Nurul Silpia', 'P', 'RPL X-2', 'CIB 1', 552, NULL, NULL),
(11907437, 'Panca Buana Zacky', 'L', 'TKJ X-3', 'TAJ 3', 553, NULL, NULL),
(11907438, 'Puja Maulida Herwanto', 'P', 'RPL X-1', 'CIA 5', 554, NULL, NULL),
(11907439, 'Puji Ayu Lestari', 'L', 'RPL X-4', 'WIK 4', 555, NULL, NULL),
(11907440, 'Puspita Pebriyani', 'P', 'BDP X-2', 'CIA 1', 556, NULL, NULL),
(11907441, 'Putri Dyanita', 'P', 'RPL X-3', 'CIS 1', 557, NULL, NULL),
(11907442, 'Putri Nikita Malika Hasan', 'P', 'RPL X-4', 'CIS 3', 558, NULL, NULL),
(11907443, 'Putri Ramadani', 'P', 'TBG X-1', 'CIS 1', 559, NULL, NULL),
(11907444, 'Putu Muditha Darma Putri', 'P', 'BDP X-1', 'CIC 6', 560, NULL, NULL),
(11907445, 'Qolbin Salim Rayimura', 'L', 'RPL X-3', 'WIK 1', 561, NULL, NULL),
(11907446, 'Rachel Resma Safitri', 'P', 'HTL X-2', 'CIB 1', 562, NULL, NULL),
(11907447, 'Rachmi Marwa Hanifah', 'P', 'MMD X-1', 'CIC 4', 563, NULL, NULL),
(11907448, 'Raden Muhamad Rifki', 'L', 'TKJ X-1', 'CIS 5', 564, NULL, NULL),
(11907449, 'Raditya Arya Prabaswara', 'L', 'MMD X-2', 'WIK 1', 565, NULL, NULL),
(11907450, 'Raditya Khaerul Rizki', 'L', 'MMD X-1', 'CIC 5', 566, NULL, NULL),
(11907451, 'Raena Setianingsih', 'P', 'OTKP X-2', 'CIC 2', 567, NULL, NULL),
(11907454, 'Raffi Prasetya Ramadhani', 'L', 'RPL X-4', 'WIK 4', 568, NULL, NULL),
(11907455, 'Rafi Fadhila Ramadhani', 'L', 'RPL X-2', 'WIK 3', 569, NULL, NULL),
(11907456, 'Rafira Rangga', 'L', 'TKJ X-2', 'CIS 6', 570, NULL, NULL),
(11907457, 'Rahayu Puji Astuti', 'P', 'HTL X-2', 'TAJ 3', 571, NULL, NULL),
(11907458, 'Raihan Fajar Ramadhan', 'L', 'RPL X-4', 'CIA 1', 572, NULL, NULL),
(11907459, 'Raihan Ramadhan', 'L', 'MMD X-2', 'WIK 3', 573, NULL, NULL),
(11907460, 'Raisa Destriana', 'P', 'OTKP X-1', 'TAJ 4', 574, NULL, NULL),
(11907461, 'Raisani Aprilia', 'P', 'RPL X-4', 'TAJ 3', 575, NULL, NULL),
(11907463, 'Raka Mulya', 'L', 'TKJ X-3', 'CIC 6', 576, NULL, NULL),
(11907464, 'Rakha Al-Prayoga Wismanto', 'L', 'TKJ X-4', 'TAJ 3', 577, NULL, NULL),
(11907465, 'Rama Dani Saputra', 'L', 'TBG X-2', 'CIC 7', 578, NULL, NULL),
(11907466, 'Rama Ramdhani', 'L', 'RPL X-3', 'CIA 5', 579, NULL, NULL),
(11907467, 'Rangga Firmansyah', 'L', 'RPL X-3', 'CIS 6', 580, NULL, NULL),
(11907469, 'Rasnyal Rizqi Maulana', 'L', 'TBG X-1', 'TAJ 3', 581, NULL, NULL),
(11907470, 'Ratna Wita', 'P', 'RPL X-1', 'CIC 3', 582, NULL, NULL),
(11907471, 'Ratu Cellinda Amrillah', 'P', 'MMD X-2', 'CIC 7', 583, NULL, NULL),
(11907472, 'Rega Bagus Ardhana', 'L', 'TKJ X-1', 'TAJ 3', 584, NULL, NULL),
(11907473, 'Rendy Dwi Anggoro', 'L', 'TKJ X-1', 'CIA 4', 585, NULL, NULL),
(11907474, 'Reski Junaidi Shalat', 'L', 'RPL X-2', 'CIS 3', 586, NULL, NULL),
(11907475, 'Resti Aprida Dewi', 'P', 'BDP X-1', 'TAJ 4', 587, NULL, NULL),
(11907476, 'Reyfan Ibramsyah', 'L', 'RPL X-4', 'CIC 1', 588, NULL, NULL),
(11907477, 'Ricky Erlangga Handoko', 'L', 'RPL X-2', 'CIC 1', 589, NULL, NULL),
(11907478, 'Ridho Satriaji Yudhantara', 'L', 'RPL X-4', 'CIA 1', 590, NULL, NULL),
(11907479, 'Ridho Syahputra', 'L', 'TKJ X-2', 'CIC 1', 591, NULL, NULL),
(11907480, 'Rifansyah Arsyahdana', 'L', 'TKJ X-1', 'CIB 1', 592, NULL, NULL),
(11907481, 'Rifaul Muzammil', 'L', 'BDP X-2', 'CIC 7', 593, NULL, NULL),
(11907482, 'Riki Suryo Nugroho', 'L', 'BDP X-1', 'CIA 2', 594, NULL, NULL),
(11907483, 'Rino Eka Putra Hariyanto', 'L', 'TKJ X-3', 'WIK 3', 595, NULL, NULL),
(11907484, 'Ripah Nuraeni', 'P', 'OTKP X-2', 'CIS 1', 596, NULL, NULL),
(11907485, 'Riska Tsania Wati', 'P', 'OTKP X-1', 'CIC 3', 597, NULL, NULL),
(11907486, 'Risma Aisyah Wulandari', 'P', 'BDP X-2', 'CIA 2', 598, NULL, NULL),
(11907487, 'Risma Danesuari', 'P', 'OTKP X-2', 'CIB 3', 599, NULL, NULL),
(11907488, 'Rita Anggraeni', 'P', 'MMD X-1', 'SUK 1', 600, NULL, NULL),
(11907489, 'Rivaldi Herdiana', 'L', 'TKJ X-2', 'CIA 1', 601, NULL, NULL),
(11907490, 'Rivan Adithya Sembiring', 'L', 'TKJ X-1', 'CIA 3', 602, NULL, NULL),
(11907491, 'Riya Oktapiani', 'P', 'BDP X-1', 'CIS 2', 603, NULL, NULL),
(11907492, 'Rizka Ristianti', 'P', 'MMD X-2', 'WIK 4', 604, NULL, NULL),
(11907493, 'Rizki Galih Saputra', 'L', 'BDP X-2', 'WIK 2', 605, NULL, NULL),
(11907494, 'Rizky Maulana', 'L', 'HTL X-2', 'CIB 3', 606, NULL, NULL),
(11907495, 'Rizky Muhartyas Perdana', 'L', 'TKJ X-4', 'CIA 5', 607, NULL, NULL),
(11907496, 'Rizky Mutiara Prysna', 'P', 'OTKP X-1', 'CIS 5', 608, NULL, NULL),
(11907497, 'Rojak Muttaqin', 'L', 'TKJ X-4', 'CIB 2', 609, NULL, NULL),
(11907498, 'Rojwa Atikarimah', 'P', 'HTL X-1', 'CIA 1', 610, NULL, NULL),
(11907499, 'Rufaida Syifa Rohma', 'P', 'TBG X-1', 'CIB 2', 611, NULL, NULL),
(11907500, 'Ruri Nurul Triani', 'P', 'TBG X-2', 'CIB 1', 612, NULL, NULL),
(11907501, 'Sabrina Salsabila', 'P', 'TBG X-2', 'CIB 3', 613, NULL, NULL),
(11907502, 'Saepul Anwar', 'L', 'TKJ X-4', 'CIS 6', 614, NULL, NULL),
(11907503, 'Safira Aliyah Affandi', 'P', 'MMD X-1', 'CIB 2', 615, NULL, NULL),
(11907504, 'Salma Anisah', 'P', 'HTL X-1', 'CIS 3', 616, NULL, NULL),
(11907505, 'Salma Nuraini', 'P', 'HTL X-2', 'CIC 5', 617, NULL, NULL),
(11907506, 'Salma Rahmadini', 'P', 'OTKP X-1', 'TAJ 4', 618, NULL, NULL),
(11907507, 'Salmiatun Nazmi', 'P', 'TBG X-1', 'CIA 4', 619, NULL, NULL),
(11907508, 'Salsakayla Khoirunnisa Maryani', 'P', 'OTKP X-2', 'SUK 1', 620, NULL, NULL),
(11907509, 'Salsa Mutiara Azzahra', 'P', 'HTL X-1', 'SUK 2', 621, NULL, NULL),
(11907510, 'Salsa Sri Ramadhan', 'P', 'HTL X-2', 'CIS 5', 622, NULL, NULL),
(11907511, 'Salsabila', 'P', 'BDP X-2', 'CIS 1', 623, NULL, NULL),
(11907512, 'Salsabila Putri', 'P', 'MMD X-2', 'SUK 1', 624, NULL, NULL),
(11907513, 'Salwa Anandya Maharjo', 'P', 'OTKP X-2', 'CIB 2', 625, NULL, NULL),
(11907514, 'Salwa Dewi Siti Kamilla', 'P', 'BDP X-2', 'CIA 2', 626, NULL, NULL),
(11907515, 'Salwa Nuraini', 'P', 'OTKP X-2', 'CIC 5', 627, NULL, NULL),
(11907516, 'Sandi Juanda', 'L', 'BDP X-1', 'CIS 5', 628, NULL, NULL),
(11907517, 'Sefhira Alya Rachman', 'P', 'HTL X-1', 'CIS 3', 629, NULL, NULL),
(11907518, 'Selvina Rahmatul Jannah', 'P', 'OTKP X-1', 'CIA 1', 630, NULL, NULL),
(11907519, 'Septia Nabila', 'P', 'TBG X-1', 'CIA 3', 631, NULL, NULL),
(11907520, 'Septiani Pujiastuti', 'P', 'HTL X-2', 'CIS 3', 632, NULL, NULL),
(11907521, 'Septia Andriyani', 'P', 'HTL X-2', 'CIS 5', 633, NULL, NULL),
(11907522, 'Shela Fadilah', 'P', 'OTKP X-2', 'CIS 5', 634, NULL, NULL),
(11907523, 'Shelia Salsabila Putri', 'P', 'OTKP X-1', 'CIC 1', 635, NULL, NULL),
(11907524, 'Sheliq Lillaiqa', 'P', 'HTL X-1', 'CIC 6', 636, NULL, NULL),
(11907525, 'Shena Shafara', 'P', 'OTKP X-1', 'CIC 3', 637, NULL, NULL),
(11907526, 'Serina Nur Latifah', 'P', 'OTKP X-2', 'CIC 5', 638, NULL, NULL),
(11907527, 'Sherly Putri Zalianti', 'P', 'OTKP X-1', 'CIA 3', 639, NULL, NULL),
(11907528, 'Shirin Nabilah', 'P', 'OTKP X-2', 'TAJ 2', 640, NULL, NULL),
(11907529, 'Sifa Dwi Azkhia', 'P', 'TBG X-1', 'CIC 4', 641, NULL, NULL),
(11907530, 'Sifa Ulviawati', 'P', 'OTKP X-2', 'CIA 4', 642, NULL, NULL),
(11907531, 'Silva Marliana', 'P', 'OTKP X-2', 'CIB 2', 643, NULL, NULL),
(11907532, 'Silvia Eka Safitri', 'P', 'TBG X-1', 'WIK 2', 644, NULL, NULL),
(11907533, 'Silvia Selomita', 'P', 'BDP X-1', 'CIS 1', 645, NULL, NULL),
(11907534, 'Silvy Juliana Putri Sasmita', 'P', 'OTKP X-1', 'CIC 6', 646, NULL, NULL),
(11907535, 'Sintia Sopian Octaviani', 'P', 'HTL X-2', 'TAJ 3', 647, NULL, NULL),
(11907536, 'Siti Arianti Mawardinur', 'P', 'RPL X-4', 'CIB 3', 648, NULL, NULL),
(11907537, 'Siti Arum Sari', 'P', 'OTKP X-2', 'CIS 1', 649, NULL, NULL),
(11907538, 'Siti Herawati', 'P', 'OTKP X-1', 'CIB 2', 650, NULL, NULL),
(11907539, 'Siti Iswanti', 'P', 'RPL X-1', 'CIS 2', 651, NULL, NULL),
(11907540, 'Siti Jenar Rainisa Ayu', 'P', 'TBG X-2', 'CIA 5', 652, NULL, NULL),
(11907542, 'Siti Meilani', 'P', 'TBG X-1', 'CIB 3', 653, NULL, NULL),
(11907543, 'Siti Nabila', 'P', 'TBG X-1', 'CIS 1', 654, NULL, NULL),
(11907544, 'Siti Nur Aisah', 'P', 'OTKP X-1', 'CIC 6', 655, NULL, NULL),
(11907545, 'Siti Nur Alawiyah', 'P', 'RPL X-2', 'CIA 1', 656, NULL, NULL),
(11907546, 'Siti Nuraeni', 'P', 'TBG X-2', 'CIB 3', 657, NULL, NULL),
(11907547, 'Siti Nuraeni Sulistiawati', 'P', 'HTL X-2', 'CIS 6', 658, NULL, NULL),
(11907548, 'Siti Nurhaliza', 'P', 'BDP X-2', 'TAJ 4', 659, NULL, NULL),
(11907549, 'Siti Nurkilah', 'P', 'HTL X-1', 'CIA 3', 660, NULL, NULL),
(11907550, 'Siti Nurul Anggraeni', 'P', 'TBG X-2', 'CIC 1', 661, NULL, NULL),
(11907551, 'Siti Nurul Azizah', 'P', 'OTKP X-2', 'CIA 3', 662, NULL, NULL),
(11907552, 'Siti Rahma Fitriyani', 'P', 'OTKP X-2', 'CIB 3', 663, NULL, NULL),
(11907553, 'Siti Rahma Rudiana Putri', 'P', 'OTKP X-2', 'CIA 4', 664, NULL, NULL),
(11907554, 'Siti Rahmawati', 'P', 'TBG X-1', 'CIA 2', 665, NULL, NULL),
(11907555, 'Siti Ramadhanti', 'P', 'HTL X-2', 'CIS 3', 666, NULL, NULL),
(11907556, 'Siti Safa Adinda', 'P', 'HTL X-1', 'CIS 6', 667, NULL, NULL),
(11907557, 'Siti Sarah Nurohmah', 'P', 'TBG X-2', 'TAJ 3', 668, NULL, NULL),
(11907558, 'Siti Saripah', 'P', 'HTL X-1', 'CIS 3', 669, NULL, NULL),
(11907559, 'Siti Shahriani', 'P', 'TBG X-1', 'CIA 2', 670, NULL, NULL),
(11907560, 'Siti Sipa', 'P', 'HTL X-1', 'CIA 3', 671, NULL, NULL),
(11907561, 'Siti Syanova Nurdiana', 'P', 'BDP X-1', 'CIS 2', 672, NULL, NULL),
(11907562, 'Siti Syukriah Irsyad', 'P', 'TBG X-1', 'CIB 2', 673, NULL, NULL),
(11907563, 'Siti Windi Meiliasari', 'P', 'OTKP X-2', 'TAJ 2', 674, NULL, NULL),
(11907564, 'Sofia Zamil', 'P', 'TBG X-1', 'CIC 3', 675, NULL, NULL),
(11907565, 'Stela Cahya Mutiarani', 'P', 'HTL X-1', 'TAJ 3', 676, NULL, NULL),
(11907566, 'Stevi Andria Lutfiani', 'P', 'OTKP X-2', 'CIC 7', 677, NULL, NULL),
(11907567, 'Suci Anggraeni', 'P', 'OTKP X-2', 'CIA 2', 678, NULL, NULL),
(11907568, 'Suci Rahayu Melany', 'P', 'OTKP X-1', 'TAJ 2', 679, NULL, NULL),
(11907569, 'Surya Andi Parsaoran Lumban Toruan', 'L', 'TKJ X-3', 'WIK 3', 680, NULL, NULL),
(11907570, 'Syabina Malixa Syekh Noor', 'P', 'MMD X-1', 'CIC 6', 681, NULL, NULL),
(11907572, 'Syifa Luthfiyah', 'P', 'TBG X-1', 'CIB 2', 682, NULL, NULL),
(11907573, 'Syifa Nurrohmah', 'P', 'MMD X-2', 'CIC 5', 683, NULL, NULL),
(11907574, 'Syifa Silviyanti Zahra', 'P', 'OTKP X-1', 'CIA 4', 684, NULL, NULL),
(11907575, 'Thania Azahra', 'P', 'TBG X-2', 'CIS 1', 685, NULL, NULL),
(11907576, 'Tasya Istiana', 'P', 'HTL X-1', 'WIK 3', 686, NULL, NULL),
(11907577, 'Tazkia Putri Naya Syahiva', 'P', 'TBG X-2', 'TAJ 3', 687, NULL, NULL),
(11907578, 'Teuku Ardiansyah', 'L', 'TKJ X-4', 'CIA 3', 688, NULL, NULL),
(11907579, 'Thomas Kafi', 'L', 'RPL X-2', 'SUK 1', 689, NULL, NULL),
(11907580, 'Tia Daneswari', 'P', 'OTKP X-2', 'CIA 3', 690, NULL, NULL),
(11907581, 'Toni Nur Hidayat', 'L', 'TBG X-1', 'CIS 1', 691, NULL, NULL),
(11907582, 'Tri Puji Lestari', 'P', 'TBG X-2', 'CIS 6', 692, NULL, NULL),
(11907583, 'Triyani Agustina', 'P', 'TBG X-2', 'CIS 3', 693, NULL, NULL),
(11907584, 'Ujang Makmur', 'L', 'TKJ X-4', 'CIC 6', 694, NULL, NULL),
(11907586, 'Vikry Eliyansyah', 'P', 'MMD X-1', 'CIS 6', 695, NULL, NULL),
(11907587, 'Vini Mutia Destiani', 'P', 'TBG X-1', 'TAJ 5', 696, NULL, NULL),
(11907588, 'Virliyanda Zaelin Erfina', 'P', 'OTKP X-1', 'CIC 3', 697, NULL, NULL),
(11907589, 'Wahyudin', 'L', 'MMD X-1', 'CIS 6', 698, NULL, NULL),
(11907590, 'Widiya Lestari', 'P', 'TBG X-1', 'CIA 3', 699, NULL, NULL),
(11907591, 'Widya Fardianti', 'P', 'OTKP X-1', 'CIA 3', 700, NULL, NULL),
(11907592, 'Widia Maryam', 'P', 'HTL X-2', 'WIK 2', 701, NULL, NULL),
(11907593, 'Williams Tyndall Lawrence', 'L', 'MMD X-1', 'TAJ 2', 702, NULL, NULL),
(11907594, 'Windi Alidawati', 'P', 'MMD X-2', 'CIC 4', 703, NULL, NULL),
(11907595, 'Wiraswanti Putri Dwi Nanda', 'P', 'OTKP X-1', 'CIS 4', 704, NULL, NULL),
(11907596, 'Wishal Satya Rahadi', 'L', 'TBG X-1', 'TAJ 4', 705, NULL, NULL),
(11907597, 'Yandi Aryana', 'L', 'RPL X-4', 'CIS 5', 706, NULL, NULL),
(11907598, 'Yeni Angelina Sibarani', 'P', 'TBG X-2', 'TAJ 3', 707, NULL, NULL),
(11907599, 'Yesi Asvia', 'P', 'RPL X-4', 'CIS 1', 708, NULL, NULL),
(11907600, 'Yesisca Aulia Marneta', 'P', 'HTL X-1', 'CIS 5', 709, NULL, NULL),
(11907601, 'Yoga Pratama', 'L', 'RPL X-2', 'SUK 1', 710, NULL, NULL),
(11907602, 'Yogi Pratama', 'L', 'TKJ X-2', 'TAJ 3', 711, NULL, NULL),
(11907603, 'Yuliani Sapitri', 'P', 'HTL X-1', 'TAJ 2', 712, NULL, NULL),
(11907604, 'Zahra Hadisttira', 'P', 'TBG X-2', 'TAJ 3', 713, NULL, NULL),
(11907605, 'Zahrani Putri Solehah', 'P', 'RPL X-1', 'CIA 5', 714, NULL, NULL),
(11907606, 'Zaskia Rahmani Fatima', 'P', 'TBG X-1', 'CIA 2', 715, NULL, NULL),
(11907607, 'Zefanya Natali Wijaya', 'P', 'OTKP X-2', 'TAJ 5', 716, NULL, NULL),
(11907608, 'Zelin Siti Anjeli', 'P', 'TBG X-1', 'CIA 2', 717, NULL, NULL),
(11907609, 'Zhafran Bintang Ramadhan', 'L', 'TKJ X-3', 'WIK 4', 718, NULL, NULL),
(11907610, 'Zhoultan Khafillah', 'L', 'TKJ X-3', 'CIA 5', 719, NULL, NULL),
(11907611, 'Zidane Zaki Al-Fiqri', 'L', 'TKJ X-3', 'CIC 6', 720, NULL, NULL),
(11907612, 'Zikra Nur Fakhira', 'P', 'MMD X-2', 'CIB 1', 721, NULL, NULL),
(11907613, 'Zulfanurdin Rifai', 'L', 'TKJ X-2', 'CIC 3', 722, NULL, NULL),
(11907614, 'Edgar Zefanya Suryadireja', 'L', 'HTL X-2', 'CIS 4', 723, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `id_pemilik`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'eri', '$2y$10$wRldVkl3lAUZGpgEabo5J.5jVyehZTD/MBksF8cy.fPVbRmsvNQ4W', 125, 'aZf6XnZ8laQM2zmGLazJmMtMcfJrMFehq5F9BKDxU8wFHbZGtKQ04jP10rZw', '2020-04-30 08:33:05', '2020-04-30 08:33:05'),
(8, 'ujang', '$2y$10$sfy2A4SbDYpV49f7Y5etO.ymv.56o1cuOrOcVQC1tmRwvHUUSSnhG', 190, NULL, '2020-04-30 09:35:34', '2020-04-30 09:35:34'),
(9, 'username', '$2y$10$d8CwwagsU138idsT7uukTevbUqoxwW5c0OSYjRtPa7hhV.AuFQIy.', 167, NULL, '2020-04-30 09:44:11', '2020-04-30 09:44:11'),
(10, 'admin', '$2y$10$9mwvocHbd2Gw9GGpWX1CB.97EaS0g1Aur5YMcKy4He301Lzfm4mku', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id_akun_unique` (`id_akun`);

--
-- Indeks untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id_aktifitas`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `guru_id_akun_unique` (`id_akun`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `ortu_id_akun_unique` (`id_akun`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `siswas_id_akun_unique` (`id_akun`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_id_pemilik_unique` (`id_pemilik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id_aktifitas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
