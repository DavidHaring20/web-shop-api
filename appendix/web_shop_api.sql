-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2023 at 02:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_shop_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `description` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Quisquam', 'Modi eum impedit sed est.'),
(2, 'Sit', 'Expedita temporibus nostrum iure consectetur cum minus id.'),
(3, 'Cum', 'Ipsam reiciendis corporis odio eligendi.'),
(4, 'Voluptatem', 'Consequatur voluptate ex incidunt sapiente corrupti voluptate.'),
(5, 'Rerum', 'Quia dolorum nemo ut explicabo porro.'),
(6, 'Cumque', 'Nihil numquam aut laborum ducimus dignissimos commodi aspernatur.'),
(7, 'Velit', 'Quos sequi cupiditate saepe debitis iure laborum.'),
(8, 'Ipsum', 'Aut sequi quos omnis nisi.'),
(9, 'Omnis', 'Corporis tenetur commodi voluptate illum reiciendis.'),
(10, 'Rerum', 'Suscipit et possimus repellat aliquid ut facere commodi optio.'),
(11, 'Quas', 'Culpa itaque illo ullam necessitatibus natus.'),
(12, 'Quia', 'Soluta repellendus aut similique aspernatur quo exercitationem praesentium.'),
(13, 'Animi', 'Rem nihil quisquam nesciunt aut sit fugiat.'),
(14, 'Aliquam', 'Sed sapiente possimus odit eum dolorum enim.'),
(15, 'Nostrum', 'Quo ipsa ut commodi et sit numquam eos.'),
(16, 'Adipisci', 'Facilis blanditiis quo laboriosam minus iure necessitatibus.'),
(17, 'Fugit', 'Et maiores repudiandae assumenda dolor.'),
(18, 'Perferendis', 'Et neque dolorum voluptas corrupti voluptas.'),
(19, 'Dolore', 'Fugit velit totam dolorem.'),
(20, 'Deleniti', 'Voluptas ipsam ab quod eum est molestiae a reprehenderit.'),
(21, 'Dicta', 'In perferendis veniam et deserunt error et.'),
(22, 'Nisi', 'Officia odit omnis odit sequi nam.'),
(23, 'Aut', 'Nihil reiciendis quo qui et.'),
(24, 'Reprehenderit', 'Id aliquam velit voluptatem perspiciatis ut laudantium doloremque.'),
(25, 'Aut', 'Et qui enim quos quia expedita.'),
(26, 'Quis', 'Eligendi maxime qui provident alias voluptatem.'),
(27, 'Voluptatem', 'Non sunt molestiae quia quia.');

-- --------------------------------------------------------

--
-- Table structure for table `categories__products`
--

CREATE TABLE `categories__products` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories__products`
--

INSERT INTO `categories__products` (`category_id`, `product_sku`) VALUES
(3, 'MR11BZ44'),
(4, '6996c31c'),
(4, 'ER20FV59'),
(5, 'KT15IN52'),
(6, 'KM83WE20'),
(7, 'IU04DJ67'),
(8, 'IE67WH76'),
(9, 'MA22PI87'),
(10, 'IG32HS79'),
(11, 'IL02DK35'),
(12, 'WW84EM12'),
(13, 'CH31UY17'),
(14, 'RH84LQ65'),
(15, 'GH51CC31'),
(16, 'LH30VC27'),
(17, 'JQ06ZP05'),
(18, 'II44GX49'),
(19, 'AD87NC45'),
(20, 'EH67PS13'),
(21, 'RT33ZF59'),
(22, 'UL66KW02'),
(23, 'JW66MM45'),
(24, 'OH40XN86'),
(25, 'XX15AF70'),
(26, 'VT07RY03'),
(27, 'IM94RZ81');

-- --------------------------------------------------------

--
-- Table structure for table `contract_lists`
--

CREATE TABLE `contract_lists` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku` char(8) NOT NULL,
  `original_price` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(25) NOT NULL,
  `surname` char(25) NOT NULL,
  `e_mail_address` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `city` char(25) NOT NULL,
  `country` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_12_122848_create_products_table', 1),
