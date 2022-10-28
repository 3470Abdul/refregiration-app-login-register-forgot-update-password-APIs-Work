-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 11:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refregiration`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-app-token', 'abeb74620fe9ac7ea0390522e56a226606d46127f8c204c6a9229acae7b83861', '[\"*\"]', NULL, '2022-10-13 12:38:32', '2022-10-13 12:38:32'),
(2, 'App\\Models\\User', 1, 'my-app-token', 'ed6087a0b1cb9db8bf99e8c0ec4c250ce77fa572316fb3aa4fb209b0d9984587', '[\"*\"]', NULL, '2022-10-13 12:39:14', '2022-10-13 12:39:14'),
(3, 'App\\Models\\User', 1, 'my-app-token', 'e8c4515859cc639293d6a3d4281021531d1aed7bf34154ac9aab0e0a0f01937f', '[\"*\"]', NULL, '2022-10-13 12:39:22', '2022-10-13 12:39:22'),
(4, 'App\\Models\\User', 1, 'my-app-token', '6c0822b5cd09d8115ef3bb24b0917e082a6c63e439121ae71777c38951f7a098', '[\"*\"]', NULL, '2022-10-13 12:39:23', '2022-10-13 12:39:23'),
(5, 'App\\Models\\User', 1, 'my-app-token', 'bbc42db212dabe501633aa911687729ed89a246d012f98b3f9918356265a9576', '[\"*\"]', NULL, '2022-10-13 12:39:24', '2022-10-13 12:39:24'),
(6, 'App\\Models\\User', 1, 'my-app-token', 'c9ef06f67225c7bcbd77be414a8d3c7b24e8bc9e7da953f548e19aba1cc04e81', '[\"*\"]', NULL, '2022-10-13 12:39:27', '2022-10-13 12:39:27'),
(7, 'App\\Models\\User', 1, 'my-app-token', '7e77cdac869923bb0181455299c0696970c67d7a512d0c5f18b050375ef024bf', '[\"*\"]', NULL, '2022-10-13 12:39:31', '2022-10-13 12:39:31'),
(8, 'App\\Models\\User', 1, 'my-app-token', '6c0d2e28beef2cbaab9ebce4e9378d114ed8bf7ab999498efb2c5d3ab1f503ed', '[\"*\"]', NULL, '2022-10-13 12:39:32', '2022-10-13 12:39:32'),
(9, 'App\\Models\\User', 1, 'my-app-token', '0d610fe7029835ab6dea3477ff2e7f8e55e796c31dbe03cd4df233d3235bc172', '[\"*\"]', NULL, '2022-10-13 12:39:33', '2022-10-13 12:39:33'),
(10, 'App\\Models\\User', 1, 'my-app-token', 'c5669dc27d4fb7c0597716a593c0c7b1cd6d6b48213a5dc1650b82078ebc44a2', '[\"*\"]', NULL, '2022-10-13 12:39:40', '2022-10-13 12:39:40'),
(11, 'App\\Models\\User', 1, 'my-app-token', '8b63c69e80a72f7fe75e83798e263d54e7e6524b5420ea8f4dd94fefd62f2dbc', '[\"*\"]', NULL, '2022-10-13 12:40:42', '2022-10-13 12:40:42'),
(12, 'App\\Models\\User', 1, 'my-app-token', 'fdb2f535f9c6b7d1051157b11a5f284ae458a65a67e3571a74c800d7a99393a0', '[\"*\"]', NULL, '2022-10-13 12:40:43', '2022-10-13 12:40:43'),
(13, 'App\\Models\\User', 1, 'my-app-token', '173a2d54296267d5fd6a7030ccbe7fe2bcf047eafbe97b8b706b9940a068a971', '[\"*\"]', NULL, '2022-10-13 12:40:45', '2022-10-13 12:40:45'),
(14, 'App\\Models\\User', 1, 'my-app-token', '1d8c0c640a176cedc0bb40bbb32e916a7c6bdf56aab67ead413e0ed6ee5ac666', '[\"*\"]', NULL, '2022-10-13 12:41:11', '2022-10-13 12:41:11'),
(15, 'App\\Models\\User', 1, 'my-app-token', '6cbcab9b3cfb2d7850a48d22808e2e8e5c8856d47dc15a24612905195088d205', '[\"*\"]', NULL, '2022-10-13 12:41:58', '2022-10-13 12:41:58'),
(16, 'App\\Models\\User', 1, 'my-app-token', 'b8b69ed84996b628f711379e087196fb89414209224ad28c3f8b085cd38fa62c', '[\"*\"]', NULL, '2022-10-13 12:42:06', '2022-10-13 12:42:06'),
(17, 'App\\Models\\User', 1, 'my-app-token', '19bbb59bea30356bf1b8bbf20a5cc39d8db4a29cee29b77b037f944837f694b3', '[\"*\"]', NULL, '2022-10-13 12:42:20', '2022-10-13 12:42:20'),
(18, 'App\\Models\\User', 1, 'my-app-token', 'da4295510e4d8f0adce8612a3c80f6e1e48034f2d48d9a3ba38df51d302999e5', '[\"*\"]', NULL, '2022-10-13 12:42:44', '2022-10-13 12:42:44'),
(19, 'App\\Models\\User', 1, 'my-app-token', 'b475fcf982459ba71cb0cba648633a5e58a40d767c4d39986c60b41960668220', '[\"*\"]', NULL, '2022-10-13 12:43:54', '2022-10-13 12:43:54'),
(20, 'App\\Models\\User', 1, 'my-app-token', 'c3df03b0b360fc48530da1dafb41913fa0fbd2b958332ed2fa4b67460c6e2a4c', '[\"*\"]', NULL, '2022-10-13 12:44:34', '2022-10-13 12:44:34'),
(21, 'App\\Models\\User', 44, 'my-app-token', 'dcdf57aa92f9bfa582b68f555e837c6963c49d07d67ef6f9f05115c76fac60fc', '[\"*\"]', NULL, '2022-10-13 14:27:27', '2022-10-13 14:27:27'),
(22, 'App\\Models\\User', 44, 'my-app-token', '8c08234e82bcab14e1300be4ed10efeb9352e943a6a632ee9bd543b22df6a0ff', '[\"*\"]', NULL, '2022-10-13 14:27:50', '2022-10-13 14:27:50'),
(23, 'App\\Models\\User', 44, 'my-app-token', '2d7630356d755d9414bbe731cce5464098b0e9b6038064df1506eba0378ecd11', '[\"*\"]', NULL, '2022-10-13 14:27:53', '2022-10-13 14:27:53'),
(24, 'App\\Models\\User', 44, 'my-app-token', '6a0e5833173f5ab0ceb4a0bd1cca0174920bfa73ab2095117667a4a5622c16b2', '[\"*\"]', NULL, '2022-10-13 14:28:18', '2022-10-13 14:28:18'),
(25, 'App\\Models\\User', 44, 'my-app-token', 'deaf0d26e4ee5217c438f90d091cf6527ca39f96d86eb21d4cdb2d979b3ef274', '[\"*\"]', NULL, '2022-10-13 14:28:20', '2022-10-13 14:28:20'),
(26, 'App\\Models\\User', 44, 'my-app-token', '69d5883d6f494b53fe6f8762a5cb4d9790d49fac51ab3734cff2f79dfa6336fa', '[\"*\"]', NULL, '2022-10-13 14:28:21', '2022-10-13 14:28:21'),
(27, 'App\\Models\\User', 44, 'my-app-token', '2901e2004946a49ab7669d6119dc6b2b4fc96ede1902739dcc287808997e68eb', '[\"*\"]', NULL, '2022-10-13 14:28:24', '2022-10-13 14:28:24'),
(28, 'App\\Models\\User', 44, 'my-app-token', '9c645f7f3607c389a958aef5da5ad15d323c90a0cf1cd8710147416ca58458e9', '[\"*\"]', NULL, '2022-10-13 14:28:27', '2022-10-13 14:28:27'),
(29, 'App\\Models\\User', 44, 'my-app-token', 'ff84473b2019d03d6189de6118b235ca866d95fc1c052581199b84f564058650', '[\"*\"]', NULL, '2022-10-13 14:29:56', '2022-10-13 14:29:56'),
(30, 'App\\Models\\User', 44, 'my-app-token', '964cefed50fbd8cac85471f0f2351918bfb6da670bea9e4f278a424cc6fe25ed', '[\"*\"]', NULL, '2022-10-13 14:30:01', '2022-10-13 14:30:01'),
(31, 'App\\Models\\User', 44, 'my-app-token', '556b1f6c43daf84b76cef5210fed789999c2d3d7cfed1df5f86ec1972be71973', '[\"*\"]', NULL, '2022-10-13 14:34:30', '2022-10-13 14:34:30'),
(32, 'App\\Models\\User', 44, 'my-app-token', 'c5e50fa275f52206480ca36b54c9067fc8210045ea6e596b7555d5bba3ea79b1', '[\"*\"]', NULL, '2022-10-13 14:34:40', '2022-10-13 14:34:40'),
(33, 'App\\Models\\User', 1, 'my-app-token', '21e3c9eb19a655dddec7115fe21a147c0d68869bea10909588dc6f2f6e8d2c2a', '[\"*\"]', NULL, '2022-10-13 18:25:31', '2022-10-13 18:25:31'),
(34, 'App\\Models\\User', 1, 'my-app-token', '9f2d0577314563c25c82c825f5aec18251a1b5e0edfe338bd84f0e54ef21b828', '[\"*\"]', NULL, '2022-10-13 18:27:22', '2022-10-13 18:27:22'),
(35, 'App\\Models\\User', 1, 'my-app-token', '1e11ba1a7edd95220b3fa998a9b923d9d5283d00ce54655f5b6367cc64ec0627', '[\"*\"]', NULL, '2022-10-13 18:31:56', '2022-10-13 18:31:56'),
(36, 'App\\Models\\User', 1, 'my-app-token', '0f6434a2978a7a8b37459e280794d890c58de521f4fb78a587c58b72099ce046', '[\"*\"]', NULL, '2022-10-13 18:32:25', '2022-10-13 18:32:25'),
(37, 'App\\Models\\User', 1, 'my-app-token', 'f216c22d3a95abb9382ae25e3eb2d82f9e2e08d05b2cf2064a0931eab0cab9ea', '[\"*\"]', NULL, '2022-10-13 18:32:37', '2022-10-13 18:32:37'),
(38, 'App\\Models\\User', 1, 'my-app-token', 'd37d012660f6f86af9a0ac2c5f4e0f6c6897d4fba978ad6f060e8ef4392170ef', '[\"*\"]', NULL, '2022-10-13 18:35:04', '2022-10-13 18:35:04'),
(39, 'App\\Models\\User', 1, 'my-app-token', 'f35afc5f4f8251ac29ac235b86c04590295db6ab41430ec606a7bc2a5199bb8d', '[\"*\"]', NULL, '2022-10-13 18:35:21', '2022-10-13 18:35:21'),
(40, 'App\\Models\\User', 1, 'my-app-token', 'fcc111e289e8a57f164c4ae884724cda7960dca45bd9b971cd6cd3dab0846712', '[\"*\"]', NULL, '2022-10-13 18:35:48', '2022-10-13 18:35:48'),
(41, 'App\\Models\\User', 1, 'my-app-token', '5fc174080a29d21caf2c057ba3d79523294ab749678ebc73fba74154942308b9', '[\"*\"]', NULL, '2022-10-14 15:04:59', '2022-10-14 15:04:59'),
(42, 'App\\Models\\User', 1, 'my-app-token', '92c57ca0ed64f0f04feb872e1e1e4fdb5ed1d708dff62feb9a66793dd147583d', '[\"*\"]', NULL, '2022-10-14 15:05:57', '2022-10-14 15:05:57'),
(43, 'App\\Models\\User', 49, 'my-app-token', 'c413cac1a2f6f0858cf2cc0048574af06b9957b6dda65c5f3c5766b6ea512b5e', '[\"*\"]', NULL, '2022-10-14 16:13:42', '2022-10-14 16:13:42'),
(44, 'App\\Models\\User', 1, 'my-app-token', '619b64d6f69534d77d175c222db492fb7fa39d58112dd0f3797f1601344c11bd', '[\"*\"]', NULL, '2022-10-14 16:44:12', '2022-10-14 16:44:12'),
(45, 'App\\Models\\User', 1, 'my-app-token', '24c9d452fbb6a1c34ebf25ee333d266ddbb0fa2f214705a96a87361b372d0740', '[\"*\"]', NULL, '2022-10-14 16:47:28', '2022-10-14 16:47:28'),
(46, 'App\\Models\\User', 1, 'my-app-token', '1bdbc5134843336c51c033616d4df07dd7f39c29b2527130f11a0e5352dc974b', '[\"*\"]', NULL, '2022-10-14 16:47:31', '2022-10-14 16:47:31'),
(47, 'App\\Models\\User', 1, 'my-app-token', 'f6715ed571491b55f1300cad1e394d534028dc4deb201cc15ed4401cd71e49e6', '[\"*\"]', NULL, '2022-10-14 17:07:48', '2022-10-14 17:07:48'),
(48, 'App\\Models\\User', 1, 'my-app-token', 'c090ad99a30d5cdf83fe067e64374910505f6ea8a979df7a46dabf3f936489e2', '[\"*\"]', NULL, '2022-10-14 17:08:26', '2022-10-14 17:08:26'),
(49, 'App\\Models\\User', 1, 'my-app-token', '223e122f8c4d1f4843e3d52718fa704257ceba87818377d01d01625ffc8ddf6d', '[\"*\"]', NULL, '2022-10-14 17:34:43', '2022-10-14 17:34:43'),
(50, 'App\\Models\\User', 1, 'my-app-token', '173f433d004054601c8b1751fb5619af1ad950233a4625047132ac7ff191a6d4', '[\"*\"]', NULL, '2022-10-14 17:35:07', '2022-10-14 17:35:07'),
(51, 'App\\Models\\User', 1, 'my-app-token', '626f9c51485f60d695b378bd2a6dc38e56314b39ece57a4fe2e81375e85d1cf7', '[\"*\"]', NULL, '2022-10-14 17:37:15', '2022-10-14 17:37:15'),
(52, 'App\\Models\\User', 1, 'my-app-token', '88561a1ecfdde9e099a5790098e3d4dc53f831d841b118ac2b2f79b1f9906baf', '[\"*\"]', NULL, '2022-10-14 17:42:18', '2022-10-14 17:42:18'),
(53, 'App\\Models\\User', 1, 'my-app-token', '849898295ea412d3f6497abaeef8454261f1a29dc286977f18f331e64e4d24d9', '[\"*\"]', NULL, '2022-10-14 17:46:05', '2022-10-14 17:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isSocial` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phoneNumber`, `email_verified_at`, `password`, `isSocial`, `accessToken`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@demo.com', NULL, NULL, '$2y$10$5WsijbkYT9FVVU4xYYYbQegt.qz1wijIkcEPz/wKptpgnvCxrfa0G', '0', '53|E0RzPeIdB8oiBZNiz5nXSXHq5spO516TXrjz7GSX', '491233', NULL, '2022-10-12 18:12:22', '2022-10-14 17:46:42'),
(2, 'johan', 'johan@gmail.com', NULL, NULL, '$2y$10$DT/LfWLvdIAgBBvMRLWOqOXaOiEI/gggN8LspaF6oeRk9PS6MEYNC', '0', '', '0', NULL, '2022-10-12 18:20:42', '2022-10-12 18:20:42'),
(3, 'Rehman', 'rehman@gmail.com', '+44454874984', NULL, '$2y$10$bYUXrJA9r0tiUJnqR5t2MuE9owwPIIFFtcAEPXttw7mNtJq64WGnO', '0', '', '0', NULL, '2022-10-12 19:05:34', '2022-10-12 19:05:34'),
(4, 'Ahmed', 'Ahmed@gmail.com', NULL, NULL, NULL, '1', '', '0', NULL, '2022-10-12 19:14:26', '2022-10-12 19:14:26'),
(5, 'farhan', 'farhan@demo.com', '+44454874984', NULL, '$2y$10$GtbcTMcDut3wMELA1U4VDer43KBChFSaqk/K7XCt/weabSgXnjfA2', '0', NULL, '0', NULL, '2022-10-13 12:46:08', '2022-10-13 12:46:08'),
(6, 'farhan', 'farhan1@demo.com', '+44454874984', NULL, '$2y$10$Ht2unVAlnJjO4h2oTp.zLe29IU9iZ5.a.13HTNTduGZAvUsowXMUW', '0', NULL, '0', NULL, '2022-10-13 12:47:26', '2022-10-13 12:47:26'),
(7, 'farhan', 'farhan12@demo.com', NULL, NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 12:48:48', '2022-10-13 12:48:48'),
(8, 'farhan', 'farhan123@demo.com', NULL, NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 12:50:54', '2022-10-13 12:50:54'),
(9, 'farhan', 'farhan1234@demo.com', NULL, NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 12:52:45', '2022-10-13 12:52:45'),
(10, 'farhan', 'farhan12345@demo.com', 'fahan123', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 12:57:49', '2022-10-13 12:57:49'),
(12, 'farhan', 'farhan123456@demo.com', '+44454874984', NULL, 'fahan123', '1', NULL, '0', NULL, '2022-10-13 13:15:59', '2022-10-13 13:15:59'),
(22, 'farhan', 'farhan1234567@demo.com', '+44454874984', NULL, 'fahan123', '1', NULL, '0', NULL, '2022-10-13 13:20:52', '2022-10-13 13:20:52'),
(32, 'farhan', 'farhan12345678@demo.com', 'fahan123', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 13:28:45', '2022-10-13 13:28:45'),
(33, 'farhan', 'farhan123n45678@demo.com', 'fahan123', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 13:33:00', '2022-10-13 13:33:00'),
(38, 'farhan', 'farhan123n456778@demo.com', NULL, NULL, '$2y$10$PxoR3faEgXvdRbTVwgLvFeYyzRuIIYENtaAW1O4SwCeSvtf9EjqY6', '0', NULL, '0', NULL, '2022-10-13 13:43:59', '2022-10-13 13:43:59'),
(39, 'farhan', 'farhan123n4567k78@demo.com', NULL, NULL, '$2y$10$MlUB3iM84vPfJ5jAtYCxY.2CpeDWe48G82gtq/PKM5SsIma3DJesy', '0', NULL, '0', NULL, '2022-10-13 14:03:26', '2022-10-13 14:03:26'),
(40, 'farhan', 'farhan123n4567k7t8@demo.com', '+44454874984', NULL, '$2y$10$QTHvE85CzdIyjFMpiYs8h.VY3GJRkxm4JMoc8ObVi2ovCzWeWQ3wa', '0', NULL, '0', NULL, '2022-10-13 14:04:19', '2022-10-13 14:04:19'),
(41, 'farhan', 'farhan123n455k67k7t8@demo.com', 'fahan123', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 14:06:12', '2022-10-13 14:06:12'),
(42, 'farhan', 'farhan1234n455k67k7t8@demo.com', '5e74357457', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 14:06:55', '2022-10-13 14:06:55'),
(43, 'farhan', 'farhan1234n455k677k7t8@demo.com', '5e74357457', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 14:07:21', '2022-10-13 14:07:21'),
(44, 'johan doe', 'johandoe@demo.com', '+44454874984', NULL, '$2y$10$cEfYXnK0eCcGwGsoby4Acea9R8.RGjqBYSmCWUWtEEf3/24FbzTOq', '0', NULL, '0', NULL, '2022-10-13 14:26:19', '2022-10-13 14:26:19'),
(45, 'johan doe12', 'johandoe12@demo.com', 'johan123', NULL, NULL, '1', NULL, '0', NULL, '2022-10-13 14:26:56', '2022-10-13 14:26:56'),
(46, 'johan doe', 'johandoe@gmail.com', '+44454874984', NULL, '$2y$10$ckiSA3Jzs2hAuBbAbLLAD.C8AFxjP8LfvdT9n/dupFVweOKGSXmRi', '0', NULL, '0', NULL, '2022-10-13 14:39:38', '2022-10-13 14:39:38'),
(47, 'johan doe', 'johandoe321@gmail.com', '+44454874984', NULL, '$2y$10$9Mp3IcqUe2LJl/U7GKs6L.8.jqwwR8oRQsDhHSqJYINOBCM8.JHh2', '0', NULL, '0', NULL, '2022-10-13 18:26:49', '2022-10-13 18:26:49'),
(48, 'johan doe', 'johandoe111@gmail.com', '+44454874984', NULL, '$2y$10$.ZLolztnM41vrynESj/vke4pWmaEQ.nbpLxLXk2GgJcYefOja9CSm', '0', NULL, NULL, NULL, '2022-10-13 18:41:26', '2022-10-13 18:41:26'),
(49, 'johan doe boe', 'abdulwahab@aptechnorth.edu.pk', '+44454874984', NULL, '$2y$10$dJGcGKL1W3MoGukb72IGse8zm.PZzsDBt1n/eRP/q9V2YoXo1Kh4C', '0', '43|Lybf2AdDwWYbtFC81Ke8Hgy14hkSwMtqWp7hrQ12', '', NULL, '2022-10-14 16:12:12', '2022-10-14 18:04:12');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
