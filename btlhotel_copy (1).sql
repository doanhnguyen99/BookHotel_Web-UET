-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 10:33 AM
-- Server version: 10.3.16-MariaDB-log
-- PHP Version: 7.3.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btlhotel_copy`
--
CREATE DATABASE IF NOT EXISTS `btlhotel_copy` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `btlhotel_copy`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id_ac` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type_ac` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_ac`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_ac`, `name`, `email`, `password`, `phone`, `address`, `gender`, `type_ac`, `avatar`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '368136928', NULL, NULL, 1, NULL),
(2, 'nguyen', 'autoname1999@gmail.com', '123456', NULL, NULL, NULL, 0, NULL),
(4, 'Nguyễn Sỹ Việt', 'om@gmail.com', '8090', '368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', NULL, 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/mongoDB_image.jpg'),
(5, 'xczxcz', 'zxczxc@gmail.com', '1', '123131', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nữ', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png'),
(6, 'Nguyễn Sỹ Việt', 'abcxxx@gmail.com', '123456', '368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/what is MongoDB.jpg'),
(7, 'Nguyễn Sỹ Việt', 'zzzzz@gmail.com', '123456', '0368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/chimcanhcut.png'),
(8, 'Nguyễn Sỹ Việt', 'qqqqqq@gmail.com', '123456', '0368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id_bk` int(11) NOT NULL AUTO_INCREMENT,
  `id_ac` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text COLLATE utf8_vietnamese_ci NOT NULL,
  `room_type` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `so_nguoi` int(11) NOT NULL,
  `accepted` tinyint(1) DEFAULT 0,
  `check_in_date` date NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_bk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_bk`, `id_ac`, `name`, `phone`, `email`, `address`, `room_type`, `room_no`, `so_nguoi`, `accepted`, `check_in_date`, `check_in_time`, `check_out_date`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nguyễn Sỹ Việt', '368136928', 'om@gmail.com', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 4, 104, 2, 0, '2019-11-15', '12:31:00', '2019-11-29', '2019-11-27 11:01:01', '2019-11-27 11:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id_feedback` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `message` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_feedback`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Sỹ Việt', 'nguyensiviet1999@gmail.com', '0368136928', 'khach san rat tuyet , tool tan rang. very good', '2019-11-21 11:12:53', '2019-11-21 11:12:53'),
(3, 'Nguyễn Sỹ Việt', 'nguyensiviet1999@gmail.com', '0368136928', 'xxxxx', '2019-11-27 03:14:45', '2019-11-27 03:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `room_no` int(11) NOT NULL,
  `id_room_type` int(11) NOT NULL,
  `is_rental` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `id_room_type`, `is_rental`) VALUES
(101, 1, 0),
(102, 2, 0),
(103, 3, 0),
(104, 4, 1),
(105, 5, 0),
(106, 6, 0),
(201, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `id_room_type` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `so_phong_trong` int(11) DEFAULT NULL,
  `image_room` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `trich_dan` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chi_tiet` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_room_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id_room_type`, `room_type`, `so_phong_trong`, `image_room`, `price`, `trich_dan`, `chi_tiet`) VALUES
(1, 'Family', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/1.jpg', 2000, 'Giúp bạn và gia đình có những giây phút đi chơi vui vẻ nhất', NULL),
(2, 'Deluxe Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/2.jpg', 2000, 'Căn phòng nội thất cao cấp hứa hẹn sẽ đem lại cảm giác thoải mái nhất cho bạn', NULL),
(3, 'Luxurious Suite', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/7.jpg', 5000, 'Engulf yourself in the plush luxury of our premier rooms. An upgraded version of the Suite room', NULL),
(4, 'Standard Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/8.jpg', 5000, 'Simple design king bedded room are well equipped with modern amenities.', NULL),
(5, 'Suite', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/7.jpg', 5000, 'Enjoy the view of Anand from attach sitting area, An upgraded version of the Deluxe room, these room', NULL),
(6, 'Twin Deluxe Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/5.jpg', 5000, 'The Contemporary yet simple designed twin bedded rooms are well equipped with modern amenities', NULL);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
