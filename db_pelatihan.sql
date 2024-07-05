-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2024 pada 10.19
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pelatihan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gelombang`
--

CREATE TABLE `gelombang` (
  `id` int(11) NOT NULL,
  `nama_gelombang` varchar(15) NOT NULL,
  `aktif` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gelombang`
--

INSERT INTO `gelombang` (`id`, `nama_gelombang`, `aktif`, `created_at`, `update_at`) VALUES
(1, 'Gelombang 1', 1, '2024-06-19 02:25:35', '2024-06-19 02:25:35'),
(2, 'Gelombang 2', 0, '2024-06-19 02:25:35', '2024-06-19 02:25:35'),
(3, 'gelombang 5', 1, '2024-06-19 04:04:42', '2024-06-19 04:48:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `create_a` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `create_a`, `update_at`) VALUES
(2, 'Jaringan Komputer', '2024-05-14 05:00:13', '2024-05-14 05:00:13'),
(3, 'web progrmaing', '2024-05-14 05:43:47', '2024-05-14 05:43:47'),
(5, 'conten creator', '2024-05-16 02:20:12', '2024-05-16 02:20:12'),
(6, 'pendingin', '2024-05-16 02:20:38', '2024-05-16 02:20:38'),
(7, 'video editor', '2024-05-16 02:20:48', '2024-05-16 02:20:48'),
(8, 'Teknik Sepeda Motor', '2024-05-16 02:21:41', '2024-05-16 02:21:41'),
(9, 'Operator Komputer', '2024-05-16 02:21:54', '2024-05-16 02:21:54'),
(10, 'Make up Artis', '2024-05-16 02:22:18', '2024-05-16 02:22:18'),
(11, 'Barista', '2024-05-16 02:22:32', '2024-05-16 02:22:32'),
(12, 'Bahasa Ingris', '2024-05-16 02:22:56', '2024-05-16 02:22:56'),
(13, 'Bahasa Korea', '2024-05-16 02:23:05', '2024-05-16 02:23:05'),
(14, 'Teknik Komputer', '2024-05-16 02:23:28', '2024-05-16 02:23:28'),
(15, 'Tata Boga', '2024-05-16 02:23:37', '2024-05-16 02:23:37'),
(16, 'Tata Busana', '2024-05-16 02:23:50', '2024-05-16 02:23:50'),
(17, 'Desain Grafis', '2024-05-16 02:24:02', '2024-05-16 02:24:02'),
(18, 'Tata graha', '2024-05-16 02:24:27', '2024-05-16 02:24:27'),
(19, 'conten creator', '2024-05-17 06:04:46', '2024-05-17 06:04:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `nama_level`, `created_at`, `update_at`) VALUES
(1, 'Administrator', '2024-05-15 05:07:05', '2024-05-15 05:07:05'),
(2, 'Kepala', '2024-05-15 05:07:05', '2024-05-15 05:07:05'),
(3, 'admin', '2024-05-15 06:15:10', '2024-05-15 06:15:10'),
(4, 'kadmin1', '2024-05-15 06:15:22', '2024-05-15 06:15:22'),
(5, 'katel', '2024-05-15 06:20:19', '2024-05-15 06:20:19'),
(6, 'admin1234', '2024-05-15 06:21:21', '2024-05-15 06:21:21'),
(7, 'admin123', '2024-05-15 06:29:34', '2024-05-15 06:29:34'),
(8, 'Admin', '2024-06-19 02:31:32', '2024-06-19 02:31:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_wawancara`
--

CREATE TABLE `pertanyaan_wawancara` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_pertanyaan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pertanyaan_wawancara`
--

INSERT INTO `pertanyaan_wawancara` (`id`, `id_jurusan`, `nama_pertanyaan`, `created_at`, `update_at`) VALUES
(1, 3, 'sangat ok', '2024-05-17 06:13:41', '2024-05-17 06:13:41'),
(2, 5, 'ok', '2024-05-17 06:14:37', '2024-05-17 06:14:37'),
(3, 6, 'ok', '2024-05-17 06:17:23', '2024-05-17 06:17:23'),
(4, 3, 'tes', '2024-05-17 06:18:01', '2024-05-17 07:43:55'),
(6, 11, '123456', '2024-05-17 07:53:50', '2024-05-17 07:56:11'),
(8, 6, '6547898', '2024-05-17 07:57:38', '2024-05-17 07:57:38'),
(9, 17, 'ok man', '2024-05-17 07:57:55', '2024-05-17 07:57:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_gelombang` int(11) NOT NULL,
  `nik` varchar(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` int(13) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `gelombang` int(5) NOT NULL,
  `tahun_pelatihan` varchar(5) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `createt_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `id_jurusan`, `id_gelombang`, `nik`, `nama`, `email`, `hp`, `gender`, `alamat`, `pendidikan`, `gelombang`, `tahun_pelatihan`, `status`, `deleted`, `createt_at`, `update_at`) VALUES
(1, 4, 0, '145346585132132', 'moenir', 'moenir@gmail.com', 2147483647, 'Laki-laki', 'jakrta ', 'sma', 1, '2024', 3, 1, '2024-05-14 08:26:34', '2024-05-16 04:19:17'),
(2, 3, 0, '145346585132132', 'web programing', 'hisyam@gmail.com', 813, 'Laki-laki', 'jaktim', 's1', 1, '2024', 1, 1, '2024-05-15 01:44:31', '2024-05-16 04:18:38'),
(3, 2, 0, '145346585132132', 'moenir', 'admin@gmail.com', 12, '', 'jaksel', 'smk', 1, '2024', 3, 0, '2024-05-15 01:49:34', '2024-05-16 04:20:04'),
(4, 1, 0, '145346585132132', 'jojo', 'jo@gmail.com', 211, 'Laki-laki', 'jaksel', 's1', 1, '2024', 2, 1, '2024-05-15 02:46:28', '2024-05-16 04:20:19'),
(5, 3, 0, '317500022255447788', 'Moenir', 'moenir@gmail.com', 2147483647, 'Laki-laki', 'Jakarta Timur', 'S1', 1, '2024', NULL, 0, '2024-05-16 03:22:01', '2024-05-17 02:39:57'),
(6, 3, 0, '3175888999445566', 'anissa', 'annisa@gmail.com', 2147483647, 'Perempuan', 'Jakarta Pusat', 'Sma', 1, '2024', 2, 0, '2024-05-16 03:23:07', '2024-05-16 04:19:20'),
(7, 3, 0, '900000888899774455', 'Raziq', 'raziq@gmail.com', 2147483647, 'Laki-laki', 'Jakarta Selatan', 'smk', 1, '2024', 3, 0, '2024-05-16 03:24:01', '2024-05-16 04:19:27'),
(8, 5, 0, '9899898989899', 'Jojo', 'jojo@gmail.com', 2147483647, 'Laki-laki', 'Jakarta Utara', 'S1', 1, '2024', 3, 0, '2024-05-16 03:25:03', '2024-05-16 04:19:09'),
(9, 5, 0, '979797979788899', 'Goro', 'Goro@gmail.com', 2147483647, 'Perempuan', 'Jakarta Barat', 'smk', 1, '2024', 2, 0, '2024-05-16 03:25:56', '2024-05-16 07:49:06'),
(10, 5, 0, '6654654646644474', 'abel', 'abel@gmail.com', 2147483647, 'Laki-laki', 'Jakarta Selatan', 'smk', 1, '2024', 0, 0, '2024-05-16 03:27:22', '2024-05-16 07:58:03'),
(11, 7, 0, '9876543212323456', 'Miong', 'miong@gmail.com', 2147483647, 'Perempuan', 'Jakarta Timur', 'S1', 1, '2024', 1, 0, '2024-05-16 03:29:20', '2024-05-16 08:02:57'),
(12, 3, 0, '3175888999445566', 'mrmoenir', 'moenircyber@gmail.com', 2147483647, 'Laki-laki', '', 'skom', 0, '2024', NULL, 0, '2024-06-19 06:54:24', '2024-06-19 06:54:24'),
(13, 3, 0, '145346585132132', 'reno', 'reno@gmail.com', 2147483647, 'Laki-laki', 'jakarta Timur', 's3', 0, '2024', NULL, 0, '2024-06-19 06:56:14', '2024-06-19 06:56:14'),
(15, 3, 0, '5742357', 'gdtgd', 'fgfd@fgh.comn', 25742725, 'Laki-laki', 'thdht', 'gd', 0, '2024', NULL, 0, '2024-06-19 06:59:53', '2024-06-19 06:59:53'),
(16, 6, 0, '5742357', 'gdtgd', 'fgfd@fgh.comn', 25742725, 'Laki-laki', 'thdht', 'gd', 0, '2024', NULL, 0, '2024-06-19 07:00:34', '2024-06-19 07:00:34'),
(17, 6, 3, '5742357', 'gdtgd', 'fgfd@fgh.comn', 25742725, 'Laki-laki', 'thdht', 'gd', 0, '2024', NULL, 0, '2024-06-19 07:00:57', '2024-06-19 07:00:57'),
(18, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:01:38', '2024-06-19 07:01:38'),
(19, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:11:45', '2024-06-19 07:11:45'),
(20, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:11:51', '2024-06-19 07:11:51'),
(21, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:12:37', '2024-06-19 07:12:37'),
(22, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:13:27', '2024-06-19 07:13:27'),
(23, 13, 3, '3175888999445566', 'Nurriya', 'nurriya@gmail.com', 2147483647, 'Perempuan', 'Jakarta Selatan', 's3', 0, '2024', NULL, 0, '2024-06-19 07:13:55', '2024-06-19 07:13:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(50) NOT NULL,
  `stock_barang` int(100) NOT NULL,
  `gbr_brg` varchar(20) NOT NULL,
  `tgl_publish` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_barang`, `harga_barang`, `stock_barang`, `gbr_brg`, `tgl_publish`) VALUES
(4, 'Jaringan Komputer', 23444, 4, 'brg-1716270074.jpg', '2024-05-21'),
(5, 'Buku Olah Pikir Manusia', 95000, 50, 'brg-1716276105.jpg', '2024-05-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `id_level`, `nama`, `email`, `password`, `created_at`, `update_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-05-13 02:07:00', '2024-06-19 04:49:20'),
(2, 0, 'moenir', 'moenir@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-05-14 02:07:29', '2024-05-14 02:07:29'),
(3, 0, 'hisyam adha1', 'hisyam@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-05-14 02:08:20', '2024-05-14 04:22:47'),
(8, 0, 'annisa', 'annisa@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:47:38', '2024-05-16 02:47:38'),
(9, 0, 'jojo', 'jojo@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:48:17', '2024-05-16 02:48:17'),
(10, 0, 'zahra', 'zahra@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:48:33', '2024-05-16 02:48:33'),
(11, 0, 'miko', 'miko@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:49:19', '2024-05-16 02:49:19'),
(12, 0, 'abel', 'abel@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:51:14', '2024-05-16 02:51:14'),
(13, 0, 'goro', 'goro@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:51:29', '2024-05-16 02:51:29'),
(14, 0, 'prasetyo', 'prasetyo@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:51:49', '2024-05-16 02:51:49'),
(15, 0, 'reza', 'reza@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2024-05-16 02:55:20', '2024-05-16 02:55:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gelombang`
--
ALTER TABLE `gelombang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertanyaan_wawancara`
--
ALTER TABLE `pertanyaan_wawancara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gelombang`
--
ALTER TABLE `gelombang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan_wawancara`
--
ALTER TABLE `pertanyaan_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
