-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Des 2020 pada 07.20
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sayur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('h0gd3f3qbkvfntmk8fuolgu0vrp1r2oj', '127.0.0.1', 1609139857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393133393835373b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a33313030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a33313030303b733a343a226e616d65223b733a373a2242726f6b6f6c69223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a33313030303b7d7d),
('8sbbk4veq13ksv4eqsg0ughl8blrttvo', '127.0.0.1', 1609139954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393133393935343b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a373a226d756c796f6a72223b),
('jvhfdod65jbejfmmv2dj440fjioterre', '127.0.0.1', 1609139903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393133393835373b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a33313030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a33313030303b733a343a226e616d65223b733a373a2242726f6b6f6c69223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a33313030303b7d7d7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22633835386161356666666135303136636564643662303930323233363339343839323231343165336232393038613932343539323333386133353864366633393334663966383132313434376136633538616433373064356633326332633263306162333864643039363739303533346463333564313033383964346534383168764669626c56346f56546556336b7365656439767a4266396f2f554e626d336162564f4c5964716b2b5844646542714f677953676e4856395455735173692b77552f454169586c6a4f794933707061776d79627a6b6a6d3474696d6b52534e653661646c732b44376264634c535136726d68464f5670324c68323178496535223b73746f72655f666c6173687c733a32363a2250656e646166746172616e20616b756e20626572686173696c21223b5f5f63695f766172737c613a313a7b733a31313a2273746f72655f666c617368223b733a333a226f6c64223b7d),
('2hf9eupgemhd1dvqt6agjcl4h0t6o5rj', '127.0.0.1', 1609140015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393133393935343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2234366162383738623235373234363738343266613239313532646431666538633130646631313238663734663630623731656236376232626663313563386638626533656234323964653033353739356563643837303333323636326131646663666166623832386538663965663431666161386131626430386530353065394d52545a7639453977796239745468667a6477554d56512f4737634e7870532f304a6d41454f2b476e556a7258587a34655a61384c3534326c4455724972774a69656c462f6e6c674d5463316e473138506b6a494e39743442666573554d7a776e3370367153504d7a5075556e3638495531344d5642676c504d7155684a2b42223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `parent_id`, `name`, `subject`, `email`, `message`, `contact_date`, `status`, `reply_at`) VALUES
(1, NULL, 'Agung Tri Saputra', 'Pengiriman kok lama?', 'martinms.za@gmail.com', 'pengiriman pesanan saya kok lama ya', '2020-03-29 07:40:13', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `credit`, `start_date`, `expired_date`, `is_active`) VALUES
(1, '#DiRumahAja', 'DIRUMAHAJA19', '5000.00', '2020-03-27', '2020-04-03', 1),
(2, 'Buah Merah Meriah', 'BUAHMERAH', '5000.00', '2020-03-27', '2020-03-30', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `profile_picture` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `phone_number`, `address`, `profile_picture`) VALUES
(6, 7, 'Agung Tri Saputra', '081328907767', 'Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu', 'agung.png'),
(7, 8, 'Abdul Kholiq', '089647583033', 'Jln AHmad Yani 6 Jember', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT '1',
  `delivery_data` text,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`) VALUES
(5, 7, NULL, 'TJL2932027019', '2', '2020-03-29 08:14:50', '271000.00', 2, 1, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(6, 7, NULL, 'JQZ2932017914', '1', '2020-03-29 08:15:13', '350000.00', 1, 2, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(7, 7, NULL, 'TIB3032037078', '2', '2020-03-30 08:49:42', '78000.00', 3, 1, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(8, 7, NULL, 'GPS3032027749', '1', '2020-03-30 09:14:27', '360000.00', 2, 1, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(3, 4, 2, 1, '31000.00'),
(4, 4, 8, 13, '20000.00'),
(5, 5, 2, 1, '31000.00'),
(6, 5, 13, 12, '20000.00'),
(7, 6, 9, 10, '35000.00'),
(8, 7, 10, 1, '12000.00'),
(9, 7, 9, 1, '35000.00'),
(10, 7, 2, 1, '31000.00'),
(11, 8, 9, 1, '35000.00'),
(12, 8, 1, 5, '65000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_price`, `payment_date`, `picture_name`, `payment_status`, `confirmed_date`, `payment_data`) VALUES
(4, 5, '271000.00', '2020-03-29 08:20:39', 'category-1.jpg', '1', NULL, '{\"transfer_to\":\"bri\",\"source\":{\"bank\":\"Bank BRI\",\"name\":\"Agung Tri Saputra\",\"number\":\"12-345-678-9\"}}'),
(5, 7, '78000.00', '2020-03-30 08:51:08', 'html5.jpg', '2', NULL, '{\"transfer_to\":\"btn\",\"source\":{\"bank\":\"BANK BCA\",\"name\":\"MMS\",\"number\":\"123-456\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `current_discount` decimal(8,2) DEFAULT '0.00',
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(1, 2, 'SB750372', 'Strawberry', NULL, 'category-2.jpg', '70000.00', '5000.00', 50, 'Kg', 1, '2020-03-26 15:02:52'),
(2, 1, 'BS350420', 'Brokoli', NULL, 'product-6.jpg', '33000.00', '2000.00', 10, 'Kg', 1, '2020-03-26 15:03:40'),
(4, 1, 'TS120790', 'Tomat', NULL, 'product-5.jpg', '10000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:36:30'),
(5, 1, 'WS120811', 'Wortel', NULL, 'product-7.jpg', '12000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:36:51'),
(8, 1, 'PS220885', 'Paprika', NULL, 'product-12.jpg', '20000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:38:05'),
(9, 2, 'AB450163', 'Apel', NULL, 'product-10.jpg', '40000.00', '5000.00', 50, 'Kg', 1, '2020-03-26 19:42:43'),
(10, 1, 'BMS120283', 'Bawang Merah', NULL, 'product-9.jpg', '12000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:44:42'),
(11, 1, 'URS13301', 'Ubi Rambat', NULL, 'product-4.jpg', '15000.00', '0.00', 3, 'Kg', 1, '2020-03-26 19:45:01'),
(12, 1, 'BPS15347', 'Bawang Putih', NULL, 'product-111.jpg', '15000.00', '0.00', 5, 'Kg', 1, '2020-03-26 19:45:47'),
(13, 1, 'KPS223370', 'Kacang Polong', NULL, 'product-3.jpg', '20000.00', '0.00', 23, 'Kg', 1, '2020-03-26 19:46:10'),
(14, 1, 'CMS410424', 'Cabai Merah', NULL, 'product-121.jpg', '40000.00', '7000.00', 10, 'Kg', 1, '2020-03-26 19:47:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'Sayur'),
(2, 'Buah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(2, 7, 6, 'Sangat puas', 'Pengiriman cepat dan sayur segar', '2020-03-30 08:31:31', 1),
(3, 7, 5, 'Buah segar', 'Buah segar dan kualitasnya sangat bagus', '2020-03-30 08:33:10', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `role_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Toko Sayur 22'),
(3, 'store_phone_number', '082281666584'),
(4, 'store_email', 'tokosayur22@gmail.com'),
(5, 'store_tagline', 'Belanja Sayur Segar 24 Jam'),
(6, 'store_logo', 'Logo.png'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Belanja sayur dan buah dengan murah, mudah dan cepat'),
(9, 'store_address', 'Jl. Medan Baru VI, RT 12 RW 06 Kel. Kandang Limun'),
(10, 'min_shop_to_free_shipping_cost', '20000'),
(11, 'shipping_cost', '3000'),
(12, 'payment_banks', '{\"bri\":{\"bank\":\"BRI\",\"name\":\"Martin Mulyo Syahidin\",\"number\":\"9999-999-99-9\"},\"btn\":{\"bank\":\"BNI\",\"name\":\"Martin Mulyo Syahidin\",\"number\":\"4444-444-44-4\"},\"bni\":{\"bank\":\"BTN\",\"name\":\"Martin M');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT '0',
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role_id`, `register_date`) VALUES
(1, 'Mulyo Jr.', 'mulyosyahidin95@gmail.com', NULL, 'admin', '$2y$10$MXNU0yw4drSclahZu.Pz..BRa6rYhMNZ0sDl/7dhXjg3D4LvxPhjO', 'agung1.png', 1, NULL),
(7, NULL, 'agungtri@gmail.com', NULL, 'agungtria', '$2y$10$MXNU0yw4drSclahZu.Pz..BRa6rYhMNZ0sDl/7dhXjg3D4LvxPhjO', NULL, 2, '2020-03-29 08:14:30'),
(8, NULL, 'kholiqbisnis@gmail.com', NULL, 'kholiq', '$2y$10$MXNU0yw4drSclahZu.Pz..BRa6rYhMNZ0sDl/7dhXjg3D4LvxPhjO', NULL, 2, '2020-12-28 07:18:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`);

--
-- Indeks untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_payments_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
