-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 10:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `piggytechbackdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `id` bigint(20) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_ammount` double NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl_seq`
--

CREATE TABLE `ordertbl_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordertbl_seq`
--

INSERT INTO `ordertbl_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` double NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_seq`
--

CREATE TABLE `order_item_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item_seq`
--

INSERT INTO `order_item_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `description`, `price`, `product_name`, `url`) VALUES
(1, '\"RISING FREEDOM GUNDAM\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 1, 'Freedom', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2023/10/hg_rising_freedom_gundam_01m_en_1.jpg'),
(2, '\"MIGHTY STRIKE FREEDOM GUNDAM\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 2, 'Strike Freedom', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/01/hg_mighty_strike_freedom_gundam_01m_en_1.jpeg'),
(3, '\"IMMORTAL JUSTICE GUNDAM\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 3, 'Justice', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2023/10/hg_immortal_justice_gundam_01m_en_1.jpg'),
(4, '\"INFINITE JUSTICE GUNDAM TypeⅡ\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 4, 'Infinite Justice', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/01/hg_infinite_justice_gundam_type%E2%85%A1_01m_en_1.jpeg'),
(5, 'A set including the Destiny Gundam Spec Ⅱ and Zeus Silhouette featured in Mobile Suit Gundam SEED FREEDOM is here! The super-massive armaments are recreated in HG format', 5, 'Destiny', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/06/HG_DESTINY_GUNDAM_Spec%E2%85%A1_ZEUS_SILHOUETTE_01m_en_1.jpeg'),
(6, '\"FORCE IMPULSE GUNDAM\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released in movie specification', 6, 'Impulse', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2023/10/RG_force_impulse_gundam_spec_01m_en_1.jpg'),
(7, 'Multiple units played major roles in Mobile Suit Gundam SEED FREEDOM!\nMass-produced Mobile Suits used by Orb, and the transformation into MA form can be recreated using dedicated exchangeable parts', 7, 'Murasame Kai', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/06/HGCE_murasame_kai_01m_en_1.jpeg'),
(8, 'The Duel Blitz Gundam piloted by Yzak Jule from \"Mobile Suit Gundam SEED FREEDOM\" will be available as an HG kit', 8, 'Duel Blitz', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/03/HGCE_duel_blitz_01m_en_1.jpeg'),
(9, 'The Lightning Buster Gundam piloted by Dearka Elthman from Mobile Suit Gundam SEED FREEDOM joins the HG lineup', 9, 'Lightning Buster', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/03/HGCE_lightning_buster_01m_en_1.jpeg'),
(10, '\"GELGOOG Menace (LUNAMARIA HAWKE CUSTOM)\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 10, 'Gelgoog Menace', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2023/10/hg_-gelgoog_menace_01m_en_1.jpg'),
(11, '\"GYAN Strom (AGNES GIEBENRATH CUSTOM)\" from \"Mobile Suit Gundam SEED FREEDOM\" will be released from HG series', 11, 'Gyan Strom', 'https://en.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2024/01/hg_gyan_strom_%20agnes_giebenrath_custom_01m_en_1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_seq`
--

INSERT INTO `users_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` (`id`, `email`, `password`, `username`) VALUES
(1, 'rm@gmail.com', '$2a$10$rU.CQic9ai/0A8bwbP9Xvups1wTlqTYnWtaU9wpJM/D6gYfYPncSa', 'bossing'),
(2, 'rmbs@gmail.com', '$2a$10$hjot8PzRd8ASNRAfSsXJqOEg7MxJv3CIIsyMgwhNsi.EBrtS8mvXK', 'saving');

-- --------------------------------------------------------

--
-- Table structure for table `user_auth_seq`
--

CREATE TABLE `user_auth_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_auth_seq`
--

INSERT INTO `user_auth_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKj8ur28wo49fm2qryn8adaktbi` (`username`),
  ADD UNIQUE KEY `UKpou0ngjxlvv2r6yd8td3idhqk` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKhyqovue1qcio1rn6h4q4264w7` FOREIGN KEY (`user_id`) REFERENCES `user_auth` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