(6, '2023_11_12_135051_create_categories_table', 1),
(7, '2023_11_12_140342_create_price_lists_table', 1),
(8, '2023_11_12_142327_create_price_modificators_table', 1),
(9, '2023_11_13_150229_create_customers_table', 1),
(10, '2023_11_13_150720_create_orders_table', 1),
(11, '2023_11_13_152255_create_contract_lists_table', 1),
(12, '2023_11_14_095945_create_categories__products_table', 1),
(13, '2023_11_14_100707_create_price_lists__products_table', 1),
(14, '2023_11_14_101553_create_orders__products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `price_modificator_id` bigint(20) UNSIGNED NOT NULL,
  `order_price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders__products`
--

CREATE TABLE `orders__products` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku` char(8) NOT NULL,
  `product_quantity` int(11) NOT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_lists`
--

CREATE TABLE `price_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `description` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_lists`
--

INSERT INTO `price_lists` (`id`, `name`, `description`) VALUES
(1, 'Vel', 'Quaerat consequatur sit assumenda quam nemo repellendus placeat illo.'),
(2, 'Dolore', 'Alias excepturi totam sint eveniet sit.'),
(3, 'Aliquid', 'Nisi dolorem doloremque impedit dolore laboriosam.');

-- --------------------------------------------------------

--
-- Table structure for table `price_lists__products`
--

CREATE TABLE `price_lists__products` (
  `priceList_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_modificators`
--

CREATE TABLE `price_modificators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `activation_price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sku` char(8) NOT NULL,
  `name` char(50) NOT NULL,
  `description` char(250) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `published_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`sku`, `name`, `description`, `price`, `published_date`) VALUES
('084d49d4', 'remote', 'Used for TV', '8.13', '2023-11-15 08:41:19'),
('6996c31c', 'mouse', 'Needed for PC', '6.20', '2023-11-15 08:41:19'),
('a8206e86', 'mouse', 'Needed for PC', '6.20', '2023-11-15 08:39:54'),
('ac01b42b', 'cup', 'Useful for drinking coffee.', '12.50', '2023-11-15 08:39:54'),
('AD87NC45', 'Maroon praesentium', 'Animi illum quia at.', '745.68', '2023-11-15 08:37:19'),
('AZ92HT14', 'Fuchsia magnam', 'Dignissimos molestiae voluptatem excepturi omnis in quia.', '809.08', '2023-11-15 08:37:19'),
('bcd417ed', 'remote', 'Used for TV', '8.13', '2023-11-15 08:39:54'),
('CH31UY17', 'Fuchsia eos', 'Facilis exercitationem ea aut sunt.', '82.00', '2023-11-15 08:37:19'),
('DI96QC99', 'Teal voluptas', 'Sint in omnis incidunt voluptas possimus.', '512.55', '2023-11-15 08:37:19'),
('DQ53AD62', 'Green et', 'Dolores est quia autem tempore.', '148.18', '2023-11-15 08:37:19'),
('e6782f0b', 'more', 'Useful for drinking coffee.', '12.50', '2023-11-15 08:41:19'),
('EH67PS13', 'Green sit', 'Amet impedit vel at aperiam aut est iste.', '556.31', '2023-11-15 08:37:19'),
('ER20FV59', 'Yellow nisi', 'Necessitatibus praesentium et porro qui qui.', '251.59', '2023-11-15 08:37:19'),
('GH51CC31', 'Teal in', 'Et assumenda laborum molestias voluptas dolor voluptatibus eos.', '777.86', '2023-11-15 08:37:19'),
('HM87JD11', 'Lime autem', 'Ipsa adipisci consectetur ea.', '630.13', '2023-11-15 08:37:19'),
('IE67WH76', 'Lime exercitationem', 'Ipsam architecto quaerat id amet repellat ullam voluptatum.', '735.65', '2023-11-15 08:37:19'),
('IG32HS79', 'Blue quasi', 'Amet quia deserunt ipsam aspernatur amet a numquam.', '666.91', '2023-11-15 08:37:19'),
('II44GX49', 'White in', 'Id cumque quis dolor explicabo.', '47.37', '2023-11-15 08:37:19'),
('IL02DK35', 'White illum', 'Voluptas ut iste numquam dignissimos veniam.', '772.42', '2023-11-15 08:37:19'),
('IM94RZ81', 'Silver magni', 'Neque vel et qui ut aut dicta.', '518.23', '2023-11-15 08:37:19'),
('IU04DJ67', 'Maroon earum', 'Qui consequatur sed officia velit.', '932.76', '2023-11-15 08:37:19'),
('JD17BX46', 'Aqua illo', 'Amet similique et dolorum quae.', '552.97', '2023-11-15 08:37:19'),
('JQ06ZP05', 'Yellow consequatur', 'At atque atque dolores est.', '613.30', '2023-11-15 08:37:19'),
('JW66MM45', 'Maroon mollitia', 'Ut molestias cumque dignissimos qui.', '712.19', '2023-11-15 08:37:19'),
('KM83WE20', 'Gray exercitationem', 'Sapiente ut rerum nemo.', '33.18', '2023-11-15 08:37:19'),
('KT15IN52', 'Aqua suscipit', 'Eum qui ad officia officiis voluptatem reiciendis.', '808.50', '2023-11-15 08:37:19'),
('LH30VC27', 'Fuchsia ad', 'Porro enim quo ut ut ex totam officiis.', '880.20', '2023-11-15 08:37:19'),
('MA22PI87', 'Blue voluptatem', 'Beatae distinctio praesentium quia neque.', '850.73', '2023-11-15 08:37:19'),
('MR11BZ44', 'White omnis', 'Repellat perferendis aliquam magnam eum cum qui.', '939.39', '2023-11-15 08:37:19'),
('OH40XN86', 'Silver consequuntur', 'Quia minima temporibus voluptatum fugiat doloremque omnis dolorum.', '718.01', '2023-11-15 08:37:19'),
('PG61AA16', 'Olive tempore', 'Molestias provident porro officiis laudantium.', '980.51', '2023-11-15 08:37:19'),
('RH84LQ65', 'Black quia', 'Eos officiis est dolor delectus ipsam deleniti.', '142.05', '2023-11-15 08:37:19'),
('RT33ZF59', 'Maroon dolores', 'Adipisci odit dolor fugit neque minus provident illum maiores.', '978.49', '2023-11-15 08:37:19'),
('RW67NB38', 'Green possimus', 'Eius quia et consequatur.', '437.15', '2023-11-15 08:37:19'),
('UL66KW02', 'Maroon velit', 'Aliquid esse exercitationem qui quo.', '794.96', '2023-11-15 08:37:19'),
('VT07RY03', 'Maroon sequi', 'Ut tempora ad hic beatae id est.', '555.25', '2023-11-15 08:37:19'),
('VX22AQ57', 'Lime aut', 'Vero maxime maiores voluptas explicabo aliquam iste quod quia.', '899.37', '2023-11-15 08:37:19'),
('WW84EM12', 'Yellow aut', 'Reprehenderit quas exercitationem est.', '665.03', '2023-11-15 08:37:19'),
('XB59WG57', 'Black sapiente', 'Voluptas sit libero sunt aut et magni aperiam.', '449.19', '2023-11-15 08:37:19'),
('XE71HJ31', 'White reprehenderit', 'Recusandae quasi quod nobis est.', '929.23', '2023-11-15 08:37:19'),
('XX15AF70', 'Lime hic', 'Odio ipsam impedit magnam consequuntur ut maxime.', '352.34', '2023-11-15 08:37:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories__products`
--
ALTER TABLE `categories__products`
  ADD UNIQUE KEY `categories__products_product_sku_unique` (`product_sku`),
  ADD KEY `categories__products_category_id_product_sku_index` (`category_id`,`product_sku`);

--
-- Indexes for table `contract_lists`
--
ALTER TABLE `contract_lists`
  ADD UNIQUE KEY `contract_lists_product_sku_unique` (`product_sku`),
  ADD KEY `contract_lists_customer_id_product_sku_index` (`customer_id`,`product_sku`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id` (`customer_id`),
  ADD KEY `orders_price_modificator_id_foreign` (`price_modificator_id`);

--
-- Indexes for table `orders__products`
--
ALTER TABLE `orders__products`
  ADD UNIQUE KEY `orders__products_product_sku_unique` (`product_sku`),
  ADD KEY `orders__products_order_id_product_sku_index` (`order_id`,`product_sku`);

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
-- Indexes for table `price_lists`
--
ALTER TABLE `price_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_lists__products`
--
ALTER TABLE `price_lists__products`
  ADD UNIQUE KEY `price_lists__products_product_sku_unique` (`product_sku`),
  ADD KEY `price_lists__products_pricelist_id_product_sku_index` (`priceList_id`,`product_sku`);

--
-- Indexes for table `price_modificators`
--
ALTER TABLE `price_modificators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_lists`
--
ALTER TABLE `price_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price_modificators`
--
ALTER TABLE `price_modificators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories__products`
--
ALTER TABLE `categories__products`
  ADD CONSTRAINT `categories__products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories__products_product_sku_foreign` FOREIGN KEY (`product_sku`) REFERENCES `products` (`sku`) ON DELETE CASCADE;

--
-- Constraints for table `contract_lists`
--
ALTER TABLE `contract_lists`
  ADD CONSTRAINT `contract_lists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_lists_product_sku_foreign` FOREIGN KEY (`product_sku`) REFERENCES `products` (`sku`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_price_modificator_id_foreign` FOREIGN KEY (`price_modificator_id`) REFERENCES `price_modificators` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders__products`
--
ALTER TABLE `orders__products`
  ADD CONSTRAINT `orders__products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orders__products_product_sku_foreign` FOREIGN KEY (`product_sku`) REFERENCES `products` (`sku`) ON DELETE CASCADE;

--
-- Constraints for table `price_lists__products`
--
ALTER TABLE `price_lists__products`
  ADD CONSTRAINT `price_lists__products_pricelist_id_foreign` FOREIGN KEY (`priceList_id`) REFERENCES `price_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `price_lists__products_product_sku_foreign` FOREIGN KEY (`product_sku`) REFERENCES `products` (`sku`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
