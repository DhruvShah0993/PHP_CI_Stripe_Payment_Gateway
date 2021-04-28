-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 09:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stripe`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_num` bigint(20) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `card_num`, `card_cvc`, `card_exp_month`, `card_exp_year`, `item_name`, `item_number`, `item_price`, `item_price_currency`, `paid_amount`, `paid_amount_currency`, `txn_id`, `payment_status`, `created`, `modified`) VALUES
(1, 'Dhruv', 'dshah0993@gmail.com', 5555555555554444, 123, '12', '2022', 'Stripe Donation', 'PS123456', 50.00, 'usd', '50', 'usd', 'txn_1Il7TvJDRr1d8BYXD0zfOeVD', 'succeeded', '2021-04-28 09:06:47', '2021-04-28 09:06:47'),
(2, 'Samarth', 'thespatel112@gmail.com', 5555555555554444, 123, '12', '2022', 'Stripe Donation', 'PS123456', 50.00, 'usd', '50', 'usd', 'txn_1Il7VLJDRr1d8BYXW4HgTBn1', 'succeeded', '2021-04-28 09:08:15', '2021-04-28 09:08:15'),
(3, 'Samarth', 'thespatel112@gmail.com', 5555555555554444, 123, '12', '2022', 'Stripe Donation', 'PS123456', 50.00, 'usd', '50', 'usd', 'txn_1Il7WAJDRr1d8BYXlLy3KgmJ', 'succeeded', '2021-04-28 09:09:06', '2021-04-28 09:09:06'),
(4, 'Samarth', 'thespatel112@gmail.com', 5555555555554444, 123, '12', '2022', 'Stripe Donation', 'PS123456', 50.00, 'usd', '50', 'usd', 'txn_1Il7WbJDRr1d8BYXRwCg1BjM', 'succeeded', '2021-04-28 09:09:33', '2021-04-28 09:09:33'),
(5, 'Nirmit', 'nirmit123@gmail.com', 5555555555554444, 123, '12', '2022', 'Stripe Donation', 'PS123456', 50.00, 'usd', '50', 'usd', 'txn_1Il7XSJDRr1d8BYXsaXlMQ7b', 'succeeded', '2021-04-28 09:10:26', '2021-04-28 09:10:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
