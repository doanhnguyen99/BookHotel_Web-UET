-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: btlhotel_copy_2
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id_ac` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type_ac` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` text COLLATE utf8_vietnamese_ci,
  `provider` char(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `provider_id` char(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_ac`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--


/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin@gmail.com','12345','368136928',NULL,NULL,1,NULL,NULL,NULL),(2,'nguyen','autoname1999@gmail.com','123456','012346789','khong co','nam',0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bong-da.jpg',NULL,NULL),(4,'Nguyễn Sỹ Việt','viet@gmail.com','123456','368136928','Số 95 ,Phố Vũ Hộ, Tổ 3B',NULL,0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/mongoDB_image.jpg',NULL,NULL),(5,'xczxcz','zxczxc@gmail.com','123','123131','Số 95 ,Phố Vũ Hộ, Tổ 3B','nữ',0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png',NULL,NULL),(6,'Nguyễn Sỹ Việt','abcxxx@gmail.com','123456','368136928','Số 95 ,Phố Vũ Hộ, Tổ 3B','nam',0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/what is MongoDB.jpg',NULL,NULL),(7,'Nguyễn Sỹ Việt','zzzzz@gmail.com','123456','0368136928','Số 95 ,Phố Vũ Hộ, Tổ 3B','nam',0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/chimcanhcut.png',NULL,NULL),(8,'Nguyễn Sỹ Việt','qqqqqq@gmail.com','123456','0368136928','Số 95 ,Phố Vũ Hộ, Tổ 3B','nam',0,'http://localhost/laravelFrameWork/BTLHotel/storage/app/upload/bgr2.png',NULL,NULL),(9,'Nguyen Viet','nguyensiviet1999@gmail.com',NULL,NULL,NULL,NULL,0,'https://lh3.googleusercontent.com/-lvul6Aq5oBE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfAkoHfXJoZRTE6qqm3kjL3wC1s-w/photo.jpg','google','104600914291699951974'),(10,'Minh Phương Ngô','ngominhphuong0303@gmail.com',NULL,NULL,NULL,NULL,0,'https://lh4.googleusercontent.com/-DxY5VOKERC4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc0qvf-GQgcWWa4S5LZf2IpJVCOsQ/photo.jpg','google','107137774380867049899'),(11,'Nguyễn Thị Lý Nguyệt Nga','an@gmail.com','123456','0966947994','Hà Nam Việt Nam',NULL,0,'/upload/Screenshot_18.png',NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--


/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `title` varchar(600) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `text1` varchar(600) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `text2` varchar(600) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `author` char(50) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--


/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'/source/image_1.jpg','Lên Lịch Cùng Hội Bạn Thân Check - In 5 Little Hong Kong Chất Lừ Giữa Lòng Sài Gòn','Bạn đã chán với những địa điểm du lịch tại Sài Gòn quen thuộc? Bạn muốn tìm một điểm check in cực chất, để có những bức ảnh “ngàn like” trong chớp mắt. Hãy lên đồ, chuẩn bị máy ảnh và cùng Mytour dạo qua 5 địa điểm little Hong Kong chất lừ đang được giới trẻ quan tâm gần đây nhé!','1. Hẻm Bia \r\n2. San Wu San Bia Quán\r\n3. Heritage Chinatown \r\n4. A Mà Kitchen \r\n5. Hẻm Ông Thổ Địa','2019-11-11','Stallworthy'),(2,'/source/image_2.jpg','Thử Làm \"Người Tây Đô\" 24h Với Bí Kíp Ăn Chơi Ở Cần Thơ','Một trong những hoạt động quen thuộc mà hầu như bất cứ ai đi du lịch cũng thực hiện là check-in tại những địa điểm nổi tiếng. Tuy nhiên tại Cần Thơ, với một du khách bình thường, sẽ không dễ để họ tìm ra những điểm check-in tuyệt vời đúng mác người Tây Đô dưới đây. ','Chợ cổ Cần Thơ được xây dựng cùng thời với những chợ nổi tiếng ở Sài Gòn như Bến Thành, Bình Tây, nơi đây cũng từng được xem là một trong những ngôi chợ phát triển nhất lúc bấy giờ. Với kiến trúc cổ kính đẹp top đầu vùng sông nước Cửu Long, ngôi chợ tọa lạc ngay bên bến Ninh Kiều này dễ dàng trở thành điểm đến mà bất cứ ai đến Cần Thơ cũng không nên bỏ qua, bất kể có nhu cầu mua sắm hay đơn giản chỉ là tham quan. ','2019-11-29','Martinot'),(3,'/source/image_3.jpg','Vi Vu Xứ Trung Không Cần Visa, Vì Đã Có \"Trung Hoa Thu Nhỏ\" Giữa Lòng Hội An Đây Rồi!','Trung Quốc thường được biết đến với hệ thống dịch vụ du lịch phong phú, đa dạng cùng nhiều điểm đến hấp dẫn du khách, nhất là vào mùa lá vàng lá đỏ. Tuy nhiên, không ít người đã phải nuối tiếc từ bỏ chuyến đi vì thủ tục và điều kiện kinh phí. Nếu là một người yêu thích cảnh vật đất nước triệu dân này nhưng lại không có điều kiện ghé thăm, đừng lo bởi bây giờ bạn đã có cơ hội vi vu xứ Trung không cần visa khi đến với “Trung Hoa thu nhỏ” giữa lòng Hội An cổ kính.  ','Nằm trong khuôn khổ Công viên Ấn tượng Hội An đang thu hút rất nhiều lượt khách du lịch trong và ngoài nước, “Trung Hoa thu nhỏ” cách trung tâm phố Hội chỉ vài phút đi bộ. Như tên gọi thân thương “Trung Hoa thu nhỏ” mà nhiều du khách, nhất là các bạn trẻ sử dụng, khu vực làng Trung Quốc là một trong những địa điểm được đánh giá tái hiện thành công nhất văn hoá đất nước theo tên gọi, bên cạnh làng Nhật Bản, làng Pháp,... Chỉ cần chuẩn bị Hán phục mà các sinh viên xứ Trung hay sử dụng, hay những bộ sườn xám - trang phục truyền thống của đất nước triệu dân này, thêm một chút thần thái và phó nháy','2019-12-11','Cockley'),(4,'/source/image_4.jpg','Lưu Nhanh 2 Thiên Đường Tắm Bùn Vừa Đẹp Vừa Thư Giãn, Trị Liệu \"Đỉnh\" Nhất Nha Trang','Nước biển trong xanh mát lạnh, bãi cát trắng trắng mịn trải dài, những rặng dừa nghiêng soi bóng mát rượi,...Đó là những những ấn tượng của khách du lịch về thành phố biển Nha Trang. Nhưng bấy nhiêu chưa đủ, bởi Nha Trang còn sở hữu những thiên đường tắm bùn vừa đẹp vừa thư giãn, trị liệu hiệu quả. Hãy lưu lại ngay lại cho kế hoạch dịp nghỉ lễ này nào!','1. Khu tắm bùn khoáng Yang Bay \r\nDịch vụ tắm bùn khoáng ở Yang Bay được xây dựng với diện tích gần 6 ha, bao gồm nhiều hạng mục. Riêng khu tắm bùn khoáng có 21 hồ thiết kế đẹp mắt, phục vụ tới 120 khách/lượt tắm.\r\n\r\nNgoài dịch vụ tắm bùn khoáng Yang Bay còn có dịch vụ chát bùn mỹ phẩm, massage sức khỏe,... giúp thư giãn, tái tạo năng lượng cho du khách.\r\n2. Khu tắm bùn khoáng MerPerle Hòn Tằm Mudbath \r\n. Khu massage và spa bùn khoáng tươi rộng 250m2 luôn sẵn sàng để phục vụ du khách. Bên cạnh đó là nhà hàng rộng 760m2, sức chứa 700 khách phục vụ du khách từ những món ăn dân dã đến cao cấp.','2019-11-19','Lejeune'),(5,'/source/image_5.jpg','Lập Kèo \"Càn Quét\" Khu Tổ Hợp Ăn – Chơi Rộng 12000m2 Ở Đà Nẵng','Một không gian tổ hợp ăn-chơi mới lạ cho giới trẻ Đà Nẵng bao gồm phòng lưu trú dạng homestay, quán ăn, quán café, quán trà sữa và các cửa hàng quần áo, giày dép xuất hiện với cái tên “Zone Đà Nẵng”. Một địa điểm check-in cuối tuần cực hot.','Giữa một Đà Nẵng phát triển quá nhanh mà thiếu đi không gian sinh hoạt văn hóa tinh thần. Zone Đà Nẵng xuất hiện mang một sức sống mới, tươi mát và trong lành. Zone Đà Nẵng tọa lạc tại 38 Pasteur, Hải Châu 1, Hải Châu, Đà Nẵng. Nơi đây là một khu tổ hợp với diện tích lên tới 1200 m2. Zone Đà Nẵng là sự kết hợp thú vị giữa sự hiện đại của một khu tổ hợp giải trí và những nét riêng biệt của thành phố Đà Nẵng xinh đẹp. Nhìn từ xa tòa nhà Pháp cổ hầu như còn nguyên vẹn, nhưng khi bạn bước qua cánh cổng, bạn sẽ ngạc nhiên bởi một thế giới mới sống động và thanh bình.','2019-12-12','Rockwill'),(6,'/source/image_6.jpg','Thu Qua, Đông Tới Là Lúc Rủ Nhau Thưởng Thức Những Món Ngon Giữ Cho Hà Nội Luôn Ấm Áp Này','Mỗi mùa Hà Nội lại có những “đặc sản” của riêng mình. Nếu mùa hè người ta thèm cái gì đó mát lạnh thì khi đông sang, người ta lại tìm đến những món nóng hổi để sưởi ấm “tâm hồn ăn uống”. Cùng Camnangdulich.vn điểm danh những món ngon mùa Đông mà bạn nhất định phải rủ bạn bè thưởng thức nếu không muốn nuối tiếc.','1.  Ốc luộc\r\nNhắc đến món ăn vặt ăn vặt mùa đông không thể không nhắc đến ốc luộc lá chanh thơm lừng, ốc xào me chua ngọt, ốc xào dừa… Những bát ốc nóng nghi ngút khói, ấm áp trong tiết trời đông khiến bất kì ai cũng khó lòng cưỡng lại nhất là vào những ngày mưa phùn nhẹ lất phất.2. Chè nóng\r\nDạo phố cùng bạn bè, thưởng thức bát chè sắn, chè bà cốt, bánh trôi tàu nóng hổi là trải nghiệm khó quên, không thể thiếu trong mùa đông lạnh.\r\n\r\nChè bà cốt: từ lâu đã trở thành một món ăn truyền thống của Hà Nội. Món chè đem lại cảm giác ấm lòng dễ chịu cho người ăn trong những ngày trời lạnh giá. ','2019-11-29','Bottinelli'),(7,'/source/image_7.jpg','Làng Văn Hóa Các Dân Tộc Việt Nam - Điểm Sống Ảo \"Mới Nổi\" Phải Đến Nếu Muốn Có Bộ Ảnh Tuyệt Đẹp','Làng văn hóa các dân tộc Việt Nam là một điểm đến HOT ngay gần Hà Nội, có hàng trăm góc \"sống ảo\" cực chất để bạn chụp hình và vui chơi trong ngày.Chỉ cách Hà Nội hơn 40km, Làng văn hóa các dân tộc Việt Nam là một phần thuộc khu du lịch Đồng Mô, Sơn Tây, Hà Nội. Khu bảo tồn là nơi tái hiện đời sống sinh hoạt các tộc người trên khắp nước Việt Nam, được xây dựng trên một ngọn đồi nhỏ với nhiều thung lũng và hồ nước bao quanh.','Chính vì thế địa hình nơi đây rất đa dạng, phong phú với nhiều cảnh quan đẹp phù hợp để du khách tới tham quan và du ngoạn, tìm hiểu về đời sống, văn hóa, phong tục của các dân tộc anh em.Diện tích toàn khu cũng rất rộng rãi, thoáng đãng lên tới 1.500 ha thích hợp tổ chức những hoạt động giải trí tập thể. Nếu gia đình bạn có trẻ nhỏ, đây cũng là điểm đến lí tưởng trong những ngày lễ, hay cuối tuần giúp các bé được học hỏi thêm nhiều bài học thực tiễn thú vị.','2019-11-30','Lawday'),(8,'/source/image_8.jpg','Thiên Đường Đảo Cái Chiên - Điểm Đến Mới Cực Chill Qua Những Bức Hình Check-In Của Giới Trẻ','Đảo Cái Chiên là một huyện đảo duy nhất của huyện Hải Hà, tỉnh Quảng Ninh, cách thành phố Hà Nội khoảng 330 km. Diện tích của đảo khoảng 2500 ha, đa phần là đồi, núi và bãi biển. Là một địa điểm du lịch ở Quảng Ninh, hiện nay, đảo Cái Chiên đang được đầu tư phát triển du lịch. Với bãi cát trải dài 10km, rừng phi lao chạy thẳng tắp, xa hun hút và bờ cát trắng mịn, khung cảnh hoang sơ hết ý, Cái Chiên mộc mạc đủ níu chân du khách ở lại khám phá.','Đảo Cái Chiên tuy còn hoang sơ, ít người biết đến nhưng chính sự yên bình, xa rời cái ồn ã đã khiến  hòn đảo này trở thành một thiên đường nhỏ thơ mộng của tỉnh Quảng Ninh. Nếu còn đang phân vân không biết nên đi đâu để tận hưởng mùa hè này thì các bạn hãy tới ngay đảo Cái Chiên tỉnh Quảng Ninh để tận hưởng những phút giây yên bình bên bạn bè và người thân nhé.','2019-12-01','Chomley'),(9,'/source/image_9.jpg','Tham Quan Shangri La - Địa Điểm “Đu Đưa” Không Nên Bỏ Lỡ Khi Đến Trung Quốc','Shangri La là một trong những địa điểm du lịch nổi tiếng của Trung Quốc nói chung và tỉnh Vân Nam nói riêng. Nơi đây là một trong số ít địa điểm sinh sống của người Tây Tạng, sở hữu các công trình kiến trúc và nhiều nét văn hóa đặc sắc. Dưới đây là một số thông tin hữu ích cho những bạn đang có kế hoạch tham quan Shangri La.','Mùa thu ở Shangri La, cây cối chuyển mình, đổi màu rõ rệt, tạo nên bức tranh thiên nhiên rực rỡ, đa sắc màu. Trên đó là đàn bò thung thăng gặm cỏ. Xa xa là mặt hồ rộng lớn mang màu xanh ngọc bích nổi bật. Bên cạnh là những ngôi nhà gỗ ẩn hiện trên thảo nguyên mênh mông. Chẳng cần đi đâu xa, ngay gần Việt Nam cũng có những thung lũng thơ mộng như vậy.','2019-12-20','Oxby'),(10,'/source/image_10.jpg','Tận Hưởng Trọn Vẹn Mùa Hè Với Chuyến Du Lịch Tứ Bình Dài Ngày ','Tứ Bình là tên gọi chung của 4 hòn đảo thuộc tỉnh Nha Trang, bao gồm: Bình Ba, Bình Lập, Bình Tiên và Bình Hưng. Vì nằm ở khu vực khá gần nhau nên thông thường khách du lịch thường kết hợp một chuyến đi dài ngày để có thể khám phá hết 4 hòn đảo này.\r\n\r\nTuy có những tên gọi khác nhau nhưng Bình Ba, Bình Lập, Bình Tiên và Bình Hưng có một điểm chung là sở hữu vẻ đẹp biển đảo hoang sơ và dân dã. Suốt chuyến tham quan Tứ Bình, du khách sẽ có những giây phút vui chơi trong khung cảnh thiên nhiên và biển cả tuyệt vời nhất.','Thời gian thích hợp để du lịch Tứ Bình là vào mùa hè, từ tháng 3 - tháng 8 hằng năm. Vào thời điểm này, không khí và nước biển mát mẻ của Tứ Bình sẽ giúp bạn nhanh chóng xua tan cái nắng khó chịu của mùa hè.\r\n\r\nNgược lại, từ tháng 9 đến tháng 2 năm sau, bạn nên hạn chế đến Từ Bình. Bởi lẽ, vào thời điểm này ở đây thường xuyên có mưa bão, các dịch vụ du lịch, tham quan không còn hoạt động nữa.','2019-12-30','Sheeres');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;


