/*
 Navicat Premium Data Transfer

 Source Server         : Server xampp
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : absensi-app-db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 18/07/2025 13:53:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('laravel_cache_b3fb5cbf8bfd3f36444cd0090189189a', 'i:1;', 1752736110);
INSERT INTO `cache` VALUES ('laravel_cache_b3fb5cbf8bfd3f36444cd0090189189a:timer', 'i:1752736110;', 1752736110);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius_km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES (1, 'PT. Global Sekuriti Indonesia', 'admin@globalsekuritiindonesia.co.id', 'Gedung Graha Anugerah Lt.6, Jl. Teluk Betung No.42', '-6.1963516', '106.8213377', '0.5', '08:00', '17:00', '2025-07-17 06:41:09', '2025-07-17 06:41:09');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_07_12_155849_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (5, '2025_07_12_161300_add_phone_role_at_users', 1);
INSERT INTO `migrations` VALUES (6, '2025_07_14_065016_add_some_field_to_users', 1);
INSERT INTO `migrations` VALUES (7, '2025_07_14_071623_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_07_17_030432_create_companies_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('iVKCId8REQ79wnExQzj0OGeDoYIiwV0VyrrlhV0p', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWRyRGJtN1lsSjVzSzk2V3RQMnFyQ1VocjVpa0w5UFJCZ2N1VE5zcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW5pZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO30=', 1752736400);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `face_embedding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Prof. Raegan Hudson', 'rmurazik@example.org', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'HqmYda9ZpV', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'Eulah Bode', 'moses.heathcote@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'gegTe14bWJ', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, 'Mr. Cole Hammes DDS', 'greilly@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'XcDnNcYlwi', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 'Ted Rosenbaum DVM', 'ruthie.rippin@example.net', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'dIR30q5aFW', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 'Callie Oberbrunner', 'makenna91@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'ESfLXATRs5', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'Estefania Watsica', 'ndeckow@example.org', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'qHjVfnWQ8q', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'Randi Morissette Jr.', 'stella86@example.org', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'trw5XVCaJg', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, 'Eldon Nikolaus III', 'hoeger.maribel@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'xuYauxdYuq', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (9, 'Ms. Rosemarie Reichel', 'ifisher@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'WHMD8x0XJe', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (10, 'Antwan Spinka', 'bernard40@example.com', '2025-07-17 06:41:09', '$2y$12$02nb6oHrsVZNz/V5JhwBAe3V6Fxr5wpIDQ7TAA9Xe32UDYz7PPp0K', NULL, NULL, NULL, 'xDPQEeCFfU', '2025-07-17 06:41:09', '2025-07-17 06:41:09', NULL, 'user', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (11, 'Denny', 'dennyherfansya10@gmail.com', '2025-07-17 06:41:09', '$2y$12$EpCLCP7HSuBoZHwbAY2rTOrjtAmGEhkEqwTKayJsqUEOBtEuuqs4G', NULL, NULL, NULL, 'SFc3Ci2VA1', '2025-07-17 06:41:09', '2025-07-17 07:13:04', '021', 'admin', 'Apps Developer', 'IT', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
