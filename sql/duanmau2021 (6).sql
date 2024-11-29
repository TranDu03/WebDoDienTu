-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2023 lúc 10:49 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau2021`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(50) NOT NULL,
  `iduser` int(11) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.thanh toan tt 2.chuyen khoan 3.thanh toan ',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới  1.Dang xuli 2.Dang giao hang 3. da giao hang',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(148, 6, 'admin', '44 ho quy ly', '0336738', 'duyet123@gmail.com', 0, '07:17:02am 01/12/2023', 15000, 0, NULL, NULL, NULL),
(149, 6, 'admin', '44 ho quy ly', '0336738', 'duyet123@gmail.com', 0, '08:40:23am 01/12/2023', 660000, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(50) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(20) NOT NULL,
  `idpro` int(20) NOT NULL,
  `ngaybinhluan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'chất lượng ', 6, 21, '09:59:36am 20/10/2023'),
(2, 'bền đẹp', 6, 21, '09:59:53am 20/10/2023'),
(3, 'chất lượng ', 6, 12, '10:20:04am 20/10/2023'),
(4, '', 6, 12, '10:20:12am 20/10/2023'),
(5, 'nam tính ', 6, 13, '10:20:33am 20/10/2023'),
(6, 'màu phối của đồng hồ khá đẹp', 6, 13, '10:21:35am 20/10/2023'),
(7, 'bền', 6, 15, '10:21:49am 20/10/2023'),
(8, 'sử dụng khá mượt mà', 6, 15, '10:22:08am 20/10/2023'),
(9, 'mẫu này hợp với thời trang full black', 6, 16, '10:22:51am 20/10/2023'),
(10, 'sản phẩm đẹp bền', 6, 17, '10:23:14am 20/10/2023'),
(11, 'sử dụng khá mượt ', 6, 17, '10:23:30am 20/10/2023'),
(12, 'chất lượng ', 6, 18, '10:23:46am 20/10/2023'),
(13, 'loa to rõ ràng', 6, 18, '10:23:58am 20/10/2023'),
(14, 'sản phẩm này dùng khá mượt', 6, 22, '10:24:26am 20/10/2023'),
(15, 'chất lượng ', 6, 22, '10:24:38am 20/10/2023'),
(16, 'màu nữ tính cute', 6, 19, '10:24:56am 20/10/2023'),
(17, 'lâu hết pin chất lượng', 6, 19, '10:25:16am 20/10/2023'),
(18, 'màu phối của đồng hồ khá đẹp', 6, 20, '10:25:59am 20/10/2023'),
(19, 'bền đẹp', 6, 20, '10:26:09am 20/10/2023'),
(20, 'duiuidsgfsdfgyfd', 0, 32, '06:35:01pm 15/11/2023'),
(21, 's', 0, 32, '06:43:56pm 15/11/2023'),
(22, '', 0, 32, '06:49:32pm 15/11/2023'),
(23, '', 0, 32, '06:49:40pm 15/11/2023'),
(24, '', 0, 32, '06:49:49pm 15/11/2023'),
(25, '', 0, 32, '06:50:06pm 15/11/2023'),
(26, 'ss', 0, 32, '06:50:27pm 15/11/2023'),
(27, 'rtttr', 0, 43, '06:53:06pm 15/11/2023'),
(28, 'ddd', 0, 43, '07:09:11pm 15/11/2023'),
(29, '', 0, 43, '07:10:23pm 15/11/2023'),
(30, 'sss', 0, 32, '07:21:32pm 15/11/2023'),
(31, 'aaa', 0, 32, '07:21:37pm 15/11/2023'),
(32, '', 0, 32, '07:24:50pm 15/11/2023'),
(33, '', 0, 32, '07:34:38pm 15/11/2023'),
(34, '', 0, 32, '07:37:28pm 15/11/2023'),
(35, 'sssss', 0, 32, '07:40:29pm 15/11/2023'),
(36, 'ssss', 0, 32, '07:42:09pm 15/11/2023'),
(37, 'sssss', 0, 32, '07:42:14pm 15/11/2023'),
(38, 'ASas', 0, 32, '07:42:19pm 15/11/2023'),
(39, 'aaa', 0, 54, '07:54:04pm 15/11/2023'),
(40, 'ioooo', 0, 54, '06:08:47am 16/11/2023'),
(41, '', 0, 42, '12:15:17pm 20/11/2023'),
(42, 'fdfggd', 0, 42, '12:15:24pm 20/11/2023'),
(43, 'Ngon quá !', 6, 30, '06:36:32pm 20/11/2023'),
(44, 'Ờ mây zing gut chop !!!', 6, 30, '06:37:25pm 20/11/2023'),
(45, 'Chua chua ngọt ngọt !', 6, 30, '06:38:25pm 20/11/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(20) NOT NULL DEFAULT 0,
  `soluong` int(10) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 46),
