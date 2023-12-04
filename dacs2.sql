-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 10:01 AM
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
-- Database: `dacs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`) VALUES
(1, 1, 3, 1, 400),
(2, 2, 3, 2, 400),
(3, 2, 4, 1, 340),
(4, 2, 5, 1, 123),
(5, 3, 3, 2, 400),
(6, 3, 4, 1, 340),
(7, 3, 5, 1, 123),
(8, 4, 3, 2, 400),
(9, 4, 4, 1, 340),
(10, 4, 5, 1, 123),
(11, 5, 3, 2, 400),
(12, 5, 4, 1, 340),
(13, 5, 5, 1, 123),
(14, 6, 3, 2, 400),
(15, 6, 4, 1, 340),
(16, 6, 5, 1, 123),
(17, 7, 3, 2, 400),
(18, 7, 4, 1, 340),
(19, 7, 5, 1, 123),
(20, 8, 3, 2, 400),
(21, 8, 4, 1, 340),
(22, 8, 5, 3, 123),
(23, 9, 3, 2, 400),
(24, 9, 4, 1, 340),
(25, 9, 5, 3, 123),
(26, 10, 5, 1, 123),
(27, 10, 6, 1, 24),
(28, 11, 5, 1, 123),
(29, 11, 6, 1, 24),
(30, 12, 5, 1, 123),
(31, 12, 6, 1, 24),
(32, 13, 5, 1, 123),
(33, 13, 6, 1, 24),
(34, 14, 5, 1, 123),
(35, 14, 6, 1, 24),
(36, 15, 4, 1, 340);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'abc', '0343 107 931', 'avc', 'nguyennt2.22it@vku.udn.vn', 'áds', '2023-11-20 04:15:50', '2023-11-20 04:15:50'),
(2, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:03', '2023-11-20 09:32:03'),
(3, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:06', '2023-11-20 09:32:06'),
(4, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:09', '2023-11-20 09:32:09'),
(5, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:12', '2023-11-20 09:32:12'),
(6, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:15', '2023-11-20 09:32:15'),
(7, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', '123', '2023-11-20 09:32:18', '2023-11-20 09:32:18'),
(8, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', 'ad', '2023-11-20 09:56:21', '2023-11-20 09:56:21'),
(9, 'Trang sức và Phụ kiện', '0343 107 931', 'avchjj', 'nguyennt2.22it@vku.udn.vn', 'ad', '2023-11-20 09:56:27', '2023-11-20 09:56:27'),
(10, 'Trang sức và Phụ kiện', '0343 107 931', 'à2145', 'nguyennt2.22it@vku.udn.vn', '1331', '2023-11-21 00:04:13', '2023-11-21 00:04:13'),
(11, 'Trang sức và Phụ kiện', '0343 107 931', 'à2145', 'nguyennt2.22it@vku.udn.vn', '1331', '2023-11-21 00:18:12', '2023-11-21 00:18:12'),
(12, 'Zyonra abcdfdfg', 'nguyennt2.22it@vku.udn.vn', 'Quảng Nam', 'nguyennt2.22it@vku.udn.vn', 'ưqewr', '2023-11-21 00:18:59', '2023-11-21 00:18:59'),
(13, 'Trang sức và Phụ kiện', '0343 107 931', 'Quảng Nam', 'nguyennt2.22it@vku.udn.vn', '34325', '2023-11-21 00:41:15', '2023-11-21 00:41:15'),
(14, 'Trang sức và Phụ kiện', '0343 107 931', 'à2145', 'admin@gmail.com', '11244', '2023-11-21 01:54:29', '2023-11-21 01:54:29'),
(15, 'Trang sức và Phụ kiện', '0343 107 931', 'avc', 'nguyennt2.22it@vku.udn.vn', 'ÂSD', '2023-11-21 01:56:29', '2023-11-21 01:56:29');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(41, 'Quà tặng Handmade', 0, 'Các món quà độc đáo và tinh tế như thiệp handmade, bút viết, quà lưu niệm, hộp quà, v.v.', '<p>C&aacute;c m&oacute;n qu&agrave; độc đ&aacute;o v&agrave; tinh tế như thiệp handmade, b&uacute;t viết, qu&agrave; lưu niệm, hộp qu&agrave;, v.v.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: -2px; left: 512.862px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 1, '2023-11-20 04:00:21', '2023-11-20 04:01:51'),
(42, 'Trang sức và Phụ kiện', 0, 'Bao gồm vòng cổ, bông tai, vòng tay, khuyên tai, túi xách handmade, dây chuyền, v.v.', '<p>Bao gồm v&ograve;ng cổ, b&ocirc;ng tai, v&ograve;ng tay, khuy&ecirc;n tai, t&uacute;i x&aacute;ch handmade, d&acirc;y chuyền, v.v.</p>', 1, '2023-11-20 04:01:19', '2023-11-20 04:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_025831_create_menus_table', 2),
(6, '2023_11_16_085402_create_products_table', 3),
(7, '2023_11_16_085950_update_table_product', 4),
(8, '2023_11_18_120854_create_products_table', 5),
(9, '2023_11_18_121725_update_table_product', 6),
(10, '2023_11_20_063313_create_sliders_table', 7),
(11, '2023_11_20_101347_create_customers_table', 8),
(12, '2023_11_20_101533_create_carts_table', 8),
(13, '2023_11_20_101722_create_jobs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(3, 'Dainty Blossom Necklace', 'Dây chuyền tinh tế với hoa văn độc đáo, làm từ chất liệu bạc và đá quý tự nhiên, tạo nên vẻ đẹp tinh tế và thu hút.', '<p>D&acirc;y chuyền tinh tế với hoa văn độc đ&aacute;o, l&agrave;m từ chất liệu bạc v&agrave; đ&aacute; qu&yacute; tự nhi&ecirc;n, tạo n&ecirc;n vẻ đẹp tinh tế v&agrave; thu h&uacute;t.</p>', 42, 500, 400, 1, '2023-11-20 04:09:20', '2023-11-20 04:12:45', '/storage/uploads/2023/11/20/394586847_275124925530403_678591444143897810_n.jpg'),
(4, 'Elegant Pearl Earrings', 'Bộ bông tai ngọc trai tinh tế và thanh lịch, làm thủ công từ bạc và ngọc trai tự nhiên, phù hợp với mọi dịp.', '<p>Bộ b&ocirc;ng tai ngọc trai tinh tế v&agrave; thanh lịch, l&agrave;m thủ c&ocirc;ng từ bạc v&agrave; ngọc trai tự nhi&ecirc;n, ph&ugrave; hợp với mọi dịp.</p>', 42, 350, 340, 1, '2023-11-20 04:11:22', '2023-11-20 04:33:27', '/storage/uploads/2023/11/20/394586847_275124925530403_678591444143897810_n (1).jpg'),
(5, 'áo', '23', '<p>132</p>', 41, 2335, 123, 1, '2023-11-20 09:20:55', '2023-11-20 09:20:55', '/storage/uploads/2023/11/20/cat1.jpg'),
(6, 'áo nỉ bông', 'ưew', '<p>sfrds</p>', 41, 242, 24, 1, '2023-11-20 09:21:25', '2023-11-20 09:21:25', '/storage/uploads/2023/11/20/394586847_275124925530403_678591444143897810_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Shop Handmade', 'http://127.0.0.1:8000/', '/storage/uploads/2023/11/20/394476352_265560143145717_9189299477841099817_n.jpg', 1, 1, '2023-11-20 04:24:38', '2023-11-20 04:26:36'),
(3, 'Trang sức và Phụ kiện', 'http://127.0.0.1:8000/danh-muc/42-trang-suc-va-phu-kien.html', '/storage/uploads/2023/11/20/393274919_275125032197059_7556399330431942623_n.jpg', 2, 1, '2023-11-20 04:27:39', '2023-11-20 04:27:39');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'nguyenthingocvy332004@gmail.com', NULL, '$2y$12$mlfFPAiM1kmXY6um3u4vmuitk5r5Lo4MrzB93Lm7Xu3D14MCV4yTC', 'xusvArWpCGGIt6nyTu6HOpgNAFY6rRG2PayRQferF4wPLS17MQVZIFfefgwo', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
