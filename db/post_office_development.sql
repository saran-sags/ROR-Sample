-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2013 at 10:22 AM
-- Server version: 5.5.29
-- PHP Version: 5.3.10-1ubuntu3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `post_office_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE IF NOT EXISTS `card_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_pincode` int(11) DEFAULT NULL,
  `sender_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_phone_no` int(11) DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_pincode` int(11) DEFAULT NULL,
  `receiver_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_phone_no` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`id`, `card_id`, `sender_name`, `sender_address`, `sender_city`, `sender_pincode`, `sender_state`, `sender_email`, `sender_phone_no`, `receiver_name`, `receiver_address`, `receiver_city`, `receiver_pincode`, `receiver_state`, `receiver_phone_no`, `status`, `card_type`, `rate`, `weight`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'IPO-4866573', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Delivered', 'ordinary', 5, 0, 5, '2013-03-21 11:28:38', '2013-03-25 07:33:08'),
(3, 'IPO-1043897', 'saranya', 'gandhi nagar,park street', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar,housing unit', 'chennai', 24, 'Tamilnadu', 987456123, 'Received', 'ordinary', 5, 0, 5, '2013-03-21 11:33:39', '2013-03-26 07:30:38'),
(4, 'IPO-6779641', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Inprogress', 'ordinary', 5, 0, 5, '2013-03-21 11:37:22', '2013-03-22 13:04:22'),
(5, 'IPO-1201858', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Delivered', 'ordinary', 5, 0, 5, '2013-03-21 11:38:30', '2013-03-22 12:41:12'),
(6, 'IPO-5207173', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Inprogress', 'ordinary', 5, 0, 5, '2013-03-21 11:40:54', '2013-03-25 04:22:10'),
(7, 'IPO-7809997', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Delivered', 'ordinary', 5, 0, 5, '2013-03-21 11:42:55', '2013-03-25 04:22:05'),
(9, 'IPO-5528493', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'nandhini', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Inprogress', 'speed', 35, 2, 70, '2013-03-21 12:22:45', '2013-03-26 10:26:28'),
(10, 'IPO-317265', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rathna', 'hdshfl', 'chennai', 24, 'Tamilnadu', 987456123, 'Inprogress', 'speed', 0, 32, 0, '2013-03-21 12:26:55', '2013-03-25 05:35:02'),
(11, 'IPO-8984765', 'gayathri', '5,sri nagar colony', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Saranya', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Inprogress', 'speed', 0, 32, 0, '2013-03-25 04:25:27', '2013-03-25 10:29:47'),
(12, 'IPO-8019967', 'gayathri', '5,sri nagar colony', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Saranya', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Delivered', 'speed', 0, 32, 0, '2013-03-25 05:18:19', '2013-03-26 06:34:01'),
(13, 'IPO-6831932', 'gayathri', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Saranya', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Received', 'Select Type', 0.5, 32, 16, '2013-03-25 05:27:27', '2013-03-25 05:27:27'),
(14, 'IPO-4785585', 'kiruba', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Saranya', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Non-Delivered', 'speed', 0.5, 26, 13, '2013-03-25 10:27:16', '2013-03-26 11:07:55'),
(15, 'IPO-9317797', 'ajmath', 'housing unit', 'trichy', 620024, 'tamilnadu', '', 1234567899, 'nandhini', 'indra nagar', 'chennai', 25, 'Tamilnadu', 987456123, 'Received', 'speed', 0.5, 23, 11.5, '2013-03-26 06:31:04', '2013-03-26 06:31:04'),
(16, 'IPO-4042815', 'nandhini', '5,sri nagar colony', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Bhuvi', 'indra nagar,housing unit', 'chennai', 24, 'Tamilnadu', 987456123, 'Received', 'Select Type', 0.5, 0, 0, '2013-03-26 06:56:05', '2013-03-26 06:56:05'),
(17, 'IPO-5298980', 'nandhini', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'Bhuvi', 'indra nagar', 'chennai', 24, 'Tamilnadu', 987456123, 'Received', 'ordinary', 5, 0, 5, '2013-03-26 06:57:51', '2013-03-26 08:14:37'),
(18, 'IPO-1096961', 'ajmath', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rofeena', 'indra nagar,housing unit', 'chennai', 7890, 'Tamilnadu', 987456123, 'Delivered', 'ordinary', 5, 0, 5, '2013-03-26 07:00:43', '2013-03-27 04:26:24'),
(21, 'IPO-4569618', 'saranya', 'gandhi nagar', 'kumbakonam', 612001, 'tamilnadu', '', 1234567899, 'rofeena', 'indra nagar', 'chennai', 25, 'Tamilnadu', 987456123, 'Received', 'speed', 0.5, 12, 6, '2013-03-26 07:16:03', '2013-03-26 07:16:03'),
(22, 'IPO-1478828', 'bhuvi', '5,sri nagar colony', 'salem', 56, 'tamilnadu', '', 1234567899, 'Saranya', 'indra nagar,housing unit', 'chennai', 24, 'Tamilnadu', 987456123, 'Received', 'speed', 0.5, 29, 14.5, '2013-03-26 07:17:05', '2013-03-26 07:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordinary_post` float DEFAULT NULL,
  `speed_post` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `ordinary_post`, `speed_post`, `created_at`, `updated_at`) VALUES
(1, 5, 0.5, '2013-03-21 09:38:13', '2013-03-26 06:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20130320101031'),
('20130320101817'),
('20130320103025'),
('20130320111438'),
('20130321105211'),
('20130321122820'),
('20130325052354');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 'efed4960a8a0defd3fb6b75d25220b44', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjE2b0NNU2paZXFhY3lFSHI4SEFo\nRXpucStnLzdpVnZ0WFhNdGV0eVQ0bCtVPQY7AEZJIgx1c2VyX2lkBjsARmkG\n', '2013-03-20 12:17:25', '2013-03-20 12:41:32'),
(10, '5c8513595a2d6165e3638196bfa8dbd5', 'BAh7B0kiCmZsYXNoBjoGRUZvOiVBY3Rpb25EaXNwYXRjaDo6Rmxhc2g6OkZs\nYXNoSGFzaAk6CkB1c2VkbzoIU2V0BjoKQGhhc2h7BjoLbm90aWNlVDoMQGNs\nb3NlZEY6DUBmbGFzaGVzewY7CkkiHExvZ2dlZCBvdXQgc3VjY2Vzc2Z1bGx5\nBjsARjoJQG5vdzBJIhBfY3NyZl90b2tlbgY7AEZJIjFzSjl5ZUQzaUs0TE5H\nQldFV1VZZlFqNWNjbDVkZDFhR0NITFhWVGVKbUxFPQY7AEY=\n', '2013-03-21 13:14:48', '2013-03-21 13:14:48'),
(11, '0e4859e6971b52a08b04fc036eebe908', 'BAh7CkkiEF9jc3JmX3Rva2VuBjoGRUZJIjE3bm1DOXhOcVZUcks2Y0hYcWp0\nbTljb2hJakJMaGVZWEVnU1NMdnA1M1BzPQY7AEZJIgx1c2VyX2lkBjsARmkG\nSSIJbmFtZQY7AEZJIgphZG1pbgY7AFRJIgxjYXJkX2lkBjsARkkiEElQTy02\nNzc5NjQxBjsAVEkiDmNhcmRfdHlwZQY7AEZJIg1vcmRpbmFyeQY7AFQ=\n', '2013-03-22 04:38:55', '2013-03-22 13:02:58'),
(33, 'b27f8ee6c7be1bc6f2502e39aeca4fb6', 'BAh7B0kiCmZsYXNoBjoGRUZvOiVBY3Rpb25EaXNwYXRjaDo6Rmxhc2g6OkZs\nYXNoSGFzaAk6CkB1c2VkbzoIU2V0BjoKQGhhc2h7ADoMQGNsb3NlZEY6DUBm\nbGFzaGVzewY6C25vdGljZUkiHXBsZWFzZSBsb2dpbiB0byBjb250aW51ZQY7\nAEY6CUBub3cwSSIQX2NzcmZfdG9rZW4GOwBGSSIxbjBKc0NxaHltNEp1R0ho\ndm1NZ1dqQm16cCswL1dXdTVtRkVMbWgxZ3NCMD0GOwBG\n', '2013-03-25 13:10:52', '2013-03-25 13:10:52'),
(52, '21914b373153788a08feec530b3504c6', 'BAh7B0kiCmZsYXNoBjoGRUZvOiVBY3Rpb25EaXNwYXRjaDo6Rmxhc2g6OkZs\nYXNoSGFzaAk6CkB1c2VkbzoIU2V0BjoKQGhhc2h7BjoLbm90aWNlVDoMQGNs\nb3NlZEY6DUBmbGFzaGVzewY7CkkiHXBsZWFzZSBsb2dpbiB0byBjb250aW51\nZQY7AEY6CUBub3cwSSIQX2NzcmZfdG9rZW4GOwBGSSIxTEJQMTNjY3haazFa\nYnJtaVlFYnhzblpOdHRWdk8yd3krQ3Ztb29zL2Ftaz0GOwBG\n', '2013-03-26 13:05:15', '2013-03-26 13:05:23'),
(54, '28ce5c281ac9ed6c0bb651d43c906515', 'BAh7B0kiCmZsYXNoBjoGRUZvOiVBY3Rpb25EaXNwYXRjaDo6Rmxhc2g6OkZs\nYXNoSGFzaAk6CkB1c2VkbzoIU2V0BjoKQGhhc2h7BjoLbm90aWNlVDoMQGNs\nb3NlZEY6DUBmbGFzaGVzewY7CkkiHXBsZWFzZSBsb2dpbiB0byBjb250aW51\nZQY7AEY6CUBub3cwSSIQX2NzcmZfdG9rZW4GOwBGSSIxUDc4N1UzL2F4YUVo\nNjMyaVVERWhvRUlwMjFTMFZaZEJlcXZkRTYyVTJNZz0GOwBG\n', '2013-03-27 04:27:24', '2013-03-27 04:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `city`, `pincode`, `state`, `contact_no`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'password', '5, srinagar colony', 'Kumbakonam', 612001, 'TamilNadu', 1234567890, '2013-03-20 11:08:00', '2013-03-26 06:28:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
