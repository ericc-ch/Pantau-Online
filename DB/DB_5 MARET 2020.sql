-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 12:50 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pantau`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id_aktifitas` bigint(20) UNSIGNED NOT NULL,
  `id_mapel` bigint(20) NOT NULL,
  `nama_aktifitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aktifitas`
--

INSERT INTO `aktifitas` (`id_aktifitas`, `id_mapel`, `nama_aktifitas`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ngaji', NULL, NULL),
(2, 1, 'Makan Sahur', '2020-05-03 16:11:36', '2020-05-03 16:11:36'),
(3, 1, 'Berbuka Puasa', '2020-05-03 16:11:50', '2020-05-03 16:11:50'),
(4, 1, 'Sholat Tarawih', '2020-05-03 16:12:03', '2020-05-03 16:12:03'),
(5, 1, 'Tadarus Al-Quran', '2020-05-03 16:12:15', '2020-05-03 16:12:15'),
(6, 3, 'Olahraga Ringan', '2020-05-03 16:12:26', '2020-05-03 16:12:26'),
(7, 2, 'Membersihkan rumah', '2020-05-03 16:12:42', '2020-05-03 16:12:42'),
(8, 2, 'Mengikuti pembelajaran online', '2020-05-03 16:12:54', '2020-05-03 16:12:54'),
(9, 1, 'Mengikuti kegiatan pesantren kilat online', '2020-05-03 16:13:16', '2020-05-03 16:13:16'),
(10, 1, 'Sodaqoh', '2020-05-03 16:15:45', '2020-05-03 16:15:45'),
(11, 1, 'Menyaksikan ceramah keagamaan melalui TV/Youtube', '2020-05-03 16:16:09', '2020-05-03 16:16:09'),
(12, 1, 'Doa Pagi (Agama Kristen)', '2020-05-03 16:16:41', '2020-05-03 16:16:41'),
(13, 1, 'Doa Siang (Agama Kristen)', '2020-05-03 16:17:05', '2020-05-03 16:17:05'),
(14, 1, 'Doa Sore (Agama Kristen)', '2020-05-03 16:17:30', '2020-05-03 16:17:30'),
(15, 1, '1.	Duduk hening/meditasi pernafasan (Agama Budha)', '2020-05-03 16:18:14', '2020-05-03 16:18:14'),
(16, 1, 'Doa pagi namakara gatha (Agama Budha)', '2020-05-03 16:19:00', '2020-05-03 16:19:00'),
(17, 1, 'Melafal mantra/ sutra (Agama Budha)', '2020-05-03 16:19:20', '2020-05-03 16:19:20'),
(18, 1, 'Doa pelimpahan jasa ( Etavata) - (Agama Budha)', '2020-05-03 16:19:37', '2020-05-03 16:19:37'),
(19, 1, 'Duduk hening/ meditasi pernafasan (Agama Budha)', '2020-05-03 16:19:57', '2020-05-03 16:19:57'),
(20, 1, 'Puja Tri Sandya (Agama Hindu)', '2020-05-03 16:20:43', '2020-05-03 16:20:43'),
(21, 1, 'Membaca Sri Gita Calista - 1 dokumentasi dengan voice note (Agama Hindu)', '2020-05-03 16:21:06', '2020-05-03 16:21:06'),
(22, 1, 'Menentukan dan renungkan sloka pilihan harian (Senin hingga Jumat) - (Agama Hindu)', '2020-05-03 16:21:22', '2020-05-03 16:21:22'),
(23, 1, 'Menuliskan terjemahan sloka pilihan harian dengan tulisan indah (Agama Hindu)', '2020-05-03 16:21:41', '2020-05-03 16:21:41'),
(24, 1, 'Tonton video YouTube - Channel Hindu Times: Jenis-jenis Hujan (Agama Hindu)', '2020-05-03 16:21:58', '2020-05-03 16:21:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id_aktifitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id_aktifitas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
