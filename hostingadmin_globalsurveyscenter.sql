-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 04:36 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostingadmin_globalsurveyscenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `review_users` int(11) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `url_1` varchar(255) DEFAULT NULL,
  `url_2` varchar(255) DEFAULT NULL,
  `img_popular` varchar(250) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `product_price`, `regular_price`, `shipping`, `quantity`, `images`, `review_users`, `reviews`, `url_1`, `url_2`, `img_popular`, `ct_dt`) VALUES
(1, 'Choice Labs Keto Advanced Weight Loss Supplement ï¿½', 'The new way to burn fat! Natural, safe &amp; effective pure ketosis formula!', '149.95', '0.00', '4.95', 3, 'images/products_image/keto_new18_1.png', 821, 'images/5-star.png', 'https://illuminatitrk.com/?a=6224&c=103967&s1={affiliate_id}&s2={transaction_id}', '', 'images/popular_image/most-populer2.png', '2019-05-10 16:18:52'),
(2, 'PaltroxRXÂ© Male Enhancement Formula', 'Medical strength specially formulated male enhancement pills to help you get bigger &amp; last longer!', '109.95', '0.00', '4.95', 4, 'images/products_image/me_new19_2.jpg', 611, 'images/4-half-star.png', 'https://illuminatitrk.com/?a=6224&c=103967&s1={affiliate_id}&s2={transaction_id}', '', 'images/popular_image/most-populer3.png', '2019-05-10 16:18:52'),
(3, '30-Day Anti-Aging Serum', 'Scientifically proven deep-moisturizing cream easily erases wrinkles and fine lines. Better than botox!', '0.00', '145.99', '4.95', 2, 'images/products_image/skin_new19_1.png', 25, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=604645&subid1={affiliate_id}&subid2={transaction_id}', '', 'images/popular_image/most-populer.png', '2019-05-11 08:54:33'),
(4, '100% Organic CBD Oil', 'Clinically validated to help relieve chronic pain, combat cancer, lower blood sugar, and reduce stress & anxiety!', '0.00', '75.95', '6.95', 3, 'images/products_image/cbd_new19_2.png', 880, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=603981&subid1={affiliate_id}&subid2={transaction_id}', '', '', '2019-05-13 09:49:18'),
(5, '#1 NAVY SEAL Tactical Flashlight', 'The world\'s brightest, most powerful & reliable tactical LED flashlight!', '0.00', '139.95', '9.95', 3, 'images/products_image/flash_new19_2.png', 429, 'images/4-half-star.png', 'https://track.clickbooth.com/c/aff?lid=478431&subid1={affiliate_id}&subid2={transaction_id}', '', '', '2019-05-09 12:54:16'),
(6, 'Superior Watches', 'Designer luxury watches for men and women - the perfect present!', '0.00', '119.99', '9.95', 2, 'images/products_image/watch_new19_1.png', 762, 'images/5-star.png', 'https://www.the-quality-fashion.biz/?z=l7&AFFID=3684&C1=&C2=58ds665yd3o6&click_id=248005040&C3=wMEUKC4AQDU3HRAMHH0P52AO', '', '', '2019-05-14 08:25:52'),
(7, 'Hydroxicil  - #1 Men\'s Skin Cream', 'Achieve great looking skin in just 2 weeks! The perfect gift for your husband/boyfriend!', '0.00', '59.95', '4.95', 5, 'images/products_image/m_skin_new19_1.png', 302, 'images/4-half-star.png', 'https://track.clickbooth.com/c/aff?lid=117080&subid1={affiliate_id}&subid2={transaction_id}&event=upsell{revenue_amount}', '', '', '2019-05-11 07:25:34'),
(8, 'LeviaFlex Testo Booster', 'Proprietary growth supplement that drastically increases your body\'s ability to build strong, lean muscle', '0.00', '85.95', '4.95', 7, 'images/products_image/muscle_new19_1.jpg', 176, 'images/4-half-star.png', 'https://track.clickbooth.com/c/aff?lid=478417&subid1={affiliate_id}&subid2={transaction_id}', '', '', '2019-05-11 07:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `ct_dt`) VALUES
(1, 'amzus@crm.com', 'Admin@1', '2019-04-19 05:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
