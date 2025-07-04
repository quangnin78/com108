-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2025 lúc 03:25 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ID` int(11) NOT NULL,
  `ma_san_pham` varchar(10) NOT NULL,
  `ten_san_pham` varchar(200) DEFAULT NULL,
  `hinh_anh` varchar(400) NOT NULL,
  `gia` decimal(12,0) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ID`, `ma_san_pham`, `ten_san_pham`, `hinh_anh`, `gia`, `so_luong`) VALUES
(1, 'SP001', 'Mác búc Air Mờ 3 bờ rồ', '', 30000000, 3),
(2, 'SP002', 'LAPTOP DELL', '', 150000000, 6),
(3, 'SP003', 'Iphone 15 pờ rồ mắc', '', 35000000, 9),
(4, 'SP004', 'Mác búc', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/a/i/air_m2.png', 40000000, 10),
(5, 'SP005', 'TV thông minh', 'asset\\img\\Screenshot_1.png', 12000000, 6),
(6, 'SP011', 'Tivi sắp thông minh', 'upload', 88888, 88),
(12, 'SP013', 'Đeo XPS', 'asset/img/—Pngtree—running teenager silhouette advertising background_946816.jpg', 20000000, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sys_user`
--

CREATE TABLE `sys_user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sys_user`
--

INSERT INTO `sys_user` (`id`, `user_name`, `password`, `email`) VALUES
(1, 'admin', '1111', 'haminhthuy.ait@gmail.com'),
(3, 'admin2', '122', 'thuyhm@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UN_USER_NAME` (`user_name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
