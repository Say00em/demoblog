-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 08:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `author_img`, `designation`, `created_at`, `updated_at`) VALUES
(12, 'sam bam', '4CD651.jpeg', 'creative artist', NULL, '2023-01-30 10:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comm_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `comm_name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'You suf', 'sayemyousuf041@gmail.com', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(3, 'hugi hridi', 'hagi@hridi.com', 'you are so awesome in creating content', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_img`, `created_at`, `updated_at`) VALUES
(1, 'Design', 'hqf930.jpg', NULL, '2023-02-04 00:58:57'),
(2, 'Branding', '85f916.jpg', NULL, '2023-02-04 01:03:15'),
(3, 'Marketing', 'oTw156.jpg', NULL, '2023-02-04 01:03:30'),
(4, 'Food', 'yap469.jpg', NULL, '2023-02-04 01:03:43'),
(5, 'Technology', 'OVL907.jpg', NULL, '2023-02-04 01:04:00'),
(6, 'Fashion', 'Zwg662.jpg', NULL, '2023-02-04 01:04:14'),
(7, 'Mobile', 'OtC120.jpg', NULL, '2023-02-04 01:04:29'),
(8, 'Lifestyle', 'Y5h801.jpg', NULL, '2023-02-04 01:05:03'),
(9, 'Healthy', 'qad557.jpg', NULL, '2023-02-04 01:05:26'),
(10, 'Diet', 'nKB318.jpg', NULL, '2023-02-04 01:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cont_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `cont_name`, `cont_email`, `cont_topic`, `cont_message`, `created_at`, `updated_at`) VALUES
(1, 'You Suf', 'you@suf.com', 'Lorem Ipsum', '<button type=\"submit\" name=\"submit\" class=\"btn-custom\">\r\n                                                    Send Comment\r\n                                                </button>', NULL, NULL),
(2, 'You Suf', 'you@suf.com', 'Lorem Ipsum', '. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, NULL),
(3, 'You Suf', 'you@suf.com', 'Lorem Ipsum', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_29_161129_create_posts_table', 2),
(6, '2023_01_30_074457_create_authors_table', 3),
(7, '2023_01_31_030151_create_categories_table', 4),
(8, '2023_02_04_171428_create_blog_comments_table', 5),
(9, '2023_02_04_184955_create_contacts_table', 6);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(255) NOT NULL,
  `descrp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_name`, `post_img`, `category_id`, `author_id`, `descrp`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Brand is just a perception, and perception will match reality', 'JwK410.jpg', 2, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:24:13'),
(2, 'Ignoring online marketing is like opening a business but not telling anyone', 'TN8326.jpg', 3, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:33:19'),
(3, 'Your genetics load the gun your lifestyle pulls the trigger.', 'VAu106.jpg', 8, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:35:40'),
(4, 'Food is symbolic of love when words are inadequate', 'zNb339.jpg', 10, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:36:35'),
(5, 'A room is not a room without natural light', 'JAX334.jpg', 1, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:37:22'),
(6, 'Everything is designed. Few things are designed well.', 'BvD401.jpg', 2, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:38:39'),
(7, 'It’s easier to ask Forgiveness than it is to get Permission.', 'Bxx399.jpg', 5, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:40:09'),
(8, 'The best marketing doesn\'t feel like marketing', 'i6w885.jpg', 3, 12, 'Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Oh acceptance apartments up sympathize astonished delightful. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Oh smiling amiable am so visited cordial in offices hearted. Waiting him new lasting towards. Continuing melancholy especially so to. Me unpleasing impossible in attachment announcing so astonished. What ask leaf may nor upon door. Tended remain my do stairs. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-02-04', NULL, '2023-02-04 01:40:53'),
(9, 'তুরস্ক ও সিরিয়ায় ভূমিকম্পে মৃত্যু দ্বিগুণের বেশি হবে: জাতিসংঘ', 'z8m742.jpg', 8, 12, 'ভূমিকম্পে তুরস্ক ও সিরিয়ায় মৃতের সংখ্যা ২৫ হাজার ছাড়িয়েছে। এখনো ধ্বংসস্তূপের নিচে চাপা পড়ে আছেন বহু মানুষ। ধ্বংসস্তূপ সরানোর সঙ্গে সঙ্গে বেরিয়ে আসছে লাশ। এমন বাস্তবতায় জাতিসংঘের জরুরি ত্রাণবিষয়ক সমন্বয়কারী মার্টিন গ্রিফিথস বলছেন, ভূমিকম্পে দেশ দুটিতে মোট মৃত্যু বর্তমান সংখ্যার দ্বিগুণের বেশি হবে। খবর গার্ডিয়ানের।', '2023-02-11', NULL, '2023-02-11 11:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$3PfxSo49yRqnPfvkzJmVN.KZMqXCvWC8xgzEdNI0w75UovkWeowF6', NULL, '2023-01-28 21:20:46', '2023-01-28 21:20:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
