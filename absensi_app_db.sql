-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 05:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time DEFAULT NULL,
  `latlon_in` varchar(255) NOT NULL,
  `latlon_out` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `date`, `time_in`, `time_out`, `latlon_in`, `latlon_out`, `created_at`, `updated_at`) VALUES
(1, 1, '1995-09-26', '15:45:22', '07:54:53', '78.808375,121.463777', '-35.147962,-78.64515', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(2, 1, '1974-11-21', '12:31:55', '10:04:54', '-89.268216,48.367971', '17.150085,-72.373992', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(3, 1, '1986-05-29', '10:40:58', '01:53:59', '0.127669,-32.985082', '-46.53866,126.285844', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(4, 1, '2011-04-12', '06:03:46', '01:01:28', '6.559683,52.631735', '52.614046,111.985692', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(5, 1, '2013-10-27', '14:48:43', '23:20:52', '-5.638089,-2.998819', '-80.200039,99.854255', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(6, 1, '1970-01-12', '21:48:44', '02:40:37', '-76.582164,-58.399511', '76.476518,170.776004', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(7, 1, '1981-06-18', '09:27:17', '18:16:27', '39.096647,-8.888256', '-31.260863,81.922705', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(8, 1, '1974-11-04', '13:17:53', '13:05:51', '-53.57376,-77.137608', '-56.552989,58.287103', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(9, 1, '1978-01-14', '07:11:29', '21:07:43', '74.876202,139.035641', '-19.586774,-97.465986', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(10, 1, '1975-06-18', '17:17:16', '03:37:06', '-43.123131,-25.924781', '-35.592045,-144.666076', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(11, 1, '1992-05-17', '23:23:45', '17:28:07', '46.044122,-174.165778', '49.387307,138.037295', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(12, 1, '1985-11-23', '08:56:56', '15:23:20', '87.782654,163.044631', '-46.929802,-84.545636', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(13, 1, '2018-09-04', '22:27:06', '18:08:03', '-48.046364,171.710366', '33.172815,45.420409', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(14, 1, '1989-11-23', '22:10:38', '04:33:30', '-61.067688,102.260852', '-49.824319,154.177523', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(15, 1, '2005-12-24', '14:44:00', '07:11:47', '70.207278,-69.711209', '15.55523,151.51317', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(16, 1, '1979-10-22', '20:06:16', '21:02:04', '88.671259,-42.8621', '-33.414714,67.115028', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(17, 1, '2019-09-05', '17:38:13', '04:54:33', '-51.938485,62.334852', '-29.791714,-104.126762', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(18, 1, '1977-05-22', '04:58:17', '16:52:42', '4.018332,-129.681604', '8.289507,89.465743', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(19, 1, '1986-05-28', '23:28:35', '01:42:57', '77.472515,116.069163', '-41.11532,154.803801', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(20, 1, '1987-05-28', '06:31:28', '15:51:17', '88.398905,-87.453035', '-44.293902,61.126585', '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(22, 11, '2025-10-22', '04:12:45', '04:13:08', '-6.1924313,106.7979106', '-6.192432,106.7979306', '2025-10-21 21:12:45', '2025-10-21 21:13:08'),
(23, 10, '2025-10-22', '04:17:48', NULL, '-6.1924319,106.7979322', NULL, '2025-10-21 21:17:48', '2025-10-21 21:17:48'),
(24, 11, '2025-10-24', '03:19:50', '03:20:26', '-6.1924272,106.7979237', '-6.1924306,106.7979346', '2025-10-23 20:19:50', '2025-10-23 20:20:26'),
(25, 11, '2025-10-27', '06:20:42', '06:22:25', '-6.1924312,106.7979221', '-6.1924355,106.7979188', '2025-10-26 23:20:42', '2025-10-26 23:22:25'),
(26, 11, '2025-10-29', '03:10:16', '03:10:39', '-6.1924176,106.797913', '-6.1924185,106.7979215', '2025-10-28 20:10:16', '2025-10-28 20:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_0c9701bedc78e3e3a905433509693d8e', 'i:1;', 1761203580),
('laravel_cache_0c9701bedc78e3e3a905433509693d8e:timer', 'i:1761203580;', 1761203580),
('laravel_cache_973aec3e455e6ec63ec2033dd6667af7', 'i:1;', 1762230172),
('laravel_cache_973aec3e455e6ec63ec2033dd6667af7:timer', 'i:1762230171;', 1762230171),
('laravel_cache_c28052005505f5152becf808d59525f3', 'i:2;', 1761101309),
('laravel_cache_c28052005505f5152becf808d59525f3:timer', 'i:1761101309;', 1761101309);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `address`, `latitude`, `longitude`, `radius_km`, `time_in`, `time_out`, `created_at`, `updated_at`) VALUES
(1, 'PT DexD', 'admin@dexd.com', 'Jl. Letjen S. Parman No.Kav 73, RT.4/RW.3, Slipi, Kec. Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11410', '-6.193215405699379', '106.79762845342577', '2', '08:00', '17:00', '2025-10-21 19:45:56', '2025-10-21 19:45:56');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2025_07_17_030432_create_companies_table', 1),
(9, '2025_07_21_023853_create_attendances_table', 1),
(10, '2025_07_25_031618_create_permissions_table', 1),
(11, '2025_07_26_194130_create_notes_table', 1),
(12, '2025_11_03_033257_add_fcm_token_add_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_permission` date NOT NULL,
  `reason` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `date_permission`, `reason`, `image`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 10, '1985-12-07', 'Quaerat recusandae ea accusamus cupiditate laboriosam dolorum et. Deserunt nam iusto veniam quis impedit. Deleniti est et eaque libero et qui est.', 'https://via.placeholder.com/640x480.png/00bb55?text=dolores', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(2, 10, '1992-06-18', 'A asperiores facere modi accusamus. Voluptas voluptatem vel rerum voluptas vel nesciunt magnam perspiciatis. Dolor eius eos dolorem cumque quia.', 'https://via.placeholder.com/640x480.png/008811?text=sed', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(3, 10, '2009-12-06', 'Facilis qui deserunt numquam aut consectetur. Quis accusamus sunt facilis enim non sit consequuntur. Quia tenetur fugit maxime voluptatibus molestias.', 'https://via.placeholder.com/640x480.png/009900?text=et', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(4, 10, '2015-09-26', 'Suscipit temporibus aliquam sed omnis. Ex incidunt qui quia reiciendis iste voluptatem consequatur. Culpa qui veniam nihil.', 'https://via.placeholder.com/640x480.png/00eedd?text=qui', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(5, 10, '1972-05-21', 'Voluptatem ex molestias aut eum omnis velit. Temporibus dolorem sunt placeat debitis consequatur. Fuga sit esse quas qui sed.', 'https://via.placeholder.com/640x480.png/00eedd?text=nobis', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(6, 10, '2007-12-30', 'Quaerat rerum ratione maxime ullam qui nostrum. Tempore accusamus sed ducimus modi sint. Laborum vitae est accusantium doloremque.', 'https://via.placeholder.com/640x480.png/008822?text=veritatis', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(7, 10, '1970-01-10', 'Possimus eligendi voluptatem maiores dolorem qui consequatur ab. Et consequuntur ut consequuntur voluptatum nulla ea enim. Quis corporis aut voluptate maxime sed voluptatem.', 'https://via.placeholder.com/640x480.png/000099?text=accusantium', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(8, 10, '1992-07-29', 'Quod iusto eum consequatur quas. Molestias dolorem natus minus aperiam et deleniti. Qui in eos aperiam aliquid. Molestiae quia nobis ex sit natus dolorum ipsum.', 'https://via.placeholder.com/640x480.png/004488?text=quia', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(9, 10, '1983-08-04', 'Distinctio nobis nesciunt enim corporis. Saepe quas ut sed culpa minima ipsum neque. Enim et sapiente et sapiente. Omnis minima esse sint tenetur.', 'https://via.placeholder.com/640x480.png/007711?text=sunt', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(10, 10, '1978-07-16', 'Eligendi sed ut iusto ea aperiam ut necessitatibus aut. Est labore voluptatum qui dolores doloribus consequatur. Occaecati nam perferendis alias aperiam totam.', 'https://via.placeholder.com/640x480.png/002288?text=et', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(11, 10, '2003-02-22', 'Tempore vero ipsum eligendi voluptatem aut vel. Et dolorem distinctio ex et sit id non. Quam in eaque corrupti quos.', 'https://via.placeholder.com/640x480.png/004433?text=qui', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(12, 10, '2000-06-19', 'Sed neque nobis atque est aspernatur. Dolorem vero sint ipsa saepe aut porro. Sed atque aut quis earum eos sint id omnis. Repellat explicabo amet amet nemo facilis.', 'https://via.placeholder.com/640x480.png/00ee88?text=eveniet', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(13, 10, '1985-09-28', 'Sapiente sit minus tenetur. Atque rem nihil qui atque quis unde. Illo quia iusto velit nisi accusamus qui incidunt.', 'https://via.placeholder.com/640x480.png/007744?text=et', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(14, 10, '2007-05-23', 'Officiis dolores est harum magni. Ut culpa error occaecati cumque consequatur dignissimos rerum. In vitae rerum enim necessitatibus consectetur. Quam et magnam cum qui vitae quos.', 'https://via.placeholder.com/640x480.png/006622?text=vel', 0, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(15, 10, '1993-10-20', 'Dolorem explicabo iure ut mollitia. Dolores culpa qui voluptatem fuga nulla labore. Enim aut quia sunt velit debitis.', 'https://via.placeholder.com/640x480.png/00cc44?text=fugiat', 1, '2025-10-21 19:45:56', '2025-10-21 19:45:56'),
(27, 11, '2025-11-03', 'Izin sakit', 'plEx85KYkVJ4OPCnATrZ9vZGqO7mVW9QT3IxEHWl.jpg', 1, '2025-10-29 00:04:58', '2025-10-29 00:05:53');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'auth_token', 'bb0a24627bffd2321a81cff521a7cd236fae240e036a8b46310c6586cbf408ff', '[\"*\"]', '2025-10-21 20:06:48', NULL, '2025-10-21 19:55:18', '2025-10-21 20:06:48'),
(2, 'App\\Models\\User', 11, 'auth_token', '47252d5bc4bb9ee710838357c8c8d71f880cbd1b6b713bf4112fd1a78fd460c1', '[\"*\"]', '2025-10-21 20:11:30', NULL, '2025-10-21 20:11:21', '2025-10-21 20:11:30'),
(3, 'App\\Models\\User', 11, 'auth_token', 'afc2be82f6e8a6ebeba96973605c5bf03cc5be7a937aa35aebc0f6daf2f2765c', '[\"*\"]', '2025-10-21 20:14:27', NULL, '2025-10-21 20:14:18', '2025-10-21 20:14:27'),
(4, 'App\\Models\\User', 11, 'auth_token', 'f33aaabeb9ada0c998d8f3be14a737828a5d6ae106cbbf619187a6121935cd5d', '[\"*\"]', '2025-10-21 21:10:25', NULL, '2025-10-21 21:06:50', '2025-10-21 21:10:25'),
(5, 'App\\Models\\User', 11, 'auth_token', '9bd85dc780164295300ee3aab5840819dabc7caa72c7559af7220aa5c4a052f0', '[\"*\"]', '2025-10-21 21:13:11', NULL, '2025-10-21 21:12:11', '2025-10-21 21:13:11'),
(6, 'App\\Models\\User', 10, 'auth_token', '41f329c88db0817e992a73c6cf90262df3ea193214bf25aee796d1e647f3e939', '[\"*\"]', '2025-10-21 21:16:22', NULL, '2025-10-21 21:15:24', '2025-10-21 21:16:22'),
(8, 'App\\Models\\User', 11, 'auth_token', 'a356d275eea86bc5bb33c3eff8871fbae0c5cc16db8ea9c59631bfc7523fc92e', '[\"*\"]', '2025-10-23 00:41:57', NULL, '2025-10-23 00:41:54', '2025-10-23 00:41:57'),
(9, 'App\\Models\\User', 11, 'auth_token', 'aea1f5f671194a63c1409f4564afef12bb0600ae765819ca3da1a7c33092888d', '[\"*\"]', '2025-10-23 00:49:07', NULL, '2025-10-23 00:47:35', '2025-10-23 00:49:07'),
(10, 'App\\Models\\User', 11, 'auth_token', '26c48d03901006ae1f611bf20f949f36fb4b192d01572e7bdbac156f5679e565', '[\"*\"]', '2025-10-23 20:13:16', NULL, '2025-10-23 20:11:27', '2025-10-23 20:13:16'),
(11, 'App\\Models\\User', 11, 'auth_token', 'e58468c2ad4681f4463fc64f968bfb8f48ebac29913c820923c58be14f1bef0a', '[\"*\"]', '2025-10-23 20:20:29', NULL, '2025-10-23 20:19:07', '2025-10-23 20:20:29'),
(13, 'App\\Models\\User', 11, 'auth_token', 'ff0a43589a82764d9a64eb26a94bbc3f5a2fd86d89a9216a7175a331e3ec11d7', '[\"*\"]', '2025-10-26 23:44:58', NULL, '2025-10-26 23:43:39', '2025-10-26 23:44:58'),
(15, 'App\\Models\\User', 11, 'auth_token', '06beef5ecdf1f9bb66194a55af8aac293e4d7aa1b7dc5fd42d7aa108c325f5eb', '[\"*\"]', '2025-10-28 20:38:57', NULL, '2025-10-28 20:13:11', '2025-10-28 20:38:57'),
(18, 'App\\Models\\User', 11, 'auth_token', '39e2730efb5f41023fea7af03d58e244b73a568c3b6071efeebfb08938c66f5f', '[\"*\"]', NULL, NULL, '2025-10-30 20:29:11', '2025-10-30 20:29:11'),
(19, 'App\\Models\\User', 11, 'auth_token', '08f1a5bc4fef4195a7bbcece096185a8bbe4ab23d5d6da138f72f79fea182d06', '[\"*\"]', '2025-10-30 20:30:36', NULL, '2025-10-30 20:30:34', '2025-10-30 20:30:36'),
(20, 'App\\Models\\User', 11, 'auth_token', '5ae0e91821c0f1e211741f406d4cf6d1ee24198b27403ec9a5d0646709ba9049', '[\"*\"]', '2025-10-30 20:49:17', NULL, '2025-10-30 20:49:15', '2025-10-30 20:49:17'),
(21, 'App\\Models\\User', 11, 'auth_token', '734571c30005927bac2e408d838e94c85beea1bcbe592d1c71bd5c700fd56925', '[\"*\"]', '2025-10-30 20:59:16', NULL, '2025-10-30 20:59:15', '2025-10-30 20:59:16'),
(22, 'App\\Models\\User', 11, 'auth_token', '0e7cc37620efde1c08e9399359e5cfdbda5a25a281af6fb9da14727ea76785df', '[\"*\"]', '2025-11-02 21:00:55', NULL, '2025-10-30 21:15:53', '2025-11-02 21:00:55'),
(23, 'App\\Models\\User', 11, 'auth_token', '71df3b0b2193914ac9ef2d97a8d5ec1caa9956414603735b6e33c22c3ee969e6', '[\"*\"]', '2025-11-03 01:08:55', NULL, '2025-11-03 01:08:53', '2025-11-03 01:08:55');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('f1ndJibxIHpnEX4JSn75PdyNhhBX1wbGhGeePA6d', NULL, '192.168.41.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1Yxb0xuU0ZOQVdZaWJNT0t5dW1MWW1nR0Z3bkI3Q1pXbTlNQXRlYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4LjQxLjI0Mzo4MDAwIjt9fQ==', 1762230147),
('XZrSw5zNNhMXCrPlRKEZZzEDzpGC99KYq5c1MjfE', NULL, '192.168.41.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmVrc0RiMkJIWGNDRmM2MkJDdmZzaHNlWmE1Q2N2Y2lwMmJyTWNsaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4LjQxLjI0Mzo4MDAwIjt9fQ==', 1761721865);

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
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `face_embedding` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `fcm_token`, `created_at`, `updated_at`, `phone`, `role`, `position`, `department`, `face_embedding`, `image_url`) VALUES
(1, 'Nicklaus Herman', 'jeanne13@example.org', '2025-10-21 19:45:55', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'V1wiSmesaf', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(2, 'Ms. Telly Flatley', 'vivianne.sporer@example.net', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, '067x6JHBbu', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(3, 'Everett Schoen', 'larson.keegan@example.org', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'MwSI1IcMqV', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(4, 'Cleora Walsh MD', 'bernadine.strosin@example.com', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, '7QjXHMinsQ', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(5, 'Kristy Moen', 'swift.erin@example.com', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'ldITvO7XcO', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(6, 'Werner Hills', 'smuller@example.net', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'Tll0C8qvNo', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(7, 'Casimir Heaney', 'muller.dannie@example.net', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'JaVJa5Hda6', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(8, 'Miss Heloise Stokes III', 'lynch.wyman@example.org', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'gvZYJuz9ww', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(9, 'Amya Kirlin I', 'kub.eldridge@example.com', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'T2pgxn8HS3', NULL, '2025-10-21 19:45:56', '2025-10-21 19:45:56', NULL, 'user', 'Staff', 'IT', NULL, NULL),
(10, 'Kevin', 'jammie.little@example.com', '2025-10-21 19:45:56', '$2y$12$BVGE5KET9lJeZfsZ1xd2EuN8yoBMzG5o5FDIRJb3zDBb3w8npmUie', NULL, NULL, NULL, 'jhjHaMGiAj', NULL, '2025-10-21 19:45:56', '2025-10-21 21:15:58', NULL, 'user', 'Staff', 'IT', '-0.013236671686172485,0.009388555772602558,-0.007558945566415787,-0.0003268308937549591,-0.013798686675727367,-0.0497867688536644,-0.04562500864267349,-0.17632317543029785,-0.02391199953854084,-0.18144303560256958,0.003606049809604883,0.004264788702130318,0.0030949427746236324,-0.014814544469118118,-0.0046423268504440784,-0.15051379799842834,-0.02476358786225319,-0.008032998070120811,-0.006838952656835318,0.008294852450489998,0.17437949776649475,0.02525482513010502,-0.04315203055739403,0.006314573343843222,0.03835706412792206,0.03445074334740639,-0.02056226320564747,-0.04765188321471214,0.10519953072071075,-0.06804405897855759,0.009552686475217342,-0.005546367261558771,-0.15604247152805328,-0.019118016585707664,-0.17417006194591522,-0.08904895931482315,0.1971931755542755,0.003947074059396982,0.0029778608586639166,-0.35705187916755676,0.003320100251585245,0.0012750226305797696,-0.005685665179044008,0.0010575022315606475,-0.0007454737205989659,-0.02123710885643959,-0.04831667244434357,-0.16595710813999176,-0.0031324049923568964,-0.04258865863084793,0.14628587663173676,0.002223136369138956,0.011923146434128284,-0.0011101438431069255,0.0219093207269907,0.003373066196218133,-0.011294132098555565,0.002997869625687599,-0.031148381531238556,0.00016063032671809196,0.030094053596258163,-0.028034040704369545,-0.059862565249204636,0.08376103639602661,-0.02081143856048584,0.13533540070056915,-0.0008262877236120403,0.027348369359970093,0.0061415983363986015,0.0059677306562662125,-0.013914677314460278,-0.2342434823513031,0.05939146876335144,-0.003307836363092065,0.07213651388883591,0.0005781922372989357,0.0014707713853567839,-0.0008840204100124538,0.10793699324131012,-0.011992363259196281,0.006688878871500492,-0.030293993651866913,-0.01324042771011591,-0.0612613819539547,-0.12602314352989197,0.002379610436037183,0.00009810402116272599,-0.09504999220371246,0.03452073410153389,0.17759884893894196,-0.08744828402996063,-0.0029150627087801695,-0.012836593203246593,-0.009161490947008133,-0.10560043156147003,0.046283215284347534,-0.02647908590734005,-0.004719591699540615,-0.006398518104106188,-0.014559476636350155,0.004207170568406582,-0.004340706393122673,0.003933500498533249,0.0016172397881746292,0.004736588802188635,0.004887942224740982,0.04163924977183342,0.002273540711030364,0.009953483007848263,0.0070470646023750305,-0.048019617795944214,0.0032814606092870235,0.003979839850217104,-0.1821460872888565,0.002964683575555682,-0.08619994670152664,0.006047036498785019,0.003146768780425191,0.057349156588315964,-0.12735629081726074,-0.007831974886357784,0.02030961960554123,-0.020103339105844498,-0.006556764245033264,0.004401134327054024,0.003371792146936059,0.002500104019418359,-0.0017601485596969724,0.01296848151832819,0.08590494096279144,0.005555231124162674,0.009674178436398506,2.940385286365199e-7,-0.016592608764767647,0.00698754470795393,0.00196424825116992,0.02191031724214554,0.00983510073274374,0.0026119998656213284,0.008920666761696339,0.002402162179350853,-0.01293553039431572,0.005765167064964771,-0.07734466344118118,0.10166747123003006,0.20225834846496582,-0.021244917064905167,-0.006203162018209696,-0.00475454144179821,0.00165537279099226,0.004536304157227278,-0.10760707408189774,0.2375437468290329,-0.013718923553824425,0.0005440689856186509,0.0010543166426941752,0.008154741488397121,-0.00846748799085617,-0.14665310084819794,0.00035499464138410985,-0.013042195700109005,0.005905010271817446,-0.002085653133690357,0.0018698620842769742,0.0025271510239690542,-0.005042337346822023,-0.004693977534770966,0.3424876034259796,-0.012918324209749699,-0.00723933894187212,-0.061638787388801575,-0.04971477389335632,0.00029494139016605914,0.016911396756768227,-0.03119395487010479,-0.0032491444144397974,-0.008730920031666756,-0.009048352017998695,-0.004699287936091423,0.0020303060300648212,-0.0804724469780922,0.10475614666938782,-0.004217564128339291,0.004238520748913288,0.026522528380155563,-0.006796750705689192,-0.04709712788462639,0.054117683321237564,-0.039256419986486435,0.053808730095624924,-0.018086571246385574,0.003438338404521346', NULL),
(11, 'Denny', 'dennyherfansya10@gmail.com', '2025-10-21 19:45:56', '$2y$12$eP7aGpsJfF2P0J4D5bYuW.0BRn1yR.Eb9Zn3qqIFj4hNZQk60ZYYa', NULL, NULL, NULL, 'JXHXFObwWO4XO0WUiuq9eXYNRyxJ5ETIUzSdVC3JUz6PviTtVFS9NMlt1IyA', 'egULjahxQuuP1OsralNZPc:APA91bGgFXcP9YmKVrGW5dy_LuqPGWfAGt5aGZKtjxxCrXhJWDRiXz4FzQWu59qDNT-9W3r5kqQzkbe5iUvwWOIglveU6WsMqUKpnZJ9nNwPN0-T_RvZp2I', '2025-10-21 19:45:56', '2025-11-02 20:58:19', NULL, 'user', 'Staff', 'IT', '-0.002356534358114004,0.006161166355013847,-0.0007985258125700057,0.005898345727473497,-0.008827648125588894,0.11126922816038132,0.06184131279587746,0.04328945279121399,-0.19053854048252106,0.10761530697345734,0.004452613182365894,0.0016751699149608612,-0.0012915056431666017,-0.0029740200843662024,-0.0035122805275022984,-0.08600156009197235,-0.0011774313170462847,0.0014088477473706007,0.0066544292494654655,0.0011501421686261892,0.15370815992355347,0.022658856585621834,0.04806991666555405,0.002403637394309044,0.043683972209692,0.004147946834564209,0.002983973128721118,-0.062048833817243576,0.07315916568040848,-0.0028869451489299536,0.006713485345244408,0.22737303376197815,0.18476879596710205,-0.0006316388607956469,-0.1443735808134079,-0.01066702138632536,-0.16257232427597046,0.01813105307519436,-0.002718148287385702,0.21950075030326843,-0.007160417269915342,0.0011603522580116987,-0.01211546827107668,-0.0038877155166119337,0.005132400430738926,0.053941510617733,-0.16399115324020386,0.14835220575332642,-0.0005994549719616771,0.07572104036808014,-0.12096726894378662,-0.004338020924478769,-0.0936390832066536,-0.0036156049463897943,0.022175602614879608,-0.0016831157263368368,-0.05099340155720711,-0.0016797985881567001,0.008867762051522732,-0.0038413440342992544,0.037805307656526566,-0.016781365498900414,0.05857901647686958,0.12969666719436646,0.004205185920000076,-0.25851303339004517,-0.004344372544437647,-0.04925377294421196,0.012520509772002697,-0.000536343373823911,-0.005587027408182621,-0.20301033556461334,0.01192853320389986,0.001232909969985485,0.1523706167936325,0.0032383170910179615,0.00150501006282866,-0.00016217035590671003,-0.16506406664848328,-0.01761452667415142,0.0022783444728702307,-0.0324406661093235,0.0013708703918382525,0.17019657790660858,0.0836179256439209,0.005913685075938702,-0.0011087610619142652,0.12832346558570862,-0.029065143316984177,0.14240239560604095,-0.12603582441806793,0.0023245292250066996,-0.005701414775103331,-0.003110465593636036,-0.07883728295564651,-0.05165177583694458,-0.03596271947026253,-0.03037250228226185,-0.0027266941033303738,0.01394383329898119,0.0026791365817189217,0.009189547970890999,-0.004761375952512026,0.0026964040007442236,-0.0004235723754391074,0.005260170437395573,0.0588667131960392,0.007270180620253086,0.028471212834119797,0.00786550808697939,0.141264408826828,-0.000052595798479160294,-0.0019316208781674504,0.0978083536028862,0.008741755038499832,-0.12258116900920868,0.006073232274502516,-0.018523966893553734,0.11595228314399719,-0.15048059821128845,0.12574419379234314,-0.05103754624724388,-0.101667620241642,0.0042702434584498405,0.00485248165205121,0.007645865902304649,0.0058933403342962265,0.009411178529262543,-0.014040065929293633,0.02224261686205864,-0.002128766616806388,-0.002795424545183778,-0.00004703837839770131,-0.01026620902121067,0.02308199740946293,-0.004974694456905127,-0.04669616371393204,-0.0722317174077034,-0.007996543310582638,-0.005153162404894829,-0.0005731172277592123,-0.0023485864512622356,-0.0028065163642168045,0.033003583550453186,0.010326256044209003,0.07705741375684738,-0.007501745596528053,0.010518653318285942,0.00906757265329361,0.007225201465189457,-0.005205436609685421,0.0028441448230296373,0.13212110102176666,0.003885770682245493,0.007000372279435396,-0.006727613974362612,0.01820462942123413,0.005967102479189634,0.14319421350955963,0.0008776691392995417,0.007129364181309938,0.005034698639065027,-0.010180077515542507,-0.006065714173018932,0.002462901407852769,0.009159358218312263,-0.000984430080279708,0.2738606929779053,-0.00006374281656462699,0.00175995915196836,0.18002121150493622,-0.09065111726522446,-0.00017541499983053654,0.0002663511550053954,0.010087898001074791,0.00006748166197212413,0.0036473101936280727,0.010052797384560108,-0.002248912351205945,-0.013950381428003311,-0.014733894728124142,-0.019232694059610367,-0.005038653500378132,-0.0011253515258431435,-0.12409158796072006,-0.006925476714968681,0.12031999975442886,-0.015607925131917,0.051713746041059494,-0.13332363963127136,-0.012029650621116161,0.002414135495200753', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
