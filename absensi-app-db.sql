-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2025 at 06:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi-app-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_b3fb5cbf8bfd3f36444cd0090189189a', 'i:1;', 1752855524),
('laravel_cache_b3fb5cbf8bfd3f36444cd0090189189a:timer', 'i:1752855524;', 1752855524);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `radius_km` varchar(255) NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `address`, `latitude`, `longitude`, `radius_km`, `time_in`, `time_out`, `created_at`, `updated_at`) VALUES
(1, 'PT. Global Sekuriti Indonesia', 'admin@globalsekuritiindonesia.co.id', 'Gedung Graha Anugerah Lt.6, Jl. Teluk Betung No.42', '-6.19635166', '106.8213377', '2', '08:00', '17:00', '2025-07-16 23:41:09', '2025-07-18 09:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_12_155849_add_two_factor_columns_to_users_table', 1),
(5, '2025_07_12_161300_add_phone_role_at_users', 1),
(6, '2025_07_14_065016_add_some_field_to_users', 1),
(7, '2025_07_14_071623_create_personal_access_tokens_table', 1),
(8, '2025_07_17_030432_create_companies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'auth_token', 'd6bc5be715e433a7a93d4ae2bd0991bb58fdcf40e2baea2ce6bfbcc1be81ae27', '[\"*\"]', '2025-07-18 09:53:14', NULL, '2025-07-18 09:52:24', '2025-07-18 09:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iVKCId8REQ79wnExQzj0OGeDoYIiwV0VyrrlhV0p', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWRyRGJtN1lsSjVzSzk2V3RQMnFyQ1VocjVpa0w5UFJCZ2N1VE5zcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW5pZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO30=', 1752736400),
('QSLvhzptx1BoRSJc920V6KnDqtghfFcO2o8azSUl', 11, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUEdweFZSbTVMTWV3RkVrMGg5bzRPUlFGZGFqWFk4elN4bTNiUUt3TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW5pZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO30=', 1752856856);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `face_embedding` text DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `phone`, `role`, `position`, `department`, `face_embedding`, `img_url`) VALUES
(1, 'Prof. Raegan Hudson', 'rmurazik@example.org', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'HqmYda9ZpV', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(2, 'Eulah Bode', 'moses.heathcote@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'gegTe14bWJ', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(3, 'Mr. Cole Hammes DDS', 'greilly@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'XcDnNcYlwi', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(4, 'Ted Rosenbaum DVM', 'ruthie.rippin@example.net', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'dIR30q5aFW', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(5, 'Callie Oberbrunner', 'makenna91@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'ESfLXATRs5', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(6, 'Estefania Watsica', 'ndeckow@example.org', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'qHjVfnWQ8q', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(7, 'Randi Morissette Jr.', 'stella86@example.org', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'trw5XVCaJg', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(8, 'Eldon Nikolaus III', 'hoeger.maribel@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'xuYauxdYuq', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(9, 'Ms. Rosemarie Reichel', 'ifisher@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'WHMD8x0XJe', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(10, 'Antwan Spinka', 'bernard40@example.com', '2025-07-16 23:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'xDPQEeCFfU', '2025-07-16 23:41:09', '2025-07-16 23:41:09', NULL, 'user', NULL, NULL, NULL, NULL),
(11, 'Denny', 'dennyherfansya10@gmail.com', '2025-07-16 23:41:09', '$2y$12$EpCLCP7HSuBoZHwbAY2rTOrjtAmGEhkEqwTKayJsqUEOBtEuuqs4G', NULL, NULL, NULL, 'SFc3Ci2VA1', '2025-07-16 23:41:09', '2025-07-17 00:13:04', '021', 'admin', 'Apps Developer', 'IT', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
