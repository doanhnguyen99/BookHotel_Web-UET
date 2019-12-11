-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2019 at 11:54 AM
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
-- Database: `btlhotel_copy_2`
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
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type_ac` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `provider` char(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `provider_id` char(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_ac`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_ac`, `name`, `email`, `password`, `phone`, `address`, `gender`, `type_ac`, `avatar`, `provider`, `provider_id`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '368136928', NULL, NULL, 1, NULL, NULL, NULL),
(2, 'nguyen', 'autoname1999@gmail.com', '123456', '012346789', 'khong co', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bong-da.jpg', NULL, NULL),
(4, 'Nguyễn Sỹ Việt', 'om@gmail.com', '123456', '368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', NULL, 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/mongoDB_image.jpg', NULL, NULL),
(5, 'xczxcz', 'zxczxc@gmail.com', '1', '123131', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nữ', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png', NULL, NULL),
(6, 'Nguyễn Sỹ Việt', 'abcxxx@gmail.com', '123456', '368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/what is MongoDB.jpg', NULL, NULL),
(7, 'Nguyễn Sỹ Việt', 'zzzzz@gmail.com', '123456', '0368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/chimcanhcut.png', NULL, NULL),
(8, 'Nguyễn Sỹ Việt', 'qqqqqq@gmail.com', '123456', '0368136928', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 'nam', 0, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png', NULL, NULL),
(9, 'Nguyen Viet', 'nguyensiviet1999@gmail.com', NULL, NULL, NULL, NULL, 0, 'https://lh3.googleusercontent.com/-lvul6Aq5oBE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfAkoHfXJoZRTE6qqm3kjL3wC1s-w/photo.jpg', 'google', '104600914291699951974'),
(10, 'Minh Phương Ngô', 'ngominhphuong0303@gmail.com', NULL, NULL, NULL, NULL, 0, 'https://lh4.googleusercontent.com/-DxY5VOKERC4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc0qvf-GQgcWWa4S5LZf2IpJVCOsQ/photo.jpg', 'google', '107137774380867049899');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `text1` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `text2` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `author` char(50) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `text1`, `text2`, `date`, `author`) VALUES
(1, 'http://dummyimage.com/227x219.png/cc0000/ffffff', 'Lên Lịch Cùng Hội Bạn Thân Check - In 5 Little Hong Kong Chất Lừ Giữa Lòng Sài Gòn', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristi', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo.', '2019-11-11', 'Stallworthy'),
(2, 'http://dummyimage.com/135x223.bmp/ff4444/ffffff', 'Thử Làm \"Người Tây Đô\" 24h Với Bí Kíp Ăn Chơi Ở Cần Thơ', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', '2019-11-29', 'Martinot'),
(3, 'http://dummyimage.com/136x164.png/dddddd/000000', 'Vi Vu Xứ Trung Không Cần Visa, Vì Đã Có \"Trung Hoa Thu Nhỏ\" Giữa Lòng Hội An Đây Rồi!', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, ', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien ', '2019-12-11', 'Cockley'),
(4, 'http://dummyimage.com/191x169.jpg/cc0000/ffffff', 'Lưu Nhanh 7 Thiên Đường Tắm Bùn Vừa Đẹp Vừa Thư Giãn, Trị Liệu \"Đỉnh\" Nhất Nha Trang', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, ', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rh', '2019-11-19', 'Lejeune'),
(5, 'http://dummyimage.com/118x208.png/dddddd/000000', 'Lập Kèo \"Càn Quét\" Khu Tổ Hợp Ăn – Chơi Rộng 12000m2 Ở Đà Nẵng', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2019-12-12', 'Rockwill'),
(6, 'http://dummyimage.com/123x146.png/ff4444/ffffff', 'Thu Qua, Đông Tới Là Lúc Rủ Nhau Thưởng Thức Những Món Ngon Giữ Cho Hà Nội Luôn Ấm Áp Này', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2019-11-29', 'Bottinelli'),
(7, 'http://dummyimage.com/193x107.png/ff4444/ffffff', 'Làng Văn Hóa Các Dân Tộc Việt Nam - Điểm Sống Ảo \"Mới Nổi\" Phải Đến Nếu Muốn Có Bộ Ảnh Tuyệt Đẹp', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristi', '2019-11-30', 'Lawday'),
(8, 'http://dummyimage.com/217x176.png/cc0000/ffffff', 'Thiên Đường Đảo Cái Chiên - Điểm Đến Mới Cực Chill Qua Những Bức Hình Check-In Của Giới Trẻ', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitud', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet u', '2019-12-01', 'Chomley'),
(9, 'http://dummyimage.com/166x134.bmp/ff4444/ffffff', 'Cần Gì Đi Đâu Xa, Ngay Ở Sài Gòn Cũng Có 4 Bảo Tàng “Sống Ảo Cháy Máy”', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras', '2019-12-20', 'Oxby'),
(10, 'http://dummyimage.com/135x248.png/cc0000/ffffff', 'Vi Vu Xứ Trung Không Cần Visa, Vì Đã Có \"Trung Hoa Thu Nhỏ\" Giữa Lòng Hội An Đây Rồi!', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2019-12-30', 'Sheeres');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_bk`, `id_ac`, `name`, `phone`, `email`, `address`, `room_type`, `room_no`, `so_nguoi`, `accepted`, `check_in_date`, `check_in_time`, `check_out_date`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nguyễn Sỹ Việt', '368136928', 'om@gmail.com', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 4, 104, 2, 0, '2019-11-15', '12:31:00', '2019-11-29', '2019-11-27 11:01:01', '2019-11-27 11:01:01'),
(2, 10, 'Nguyễn Sỹ Việt', '0368136928', 'ngominhphuong0303@gmail.com', 'Số 95 ,Phố Vũ Hộ, Tổ 3B', 3, 103, 4, 0, '2019-12-13', '12:31:00', '2019-12-14', '2019-12-09 08:29:50', '2019-12-09 08:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_vietnamese_ci NOT NULL,
  `queue` text COLLATE utf8_vietnamese_ci NOT NULL,
  `payload` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `exception` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_17_105637_create_accounts_table', 1),
(5, '2019_12_09_082539_alter_account_table', 1),
(6, '2019_12_09_133457_alter2_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
(103, 3, 1),
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
  `dien_tich` double DEFAULT NULL,
  `quyen_loi` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_room_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id_room_type`, `room_type`, `so_phong_trong`, `image_room`, `price`, `trich_dan`, `dien_tich`, `quyen_loi`) VALUES
(1, 'Family', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/1.jpg', 2000, 'Giúp bạn và gia đình có những giây phút đi chơi vui vẻ nhất', 100, 'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),
(2, 'Deluxe Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/2.jpg', 2000, 'Căn phòng nội thất cao cấp hứa hẹn sẽ đem lại cảm giác thoải mái nhất cho bạn', NULL, NULL),
(3, 'Luxurious Suite', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/7.jpg', 5000, 'Engulf yourself in the plush luxury of our premier rooms. An upgraded version of the Suite room', NULL, NULL),
(4, 'Standard Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/8.jpg', 5000, 'Simple design king bedded room are well equipped with modern amenities.', NULL, NULL),
(5, 'Suite', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/7.jpg', 5000, 'Enjoy the view of Anand from attach sitting area, An upgraded version of the Deluxe room, these room', NULL, NULL),
(6, 'Twin Deluxe Room', NULL, 'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/5.jpg', 5000, 'The Contemporary yet simple designed twin bedded rooms are well equipped with modern amenities', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Nguyen Viet', 'nguyensiviet1999@gmail.com', NULL, NULL, 'xC1ktG09YIUd1MQgPFCb2LAGvTr6Isf59gFbqEJs2WCb8CflmsyFNK4cotUc', '2019-12-09 06:59:54', '2019-12-09 06:59:54', 'google', '104600914291699951974'),
(2, 'Minh Phương Ngô', 'ngominhphuong0303@gmail.com', NULL, NULL, 'x3EjLlgeTWZOjsiSeb0w5wWBgzhEASoxWkUWzrpKI0kXNFgzgKqMNUeGtj3q', '2019-12-09 07:10:10', '2019-12-09 07:10:10', 'google', '107137774380867049899');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
