-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2024 at 01:30 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_11_011252_create_m_level_table', 1),
(6, '2024_09_11_012310_create_m_kategori_table', 1),
(7, '2024_09_11_012359_create_m_supplier_table', 1),
(8, '2024_09_11_014042_create_m_user_table', 1),
(9, '2024_09_11_020837_create_m_barang_table', 1),
(10, '2024_09_11_021101_create_t_penjualan_table', 1),
(11, '2024_09_11_021121_create_t_stok_table', 1),
(12, '2024_09_11_021213_create_t_penjualan_detail', 1),
(13, '2024_09_11_035525_create_m_supplier_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'BRG01', 'TV', 3000000, 3500000, NULL, NULL),
(2, 1, 'BRG02', 'Laptop', 5000000, 5500000, NULL, NULL),
(3, 1, 'BRG03', 'Kulkas', 2500000, 3000000, NULL, NULL),
(4, 2, 'BRG04', 'Sofa', 1500000, 1800000, NULL, NULL),
(5, 2, 'BRG05', 'Meja', 500000, 700000, NULL, NULL),
(6, 2, 'BRG06', 'Kursi', 300000, 500000, NULL, NULL),
(7, 3, 'BRG07', 'Kaos', 50000, 75000, NULL, NULL),
(8, 3, 'BRG08', 'Celana', 100000, 150000, NULL, NULL),
(9, 3, 'BRG09', 'Jaket', 200000, 250000, NULL, NULL),
(10, 4, 'BRG10', 'Roti', 20000, 30000, NULL, NULL),
(11, 4, 'BRG11', 'Biskuit', 15000, 25000, NULL, NULL),
(12, 4, 'BRG12', 'Cake', 50000, 75000, NULL, NULL),
(13, 5, 'BRG13', 'Susu', 10000, 20000, NULL, NULL),
(14, 5, 'BRG14', 'Jus', 5000, 10000, NULL, NULL),
(15, 5, 'BRG15', 'Teh', 15000, 25000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'KTG01', 'Elektronik', NULL, NULL),
(2, 'KTG02', 'Furnitur', NULL, NULL),
(3, 'KTG03', 'Pakaian', NULL, NULL),
(4, 'KTG04', 'Makanan', NULL, NULL),
(5, 'KTG05', 'Minuman', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SUP01', 'PT. Sumber Makmur', 'Jl. Raya Industri No. 15, Jakarta', NULL, NULL),
(2, 'SUP02', 'CV. Maju Jaya', 'Jl. Merdeka No. 10, Bandung', NULL, NULL),
(3, 'SUP03', 'UD. Toko Sukses', 'Jl. Veteran No. 22, Surabaya', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Administrator', '$2y$10$IE1mnXs.tvkaRxytPjdQreH.X6rODSE33FtTJDdUhACNXEq/vT9qq', NULL, NULL),
(2, 2, 'manager', 'Manager', '$2y$10$DYXPNE.u/mVe94RzB1jC1OKx72yY3s1wI4W2c9rfYQCfNLlRF5rAe', NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$10$0kRCf32r/XBlBJC0RsfsTueGYoZcCxTbXw.rAPV/H02JDy8L.ND9K', NULL, NULL),
(5, 3, 'customer - 1', 'Pelanggan Pertama', '$2y$10$21j5AKHb.yhqfqYh6iiDf.P51WLQGtLhpVTWwlrFHjqyIfdpICF.S', NULL, '2024-09-13 23:59:01'),
(6, 2, 'manager_dua', 'Manager 2', '$2y$10$PwmHbSZ5RzG9PLKZ4kVvpu0LdOrjFFLHD7kype7YHbWJepVWNsCTy', '2024-09-19 03:45:51', '2024-09-19 03:45:51'),
(7, 2, 'manager22', 'Manager Dua Dua', '$2y$10$4D49L90EQ16PoEDMieb60um/xGXzcGdzZNr089vGM1emzKr3/W5mS', '2024-09-19 05:19:00', '2024-09-19 05:19:00'),
(8, 2, 'manager33', 'Manager Tiga Tiga', '$2y$10$4Ho0vnEDJLluupdbgdgGCudCOmEeOBqiDNHkzVAxiE6TBbD29iRSC', '2024-09-19 05:29:33', '2024-09-19 05:29:33'),
(10, 2, 'manager56', 'Manager55', '$2y$10$wR2RuJq62nrkBTlWPSp5s.GItQ4eDVLIsD3l2WwFxUl5Vr9pEAr5K', '2024-09-19 06:59:04', '2024-09-19 06:59:04'),
(11, 2, 'manager12', 'Manager11', '$2y$10$7DDwQ3GXj03vHh.op4dwvu5zJZ3QQjBFQcnXQAR18rMREf3f1kf/C', '2024-09-19 07:16:33', '2024-09-19 07:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'Andi', 'TRX001', '2024-09-11 03:35:50', NULL, NULL),
(2, 2, 'Budi', 'TRX002', '2024-09-11 03:35:50', NULL, NULL),
(3, 3, 'Cici', 'TRX003', '2024-09-11 03:35:50', NULL, NULL),
(4, 1, 'Dodi', 'TRX004', '2024-09-11 03:35:50', NULL, NULL),
(5, 2, 'Eka', 'TRX005', '2024-09-11 03:35:50', NULL, NULL),
(6, 3, 'Fani', 'TRX006', '2024-09-11 03:35:50', NULL, NULL),
(7, 1, 'Gina', 'TRX007', '2024-09-11 03:35:50', NULL, NULL),
(8, 2, 'Hadi', 'TRX008', '2024-09-11 03:35:50', NULL, NULL),
(9, 3, 'Indra', 'TRX009', '2024-09-11 03:35:50', NULL, NULL),
(10, 1, 'Joni', 'TRX010', '2024-09-11 03:35:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3500000, 1, NULL, NULL),
(2, 1, 2, 5500000, 1, NULL, NULL),
(3, 1, 3, 1800000, 1, NULL, NULL),
(4, 2, 4, 700000, 1, NULL, NULL),
(5, 2, 5, 75000, 2, NULL, NULL),
(6, 2, 6, 150000, 1, NULL, NULL),
(7, 3, 7, 30000, 3, NULL, NULL),
(8, 3, 8, 25000, 2, NULL, NULL),
(9, 3, 9, 20000, 1, NULL, NULL),
(10, 4, 10, 10000, 5, NULL, NULL),
(11, 4, 1, 3500000, 1, NULL, NULL),
(12, 4, 2, 5500000, 1, NULL, NULL),
(13, 5, 3, 1800000, 2, NULL, NULL),
(14, 5, 4, 700000, 2, NULL, NULL),
(15, 5, 5, 75000, 3, NULL, NULL),
(16, 6, 6, 150000, 2, NULL, NULL),
(17, 6, 7, 30000, 1, NULL, NULL),
(18, 6, 8, 25000, 3, NULL, NULL),
(19, 7, 9, 20000, 4, NULL, NULL),
(20, 7, 10, 10000, 3, NULL, NULL),
(21, 7, 1, 3500000, 1, NULL, NULL),
(22, 8, 2, 5500000, 1, NULL, NULL),
(23, 8, 3, 1800000, 1, NULL, NULL),
(24, 8, 4, 700000, 2, NULL, NULL),
(25, 9, 5, 75000, 1, NULL, NULL),
(26, 9, 6, 150000, 1, NULL, NULL),
(27, 9, 7, 30000, 3, NULL, NULL),
(28, 10, 8, 25000, 2, NULL, NULL),
(29, 10, 9, 20000, 1, NULL, NULL),
(30, 10, 10, 10000, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-09-11 03:39:25', 50, NULL, NULL),
(2, 2, 1, '2024-09-11 03:39:25', 30, NULL, NULL),
(3, 3, 1, '2024-09-11 03:39:25', 20, NULL, NULL),
(4, 4, 1, '2024-09-11 03:39:25', 40, NULL, NULL),
(5, 5, 1, '2024-09-11 03:39:25', 100, NULL, NULL),
(6, 6, 1, '2024-09-11 03:39:25', 60, NULL, NULL),
(7, 7, 1, '2024-09-11 03:39:25', 80, NULL, NULL),
(8, 8, 1, '2024-09-11 03:39:25', 90, NULL, NULL),
(9, 9, 1, '2024-09-11 03:39:25', 110, NULL, NULL),
(10, 10, 1, '2024-09-11 03:39:25', 120, NULL, NULL),
(11, 11, 1, '2024-09-11 03:39:25', 70, NULL, NULL),
(12, 12, 1, '2024-09-11 03:39:25', 50, NULL, NULL),
(13, 13, 1, '2024-09-11 03:39:25', 130, NULL, NULL),
(14, 14, 1, '2024-09-11 03:39:25', 140, NULL, NULL),
(15, 15, 1, '2024-09-11 03:39:25', 90, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD UNIQUE KEY `m_barang_barang_kode_unique` (`barang_kode`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD UNIQUE KEY `t_penjualan_penjualan_kode_unique` (`penjualan_kode`),
  ADD KEY `t_penjualan_user_id_foreign` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_barang_id_foreign` (`barang_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_foreign` (`penjualan_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_barang_id_foreign` (`barang_id`),
  ADD KEY `t_stok_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