(2, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 46),
(3, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 46),
(4, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 46),
(5, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 46),
(6, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 46),
(7, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 46),
(8, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 47),
(9, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 47),
(10, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 47),
(11, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 47),
(12, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 47),
(13, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 47),
(14, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 47),
(15, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 48),
(16, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 48),
(17, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 48),
(18, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 48),
(19, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 48),
(20, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 48),
(21, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 48),
(22, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 49),
(23, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 49),
(24, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 49),
(25, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 49),
(26, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 49),
(27, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 49),
(28, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 49),
(29, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 50),
(30, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 50),
(31, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 50),
(32, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 50),
(33, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 50),
(34, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 50),
(35, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 50),
(36, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 51),
(37, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 51),
(38, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 51),
(39, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 51),
(40, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 51),
(41, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 51),
(42, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 51),
(43, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 52),
(44, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 52),
(45, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 52),
(46, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 52),
(47, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 52),
(48, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 52),
(49, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 52),
(50, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 53),
(51, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 53),
(52, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 53),
(53, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 53),
(54, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 53),
(55, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 53),
(56, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 53),
(57, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 54),
(58, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 54),
(59, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 54),
(60, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 54),
(61, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 54),
(62, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 54),
(63, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 54),
(64, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 55),
(65, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 55),
(66, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 55),
(67, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 55),
(68, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 55),
(69, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 55),
(70, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 55),
(71, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 56),
(72, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 56),
(73, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 56),
(74, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 56),
(75, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 56),
(76, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 56),
(77, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 56),
(78, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 57),
(79, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 57),
(80, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 57),
(81, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 57),
(82, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 57),
(83, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 57),
(84, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 57),
(85, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 58),
(86, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 58),
(87, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 58),
(88, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 58),
(89, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 58),
(90, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 58),
(91, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 58),
(92, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 59),
(93, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 59),
(94, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 59),
(95, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 59),
(96, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 59),
(97, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 59),
(98, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 59),
(99, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 60),
(100, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 60),
(101, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 60),
(102, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 60),
(103, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 60),
(104, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 60),
(105, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 60),
(106, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 60),
(107, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 61),
(108, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 61),
(109, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 61),
(110, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 61),
(111, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 61),
(112, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 61),
(113, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 61),
(114, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 61),
(115, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 62),
(116, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 62),
(117, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 62),
(118, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 62),
(119, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 62),
(120, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 62),
(121, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 62),
(122, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 62),
(123, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 63),
(124, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 63),
(125, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 63),
(126, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 63),
(127, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 63),
(128, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 63),
(129, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 63),
(130, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 63),
(131, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 64),
(132, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 64),
(133, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 64),
(134, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 64),
(135, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 64),
(136, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 64),
(137, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 64),
(138, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 64),
(139, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 65),
(140, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 65),
(141, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 65),
(142, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 65),
(143, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 65),
(144, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 65),
(145, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 65),
(146, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 65),
(147, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 66),
(148, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 66),
(149, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 66),
(150, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 66),
(151, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 66),
(152, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 66),
(153, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 66),
(154, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 66),
(155, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 67),
(156, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 67),
(157, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 67),
(158, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 67),
(159, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 67),
(160, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 67),
(161, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 67),
(162, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 67),
(163, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 68),
(164, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 68),
(165, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 68),
(166, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 68),
(167, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 68),
(168, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 68),
(169, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 68),
(170, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 68),
(171, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 69),
(172, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 69),
(173, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 69),
(174, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 69),
(175, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 69),
(176, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 69),
(177, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 69),
(178, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 69),
(179, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 70),
(180, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 70),
(181, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 70),
(182, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 70),
(183, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 70),
(184, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 70),
(185, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 70),
(186, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 70),
(187, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 71),
(188, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 71),
(189, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 71),
(190, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 71),
(191, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 71),
(192, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 71),
(193, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 71),
(194, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 71),
(195, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 72),
(196, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 72),
(197, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 72),
(198, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 72),
(199, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 72),
(200, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 72),
(201, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 72),
(202, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 72),
(203, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 73),
(204, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 73),
(205, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 73),
(206, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 73),
(207, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 73),
(208, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 73),
(209, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 73),
(210, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 73),
(211, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 74),
(212, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 74),
(213, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 74),
(214, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 74),
(215, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 74),
(216, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 74),
(217, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 74),
(218, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 74),
(219, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 75),
(220, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 75),
(221, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 75),
(222, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 75),
(223, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 75),
(224, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 75),
(225, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 75),
(226, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 75),
(227, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 76),
(228, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 76),
(229, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 76),
(230, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 76),
(231, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 76),
(232, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 76),
(233, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 76),
(234, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 76),
(235, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 77),
(236, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 77),
(237, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 77),
(238, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 77),
(239, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 77),
(240, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 77),
(241, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 77),
(242, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 77),
(243, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 78),
(244, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 78),
(245, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 78),
(246, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 78),
(247, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 78),
(248, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 78),
(249, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 78),
(250, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 78),
(251, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 79),
(252, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 79),
(253, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 79),
(254, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 79),
(255, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 79),
(256, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 79),
(257, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 79),
(258, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 79),
(259, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 80),
(260, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 80),
(261, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 80),
(262, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 80),
(263, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 80),
(264, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 80),
(265, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 80),
(266, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 80),
(267, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 81),
(268, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 81),
(269, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 81),
(270, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 81),
(271, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 81),
(272, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 81),
(273, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 81),
(274, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 81),
(275, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 82),
(276, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 82),
(277, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 82),
(278, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 82),
(279, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 82),
(280, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 82),
(281, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 82),
(282, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 82),
(283, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 83),
(284, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 83),
(285, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 83),
(286, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 83),
(287, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 83),
(288, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 83),
(289, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 83),
(290, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 83),
(291, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 84),
(292, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 84),
(293, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 84),
(294, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 84),
(295, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 84),
(296, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 84),
(297, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 84),
(298, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 84),
(299, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 85),
(300, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 85),
(301, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 85),
(302, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 85),
(303, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 85),
(304, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 85),
(305, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 85),
(306, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 85),
(307, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 86),
(308, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 86),
(309, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 86),
(310, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 86),
(311, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 86),
(312, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 86),
(313, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 86),
(314, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 86),
(315, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 87),
(316, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 87),
(317, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 87),
(318, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 87),
(319, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 87),
(320, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 87),
(321, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 87),
(322, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 87),
(323, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 88),
(324, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 88),
(325, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 88),
(326, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 88),
(327, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 88),
(328, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 88),
(329, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 88),
(330, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 88),
(331, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 89),
(332, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 89),
(333, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 89),
(334, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 89),
(335, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 89),
(336, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 89),
(337, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 89),
(338, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 89),
(339, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 89),
(340, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 90),
(341, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 90),
(342, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 90),
(343, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 90),
(344, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 90),
(345, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 90),
(346, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 90),
(347, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 90),
(348, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 90),
(349, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 91),
(350, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 91),
(351, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 91),
(352, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 91),
(353, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 91),
(354, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 91),
(355, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 91),
(356, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 91),
(357, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 91),
(358, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 92),
(359, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 92),
(360, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 92),
(361, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 92),
(362, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 92),
(363, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 92),
(364, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 92),
(365, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 92),
(366, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 92),
(367, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 93),
(368, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 93),
(369, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 93),
(370, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 93),
(371, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 93),
(372, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 93),
(373, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 93),
(374, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 93),
(375, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 93),
(376, 6, 43, 'MOUSSEDAO.png', 'BÁNH MOUSSE ĐÀO', 25000, 1, 25000, 93),
(377, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 94),
(378, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 94),
(379, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 94),
(380, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 94),
(381, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 94),
(382, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 94),
(383, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 94),
(384, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 94),
(385, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 94),
(386, 6, 43, 'MOUSSEDAO.png', 'BÁNH MOUSSE ĐÀO', 25000, 1, 25000, 94),
(387, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 95),
(388, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 95),
(389, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 95),
(390, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 95),
(391, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 95),
(392, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 95),
(393, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 95),
(394, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 95),
(395, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 95),
(396, 6, 43, 'MOUSSEDAO.png', 'BÁNH MOUSSE ĐÀO', 25000, 1, 25000, 95),
(397, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 96),
(398, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 96),
(399, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 96),
(400, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 96),
(401, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 96),
(402, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 96),
(403, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 96),
(404, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 96),
(405, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 96),
(406, 6, 43, 'MOUSSEDAO.png', 'BÁNH MOUSSE ĐÀO', 25000, 1, 25000, 96),
(407, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 97),
(408, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 97),
(409, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 97),
(410, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 97),
(411, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 97),
(412, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 97),
(413, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 97),
(414, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 97),
(415, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 97),
(416, 6, 43, 'MOUSSEDAO.png', 'BÁNH MOUSSE ĐÀO', 25000, 1, 25000, 97),
(419, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 100),
(420, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 100),
(423, 0, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 103),
(424, 0, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 104),
(425, 0, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 105),
(426, 0, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 105),
(427, 0, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 106),
(428, 0, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 106),
(429, 0, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 107),
(430, 0, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 107),
(431, 6, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 108),
(432, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 108),
(433, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 108),
(434, 6, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 109),
(435, 6, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 109),
(436, 6, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 109),
(437, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 110),
(438, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 111),
(439, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 112),
(440, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 113),
(441, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 114),
(442, 0, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 115),
(443, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 116),
(444, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 116),
(445, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 117),
(446, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 117),
(447, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 118),
(448, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 118),
(449, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 119),
(450, 6, 50, '774b3f1fd9202e-greenteachocolatecake.png', 'Green Tea Choco Cake', 30000, 1, 30000, 119),
(451, 28, 46, 'SOCOLAHL.png', 'BÁNH SÔ-CÔ-LA HIGHLANDS', 15000, 1, 15000, 120),
(452, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 120),
(453, 28, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 121),
(454, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 121),
(455, 28, 49, 'PHOMAITRAXANH.jpg', 'BÁNH PHÔ MAI TRÀ XANH', 35000, 1, 35000, 121),
(456, 28, 49, 'PHOMAITRAXANH.jpg', 'BÁNH PHÔ MAI TRÀ XANH', 35000, 1, 35000, 121),
(457, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 121),
(458, 28, 55, 'HLC_New_logo_5.1_Products__R_G_SANH_DIEU2.jpg', 'TRUYỀN THỐNG 200GR', 100000, 1, 100000, 121),
(459, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 121),
(460, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 122),
(461, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 122),
(462, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 123),
(463, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 123),
(464, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 124),
(465, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 124),
(466, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 125),
(467, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 125),
(468, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 126),
(469, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 126),
(470, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 127),
(471, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 127),
(472, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 128),
(473, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 128),
(474, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 129),
(475, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 129),
(476, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 130),
(477, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 130),
(478, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 131),
(479, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 131),
(480, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 132),
(481, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 132),
(482, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 133),
(483, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 133),
(484, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 134),
(485, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 134),
(486, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 135),
(487, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 135),
(488, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 135),
(489, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 136),
(490, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 136),
(491, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 136),
(492, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 137),
(493, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 137),
(494, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 137),
(495, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 138),
(496, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 138),
(497, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 138);
INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(498, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 139),
(499, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 139),
(500, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 139),
(501, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 140),
(502, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 140),
(503, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 140),
(504, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 141),
(505, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 141),
(506, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 141),
(507, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 142),
(508, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 142),
(509, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 142),
(510, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 142),
(511, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 143),
(512, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 143),
(513, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 143),
(514, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 143),
(515, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 143),
(516, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 143),
(517, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 144),
(518, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 144),
(519, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 144),
(520, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 144),
(521, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 144),
(522, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 144),
(523, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 145),
(524, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 145),
(525, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 145),
(526, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 145),
(527, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 145),
(528, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 145),
(529, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 146),
(530, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 146),
(531, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 146),
(532, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 146),
(533, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 146),
(534, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 146),
(535, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 147),
(536, 28, 54, 'HLC_New_logo_5.1_Products__R_G_FCR_1kg_R.jpg', 'FULL CITY ROAST 1KG', 25000, 1, 25000, 147),
(537, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 147),
(538, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 147),
(539, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 147),
(540, 28, 52, 'CA_PHE_SUA_185ml_v3.jpg', 'CÀ PHÊ SỮA LON 185ML', 15000, 1, 15000, 147),
(541, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 148),
(542, 6, 51, '270_crop_HLC_New_logo_5.1_Products__NEW_CAN_CFD_INTERNATIONAL_185ml.jpg', 'CÀ PHÊ ĐEN LON ', 15000, 1, 15000, 149),
(543, 6, 71, 'loa3.jpg', 'Loa bluetooth opppo', 345000, 1, 345000, 149),
(544, 6, 68, 'tainghe-3.jpg', 'Havit 257', 300000, 1, 300000, 149);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(95, 'Điện thoại'),
(96, 'Lap top'),
(97, 'Loa '),
(98, 'Dồng hồ '),
(99, 'Tai nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(56, 'Ausus TUF', 2000000.00, 'asus-tuf-gaming-f15.webp', 'Máy được hoàn thiện với các cạnh viền bo góc cùng tông màu xám thanh lịch tạo nên cảm giác khá hài hòa mà không quá nổi bật với môi trường xung quanh. Bề mặt có nhiều chi tiết, logo được đặt vỏn vẹn ở một góc máy đặc trưng của các dòng laptop Lenovo, vừa thể hiện sự tối giản, vừa mang nét thẩm mỹ riêng. Mình chắc chắn laptop sẽ rất hợp nhãn với những bạn yêu thích sự đơn giản.', 100, 96),
(57, 'Oppo a22', 500000.00, 'dt-2.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 90, 95),
(58, 'Casio', 6999000.00, 'img6.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 98),
(59, 'Havit 967', 355500.00, 'tainghe-1.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 99),
(60, 'Sámung a22', 20000.00, 'tainghe-2.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 40, 99),
(61, 'Iphone 15', 15000000.00, 'dt-3.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 30, 95),
(62, 'oppo a54', 790000.00, 'dt-1.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 20, 95),
(63, 'Samsung not20', 1900000.00, 'dt-4.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 60, 95),
(64, 'Casio 1020', 18999000.00, 'img1.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 50, 98),
(65, 'Asus ', 230000.00, 'laptop2.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 96),
(66, 'Dell 2550', 3000000.00, 'laptop3.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 70, 96),
(67, 'Beseus 34', 290000.00, 'tainghe-4.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 99),
(68, 'Havit 257', 300000.00, 'tainghe-3.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 80, 99),
(69, 'Loa bluetooth samsung', 400000.00, 'loa2.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 10, 97),
(70, 'Loa co dây', 345000.00, 'loa-vi-tinh-2-.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 97),
(71, 'Loa bluetooth opppo', 345000.00, 'loa3.jpg', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 97),
(72, 'Dồng hồ thụy sĩ', 3450000.00, 'img3.webp', 'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', 0, 98);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(29) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(6, 'admin', '12345', 'duyet123@gmail.com', 'Ha Noi', '0336738', 1),
(28, 'Phạm Viết Duyệt', '12345', 'duyet@gmail.com', 'Đà Nẵng', '0336765342', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_cart_bill` (`idbill`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
