-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2024 pada 18.34
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amprofsekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `foto`, `deskripsi`, `penulis`, `created_at`, `updated_at`) VALUES
(1, 'Upacara Hari Kemerdekaan', 'FB-229._hut_ri_ke-77_2022_(cover).jpg', 'Sekolah mengadakan upacara untuk memperingati Hari Kemerdekaan dengan khidmat.', 'Admin', '2024-06-15 01:00:00', '2024-06-16 09:25:09'),
(2, 'Lomba Cerdas Cermat', 'FB-CERDAS-CERMAT.jpg', 'Tim sekolah memenangkan lomba cerdas cermat tingkat nasional.', 'Admin', '2024-06-10 02:00:00', '2024-06-16 09:26:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `alamat`, `email`, `telpon`, `instagram`, `facebook`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'Jl. Raya Pendidikan No.123, Jakarta', 'info@sekolah.id', '021-1234567', 'sekolah_insta', 'sekolah_fb', 'sekolah_tw', '2024-06-01 01:00:00', '2024-06-01 01:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ekstrakulikuler`
--

INSERT INTO `ekstrakulikuler` (`id`, `nama`, `deskripsi`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Pramuka', 'Kegiatan Pramuka untuk melatih kemandirian dan kepemimpinan siswa.', 'Eks-DSCF5285-scaled.jpg', '2024-06-01 01:00:00', '2024-06-16 08:36:37'),
(2, 'Basket', 'Tim basket sekolah sering mengikuti kejuaraan antar sekolah.', 'Eks-https___asset.kgnewsroom.com_photo_pre_2023_11_17_e27a51a6-fba3-4b33-9fd6-6a5efcb5dbbf_jpg.jpg', '2024-06-01 01:00:00', '2024-06-16 08:37:13');

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
-- Struktur dari tabel `gurutendik`
--

CREATE TABLE `gurutendik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gurutendik`
--

INSERT INTO `gurutendik` (`id`, `nama`, `jabatan`, `motto`, `foto`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'Budi Santoso', 'Kepala Sekolah', 'Mendidik dengan hati nurani.', 'GTK-1501578764_user.jpg', 'budi_fb', 'budi_insta', 'budi_tw', '2024-06-01 01:00:00', '2024-06-16 08:42:38'),
(2, 'Siti Aminah', 'Guru Matematika', 'Matematika itu menyenangkan.', 'GTK-a552b0adc350b6e852c64d0134840374.jpg', 'siti_fb', 'siti_insta', 'siti_tw', '2024-06-01 01:00:00', '2024-06-16 08:42:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_pendaftaran`
--

CREATE TABLE `informasi_pendaftaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `informasi_pendaftaran`
--

INSERT INTO `informasi_pendaftaran` (`id`, `gambar`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pendaftaran.jpg', 'Pendaftaran siswa baru tahun ajaran 2024/2025 telah dibuka.', 1, '2024-06-01 01:00:00', '2024-06-01 01:00:00');

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
(4, '2020_12_26_114653_create_profile_madrasah_table', 1),
(5, '2020_12_27_175723_create_ekstrakulikuler_table', 1),
(6, '2020_12_28_062834_create_gurutendik_table', 1),
(7, '2020_12_28_155258_create_contact_table', 1),
(8, '2020_12_28_172531_create_berita_table', 1),
(9, '2021_01_01_143849_create_informasi_pendaftaran_table', 1);

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
-- Struktur dari tabel `profile_madrasah`
--

CREATE TABLE `profile_madrasah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rombel` int(11) NOT NULL,
  `jumlah_siswa` int(11) NOT NULL,
  `jumlah_guru` int(11) NOT NULL,
  `jumlah_tendik` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile_madrasah`
--

INSERT INTO `profile_madrasah` (`id`, `nama`, `deskripsi`, `gambar`, `logo`, `jumlah_rombel`, `jumlah_siswa`, `jumlah_guru`, `jumlah_tendik`, `created_at`, `updated_at`) VALUES
(1, 'SMP Negeri 1 Jakarta', 'SMP Negeri 1 Jakarta adalah sekolah unggulan dengan berbagai prestasi.', 'GP-2022-06-04.jpg', 'LP-Logo_SMP_Negeri_1.svg.png', 24, 800, 50, 20, '2024-06-01 01:00:00', '2024-06-16 08:40:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2024-06-01 01:00:00', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', NULL, '2024-06-01 01:00:00', '2024-06-01 01:00:00'),
(2, 'Samsudin', 'samsudin@gmail.com', NULL, '$2y$10$b965gdsAG2fZ/WOI/P.1/ut1c2j1rTi.LoSij64vO3d0PdxZRYf8e', NULL, '2024-06-16 09:14:49', '2024-06-16 09:14:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gurutendik`
--
ALTER TABLE `gurutendik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi_pendaftaran`
--
ALTER TABLE `informasi_pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `profile_madrasah`
--
ALTER TABLE `profile_madrasah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gurutendik`
--
ALTER TABLE `gurutendik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `informasi_pendaftaran`
--
ALTER TABLE `informasi_pendaftaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `profile_madrasah`
--
ALTER TABLE `profile_madrasah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