--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id_bk` int(11) NOT NULL AUTO_INCREMENT,
  `id_ac` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text COLLATE utf8_vietnamese_ci NOT NULL,
  `room_type` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `so_nguoi` int(11) NOT NULL,
  `accepted` tinyint(1) DEFAULT '0',
  `check_in_date` date NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_bk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--


/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,4,'Nguyễn Sỹ Việt','368136928','om@gmail.com','Số 95 ,Phố Vũ Hộ, Tổ 3B',4,104,2,0,'2019-11-15','12:31:00','2019-11-29','2019-11-27 11:01:01','2019-11-27 11:01:01'),(2,10,'Nguyễn Sỹ Việt','0368136928','ngominhphuong0303@gmail.com','Số 95 ,Phố Vũ Hộ, Tổ 3B',3,103,4,0,'2019-12-13','12:31:00','2019-12-14','2019-12-09 08:29:50','2019-12-09 08:29:50'),(3,4,'Nguyễn Sỹ Việt','368136928','viet@gmail.com','Số 95 ,Phố Vũ Hộ, Tổ 3B',1,101,3,0,'2019-12-26','12:59:00','2019-12-31','2019-12-11 22:46:56','2019-12-11 22:46:56'),(4,5,'xczxcz','123131','zxczxc@gmail.com','Số 95 ,Phố Vũ Hộ, Tổ 3B',3,201,2,0,'2019-12-30','12:59:00','2019-12-31','2019-12-12 00:36:09','2019-12-12 00:36:09'),(5,11,'Nguyễn Thị Lý Nguyệt Nga','0966947994','an@gmail.com','Hà Nam Việt Nam',5,105,2,0,'2019-12-31','12:59:00','2019-12-30','2019-12-12 02:30:12','2019-12-12 02:30:12'),(8,11,'Nguyễn Thị Lý Nguyệt Nga','0966947994','an@gmail.com','Hà Nam Việt Nam',2,102,2,0,'2019-12-15','12:59:00','2019-12-18','2019-12-12 03:23:23','2019-12-12 03:23:23');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;


--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_vietnamese_ci NOT NULL,
  `queue` text COLLATE utf8_vietnamese_ci NOT NULL,
  `payload` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `exception` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--


/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `message` text COLLATE utf8_vietnamese_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_feedback`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--


