-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2024 lúc 09:31 AM
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
(153, 1, 'DUCR7', '30 Dong tri 2', '0985527084', 'tcdu2003@gmail.com', 0, '05:01:01pm 19/12/2023', 29, 0, NULL, NULL, NULL),
(161, 1, 'DUCR7', '30 Dong tri 2', '0985527084', 'tcdu2003@gmail.com', 0, '04:16:03am 21/12/2023', 64, 0, NULL, NULL, NULL),
(162, 6, 'admin', 'Ha Noi', '0336738', 'duyet123@gmail.com', 0, '04:47:43am 21/12/2023', 25, 0, NULL, NULL, NULL),
(163, 1, 'DUCR7', '30 Dong tri 2', '0985527084', 'tcdu2003@gmail.com', 0, '07:22:52am 21/12/2023', 375, 0, NULL, NULL, NULL),
(164, 6, 'admin', 'Ha Noi', '0336738', 'duyet123@gmail.com', 0, '07:18:50am 23/12/2023', 25, 0, NULL, NULL, NULL),
(165, 6, 'admin', 'Ha Noi', '0336738', 'duyet123@gmail.com', 0, '07:19:32am 23/12/2023', 30, 0, NULL, NULL, NULL),
(166, 6, 'admin', 'Ha Noi', '0336738', 'duyet123@gmail.com', 0, '07:21:27am 23/12/2023', 40, 0, NULL, NULL, NULL),
(167, 6, 'admin', 'Ha Noi', '0336738', 'duyet123@gmail.com', 0, '07:21:51am 23/12/2023', 25, 0, NULL, NULL, NULL);

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
(53, 'rất chi tiết và chất lượng, đúng với mô tả sản phẩm', 1, 138, '05:07:19pm 25/12/2023');

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
(544, 6, 68, 'tainghe-3.jpg', 'Havit 257', 300000, 1, 300000, 149),
(545, 6, 115, 'loa6.jpg', 'Loa Bluetooth AVA+ MiniPod Y23', 100, 1, 100, 152),
(546, 6, 112, 'laptop12.jpg', 'Laptop Acer Nitro 5 Gaming', 950, 1, 950, 152),
(547, 1, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 153),
(548, 1, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 154),
(549, 1, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 154),
(550, 6, 147, 'c9.jpg', 'Chuột Có dây Gaming Genius Scorpion M700 ', 45, 1, 45, 155),
(551, 6, 135, 'laptop14.jpg', 'Laptop Asus Gaming ROG Strix SCAR 16 G634JZ i9', 400, 1, 400, 155),
(552, 6, 138, 'ip-7.jpg', 'iPhone 15 Plus', 420, 1, 420, 156),
(553, 6, 138, 'ip-7.jpg', 'iPhone 15 Plus', 420, 1, 420, 157),
(554, 6, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 157),
(555, 6, 138, 'ip-7.jpg', 'iPhone 15 Plus', 420, 1, 420, 158),
(556, 6, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 158),
(557, 6, 138, 'ip-7.jpg', 'iPhone 15 Plus', 420, 1, 420, 159),
(558, 6, 145, 'c7.jpg', 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29, 1, 29, 159),
(559, 6, 137, 'ip-6.jpg', 'iPhone 14 ', 350, 1, 350, 160),
(560, 1, 142, 'c4.jpeg', 'Chuột Bluetooth Microsoft Modern Mobile KTF', 39, 1, 39, 161),
(561, 1, 152, 'cap5.jpg', 'Cáp Type C - Type C 2m Baseus Glimmer CB000025', 25, 1, 25, 161),
(562, 6, 152, 'cap5.jpg', 'Cáp Type C - Type C 2m Baseus Glimmer CB000025', 25, 1, 25, 162),
(563, 1, 152, 'cap5.jpg', 'Cáp Type C - Type C 2m Baseus Glimmer CB000025', 25, 1, 25, 163),
(564, 1, 137, 'ip-6.jpg', 'iPhone 14 ', 350, 1, 350, 163),
(565, 6, 152, 'cap5.jpg', 'Cáp Type C - Type C 2m Baseus Glimmer CB000025', 25, 1, 25, 164),
(566, 6, 151, 'camera2.jpg', 'Camera IP 360 Độ 5MP IMOU Rex 2D GK2DP ', 30, 1, 30, 165),
(567, 6, 150, 'camera1.jpg', 'Camera IP 360 Độ 3MP BOTSLAB C212', 40, 1, 40, 166),
(568, 6, 148, 'sac1.jpg', 'Sạc Anker Nano 3 A2417', 25, 1, 25, 167);

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
(98, 'Đồng hồ '),
(99, 'Tai nghe'),
(101, 'Bàn phím'),
(102, 'Sạc dự phòng'),
(103, 'Chuột máy tính'),
(104, 'Sạc, cáp'),
(105, 'Camera');

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
(56, 'Laptop Asus TUF Gaming F15', 2500.00, 'asus-tuf-gaming-f15.webp', 'Máy được hoàn thiện với các cạnh viền bo góc cùng tông màu xám thanh lịch tạo nên cảm giác khá hài hòa mà không quá nổi bật với môi trường xung quanh. Bề mặt có nhiều chi tiết, logo được đặt vỏn vẹn ở một góc máy đặc trưng của các dòng laptop Lenovo, vừa thể hiện sự tối giản, vừa mang nét thẩm mỹ riêng. Mình chắc chắn laptop sẽ rất hợp nhãn với những bạn yêu thích sự đơn giản.', 100, 96),
(59, 'Havit 967', 29.00, 'tainghe-1.jpg', 'Sản Phẩm Chính Hãng!', 100, 99),
(67, 'Baseus 34', 19.00, 'tainghe-4.jpg', 'Sản Phẩm Chính Hãng!', 0, 99),
(68, 'Havit 257', 20.00, 'tainghe-3.jpg', 'Sản Phẩm Chính Hãng!', 80, 99),
(69, 'Loa Bluetooth Rezo Home Series Bag', 190.00, 'loa2.jpg', 'Loa Bluetooth Rezo Home Series Bag được thiết kế như chiếc lồng đèn đa màu sắc, kích thước nhỏ gọn dễ dàng mang theo, âm thanh Hi-Fi vô cùng ấn tượng, kết nối nhanh chóng, mang đến cho người dùng không gian giải trí chất lượng. ', 10, 97),
(73, 'iPhone 11 Pro 64GB', 1700.00, 'ip-1.jpg', 'Sản Phẩm Chính Hãng ! ', 0, 95),
(74, 'iPhone 12 64GB', 2000.00, 'ip-2.jpg', 'Sản Phẩm Chính Hãng!', 0, 95),
(75, 'iPhone 14 Pro Max 512GB', 2500.00, 'ip-4.jpg', 'Sản Phẩm Chính Hãng!', 400, 95),
(76, 'iPhone 13 Pro 64GB', 1500.00, 'ip-3.jpg', 'Sản Phẩm Chính Hãng!', 0, 95),
(77, 'iPhone 15 Pro Max 1TB', 3000.00, 'ip-5.jpg', 'Sản Phẩm Chính Hãng!', 1000, 95),
(78, 'AVA+ FreeGo A20', 30.00, 'tainghe-5.jpg', 'Sản Phẩm Chính Hãng!', 85, 99),
(79, 'Samsung Galaxy Buds 2 Pro R510N', 60.00, 'tainghe-6.jpg', 'Sản Phẩm Chính Hãng!', 0, 99),
(80, 'Samsung Galaxy A05s 6GB ', 290.00, 'ss-1.jpeg', 'Sản Phẩm Chính Hãng!', 0, 95),
(81, 'Samsung Galaxy S23 Ultra 5G 256GB', 1500.00, 'ss-2.jpg', 'Sản Phẩm Chính Hãng!', 110, 95),
(82, 'realme 11 Pro+ 5G ', 190.00, 'realme-11.jpeg', 'Sản Phẩm Chính Hãng!', 0, 95),
(83, 'realme C53', 400.00, 'realme-c53.jpg', 'Sản Phẩm Chính Hãng!', 0, 95),
(85, 'BeFit WatchFit ', 29.00, 'dh-1.jpg', 'Sản Phẩm Chính Hãng!', 60, 98),
(86, 'BeFit Watch Ultra', 15.00, 'dh-2.jpg', 'Sản Phẩm Chính Hãng!', 0, 98),
(88, 'Laptop Dell Inspiron 15 3530 i7', 900.00, 'laptop1.jpg', '', 0, 96),
(89, 'Laptop MSI Gaming GF63 Thin 12UC-1006VN i5', 50.00, 'laptop6.jpg', '', 450, 96),
(90, 'Laptop Apple MacBook Pro', 60.00, 'laptop8.jpg', '', 0, 96),
(91, 'Laptop LG gram 2023 i7', 1200.00, 'laptop0.jpg', 'Laptop LG gram 2023 i7 là một dòng laptop cao cấp 2023 được LG cho ra mắt với lối thiết kế sang trọng đi cùng những thông số cấu hình mạnh mẽ, xứng danh trợ thủ đắc lực cho mọi đối tượng người dùng.', 0, 96),
(92, 'Laptop LG gram 2in1 2023 i5', 1500.00, 'laptop10.jpg', 'Laptop LG gram 2in1 2023 i5 sở hữu thiết kế 2 trong 1 tiện lợi, khối lượng nhẹ và có tính di động cao. Bên cạnh đó, thiết bị còn được trang bị hiệu năng mạnh mẽ từ bộ vi xử lý Intel thế hệ 13 hoàn toàn mới, sẵn sàng cân mọi tác vụ kể cả khi bạn đang di chuyển.', 0, 96),
(94, 'Amazfit GTR 4', 38.00, 'dh-5.jpg', 'Amazfit vừa cho ra đời sản phẩm đồng hồ thông minh Amazfit GTR 4 với thiết kế hiện đại nhưng pha lẫn một chút cổ điển. Theo dõi sức khỏe 24/7 với độ chính xác cao thông qua hệ thống cảm biến thế hệ mới, đa dạng chế độ luyện tập thể thao, GPS hiện đại và thời lượng pin siêu dài sẵn sàng đồng hành cùng người dùng ở bất kỳ đâu.', 0, 98),
(95, 'Bàn Phím Cơ Bluetooth Dareu EK75 Pro', 30.00, 'bp1.jpg', 'Bàn Phím Cơ Bluetooth Dareu EK75 Pro sở hữu đầy đủ đặc điểm cần có của một mẫu bàn phím cơ cao cấp, đèn LED RGB đa sắc màu giúp không gian làm việc/giải trí nổi bật trong màn đêm, trang bị switch độc quyền cho hành trình phím sâu, không chiếm quá nhiều diện tích trên bàn làm việc hay balo.', 0, 101),
(98, 'Bàn Phím Có Dây Gaming MSI Vigor GK30 US', 35.00, 'bp4.jpeg', 'Bàn Phím Có Dây Gaming MSI Vigor GK30 US Đen với chân đế gaming vững vàng ngay bên dưới phím Space Bar đem đến sự vững vàng, chống trượt khi chơi game.', 400, 101),
(99, 'Bàn Phím Bluetooth Microsoft QSZ-00017', 25.00, 'bp5.jpeg', 'Bàn Phím Bluetooth Microsoft QSZ-00017có các góc cạnh được làm bo tròn cho thiết kế gọn đẹp, mềm mại, sắc đen thanh lịch, dễ dàng sắp đặt trên bàn làm việc, kệ tủ hay thậm chí là đặt trên chân bạn để sử dụng tiện lợi. Các phím bấm được in rõ ký hiệu đảm bảo người dùng thao tác và gõ chính xác, chắc chắn.', 0, 101),
(100, 'Bàn Phím Cơ Có Dây Gaming Rapoo V500Pro', 39.00, 'bp6.jpeg', 'Bàn phím cơ sử dụng switch treo cho độ nảy, độ đàn hồi và độ nhạy cực tốt, Switch Rapoo Blue tuổi thọ tốt lên đến 60 triệu lượt nhấn, đảm bảo bàn phím bền bỉ đồng hành cùng bạn trong suốt thời gian dài.', 0, 101),
(101, 'BeFit Sporty 2', 39.00, 'dh-7.jpg', 'Hãng đồng hồ thông minh BeFit đã cho ra mắt BeFit Sporty 2 dây da với kiểu dáng thời thượng, đa dạng tính năng từ sức khỏe để tập luyện, thời gian sử dụng kéo dài và trang bị nhiều tiện ích phục vụ tốt hơn cho người dùng trong cả công việc lẫn cuộc sống.', 0, 98),
(102, 'BeFit WatchS', 26.00, 'dh-8.jpg', 'Đồng hồ thông minh BeFit WatchS 45mm lại là một siêu phẩm đến từ nhà BeFit với một thiết kế mới mẻ, bắt kịp xu hướng thời trang của giới trẻ. Đồng hồ cũng hỗ trợ mở rộng thêm nhiều chế độ thể thao, phục vụ', 0, 98),
(103, 'Oppo Band 2', 25.00, 'dh-9.jpg', 'OPPO đã cho ra mắt sản phẩm OPPO Band 2 với sự nâng cấp về thiết kế, tính năng theo dõi sức khỏe và các chế độ thể thao hỗ trợ người dùng chăm sóc cơ thể một cách khoa học.', 0, 98),
(104, 'Amazfit Bip 3 Pro', 20.00, 'dh-10.jpg', 'Amazfit Bip 3 Pro 44.12mm được thiết kế theo phong cách tối giản, gam màu hiện đại phù hợp với nhiều đối tượng người dùng. Bên trong chiếc đồng hồ thông minh này là những tính năng theo dõi sức khỏe thông minh và nhiều chế độ thể thao để người dùng có thể chăm sóc cơ thể một cách hiệu quả hơn.', 0, 98),
(105, 'Samsung Galaxy Watch5', 19.00, 'dh-11.jpg', 'Sau thành công của dòng Galaxy Watch4, tháng 8/2022 ông lớn công nghệ Samsung đã cho ra mắt thế hệ smartwatch tiếp theo của hãng mang tên Samsung Galaxy Watch5 40mm.', 500, 98),
(106, 'Tai nghe Có Dây JBL C200 SIU ', 10.00, 'tainghe-7.jpg', 'Tai nghe Có Dây JBL C200 SIU với kiểu dáng trẻ trung, gam màu sang trọng, dạng tai nghe nhét tai cho âm thanh to, rõ hứa hẹn đem đến cho bạn những trải nghiệm âm nhạc sống động.', 0, 99),
(107, 'Tai nghe Chụp Tai Mozard IP-360', 12.00, 'tainghe-8.jpg', 'Được thiết kế đơn giản, chụp tai bản to bao trọn vùng tai, đệm mềm mại, cho bạn luôn cảm thấy thoải mái ngay cả khi đeo trong thời gian dài. Chiều dài dây dẫn tai nghe chụp tai đến 1.5 m dễ dàng phối ghép với các thiết bị, không sợ bị căng dây. \r\n\r\n', 0, 99),
(108, 'Tai nghe Chụp Tai Gaming Asus TUF H3', 22.00, 'tainghe-9.jpg', 'Nói về tai nghe gaming, sau bộ đôi tai nghe TUF Gaming H5 và H7, Asus tiếp tục cho ra mắt chiếc tai nghe chụp tai Gaming Asus TUF H3 Đen Đỏ, một mẫu tai nghe có mức giá rất phải chăng nhưng chất lượng lại hơn sự kỳ vọng. Cùng mình tìm hiểu vì sao đã ra mắt cũng hơn hai năm nhưng chiếc tai nghe này có gì đáng đặc biệt để review lại.', 0, 99),
(109, 'Tai nghe Chụp Tai Mozard IP-840', 25.00, 'tainghe-11.jpg', 'Tai nghe được hoàn thiện từ chất liệu nhựa với phần đệm đầu được làm bằng da êm ái, không đau đầu dù đeo lâu. Với 2 màu sắc xanh lá hoặc màu be tùy chọn, chiếc tai nghe on ear này vô cùng phù hợp cho các bạn trẻ hiện đại.', 0, 99),
(110, 'MacBook Air M2', 1000.00, 'laptop9.jpg', 'Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏng dần mang tính biểu tượng của MacBook Air đã đi vào lịch sử. Thay vào đó là một chiếc MacBook Air M2 với thiết kế hoàn toàn mới, độ dày không thay đổi tương tự như MacBook Pro, đánh bật mọi rào cản với con chip Apple M2 đầy mạnh mẽ.', 300, 96),
(111, 'Laptop Acer Aspire 3 A315 58 54XF i5 ', 900.00, 'laptop11.jpg', 'Nếu đang tìm kiếm một chiếc laptop học tập - văn phòng sở hữu thiết kế thanh lịch, hiện đại cùng thông số cấu hình đủ mạnh để vận hành mượt mà các tác vụ công việc thì laptop Acer Aspire 3 A315 58 54XF i5 (NX.AM0SV.007) là sự lựa chọn lý tưởng dành cho bạn.', 0, 96),
(112, 'Laptop Acer Nitro 5 Gaming', 950.00, 'laptop12.jpg', 'Laptop Acer Nitro 5 Gaming AN515 57 5669 i5 (NH.QEHSV.001) khơi nguồn mọi cảm hứng game thủ với phong cách thiết kế đậm chất gaming cùng những chuyển động mượt mà với card đồ họa NVIDIA GeForce GTX, mang lại chiến thắng tuyệt đối cho người dùng trên mọi chiến trường ảo.', 0, 96),
(113, 'Loa Bluetooth Rezo Home Series One', 20.00, 'loa4.jpg', 'Loa Bluetooth Rezo Home Series One sở hữu thiết kế độc đáo, nổi bật với đèn LED đa sắc, âm thanh 360 độ sống động, thời lượng pin lớn, mang đến cho bạn những buổi tiệc âm nhạc bất tận.\r\n', 0, 97),
(114, 'Loa Bluetooth JBL Partybox 110 ', 300.00, 'loa5.jpeg', 'Loa Bluetooth JBL Partybox 110 mang đến thiết kế sang trọng, trang bị đèn LED nổi bật, chất âm sống động,... hứa hẹn sẽ nâng cao trải nghiệm âm nhạc của bạn.', 0, 97),
(115, 'Loa Bluetooth AVA+ MiniPod Y23', 100.00, 'loa6.jpg', 'Loa Bluetooth có thiết kế nhỏ gọn, tròn trịa, dễ mang theo bên mình. ', 0, 97),
(116, 'Loa Bluetooth Sony SRS-XB100', 110.00, 'loa8.jpg', 'Loa Bluetooth Sony SRS-XB100 sở hữu kích thước nhỏ gọn, âm thanh mạnh mẽ và sắc nét, thời lượng pin sử dụng lâu dài, nhiều gam màu dễ dàng lựa chọn, mang đến không gian âm nhạc hoàn hảo trong phòng hay tiện lợi đem theo mở tiệc cùng bạn bè.', 0, 97),
(117, 'Loa Bluetooth Rezo Light Motion K118', 120.00, 'loa10.jpg', 'Loa Bluetooth Rezo Light Motion K118 sở hữu thiết kế sang trọng, nổi bật với đèn LED đa sắc, âm thanh 360 độ chân thực và sống động, thời lượng pin lớn, mang đến cho bạn những buổi tiệc âm nhạc hoàn hảo.', 0, 97),
(118, 'Loa Bluetooth JBL Partybox Encore 2Mic', 250.00, 'loa11.jpg', 'Loa Bluetooth JBL Partybox Encore 2Mic sở hữu hệ thống đèn LED nổi bật cùng thiết kế vuông vắn đẹp mắt, công nghệ âm thanh sống động và mạnh mẽ, tốc độ kết nối ổn định, tiện lợi sử dụng trong những bữa tiệc cá nhân và các buổi tụ họp bạn bè hàng ngày.', 0, 97),
(121, 'Loa Bluetooth Monster Sparkle ', 90.00, 'loa12.jpg', 'Loa Bluetooth Monster Sparkle với hệ thống đèn LED nổi bật cùng thiết kế thuôn dài đẹp mắt, công nghệ âm thanh sống động, tốc độ kết nối nhanh chóng, tiện lợi sử dụng trong những bữa tiệc cá nhân và các buổi tụ họp bạn bè hàng ngày.', 0, 97),
(122, 'Bàn Phím Cơ Có Dây Dareu EK75', 80.00, 'bp7.jpg', 'Bàn Phím Cơ Có Dây Dareu EK75 với layout nhỏ gọn theo phong cách hiện đại cùng đèn LED RGB giúp góc làm việc, học tập của bạn thêm phần màu sắc và đẹp mắt.', 0, 101),
(123, 'Bàn phím Gaming Asus', 100.00, 'bp8.jpg', 'Bàn phím Gaming Asus ROG Strix Scope NX TKL DELUXE RD SW Đen sở hữu kiểu dáng thời thượng, thiết kế hầm hố cùng hệ thống đèn LED RGB nổi bật, dễ dàng di chuyển mang theo bất cứ đâu, đồng thời tăng tính thẩm mỹ cho không gian của bạn.', 0, 101),
(124, 'Bàn Phím Cơ Bluetooth Rapoo V700 - 8A', 60.00, 'bp9.jpg', 'Bàn Phím Cơ Bluetooth Rapoo V700 - 8A có kiểu dáng tối giản cùng cách phối màu độc đáo, kích thước cực kỳ nhỏ gọn không chiếm quá nhiều diện tích khi đặt trên bàn làm việc, dễ dàng bỏ vào balo hay vali để mang theo bất cứ đâu.', 0, 101),
(125, 'Bàn phím Bluetooth A4tech FBX51C ', 70.00, 'bp10.jpg', 'Bàn phím Bluetooth A4tech FBX51C với thiết kế sang trọng, gam màu thời trang thu hút, khối lượng nhẹ giúp di chuyển dễ dàng, đảm bảo không gian làm việc tinh tế.', 0, 101),
(126, 'Bàn Phím Cơ Có Dây Gaming Corsair K63 Compact Mechanical', 120.00, 'bp11.jpeg', 'Bề mặt của bàn phím có màu đen cuốn hút cùng với đèn nền đỏ cho thiết kế cá tính, thời thượng, tô điểm cho phòng game của bạn thêm sành điệu. Khối lượng chỉ 500g, kích cỡ gọn gàng cất giữ hoặc mang theo khi đi du lịch đơn giản.', 0, 101),
(127, 'Pin sạc dự phòng 20W Xmobile DS611', 89.00, 'sdp1.jpg', 'Pin sạc dự phòng Polymer 5000mAh Không dây Magnetic Type C PD 20W Xmobile DS611 sở hữu thiết kế độc đáo, công nghệ sạc hiện đại, sạc dự phòng là món phụ kiện nhỏ gọn hỗ trợ nạp pin tiện lợi mỗi ngày, dễ dàng mang theo bất cứ đâu mà không lo chiếm nhiều diện tích.', 0, 102),
(128, 'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ DS2107', 60.00, 'sdp2.jpeg', 'Nguồn tích trữ năng lượng dồi dào cho bạn hoàn toàn yên tâm khi khám phá các vùng đất mới hoặc công tác ở những nơi thiếu nguồn điện, sạc dự phòng sẽ luôn đảm bảo điện thoại có đủ năng lượng để bạn xử lý công việc, chụp ảnh, quay video khi cần.', 0, 102),
(129, 'Pin sạc dự phòng Polymer 10000mAh Type C 10W AVA+ PB100S', 90.00, 'sdp3.jpg', 'Kết hợp với hiệu suất sạc ấn tượng 65%, AVA+ PB100S có thể sạc được cho iPhone 11 Pro Max tầm 1.6 lần. Thiết bị có độ tương thích cao với nhiều dòng máy nên bạn có thể cấp năng lượng được cho đa dạng thiết bị từ điện thoại, máy tính bảng đến quạt mini, tai nghe Bluetooth.', 0, 102),
(130, 'Pin sạc dự phòng Polymer 10000mAh Type C 12W AVA+ PJ JP260', 89.00, 'sdp4.jpg', 'Với dung lượng sạc dự phòng 10.000 mAh, hiệu suất sạc lên đến 65%, AVA+ PJ JP260 đáp ứng nhu cầu sử dụng các thiết bị di động cường độ cao của mọi đối tượng, cho bạn hoàn toàn thoải mái xem phim, \"tám chuyện\" cả ngày mà không còn lo lắng về vấn đề hết pin điện thoại.', 0, 102),
(131, 'Pin sạc dự phòng 10000mAh Type C PD QC3.0 20W Xmobile Y73', 69.00, 'sdp5.jpg', 'Pin sạc dự phòng 10000mAh Type C PD QC3.0 20W Xmobile Y73 sở hữu vẻ ngoài ấn tượng, thiết kế tương đối nhẹ chỉ với 216 g, dung lượng pin lớn, hứa hẹn mang đến cho bạn những trải nghiệm tối ưu.\r\n', 0, 102),
(132, 'Pin sạc dự phòng Polymer 10000mAh Type C PD 22.5W Baseus Comet PPMD10', 99.00, 'sdp6.jpg', 'Pin sạc dự phòng Polymer 10000mAh Type C PD 22.5W Baseus Comet PPMD10 kèm Cáp Lightning và Type C sở hữu thiết kế thanh lịch, chất liệu pin sạc bền bỉ. Bên cạnh đó, sạc dự phòng còn được tích hợp dung lượng pin lớn kèm công nghệ sạc ấn tượng, hứa hẹn không làm cho người dùng phải thất vọng.', 0, 102),
(133, 'Pin sạc dự phòng Polymer 10000mAh 20W Xmobile T156 ', 59.00, 'sdp7.jpg', 'Pin sạc dự phòng Polymer 10000mAh Không dây Magnetic Type C PD 20W Xmobile T156 sở hữu kiểu dáng tối giản cùng đế đỡ gập gọn vô cùng tiện lợi, đa dạng màu sắc để bạn dễ dàng lựa chọn, sạc không dây nhanh chóng và tiện lợi.', 0, 102),
(134, 'Laptop Acer Aspire 3 A315 59 314F i3', 320.00, 'laptop13.jpg', 'Nếu bạn đang tìm kiếm một chiếc laptop học tập - văn phòng thì laptop Acer Aspire 3 A315 59 314F i3 (NX.K6TSV.002) sẽ là sự lựa chọn lý tưởng đáp ứng đủ nhu cầu với bộ vi xử lý Intel thế hệ thứ 12 mạnh mẽ, thiết kế linh động dễ dàng mang theo mọi lúc mọi nơi.', 0, 96),
(135, 'Laptop Asus Gaming ROG Strix SCAR 16 G634JZ i9', 400.00, 'laptop14.jpg', 'Laptop Asus Gaming ROG Strix SCAR 16 G634JZ i9 (N4029W) được thiết kế với cấu hình mạnh mẽ, hiệu năng tốt giúp nâng cao trải nghiệm đồ họa, cho bạn chơi game mượt mà và xử lý công việc với hiệu suất cao.', 0, 96),
(136, 'Laptop Acer Gaming Predator Helios Neo 16 PHN16 71 7460 i7', 350.00, 'laptop15.jpg', 'Acer Predator tiếp tục nâng cấp mạnh mẽ các dòng laptop gaming với sự xuất hiện của laptop Acer Gaming Predator Helios Neo 16 PHN16 71 7460 i7 13700HX (NH.QLTSV.004) – phiên bản hoàn toàn mới của Predator Helios Neo 16 mang đến những game thủ với mong muốn chinh phục được những trận chiến đỉnh cao.', 0, 96),
(137, 'iPhone 14 ', 350.00, 'ip-6.jpg', 'iPhone 14 128GB được xem là mẫu smartphone bùng nổ của nhà táo trong năm 2022, ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút được đông đảo người dùng quan tâm tại thời điểm ra mắt.', 0, 95),
(138, 'iPhone 15 Plus', 420.00, 'ip-7.jpg', 'iPhone 15 plus 128GB được xem là mẫu smartphone bùng nổ của nhà táo trong năm 2023, ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút được đông đảo người dùng quan tâm tại thời điểm ra mắt.', 0, 95),
(139, 'Chuột Có dây Gaming Asus TUF M3', 25.00, 'c1.jpg', 'Chuột Gaming Asus TUF M3 Đen có thiết kế nhỏ gọn, cùng chất liệu nhựa có độ ma sát cao giúp cho việc cầm nắm chắc chắn hơn. Thiết kế công thái học phù hợp với người thuận tay phải. Trọng lượng chỉ 84 gram khá nhẹ, tiện dụng.', 0, 103),
(140, 'Chuột Bluetooth Silent Logitech M240 ', 30.00, 'c2.jpg', 'Chuột Bluetooth Silent Logitech M240 với kiểu dáng gọn gàng, gam màu đẹp mắt, kích thước vừa vặn tay cầm, kết nối ổn định cùng độ nhạy khá cao, hứa hẹn mang đến cho bạn những trải nghiệm tuyệt vời.', 0, 103),
(141, 'Chuột Có dây Gaming Razer DeathAdder Essential', 29.00, 'c3.jpg', 'Chuột có dây thiết kế công thái học thoải mái tay cầm, thao tác thuận tiện.', 0, 103),
(142, 'Chuột Bluetooth Microsoft Modern Mobile KTF', 39.00, 'c4.jpeg', 'Chuột máy tính Microsoft có kiểu dáng hình chữ nhật gọn gàng, tinh xảo trong từng chi tiết, 4 gam màu gồm đen, xanh lá nhạt, xanh lam và hồng cho bạn lựa chọn dễ dàng theo sở thích, nhu cầu của mình. Kích thước vừa vặn cho bạn di chuyển nhẹ nhàng trong khi làm việc, giải trí. Chất liệu nhựa nhám giúp cho bề mặt chuột không bị bám vân tay khi dùng.\r\n\r\n', 0, 103),
(143, 'Chuột Có dây Gaming Corsair M55 RGB Pro', 35.00, 'c5.jpeg', 'Khối lượng nhẹ chỉ 86 g, kiểu dáng thiết kế công thái học kết hợp cao su hai bên tăng độ bám chắc.', 0, 103),
(144, 'Chuột Bluetooth Apple MK2E3 ', 39.00, 'c6.jpg', 'Chuột Apple MK2E3 làm việc hiệu quả cùng các thiết bị vận hành trên hệ điều hành MacOS.', 0, 103),
(145, 'Chuột Có dây Gaming Logitech G102 Gen2 Lightsync', 29.00, 'c7.jpg', 'Mệnh danh là một “siêu chuột quốc dân\" Logitech G102 Gen 2 Lightsync sở hữu hiệu năng cực cao cùng loạt tính năng: dải LED 16.8 triệu màu, nút bấm bền bỉ, chân chuột dày trơn mượt kèm theo một mức giá hầu bao phù hợp với những bạn muốn sự đơn giản nhưng vẫn đi đôi với chất lượng.', 0, 103),
(146, 'Chuột Có dây Gaming MSI Clutch GM20 Elite ', 40.00, 'c8.jpg', 'Chuột Có dây Gaming MSI Clutch GM20 Elite với thiết kế công thái học thuận tiện cho tay cầm, mang đậm phong cách trò chơi mạnh mẽ, cảm biến cao bắt trọn mọi chuyển động, chất lượng xứng đáng với giá tiền, mang đến cho bạn những trải nghiệm chơi game tuyệt đỉnh.', 0, 103),
(147, 'Chuột Có dây Gaming Genius Scorpion M700 ', 45.00, 'c9.jpg', 'Chuột Có dây Gaming Genius Scorpion M700 với thiết kế nhỏ gọn, vừa vặn tay cầm, kiểu dáng năng động, độ phân giải cao cho phản hồi chính xác ở từng thao tác, hỗ trợ kết nối nhanh chóng qua dây cắm cổng USB, mang đến cho bạn những trải nghiệm hoàn hảo nhất.', 350, 103),
(148, 'Sạc Anker Nano 3 A2417', 25.00, 'sac1.jpg', 'Sạc Anker Nano 3 A2417 với thiết kế nhỏ gọn tựa như một hình lập phương, Adapter dễ dàng cho phép bạn cầm gọn trong lòng bàn tay, cất giữ và mang theo đều vô cùng tiện lợi.', 0, 104),
(149, 'Cáp Type C - Type C 2m Apple MLL82 ', 15.00, 'cap1.jpg', 'Cáp Type-C - Type-C 2 m Apple MLL82 Trắng thiết kế với màu trắng sang trọng, tinh tế', 0, 104),
(150, 'Camera IP 360 Độ 3MP BOTSLAB C212', 40.00, 'camera1.jpg', 'Camera IP 360 Độ 3MP BOTSLAB C212 có thiết kế nhỏ gọn, dễ dàng lắp đặt, cùng nhiều tiện ích thông minh như phát hiện chuyển động, theo dõi chuyển động ở góc nhìn lên tới 360 độ, báo động khi có âm thanh bất thường,... hứa hẹn sẽ đem lại nhiều trải nghiệm thú vị cho người dùng.', 0, 105),
(151, 'Camera IP 360 Độ 5MP IMOU Rex 2D GK2DP ', 30.00, 'camera2.jpg', 'Camera IP 360 Độ 3K IMOU Rex 2D GK2DP với thiết kế tinh gọn, gam màu sang trọng bóng bẩy, sản phẩm hỗ trợ ghi lại chất lượng hình ảnh cao, lưu trữ dữ liệu 21 - 30 ngày trên thẻ nhớ.', 0, 105),
(152, 'Cáp Type C - Type C 2m Baseus Glimmer CB000025', 25.00, 'cap5.jpg', 'Cáp Type C - Type C 2m Baseus Glimmer CB000025 là dạng cáp sạc nhanh 100 W, kích thước dây lên đến 2 m tiện lợi sử dụng, được bao phủ bởi chất liệu bền bỉ và chắc chắn, dễ dàng bỏ vào balo hay túi xách mang theo bất cứ đâu.', 0, 104);

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
(1, 'DUCR7', '201103', 'tcdu2003@gmail.com', '30 Dong tri 2', '0985527084', 2),
(6, 'admin', '12345', 'duyet123@gmail.com', 'Ha Noi', '0336738', 1),
(29, 'sa', '080379', 'sabui081079@gmail.com', '392 Hoàng Văn Thụ', '0961049779', 0);

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
