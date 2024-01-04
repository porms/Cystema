-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:49 PM
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
-- Database: `cystema`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `activity_description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `activity_type`, `activity_description`, `timestamp`) VALUES
(1, 'Product Upload', 'New product uploaded: Diamond Shirt1', '2023-11-29 09:41:46'),
(2, 'Registration Failed', 'User registration failed for solivenf362@gmail.com. Email already exists.', '2023-11-29 09:56:38'),
(3, 'Product Upload', 'New product uploaded: Diamond Tote Bag', '2023-12-01 07:58:41'),
(4, 'Product Upload', 'New product uploaded: Diamond Tote Bag', '2023-12-01 08:28:02'),
(5, 'Product Upload', 'New product uploaded: JWUP Shirt', '2023-12-01 16:27:08'),
(6, 'Product Upload', 'New product uploaded: Diamond Shirt', '2023-12-01 16:28:01'),
(7, 'Product Upload', 'New product uploaded: Skull Coin Purse', '2023-12-01 16:29:50'),
(8, 'Product Upload', 'New product uploaded: Net Cap Graffiti', '2023-12-01 16:30:29'),
(9, 'Product Upload', 'New product uploaded: Tote Bag Splash', '2023-12-03 04:57:15'),
(10, 'Product Updated', 'Updated Product: Diamond Coin Purse', '2023-12-03 05:11:17'),
(11, 'Product Upload', 'New product uploaded: Sublimation OG', '2023-12-03 05:17:57'),
(12, 'Product Upload', 'New product uploaded: CYSTM V2', '2023-12-03 05:18:42'),
(13, 'Product Upload', 'New product uploaded: CYSTM v2.1', '2023-12-03 05:20:29'),
(14, 'Product Upload', 'New product uploaded: Skull Mask', '2023-12-03 05:23:14'),
(15, 'Product Upload', 'New product uploaded: Break Free Black', '2023-12-10 07:25:56'),
(16, 'Product Updated', 'Updated Product: ', '2023-12-23 06:52:10'),
(17, 'Product Updated', 'Updated Product: ', '2023-12-23 06:53:38'),
(18, 'Product Updated', 'Updated Product: ', '2023-12-23 06:54:49'),
(19, 'Product Upload', 'New product uploaded: Net Cap', '2023-12-23 06:56:33'),
(20, 'Product Upload', 'New product uploaded: Break Free', '2023-12-27 03:30:57'),
(21, 'Product Upload', 'New product uploaded: Tote Bag Splash', '2023-12-27 03:34:18'),
(22, 'Product Upload', 'New product uploaded: Tote Bag Splash', '2023-12-27 03:42:44'),
(23, 'Product Upload', 'New product uploaded: Tote Bag Splash', '2023-12-27 03:43:26'),
(24, 'Product Upload', 'New product uploaded: JWUP', '2023-12-27 03:44:09'),
(25, 'Product Upload', 'New product uploaded: Skull Coin Purse', '2023-12-27 03:45:07'),
(26, 'Product Upload', 'New product uploaded: Classic Justice', '2023-12-29 10:34:44'),
(27, 'Product Upload', 'New product uploaded: Tote Bag Splash', '2023-12-29 10:35:37'),
(28, 'Product Upload', 'New product uploaded: Lomboy', '2023-12-29 10:36:13'),
(29, 'Product Upload', 'New product uploaded: Break Free', '2023-12-29 11:45:56'),
(30, 'Product Upload', 'New product uploaded: Diamond Shirt', '2023-12-29 11:46:34'),
(31, 'Product Upload', 'New product uploaded: Diamond Tote Bag', '2023-12-29 11:46:57'),
(32, 'Product Upload', 'New product uploaded: Greed Demon', '2023-12-29 11:47:50'),
(33, 'Product Upload', 'New product uploaded: JWUP', '2023-12-29 11:48:46'),
(34, 'Product Upload', 'New product uploaded: Skull Mask', '2023-12-29 11:49:09'),
(35, 'Product Upload', 'New product uploaded: OE', '2023-12-29 11:49:47'),
(36, 'Product Upload', 'New product uploaded: CYSTM Ouija ', '2023-12-29 11:50:45'),
(37, 'Product Upload', 'New product uploaded: Diamond Coin Purse', '2023-12-29 11:51:17'),
(38, 'Product Upload', 'New product uploaded: Stay Woke', '2023-12-29 11:51:47'),
(39, 'Product Upload', 'New product uploaded: Net Cap ', '2024-01-02 06:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_flag` tinyint(4) NOT NULL DEFAULT 1,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `admin_flag`, `status`) VALUES
(2, 'pblcystema@gmail.com', 'Cystem@pblgroup7', 1, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(45) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `sub_total` float(10,2) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customers_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `registration_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_flag` tinyint(4) NOT NULL DEFAULT 0,
  `otp` varchar(15) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customers_id`, `first_name`, `last_name`, `address`, `username`, `email`, `password`, `contact_number`, `registration_time`, `admin_flag`, `otp`, `status`) VALUES
(18, 'Mahilig sa', 'Babae', 'blkqwe12', 'K11935564', 'solivenf362@gmail.com', '$2y$10$V2MM2KAXV5oKNLxrTYwr8.mdHut6rmoylwnCGzo3yMfvdvnoiX30S', '09682481298', '2024-01-02 14:51:28', 0, '299271', 'verified'),
(29, 'Charles Gabriel', 'Torres', '03 Cuasay Street', 'Ch@wlescancer12', 'japorms.charles.yeah12@gmail.com', '$2y$10$qFF44AZ/hEoHn9hE08ZYRuHW6S4r7g9hOaqzrU1/pLJ6Y/KMRuSmu', '09103158741', '2023-12-29 18:02:56', 0, '409802', 'verified'),
(33, 'Bautkm', 'Batumbakal', 'Mangga Strreet', 'H@hahaha1234', 'porms.chawi12@gmail.com', '$2y$10$3sRWFk3r5fIzYbQpK11wJOO5TZ06fZD7kqwhd0SF8QZkK6dj1vT56', '09103166542', '2024-01-02 13:56:22', 0, '060158', 'verified'),
(36, 'Charles Gabriel', 'Pensotes', '03 Cuasay Street', 'Ch@wlescancer12', 'japorms.yeah12@gmail.com', '$2y$10$FgJOUj83mrJtZWsesvh/4u05kEuU2tTSsG8f8Zn/8YPdkwYyoPmkC', '09103158741', '2024-01-04 15:34:18', 0, '204443', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `deliveries_id` int(11) NOT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freedom_wall`
--

CREATE TABLE `freedom_wall` (
  `message` text NOT NULL,
  `design` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freedom_wall`
--

INSERT INTO `freedom_wall` (`message`, `design`) VALUES
('jhkjhjjk', 'uploads/Blog 5.jpg'),
('asdadaacv', 'uploads/Lomboy.jpg'),
('dasdadacccccc', 'uploads/robert-lukeman-_RBcxo9AU-U-unsplash.jpg'),
('cw212adasxx', 'uploads/Logo Big.jpg'),
('blqkeoalk ', 'uploads/Lomboy.jpg'),
('try try try', 'uploads/Cystema Coin Purse.jpg'),
('hhhh', 'Uploads/WIN_20230919_15_16_42_Pro.jpg'),
('friends', 'Uploads/WIN_20230919_15_16_42_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `reference_number` varchar(20) NOT NULL,
  `product_name` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lot_number` varchar(20) NOT NULL,
  `street` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  `payment_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','paid') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `reference_number`, `product_name`, `total_price`, `first_name`, `last_name`, `contact_number`, `email`, `lot_number`, `street`, `barangay`, `city`, `post_code`, `payment_method`, `payment_time`, `status`) VALUES
(64, 'N0TESN38BD6G', 'Net Cap  (1)', 200.00, 'Charles Gabriel', 'Torres', '09103158741', 'japorms.yeah12@gmail.com', 'Number 3', 'Pinagkaisahan', 'Barangay Central', 'Abulug', '1636', 'COD', '2024-01-04 08:35:15', 'pending'),
(65, 'J4562Z282JLX', 'Net Cap  (1)', 200.00, 'Charles Gabriel', 'Torres', '09103158741', 'japorms.yeah12@gmail.com', '03', 'Cuasay Street', 'Barangay Central', 'Abulug', '1636', 'COD', '2024-01-04 08:37:36', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(45) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category`, `product_name`, `image`, `price`, `quantity`, `description`, `upload_date`) VALUES
(74, 'Shirts', 'Classic Justice', 'Classic Justice.jpg', 500, 14, 'Classic Justice (Black)', '2023-12-29 10:34:44'),
(76, 'Accessories', 'Lomboy', 'Lomboy.jpg', 100, 23, 'Lomboy', '2023-12-29 10:36:13'),
(77, 'Shirts', 'Break Free', 'Break Free Red.jpg', 500, 5, 'Break Free (Red)', '2023-12-29 11:45:56'),
(85, 'Accessories', 'Diamond Coin Purse', 'Cystema Coin Purse.jpg', 100, 2, 'Coin Purse Diamond', '2023-12-29 11:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `reminder_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_order`
--

CREATE TABLE `shopping_order` (
  `order_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `lot_number` varchar(45) NOT NULL,
  `barangay` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `post_code` int(11) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `price_total` float(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shopping_order`
--

INSERT INTO `shopping_order` (`order_id`, `first_name`, `last_name`, `contact_number`, `email`, `payment_method`, `street`, `lot_number`, `barangay`, `city`, `post_code`, `total_products`, `price_total`) VALUES
(67, 'Charles Gabriel', 'Torres', '09103158741', 'japorms.yeah12@gmail.com', 'COD', 'Cuasay Street', '03', 'Barangay Central', 'Abulug', 1636, 'Net Cap  (1)', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `customer` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `activity_description` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `user_email`, `activity_type`, `activity_description`, `timestamp`) VALUES
(97, 'japorms.yeah12@gmail.com', 'Add To Cart', 'Item Added to Cart: Net Cap ', '2024-01-04 16:37:18'),
(98, 'japorms.yeah12@gmail.com', 'Order Placed', 'User Placed an Order.', '2024-01-04 16:37:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product` (`product_id`),
  ADD UNIQUE KEY `unique_cart_entry` (`product_id`,`user_email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customers_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`deliveries_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_order`
--
ALTER TABLE `shopping_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer` (`customer`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1449;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `deliveries_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_order`
--
ALTER TABLE `shopping_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`Customers_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `customers` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