/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Nguyễn Sỹ Việt','nguyensiviet1999@gmail.com','0368136928','khach san rat tuyet , tool tan rang. very good','2019-11-21 11:12:53','2019-11-21 11:12:53'),(3,'Nguyễn Sỹ Việt','nguyensiviet1999@gmail.com','0368136928','xxxxx','2019-11-27 03:14:45','2019-11-27 03:14:45');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--


/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_11_17_105637_create_accounts_table',1),(5,'2019_12_09_082539_alter_account_table',1),(6,'2019_12_09_133457_alter2_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--


/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `room_no` int(11) NOT NULL,
  `id_room_type` int(11) NOT NULL,
  `is_rental` tinyint(1) DEFAULT '0',
  `check_in_date_permit` date DEFAULT NULL,
  `check_out_date_permit` date DEFAULT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--


/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,1,1,'2019-12-09','2019-12-20'),(102,2,1,'2019-12-09','2019-12-20'),(103,3,1,'2019-12-09','2019-12-20'),(104,4,1,'2019-12-09','2019-12-20'),(105,5,1,'2019-12-09','2019-12-20'),(106,6,0,'2019-12-09','2019-12-20'),(122,1,0,NULL,NULL),(201,3,1,'2019-12-09','2019-12-20'),(222,5,0,'2019-12-09','2019-12-20');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;


