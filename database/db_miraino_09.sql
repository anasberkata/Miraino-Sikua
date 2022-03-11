-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2022 at 07:22 PM
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
-- Database: `db_miraino`
--

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `lang_level` varchar(128) NOT NULL,
  `ipk` varchar(128) NOT NULL,
  `program` varchar(255) NOT NULL,
  `date_entry` date NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `name`, `address`, `phone`, `email`, `lang_level`, `ipk`, `program`, `date_entry`, `date_created`, `is_active`) VALUES
(1, 'Anas Berkata', 'Protanmas Samolo Indah Blok C5 No. 15', '083817002151', 'anasberkata@gmail.com', 'Excellent', '3.83', 'Design', '2022-03-09', '2022-03-09', 1),
(2, 'Eka Anas Jatnika', 'Sarijadi Blok 24 No. 80 Bandung', '085156334607', 'ideanasdesain@gmail.com', 'Excellent', '3.83', 'Engineering', '2022-03-09', '0000-00-00', 1),
(3, 'Dela Sri Faujiah', 'Cianjur', '088177651671', 'dela@gmail.com', 'Good', '3.83', 'Ryuugakusei', '2022-03-09', '0000-00-00', 1),
(4, 'Azka Siti Muzakiyah', 'Protanmas Samolo Indah Blok C5 No 15', '085156334607', 'azka@gmail.com', 'Good', '3.83', 'Engineering', '2022-03-09', '0000-00-00', 1),
(9, 'Muhamad Fajriansyah', 'Cibeber Cianjur', '08928176276', 'fajrihacker@gmail.com', 'God', '3.21', 'Ryuugakusei', '2022-03-10', '2022-03-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants_coe`
--

CREATE TABLE `participants_coe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `program` varchar(128) NOT NULL,
  `kumiai_name` varchar(255) NOT NULL,
  `office_name` varchar(255) NOT NULL,
  `placement` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants_coe`
--

INSERT INTO `participants_coe` (`id`, `name`, `issue_date`, `program`, `kumiai_name`, `office_name`, `placement`, `date_created`, `is_active`) VALUES
(1, 'Anas Berkata Aja', '2022-03-10', 'Engineering', 'Saturasi', 'Saturasi', 'Bandung', '2022-03-10', 1),
(3, 'M Fajriansyah', '2022-03-10', 'Tg Perawat', 'Saturasi', 'Saturasi', 'Bandung', '2022-03-10', 1),
(5, 'Kakap Merah & Kakap Putih', '2022-03-12', 'Tg Pertanian', 'Kumiai', 'Kumaha Sia', 'Cianjur', '2022-03-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `date_payment` date NOT NULL,
  `person_responsible` varchar(255) NOT NULL,
  `nominal` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `program`, `date_payment`, `person_responsible`, `nominal`, `description`, `date_created`, `is_active`) VALUES
(1, 'Anas Berkata', 'Engineering', '2022-03-10', 'Dela', 300000, 'Pendaftaran', '2022-03-10', 1),
(2, 'Didin Rohidin', 'Magang Pengolahan Makanan', '2022-03-10', 'Dela', 350000, 'SPP Juni', '2022-03-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `output_type` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `date_payment` date NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `output_type`, `nominal`, `date_payment`, `date_created`, `is_active`) VALUES
(1, 'Gaji', 4500000, '2022-03-11', '2022-03-11', 1),
(2, 'Internet', 1500000, '2022-03-11', '2022-03-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Eka Anas Jatnika', 'anasberkata', 'ideanasdesain@gmail.com', '$2y$10$mj7hHAD9DIauc7Z8tjnDs.jiXEDADH/IbgqjHXVlk6rmssNVV0QUa', 'anas.jpg', 1, 1, '2022-03-07'),
(2, 'Admin Miraino', 'admin', 'admin@miraino.com', '$2y$10$.QkcSRy3CUv5b35/eiUZj.qUYhsFuZhuusZUWxOQGLvLhk25rry.O', 'admin.jpg', 2, 1, '2022-03-07'),
(3, 'Manager', 'manager', 'manager@miraino.com', '$2y$10$nIYCUd6de5ZpzZDAsdLE7eyhf0KdIYJuJPrZysJwRz9sKPzAm/68S', 'manager.jpg', 2, 1, '2022-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 2, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `menu_order`) VALUES
(1, 'Super', 1),
(2, 'Admin', 2),
(3, 'User', 3),
(4, 'Menu', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'super'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'super', 'bi bi-grid-fill', 1),
(2, 1, 'Peserta', 'participant', 'bi bi-person-square', 1),
(3, 1, 'Peserta CoE', 'coe', 'bi bi-person-bounding-box', 1),
(4, 1, 'Data Keuangan', 'payment', 'bi bi-wallet', 1),
(5, 1, 'Laporan Keuangan', 'report', 'bi bi-wallet-fill', 1),
(6, 3, 'User', 'user', 'bi bi-person', 1),
(7, 4, 'Menu Management', 'menu', 'bi bi-list', 1),
(8, 4, 'Submenu Management', 'menu/submenu', 'bi bi-list-nested', 1),
(9, 2, 'Dashboard', 'admin', 'bi bi-grid-fill', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants_coe`
--
ALTER TABLE `participants_coe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `participants_coe`
--
ALTER TABLE `participants_coe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
