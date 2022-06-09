-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 06:36 AM
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
  `nik` varchar(100) NOT NULL,
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

INSERT INTO `participants` (`id`, `nik`, `name`, `address`, `phone`, `email`, `lang_level`, `ipk`, `program`, `date_entry`, `date_created`, `is_active`) VALUES
(1, '0', 'Anas Berkata', 'Protanmas Samolo Indah Blok C5 No. 15 Desa Babakancaringin Karangtengah Cianjur', '083817002151', 'anasberkata@gmail.com', 'Excellent', '3.83', 'Design', '2022-03-09', '2022-03-09', 1),
(2, '3203061502920012', 'Eka Anas Jatnika', 'Sarijadi Blok 24 No. 80 Bandung', '085156334607', 'ideanasdesain@gmail.com', 'Excellent', '3.83', 'Engineering', '2022-03-09', '0000-00-00', 1),
(3, '0', 'Dela Sri Faujiah', 'Cianjur', '088177651671', 'dela@gmail.com', 'Good', '3.83', 'Ryuugakusei', '2022-03-09', '0000-00-00', 1),
(9, '0', 'Muhamad Fajriansyah', 'Cibeber Cianjur', '08928176276', 'fajrihacker@gmail.com', 'God', '3.21', 'Ryuugakusei', '2022-03-10', '2022-03-10', 1),
(11, '0', 'Eross Chandra', 'Yogyakarta', '0898747586478', 'eross@gmail.com', 'good', '3.00', 'Desainer', '2022-03-18', '2022-03-19', 1),
(12, '0', 'Rianto Ferdinan', 'Cianjur Raya', '098781761761', 'Rio@gmail.com', 'Good', '3.45', 'Desainer', '2022-03-17', '2022-03-19', 1),
(13, '0', 'Akew', 'b', '0898', 'e@g.com', 'go', '3.4', 'Magang Kontruksi', '2022-02-28', '2022-03-28', 1),
(14, '320306', 'Kukur Cikukur', 'Cianjur', '0871652637617', 'edan@gmail.com', 'Good', '3.34', 'Magang Kontruksi', '2022-06-09', '2022-06-09', 1);

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
(5, 'Bawang Putih Menangis', '2022-03-12', 'Tg Pertanian', 'Kumiai', 'Kumiai', 'Cianjur', '2022-03-10', 1),
(7, 'Hamdani Supratman', '2022-03-05', 'Magang Pabrik Kerupuk', 'Kerupuk Udang', 'Kerupuk Udang', 'Bandung', '2022-03-19', 1),
(8, 'Akew', '2022-02-27', 'Magang Kontruksi', 'sa', 'satu', 'rasi', '2022-03-28', 1),
(9, 'amir', '2022-03-05', 'Tg Pertanian', 'bna', 'bna', 'cianjur', '2022-03-29', 1);

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
(2, 'Didin Rohidin', 'Magang Pengolahan Makanan', '2022-03-10', 'Dela', 500000, 'SPP Juni', '2022-03-10', 1),
(4, 'Anas Berkata', 'Engineering', '2022-03-24', 'Dela', 340000, 'Konsumsi Lunas', '2022-03-24', 1),
(5, 'Didin Rohidin', 'Magang Perawat', '2022-03-28', 'Dela', 300000, 'SPP April', '2022-03-28', 1),
(6, 'Dera Albar', 'Ryuugakusei', '2022-03-30', 'Dela', 1500000, 'Bayar Bangunan', '2022-03-29', 1),
(7, 'Anas Berkata', 'Engineering', '2022-02-01', 'Dela', 300000, 'Uang Makan', '2022-03-31', 1),
(8, 'Anas Berkata', 'Engineering', '2022-01-19', 'Dela', 200000, 'Uang Makan', '2022-03-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_journal`
--

CREATE TABLE `petty_cash_journal` (
  `id` int(11) NOT NULL,
  `output_type` varchar(255) NOT NULL,
  `details` varchar(10000) NOT NULL,
  `nominal` int(11) NOT NULL,
  `date_payment` date NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petty_cash_journal`
--

INSERT INTO `petty_cash_journal` (`id`, `output_type`, `details`, `nominal`, `date_payment`, `date_created`, `is_active`) VALUES
(2, 'Uang Makan Karyawan', 'Beban Uang Makan Karyawan', 4270000, '2022-01-18', '2022-06-07', 1),
(3, 'Konsumsi', 'Beban Konsumsi', 12847700, '2022-01-20', '2022-06-07', 1),
(7, 'Biaya Listrik', 'Listrik Gedung 1 & Listrik Gedung 2', 1000000, '2022-02-16', '2022-06-09', 1);

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
(2, 'Internet', 2500000, '2022-03-11', '2022-03-10', 1),
(5, 'Hospitalist', 300000, '2022-02-01', '2022-03-16', 1),
(6, 'Uang Makan', 570000, '2022-03-19', '2022-03-19', 1),
(7, 'Iuran Wajib Lingkungan (RT/Sampah)', 30000, '2022-02-17', '2022-03-19', 1),
(8, 'Transport Luar Negeri', 23000000, '2022-03-23', '2022-03-23', 1),
(9, 'Gaji', 4000000, '2022-02-25', '2022-03-23', 1),
(10, 'Biaya Listrik', 250000, '2022-03-28', '2022-03-29', 1),
(11, 'Biaya Air', 425000, '2022-03-30', '2022-03-29', 1);

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
(1, 'Eka Anas Jatnika', 'anasberkata', 'ideanasdesain@gmail.com', '$2y$10$ZokNofyyqCwnVjJkoEWoUuUSH9trHRP/Rs4Mx5letlvZIB2upi2G.', 'anas.jpg', 1, 1, '2022-03-07'),
(2, 'Direktur', 'direktur', 'direktur@mirainohashi.co.id', '$2y$10$lOfg.qqEYx9jUYClWfA2wuekCSGt5ADqLVUMKiZxKCHFOOd90xBAe', 'admin.jpg', 2, 1, '2022-03-07'),
(3, 'Admin 01', 'admin01', 'admin01@mirainohashi.co.id', '$2y$10$72tdhRa1SDNSHkKNQzdU3uC/EDrUTIaZFtgKsRIdlMKwDv7X28TRm', 'manager.jpg', 3, 1, '2022-03-07'),
(7, 'Admin 02', 'admin02', 'admin02@mirainohashi.co.id', '$2y$10$0yz26.c/4rMlX/ziS4oxeup1WCFhlTQCiCPbMUpXpPdrO4XdTaLqa', 'default.jpg', 3, 1, '2022-03-25');

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
(2, 1, 4),
(3, 1, 5),
(4, 2, 2),
(5, 2, 4),
(6, 3, 3);

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
(2, 'Direktur', 2),
(3, 'Admin', 3),
(4, 'User', 4),
(5, 'Menu', 5);

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
(1, 'Super'),
(2, 'Direktur'),
(3, 'Admin');

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
(6, 3, 'Dashboard', 'admin', 'bi bi-grid-fill', 1),
(7, 3, 'Peserta', 'participant', 'bi bi-person-square', 1),
(8, 4, 'User', 'user/users', 'bi bi-people', 1),
(9, 4, 'My Profile', 'user', 'bi bi-person-fill', 1),
(10, 2, 'Dashboard', 'admin', 'bi bi-grid-fill', 1),
(11, 2, 'Peserta', 'participant', 'bi bi-person-square', 1),
(12, 2, 'Peserta CoE', 'coe', 'bi bi-person-bounding-box', 1),
(13, 2, 'Data Keuangan', 'payment', 'bi bi-wallet', 1),
(14, 2, 'Laporan Keuangan', 'report', 'bi bi-wallet-fill', 1),
(17, 3, 'Peserta CoE', 'coe', 'bi bi-person-bounding-box', 1),
(19, 1, 'Jurnal Kas Kecil', 'petty_cash_journal', 'bi bi-cash', 1),
(20, 2, 'Jurnal Kas Kecil', 'petty_cash_journal', 'bi bi-cash', 1);

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
-- Indexes for table `petty_cash_journal`
--
ALTER TABLE `petty_cash_journal`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `participants_coe`
--
ALTER TABLE `participants_coe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `petty_cash_journal`
--
ALTER TABLE `petty_cash_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