--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `id_room_type` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `so_phong_trong` int(11) DEFAULT NULL,
  `image_room` text COLLATE utf8_vietnamese_ci,
  `price` int(11) NOT NULL,
  `trich_dan` text COLLATE utf8_vietnamese_ci,
  `dien_tich` double DEFAULT NULL,
  `quyen_loi` text COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`id_room_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--


/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'Family',NULL,'/source/image/1.jpg',2000,'Giúp bạn và gia đình có những giây phút đi chơi vui vẻ nhất',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),(2,'Deluxe Room',NULL,'/source/image/2.jpg',2000,'Căn phòng nội thất cao cấp hứa hẹn sẽ đem lại cảm giác thoải mái nhất cho bạn',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),(3,'Luxurious Suite',NULL,'/source/image/7.jpg',5000,'Engulf yourself in the plush luxury of our premier rooms. An upgraded version of the Suite room',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),(4,'Standard Room',NULL,'/source/image/8.jpg',5000,'Simple design king bedded room are well equipped with modern amenities.',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),(5,'Suite',NULL,'/source/image/7.jpg',5000,'Enjoy the view of Anand from attach sitting area, An upgraded version of the Deluxe room, these room',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;'),(6,'Twin Deluxe Room',NULL,'/source/image/5.jpg',5000,'The Contemporary yet simple designed twin bedded rooms are well equipped with modern amenities',100,'Bữa sáng tự chọn hàng ngày;\r\nInternet miễn phí trong phòng;\r\n2 chai nước khoáng;\r\nTrà và cà phê miễn phí;\r\nMiễn phí sử dụng phòng tập thể dục và hồ bơi;');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyen Viet','nguyensiviet1999@gmail.com',NULL,NULL,'xC1ktG09YIUd1MQgPFCb2LAGvTr6Isf59gFbqEJs2WCb8CflmsyFNK4cotUc','2019-12-09 06:59:54','2019-12-09 06:59:54','google','104600914291699951974'),(2,'Minh Phương Ngô','ngominhphuong0303@gmail.com',NULL,NULL,'x3EjLlgeTWZOjsiSeb0w5wWBgzhEASoxWkUWzrpKI0kXNFgzgKqMNUeGtj3q','2019-12-09 07:10:10','2019-12-09 07:10:10','google','107137774380867049899');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-12 17:45:03
