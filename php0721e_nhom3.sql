-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 06:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php0721e_nhom3`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT 'tiêu đề banner',
  `img` varchar(255) DEFAULT NULL COMMENT 'hình ảnh hiển thị banner',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` date DEFAULT NULL COMMENT 'ngày cập nhật gần nhất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `img`, `created_at`, `updated_at`) VALUES
(3, 'banner1', '1653074077-banner-3333.jpg', '2022-05-13 09:00:39', NULL),
(7, 'banner2', '1653074092-banner-22222.jpg', '2022-05-13 18:49:19', NULL),
(12, 'banner3', '1653074118-banner-366.jpg', '2022-05-20 19:15:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL COMMENT 'mã từng danh mục',
  `name` varchar(255) NOT NULL COMMENT 'Tên danh mục',
  `description` text DEFAULT NULL COMMENT 'Mô tả danh mục',
  `status` tinyint(3) DEFAULT 0 COMMENT 'trạng thái của danh mục',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `update_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `update_at`) VALUES
(1, 'Vest', '\r\n', 1, '2022-04-26 12:34:30', '2022-05-19 20:34:00'),
(18, 'Suit', '', 1, '2022-04-27 15:57:53', '2022-05-20 22:33:29'),
(19, 'Blazer', '', 1, '2022-04-27 15:58:04', '2022-05-19 20:31:34'),
(20, 'Thắt lưng', '', 1, '2022-05-19 13:33:12', NULL),
(21, 'Giầy', '', 1, '2022-05-19 13:33:24', NULL),
(22, 'Sơ mi', '', 1, '2022-05-19 13:34:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT 'ảnh tin tức',
  `title` varchar(255) DEFAULT NULL COMMENT 'tiêu đề tin',
  `content` text DEFAULT NULL COMMENT 'nội dung của tin',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` date DEFAULT NULL COMMENT 'ngày cập nhật gần nhất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `avatar`, `title`, `content`, `created_at`, `updated_at`) VALUES
(10, '1653063654-new-introduce2.jpg', 'Đeo đồng hồ khi mặc suit', 'Đeo đồng hồ ở vị trí nào trên cổ tay? Khi diện bộ suit hoặc sơ mi tay dài, bạn nên đeo đồng hồ sao cho khi thẳng tay xuống thì phần tay áo chỉ che phủ một phần, mà không phải toàn bộ chiếc đồng hồ. Thêm nữa, dù đây là lời khuyên hơi thừa nhưng chúng tôi vẫn phải nói, đó là bạn đừng bao giờ đeo đồng hồ bên ngoài cổ tay áo.', '2022-05-04 14:33:41', '2022-05-20'),
(11, '1653063431-new-John.jpg', 'John Wick và những bộ suit', 'Chắc chắn rồi, bộ suit của John Wick là một trong những thứ làm mãn nhãn cánh đàn ông, bên cạnh các pha hành động, đánh đấm đã đời, “nhìn cũng thấy đau” xuyên suốt 3 phần phim. Phong cách lạnh lùng từ điệu bộ, cử chỉ cho đến trang phục “tối tăm” của Keanu Reeves thậm chí còn biến thành biểu tượng phong cách trên toàn thế giới. Tất nhiên, Keanu Reeves không trực tiếp tạo nên thành công này. Người đứng sau những bộ suit chỉn chu đó là Luca Mosca, chuyên gia thiết kế phục trang nhân vật điện ảnh.', '2022-05-04 14:38:25', '2022-05-20'),
(12, '1653063557-new-Three pieces men luxury fitted suit.jpg', 'Thói quen với cúc áo', 'Chiếc áo Vest không phải thích mặc thế nào cũng được. Có một số nguyên tắc quy định cài cúc hoặc không cài cúc sao cho phù hợp. Bạn không bắt buộc phải tuân thủ các nguyên tắc đó, nhưng sẽ thật đáng tiếc nếu bạn làm hỏng ấn tượng ban đầu vì những chi tiết rất dễ nhận ra kiểu này.\r\n\r\nVậy, khi nào thì cài cúc áo Vest?\r\n\r\n+ Cài cúc khi đứng giúp bạn có phong thái thanh lịch.\r\n+ Mở cúc khi ngồi để bạn cảm thấy thoải mái và không làm nhăn áo.', '2022-05-10 14:51:48', '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `name` varchar(255) DEFAULT NULL COMMENT 'tên khách hàng',
  `address` varchar(255) DEFAULT NULL COMMENT 'địa chỉ nhận hàng',
  `mobile` int(11) DEFAULT NULL COMMENT 'số điện thoại người nhận',
  `email` varchar(50) DEFAULT NULL COMMENT 'email khách hàng',
  `note` text DEFAULT NULL COMMENT 'ghi chú thêm',
  `price_total` int(11) DEFAULT NULL COMMENT 'tổng giá trị đơn hàng',
  `payment_status` tinyint(3) DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán ',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `update_at` date DEFAULT NULL COMMENT 'ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `update_at`) VALUES
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:04:28', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:07:18', NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:08:06', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:11:08', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:12:23', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 14:13:15', NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:16:36', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:16:52', NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:17:18', NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:32:51', NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:34:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL COMMENT 'id của order tương ứng, là khóa ngoại liên kết bảng orders',
  `product_name` varchar(250) DEFAULT NULL COMMENT 'tên sản phẩm tại thời điểm đặt hàng',
  `product_price` int(11) DEFAULT NULL COMMENT 'giá sản phẩm tương ứng tại thời điểm đặt hàng',
  `quantity` int(11) DEFAULT NULL COMMENT 'số lượng sản phẩm tương ứng tại thời điểm đặt hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_name`, `product_price`, `quantity`) VALUES
(9, '0', 23443, 3),
(10, '0', 23443, 3),
(11, '0', 23443, 3),
(12, '0', 23443, 3),
(13, '0', 23443, 3),
(14, '0', 23443, 3),
(17, 'Blazer TH777', 5700000, 2),
(18, 'Blazer TH777', 5700000, 2),
(19, 'Blazer TH777', 5700000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id của danh mục mà sản phẩm thuộc về, là khóa ngoại liên kết với bảng categories',
  `title` varchar(255) DEFAULT NULL COMMENT 'Tên sản phẩm',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'Tên file ảnh sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'Giá sản phẩm',
  `amount` int(11) DEFAULT NULL COMMENT 'Số lượng sản phẩm trong kho',
  `description` text DEFAULT NULL COMMENT 'Mô tả về sản phẩm',
  `status` tinyint(3) DEFAULT 0,
  `seo_title` varchar(255) DEFAULT NULL COMMENT 'Từ khóa cho title',
  `seo_description` varchar(255) DEFAULT NULL COMMENT 'Từ khóa cho mô tả sản phẩm',
  `seo_keywords` varchar(255) DEFAULT NULL COMMENT 'Từ khóa seo',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `update_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `amount`, `description`, `status`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `update_at`) VALUES
(30, 18, 'Bộ Suit TH0256', '1653061388-product-53714cd9-d991-4f74-80c4-a50fc38c1914.jpg', 6000000, 12, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.\r\n', 1, '', '', '', '2022-05-08 02:05:09', '2022-05-20 22:43:08'),
(31, 18, 'Bộ Suit TH0231', '1653061172-product-abd6ee10-8fbe-41ff-8eae-a6efface5325.jpg', 6000000, 12, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.', 1, '', '', '', '2022-05-11 16:38:50', '2022-05-20 22:39:32'),
(32, 18, 'Bộ Suit TH022', '1653061059-product-b21e4850-3bd6-438a-8604-18aece339320.jpg', 6000000, 20, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.', 1, '', '', '', '2022-05-11 16:39:21', '2022-05-20 22:37:39'),
(33, 18, 'Bộ Suit TH0223', '1653061133-product-2363c11b-1db9-47de-9b6e-07fb2029bad0.jpg', 6000000, 21, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.', 1, '', '', '', '2022-05-11 16:44:30', '2022-05-20 22:38:53'),
(34, 19, 'Blazer TH0241', '1653061328-product-blazer.jpg', 4000000, 12, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-16 03:59:25', '2022-05-20 22:42:08'),
(35, 19, 'Blazer TH03111', '1653061550-product-36a0a68f-465e-44b6-80a8-326086bb4d61.jpg', 4500000, 8, 'Size:  M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 15:45:50', NULL),
(36, 1, 'Vest TH0312', '1653061940-product-Buy Tuxedos Online _ Men\'s Tuxedos For Sale _ Buy4LessTuxedo.jpg', 1500000, 6, 'Size: S, M, L, XL\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\n', 1, '', '', '', '2022-05-20 15:52:21', NULL),
(37, 1, 'Vest TH092', '1653062008-product-Coin Grey Blazer.jpg', 3200000, 22, 'Size: S, M, L, XL\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 15:53:29', NULL),
(38, 1, 'Vest 0054', '1653062048-product-Black Double Breasted Waistcoat.jpg', 5100000, 24, 'Size:  L, XL\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 15:54:08', NULL),
(39, 21, 'Shoes TH132', '1653072013-product-Church\'s Monmouth leather Chelsea boots.jpg', 2300000, 43, 'Size: 38, 39, 40, 41, 42, 43, 44\r\nGiày sử dụng chất liệu da thật có mức giá cao hơn so với giày giả da. Nhờ quá trình thuộc da mà những đôi giày có độ bền cực tốt, không bị mục nát hay bay màu, bề mặt da có độ bóng đẹp và trau chuốt đến từng chi tiết. Da thuộc gồm một số loại sau: Da bò: Loại da này có lỗ chân lông có hình tròn, phân bố rất đều nhau, vân da đẹp.\r\n', 1, '', '', '', '2022-05-20 15:56:26', '2022-05-21 01:40:13'),
(40, 21, 'Shoes TH042', '1653062297-product-Gordon Rush \'Wallis\' Chelsea Boot (Men).jpg', 3600000, 23, 'Size: 38, 39, 40, 41, 42, 43, 44\r\nGiày sử dụng chất liệu da thật có mức giá cao hơn so với giày giả da. Nhờ quá trình thuộc da mà những đôi giày có độ bền cực tốt, không bị mục nát hay bay màu, bề mặt da có độ bóng đẹp và trau chuốt đến từng chi tiết. Da thuộc gồm một số loại sau: Da bò: Loại da này có lỗ chân lông có hình tròn, phân bố rất đều nhau, vân da đẹp.\r\n', 1, '', '', '', '2022-05-20 15:58:17', NULL),
(41, 22, 'Sơ mi TH962', '1653062698-product-dress.jpg', 1200000, 22, 'Size: S, M, L, XL\r\n Chất liệu: Áo sơ mi được làm từ chất liệu kate, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.', 1, '', '', '', '2022-05-20 16:04:58', NULL),
(42, 22, 'Sơ mi TH972', '1653062734-product-Designer Clothes, Shoes & Bags for Women _ SSENSE.jpg', 1250000, 22, 'Size: S, M, L, XL\r\n Chất liệu: Áo sơ mi được làm từ chất liệu kate, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.', 1, '', '', '', '2022-05-20 16:05:34', NULL),
(43, 20, 'Thắt lưng TH8421', '1653062799-product-ITIEZY Ratchet Belt Automatic Belt Men Leather Black Casual Fashion.jpg', 700000, 42, 'Thắt lưng da cao cấp màu nâu, kết hợp vân da rắn đầy nam tính, sang trọng. Bản dây 32mm thanh mảnh, có thể kết hợp với nhiều trang phục khác nhau, đặc biệt là trang phục công sở.', 1, '', '', '', '2022-05-20 16:06:39', NULL),
(44, 20, 'Thắt lưng TH866', '1653063031-product-Mens Alligator Dress Belt, Classic Alligator Belt for Men.jpg', 550000, 26, 'Thắt lưng da cao cấp màu nâu, kết hợp vân da rắn đầy nam tính, sang trọng. Bản dây 32mm thanh mảnh, có thể kết hợp với nhiều trang phục khác nhau, đặc biệt là trang phục công sở.', 1, '', '', '', '2022-05-20 16:10:31', NULL),
(45, 22, 'Sơ mi TH42212', '1653063099-product-tải xuống (1).jpg', 900000, 22, 'Size:  M, L\r\n Chất liệu: Áo sơ mi được làm từ chất liệu kate, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.\r\n', 1, '', '', '', '2022-05-20 16:11:39', NULL),
(46, 21, 'Shoes TH3321', '1653063162-product-Herring Chaucer wholecuts in black calf from Herring Shoes.jpg', 4300000, 21, 'Size: 38, 39, 40, 41, 42, 43, 44\r\nGiày sử dụng chất liệu da thật có mức giá cao hơn so với giày giả da. Nhờ quá trình thuộc da mà những đôi giày có độ bền cực tốt, không bị mục nát hay bay màu, bề mặt da có độ bóng đẹp và trau chuốt đến từng chi tiết. Da thuộc gồm một số loại sau: Da bò: Loại da này có lỗ chân lông có hình tròn, phân bố rất đều nhau, vân da đẹp.\r\n', 1, '', '', '', '2022-05-20 16:12:42', NULL),
(47, 19, 'Blazer TH775', '1653063228-product-Brown suit and pant.jpg', 5100000, 5, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 16:13:48', NULL),
(48, 22, 'Sơ mi TH6688', '1653063285-product-Camisa de Moda.jpg', 700000, 12, 'Size: S, M, L, XL\r\n Chất liệu: Áo sơ mi được làm từ chất liệu kate, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.\r\n', 1, '', '', '', '2022-05-20 16:14:45', NULL),
(49, 19, 'Blazer TH732', '1653071672-product-GIVENCHY Paris.jpg', 1050000, 5, 'Size: S, M\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.\r\n', 1, '', '', '', '2022-05-20 18:34:32', NULL),
(50, 1, 'Vest', '1653071729-product-product4.jpg', 4100000, 10, 'Size: S, M, L, XL\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.\r\n', 1, '', '', '', '2022-05-20 18:35:29', NULL),
(51, 18, 'Bộ suit TH6643', '1653071818-product-product5.jpg', 5200000, 31, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.\r\n', 1, '', '', '', '2022-05-20 18:36:58', NULL),
(52, 1, 'Vest TH733', '1653071914-product-33 ROCK STREET on Twitter.jpg', 600000, 5, 'Size: S, M\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.\r\n', 1, '', '', '', '2022-05-20 18:38:34', NULL),
(53, 22, 'Sơ mi TH545', '1653072059-product-Men.jpg', 400000, 5, 'Size: S, M\r\n Chất liệu: Áo sơ mi được làm từ chất liệu kate, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.\r\n', 1, '', '', '', '2022-05-20 18:40:59', NULL),
(54, 20, 'Thắt lưng TH3326', '1653072100-product-Fashion Alligator Belt, Reversible Alligator Leather Belt for Men.jpg', 550000, 19, 'Thắt lưng da cao cấp màu nâu, kết hợp vân da rắn đầy nam tính, sang trọng. Bản dây 32mm thanh mảnh, có thể kết hợp với nhiều trang phục khác nhau, đặc biệt là trang phục công sở.', 1, '', '', '', '2022-05-20 18:41:40', NULL),
(55, 20, 'Thắt lưng TH448', '1653072141-product-Our Best Belts Deals.jpg', 630000, 24, 'Thắt lưng da cao cấp màu nâu, kết hợp vân da rắn đầy nam tính, sang trọng. Bản dây 32mm thanh mảnh, có thể kết hợp với nhiều trang phục khác nhau, đặc biệt là trang phục công sở.', 1, '', '', '', '2022-05-20 18:42:22', NULL),
(56, 19, 'Blazer TH777', '1653072187-product-Photo Gallery - Solid Color Asymmetrical Long-sleeved Shirt.jpg', 5700000, 15, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.\r\n\r\n\r\nSize: S, M, L, XL\r\nÁo Vest TrnHa Store mang lại vẻ lịch lãm, sang trọng không kém những bộ vest mà còn có lợi thế bởi sự thoải mái, tiện lợi. Thiết kế đơn giản, đường nét gãy gọn, tinh tế tôn dáng người mặc. Hai túi phía trước cách điệu cùng hàng khuy tiện lợi. Chất liệu vải cao cấp cho bạn trải nghiệm thú vị khi diện sản phẩm.\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.\r\n', 1, '', '', '', '2022-05-20 18:43:07', NULL),
(57, 18, 'Bộ suit TH68681', '1653072265-product-Morning Suits to hire from Neal & Palmer, London.jpg', 7100000, 15, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.\r\n', 1, '', '', '', '2022-05-20 18:44:25', NULL),
(58, 18, 'Bộ suit TH1092', '1653072323-product-vest8.jpg', 6000000, 22, 'Size: S, M, L, XL\r\nCHI TIẾT:\r\n\r\n– Bộ suits cao cấp TrnHa Store mang đến diện mạo lịch lãm và sang trọng cho nam giới. Phom dáng Slim fit ôm vừa, giúp tôn dáng người mặc.\r\n\r\n– Thiết kể cổ điển một cúc, vai áo độn vừa phải tạo sự trẻ trung. Vẻ nam tính đầy thanh lịch từ các chi tiết may tỉ mỉ, hai đường xẻ tà lưng theo phong cách quý tộc châu Âu cùng công nghệ ly quần vĩnh viễn khiến bộ suits này trở thành lựa chọn hoàn hảo cho phái mạnh.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Chất liệu Polyester kết hợp Rayon cho bộ suits có độ cứng cáp và đứng dáng vừa đủ, bền màu và dễ bảo quản, đồng thời vẫn có bề mặt xốp nhẹ, thoáng khí dễ chịu.\r\n', 1, '', '', '', '2022-05-20 18:45:23', NULL),
(59, 1, 'Vest TH0078', '1653072865-product-alxxs.jpg', 6200000, 40, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 18:54:25', NULL),
(60, 1, 'Vest TH6201', '1653072906-product-Lutwyche.jpg', 6200000, 40, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 18:55:06', NULL),
(61, 1, 'Vest TH880', '1653072935-product-eexx.jpg', 6200000, 40, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 18:55:35', NULL),
(62, 1, 'Vest TH0029', '1653072972-product-tttt.jpg', 6200000, 40, 'Size: S, M, L, XL\r\n– Áo blazer với phom dáng Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\r\n\r\n– Thiết kế basic, túi nắp giả thời trang, có thể kết hợp với sơ mi tạo diện mạo chỉn chu hoặc áo T-shirt mang đến phong cách khỏe khoắn, lịch thiệp.\r\n\r\n– Đường may tỉ mỉ, dệt jacquard tạo hiệu ứng bắt mắt, màu sắc trung tính, dễ kết hợp trang phục.\r\n\r\nCHẤT LIỆU:\r\n\r\n– Thành phần chính là Polyester cho bề mặt trượt dễ chịu, không nhăn co, có độ bóng sáng, sắc nét. Kết hợp sợi Rayon thoáng khí, mềm mịn, mang đến sự thoáng mát, dễ chịu cho người mặc.\r\n\r\n– Áo có độ co giãn nhẹ nhờ kết hợp Spandex.', 1, '', '', '', '2022-05-20 18:56:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT 'tên tài khoản',
  `first_name` varchar(255) DEFAULT NULL COMMENT 'tên trước',
  `last_name` varchar(255) DEFAULT NULL COMMENT 'tên sau ',
  `password` varchar(255) DEFAULT NULL COMMENT 'mật khẩu của user',
  `phone` int(11) DEFAULT NULL COMMENT 'số điện thoại user',
  `address` varchar(255) DEFAULT NULL COMMENT 'địa chỉ của user',
  `email` varchar(255) DEFAULT NULL COMMENT 'tên email của user',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'ảnh đại diện',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `update_at` datetime DEFAULT NULL COMMENT 'ngày cập nhật gần nhất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `password`, `phone`, `address`, `email`, `avatar`, `reset_password_token`, `created_at`, `update_at`) VALUES
(1, 'TrnHa', 'Trần', 'Hà', '$2y$10$1lt7W1QTDQy3qsDeK53PI.aqfrl9TKhRwyFm2Ql9NKCEJJomm0fqm', 946932511, 'Hải Dương', 'tranha251101@gmail.com', '1652891758-user-bvbv.png', NULL, '2022-04-15 16:01:13', '2022-05-18 23:35:58'),
(5, 'tranha251101@gmail.com', NULL, NULL, '$2y$10$oqyu2hrZw/ib5PRVShqzUe5uZUJ3SSdhqhn9hhnKNs2bNjVcoMklm', NULL, NULL, NULL, NULL, '448f9ebe96a867e7494d759d55454110', '2022-05-19 18:28:24', NULL),
(7, 'ha.dau251101@gmail.com', NULL, NULL, '$2y$10$EFUoMfa1RerKBwV4O8LhxuvrZlYMxWwjQvcoPhUIoNeC0k9L.Vaqy', NULL, NULL, NULL, NULL, NULL, '2022-05-23 12:25:06', NULL),
(8, 'ha.dau25112001@gmail.com', NULL, NULL, '$2y$10$/NT73BqWbfmRIHHvqZS.zOSDXXGFbpZbaPPF4obwWSI/JLqCLvovG', NULL, NULL, NULL, NULL, '0c3f799de97ebeccd2aec2a397fe55fa', '2022-05-23 12:25:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idfk` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `oders-fk` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã từng danh mục', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `user_idfk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `oders-fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
