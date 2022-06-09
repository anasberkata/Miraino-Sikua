-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2022 at 11:17 PM
-- Server version: 10.2.43-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mira1963_sik`
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
(14, '', 'JULIANTO SILALAHI', 'Dusun I Malasori RT/RW 000/000 Kel. Malasori, Kec. Dolok Masihul, Kab. Serdang Bedagai, Sumatera Utara', '081290721543', 'csakun003@gmail.com', 'BAB 50', 'LPK Gapindo', 'Magang Kontruksi', '2022-11-16', '2022-03-31', 1),
(15, '', 'HAIRUL ANWAR', 'KP. Kebantenan RT/RW 002/006 Kel. Jati Asih, Kec. Jati Asih, Kota Bekasi, Jawa Barat', '081290837207', 'irul021193@gmail.com', 'BAB 50', 'MANDIRI', 'Magang Kontruksi', '2021-10-27', '2022-03-31', 1),
(16, '', 'A A GEDE NGURAH RADITYA SAPUTRA', 'Banjar Tibu Beleng Kelod RT/RW 000/000 Kel. Penyaringan, Kec. Mendoyo, Kab. Jembrana, Bali', '087858770983 / 085847976540', 'Radityasaputra0705@gmail.com', 'BAB 50', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-11-26', '2022-03-31', 1),
(17, '', 'I PUTU ARYA JUNI ASTRAWAN', 'Banjar Menduk RT/RW 000/000 Kel. Pohsaten, Kec. Mendoyo, Kab. Jembrana, Bali', '085738543534', 'Aryajuni477@gmail.com', 'BAB 50', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-12-20', '2022-03-31', 1),
(19, '', 'MUHAMMAD RIZKY CANDRA', 'Dusun I Jl. Pelita Tg. RT/RW 000/000 Kel. Tanjung Mulya, Kec. Hinai, Lab. Langkat, Sumatera Utara', '085262529616', 'candramuhammad04@gmail.com', 'N4', 'LPK Gapindo', 'Magang Kontruksi', '2021-05-28', '2022-03-31', 1),
(20, '', 'RIMHOT SITANGGANG', 'Sosor Galung RT/RW 000/000 Kel. Tomok Parsaorang, Kec. Simanindo, Kab. Samosir, Sumatera Utara', '088263760809', 'rimhotsitanggang26@gmail.com', 'BAB 50', 'LPK Gapindo', 'Magang Kontruksi', '2021-11-16', '2022-03-31', 1),
(21, '', 'I PUTU ADI SUMADIANA', 'Banjar Petapan RT/RW 000/000 Kel. Pergung, Kec. Mendoyo, Kab. Jembrana, Bali', '085932166012', 'tuadi8885@gmail.com', 'BAB 50', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2022-01-05', '2022-03-31', 1),
(22, '', 'FIKRI SHOLEHUL AKBAR', 'Blok Tisem RT/RW 003/001 Kel. sendang, Kec. KarangAmpel, Kab. Indramayu, Jawa Barat', '081316105052', 'fikriakbar949@gmail.com', 'BAB 50', 'LPK Itsuka Juu', 'Magang Pertanian', '2021-12-13', '2022-03-31', 1),
(23, '', 'RUSTAM SURYADI PANJAITAN', 'Simpang Kerikil RT/RW 002/003 Kel. Kandis Kota, Kec. Kandis, Kab. Siak, Riau', '082276373898', 'rustam_s_yanjaittan@gmail.com', 'BAB 50', 'LPK Gapindo', 'Magang Kontruksi', '2021-11-16', '2022-03-31', 1),
(24, '', 'ELVANY FEBRIANTI', 'Kertobanyon RT/RW 006/002 Kel. Kertobanyon, Kec. Geger Kab. Madiun, Jawa Barat', '089525459457', 'elvanyfebri@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Perawat', '2021-05-25', '2022-04-04', 1),
(25, '', 'EMIL ZHABIL FAUZIA', 'Dusun Krajan I RT/RW 005/001 Kel. Gintungkerta, Kec. Klari, Kab. Karawang, Jawa Barat', '085846219458', 'emilfauzia26@gmail.com', 'BAB 30 / N5', 'LPK PMS KARAWANG', 'Magang Pengolahan Makanan', '2021-05-25', '2022-04-04', 1),
(26, '', 'SRI ANISA RAHAYU', 'Dusun Margatani RT/RW 002/003 Kel. Ciasem Baru, Kec. Ciasem, Kab. Subang, Jawa Barat', '082110053121', 'Srianisarahayu@gmail.com', 'BAB 30', 'LPK PUDJI UTAMI', 'Magang Pengolahan Makanan', '2021-05-25', '2022-04-04', 1),
(27, '', 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Perum Pesona Jl. Rajawali BB 11/11 RT/RW 054/010 Kel. Karyasari, Kec. Rengasdengklok, Kab. Karawang, Jawa Barat', '081385663986', 'firdausdiego201@gmail.com', 'N4', 'LPK PMS KARAWANG', 'Magang Kontruksi', '2021-04-01', '2022-04-04', 1),
(28, '', 'SHIFA RAFIFAH', 'Perum mega Regency Blok C 31 No. 22 RT/RW 009/007 Kel. sukasari, Kec. Serang Baru, Kab. Bekasi, Jawa Barat', '085880707824', 'shifarafifah11@gmail.com', 'BAB 50', 'LPK MOMOTARO', 'Magang Pengolahan Makanan', '2021-11-16', '2022-04-04', 1),
(29, '', 'DYAH NUR SAPUTRI', 'Perum Terangsari Blok J 8 No. 24 RT/RW 004/007 Kel. Cibalongsari, Kec. Klari, Kab. Karawang, Jawa Barat', '082125266469', 'dyahnursaputri01@gmail.com', 'N5', 'LPK PMS KARAWANG', 'Magang Pengolahan Makanan', '2021-03-25', '2022-04-04', 1),
(30, '', 'REDI HERIANTO', 'Rena Panjang RT/RW 000/000 Kel. Rena Panjang, Kec. Lubuk Sandi, Kab. Seluma, Bengkulu', '082186536400', 'rediherianto99@gmail.com', 'BAB 50', 'MANDIRI', 'Magang Kontruksi', '2021-04-05', '2022-04-04', 1),
(31, '', 'IBNU ABBAS ALFAROQHI', 'Dusun 2 RT/RW 009/003 Kel. Sri Sawahan, Kec. Punggur, Kab. Lampung Tengah, Lampung', '085840109482', 'alfaroqhi@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-05-27', '2022-04-04', 1),
(32, '', 'GUNTUR DARMAWAN', 'Dusun Tanjung Anom RT/RW 003/002 Kel. Negara Ratu Wates, Kec. Tegineneng, Kab. Pesawaran, Lampung', '085768616450', 'gunturdarmawan0@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-05-19', '2022-04-04', 1),
(33, '', 'UTTA FIANNA PUTRI', 'Kalipakis RT/RW 001/001 Kel. Kalipakis, Kec. Sukorejo, Kab. Kendal, Jawa Tengah', '082220477280', 'Uttafianna@gmail.com', 'N3', 'LPK AKENO GAKUEN', 'Magang Perawat', '2021-04-27', '2022-04-04', 1),
(34, '', 'PUTRI', 'Blok Bogor RT/RW 011/004 Kel. Temiyang, Kec. Kroya, Kab. Indramayu, Jawa Barat', '085711059013', 'puputri0702@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-05-25', '2022-04-04', 1),
(36, '', 'AGUNG ALI WASKITO', 'Jl. Nangka LK VII RT/RW 000/000 Kel. Suka Maju, Kec. Binjai Barat, Kab. Binjai, Sumatera Utara', '083199870749', 'Agungali1602@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Kontruksi', '2021-05-25', '2022-04-04', 1),
(37, '', 'SRI MARYATI DAMANIK', 'Parsaguan Siboulangit RT/RW 000/000 Kel. Simpang Raya, Kec. Panei, Kab. Simalungun, Sumatera Utara', '081995596466', 'Srimaryatidamanik1@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Perawat', '2021-05-25', '2022-04-04', 1),
(38, '', 'RIPALDO HASUDUNGAN LIMBONG', ' Jl. Agate Utara H 10/38 Regency RT/RW 003/018 Kel. Cikampek Utara, Kec. Kota Baru, Kab. Karawang, Jawa Barat', '081218448551', 'ripaldolimbong24@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Kontruksi', '2021-05-25', '2022-04-04', 1),
(39, '', 'YOGA ARI SANDI', 'Karang Rejo RT/RW 024/006 Kel. Karang Rejo, Kec. Metro Utara, Kota Metro, Lampung', '086366817581', 'yogarisandi876@gmail.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-06-29', '2022-04-04', 1),
(40, '', 'ADI SATYA MUKTI', 'Lingk Ngemplak RT/RW 003/001 Kel. Bawen, Kec. Bawen, Kab. Semarang, Jawa Tengah', '085792362565', 'adisatya416@gmail.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-06-14', '2022-04-04', 1),
(41, '', 'AMELIA', 'Kejobong RT/RW 010/005 Kel. Kejobong, Kec. Kejobong, Kab. Purbalingga, Jawa Tengah', '082226436873', 'Amel9956@gmail.com', 'N5', 'LPK MIRAINO HASHI JAYA', 'Magang Pengolahan Makanan', '2021-08-12', '2022-04-04', 1),
(42, '', 'GRESA JUNIO SRIBU', 'Gandu RT/RW 002/003 Kel. Plosorejo, Kec. Matesih, Kab. Karang Anyar, Jawa Tengah', '082324373287', 'Juniosribu@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(43, '', 'DIMAS ADI SEPTIAN', 'Ngampin Kulon RT/RW 001/002 Kel. Ngampin, Kec. Ambarawa, Kab. Semarang, Jawa Tengah', '081392317169', 'Dimasadi796@gmai.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(44, '', 'I KOMANG ADI PUTRA', 'Banjar Munduk RT/RW 000/000 Kel. Pohsanten, Kec. Mendoyo, Kab. Jembrana, Bali', '085847875866', 'komangadiputra1509@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(45, '', 'JEPRI YULIANTO', '-', '081238354500', 'jefryyuliyanto@gmail.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(46, '', 'I MADE WIRA KUSUMA', 'Banjar Dauh Marga RT/RW 000/000 Kel. Delod Berawah, Kec. Mendoyo, Kab. Jembrana, Bali', '083115954605', 'madewirakusuma02@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(47, '', 'REZA MAULANA HAQ', 'Kali Bening RT/RW 003/004 Kel. Kebon dalem, Kec. Jambu, Kab. Semarang, Jawa Tengah', '085950825114', 'Rezamaulanahaq@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(48, '', 'I KOMANG ADI WIRAWAN', 'Lingkungan Dlod Bale agung RT/RW 000/000 Kel. Tegal cangkring, Kec. mendoyo, Kab. Jembrana, Bali', '081337196312', 'Adiwirawan147@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(49, '', 'I GEDE ANDIKA MAHESA PUTRA', 'Banjar Dinas Desa RT/RW 000/000 Kel. Galunga, Kec. Sawan Kab. Buleleng, Bali', '08873435282', 'andikayashiro@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(50, '', 'I PUTU GEDE SUDANA MERTA', 'Banjar Pangkung Languan Mekar RT/RW 000/000 Kel. Yeh Sumbul, Kec. Mendoyo, Kab. Jembrana, Bali', '0895705920906', 'sudanamerta123@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pertanian', '2021-09-06', '2022-04-04', 1),
(51, '', 'I GUSTI PUTU CANDRA WIDIADNYANA', 'Banjar Puana RT/RW / Kel. Tegal Badeng Barat, Kec. Negara, Kab. Jembrana, Bali', '081547311309', 'Balioppo420@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-09-20', '2022-04-04', 1),
(52, '', 'I KADEK PANDE JULIANANTA', 'Banjar Yehbuah RT/RW 000/000 Kel. Penyaringan, Kec. Mendoyo, Kab. Jembrana, Bali', '081932755849', 'Pandejuliananta@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-09-20', '2022-04-04', 1),
(53, '', 'I PUTU AGUS SETIAWAN', 'Banjar Baler Pasar RT/RW 000/000 Kel. Pergung, Kec. Mendoyo, Kab. Jembrana, Bali', '087863510425', 'agussetiawan241098@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-09-20', '2022-04-04', 1),
(54, '', 'I PUTU OKTA SANTIKA', 'Banjar Yehbuah RT/RW 000/000 Kel. Penyaringan, Kec. Mendoyo, Kab. Jembrana, Bali', '087762475482', 'Oktasantika23@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-09-20', '2022-04-04', 1),
(55, '', 'HILDA ALVIONITA', '-', '081381144472', 'hildaalvionita4@gmail.com', 'N3', 'MANDIRI', 'Tg Perawat', '2021-10-25', '2022-04-04', 1),
(56, '', 'SULANI', 'Blok Bendungan RT/RW 014/005 Kel. Kroya, Kec. Kroya, Kab. Indramayu, Jawa Barat', '089520552444', 'sulanilani28@gmail.com', 'BAB 25', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-12-13', '2022-04-04', 1),
(57, '', 'RYAN RAMADHAN', 'Dusun Gukabaru RT/RW 002/006 Kel. Tanjung Tiga, Kec. Blanakan, Kab. Subang, Jawa Barat', '083120445835', 'rianramadhan772@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Kontruksi', '2022-03-22', '2022-04-04', 1),
(58, '', 'MUTIARA KHAERUNNISA', 'Kp. Rujak Gedang RT/RW 003/012 Kel. Cipakat, Kec. Singaparna, Kab. Tasikmalaya, Jawa Barat', '089656860635', 'tiaranisa15@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Perawat', '2021-12-01', '2022-04-04', 1),
(59, '', 'ANDRI SETYAWAN', 'JL. Merdeka RT/RW 009/003 Kel. Pasuruhan, Kec. Binangun, Kab. Cilacap, Jawa Tengah', '081229164238', 'Setyawanandri747@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Kontruksi', '2022-01-05', '2022-04-04', 1),
(60, '', 'HANI KHOIRUNNISA', 'Perum Tanjung Sari Blok E No.22 RT/RW 006/007 Kel. Raharja, Kec. Tanjung sari, Kab. Sumedang, Jawa Barat', '087845750431', 'hanikhoirunnisa2@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Perawat', '2021-12-01', '2022-04-04', 1),
(61, '', 'WAIS AL QORNI', 'Dusun Krajan RT/RW 002/002 Kel. Mangir, Kec. Rogo Jampi, Kab. Banyuwangi, Jawa Tengah', '087843955184', 'alqorni.wais26@gmail.com', 'BAB 40', 'MANDIRI', 'Tg Perikanan', '2021-11-17', '2022-04-04', 1),
(63, '', 'LARAS PERTIWI', 'Perum Cipatat Elok Blok D.33 RT/RW 006/015 Kel. Ciptaharja, Kec. Cipatat, Kab. Bandung Barat, Jawa Barat', '089637507651', 'Laraspertiwi0708@gmail.com', 'N4', 'MANDIRI', 'Magang Perawat', '2022-05-18', '2022-04-04', 1),
(64, '1205050911000003', 'NANANG DARMAWAN', 'Jl. Setia Utama Dsn 8 RT/RW 000/000 Kel. Sambi Rejo, Kec. Binjai, Kab. Langkat, Sumatera Utara', '083198631695', 'nanang45darmawan@gmail.com', 'N4', 'LPK MOMIJI', 'Magang Perawat', '2019-10-24', '2022-04-04', 1),
(65, '1205061912980002', 'NICKO AL JABAR', 'Dusun tempel 000/000 desa mancang kec.selesai, kab.Langkat, Prov. Sumatera Utara', '0821275995530', 'nickoaljabar198@gmail.com', 'N4', 'LPK MOMIJI', 'Magang Perawat', '2019-11-01', '2022-04-04', 1),
(66, '', 'TASYA AMANDA', 'Dusun IV Desa Kota Tengah, Kec. Dolok Masihul, Kab. Serdang Bedagai, Prov. Sumatera Utara', '081314022164', 'tasyaamd8@gmail.com', 'JFT A2', 'MANDIRI', 'Magang Pengolahan Makanan', '2021-11-23', '2022-04-04', 1),
(67, '', 'RIZKI ROMADON', 'Dsn Dilem RT/RW 001/004 Kel. Kebondalem Kec. Jambu, Kab. Semarang, Jawa Tengah', '085850238339', 'rizkiromadhonn@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-05-25', '2022-04-04', 1),
(68, '', 'IMAM SUNGKONO', 'Tempuran RT/RW 002/004 Kel. Cangkring, Kec. Bluluk, Kab. Lamongan, Jawa Timur', '081803457041', 'ImamSungkono47@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2022-01-21', '2022-04-05', 1),
(69, '', 'MUHYI ZAMZAMI', 'Dusun Sikancil RT/RW 004/006 Kel. Slatri Kec. larangan, Kab. Brebes, Jawa Tengah\r\n', '08564796248', 'muhyizamzami69@gmail.com', 'BAB 25', 'LPK YAMAGUCI', 'Magang Kontruksi', '2021-11-27', '2022-04-12', 1),
(70, '', 'SRI KUNINGSIH', 'Dukuh Sikancil RT/RW 006/006 Kel. Slatri, Kec. Laragan, Kab. Brebes, Jawa Tengah', '085797619704', 'srikuningsih2804@gmail.com', 'N5', 'LPK YAMAGUCI', 'Magang Perawat', '2022-01-10', '2022-04-12', 1),
(71, '', 'AGUNG CARYANTO', 'Blok Soga RT/RW 008/002 Kel. Cipatat, Kec. Bongas, Kab. Indramayu, Jawa Barat', '083823347587', 'agungcaryantoo@gmail.com', 'BAB 25', 'LPK NAGASAKI', 'Magang Kontruksi', '2022-01-05', '2022-04-12', 1),
(72, '', 'MAULINDA KURNIASARI', 'Dusun Getas RT/RW 001/005 Kel. termas, Kec. Karang Rayung, Kab. Grobongan, Jawa Tengah', '088802481424', 'maulindakurniasari376@gmail.com', 'N4', 'MANDIRI', 'Magang Perawat', '2022-01-10', '2022-04-12', 1),
(73, '', 'NURKHOLIS', 'Blok Kampong RT/RW 006/003 Kel. drunten wetan, Kec. Gabuswetan, Kab. Indramayu, Jawa Barat', '083148415137', 'nurkh@gmail.com', 'BAB 50', 'LPK AOKI', 'Magang Perawat', '2022-02-07', '2022-04-12', 1),
(74, '', 'ANDRE PRAWIRA', 'Dsn. KedungRejo RT/Rw 001/001 Kel. Sambimulyo, Kec. Bangorejo, Kab. Banyuwangi, Jawa Timur', '081288363214', 'andreprawira27@gmail.com', 'BAB 50', 'MANDIRI', 'Magang Kontruksi', '2021-12-13', '2022-04-12', 1),
(75, '', 'SHAZA DHEA PUTRA ANDALUS', 'Dusun I RT/RW 005/003 Kel. Buntet, Kec. Astanajapura, Kab. Cirebon, Jawa Barat', '083890098021', 'shazadheaputraandalus@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Kontruksi', '2022-01-25', '2022-04-12', 1),
(76, '', 'NASRA SITUMORANG', 'Harapan RT/RW 000/000 Kel. Pasaran Parsaoran, Kec. Nainggolan, Kab. Samosir, Sumatera Utara', '082274653224', 'nasrasitumorang@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Pengolahan Makanan', '2022-01-15', '2022-04-12', 1),
(77, '', 'ERDAYANTI SIMAMORA', 'Dusun IV Solok RT/RW 000/000 Kel. Sitiris Tiris, Kec. Andam Dewi, Kab. Tapanuli Tengah, Sumatera Utara', '082267167007', 'erday1000@gmail.com', 'BAB 25', 'MANDIRI', 'Magang Pengolahan Makanan', '2022-01-15', '2022-04-12', 1),
(78, '', 'RAMA DJATIL IMAD', 'Bakti Mulya RT/RW 007/000 Kel. Bakti Mulya, Kec. Sungai Bahar, Kab. Muaro Jambi, Jambi', '085526264716', 'djatilimadrama@gmail.com', 'BAB 15', 'LPK NAGASAKI', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(79, '', 'ANUGRAH NUR AFITROH', 'Marga RT/RW 006/000 Kel. Marga Manunggal Jaya, Kec. Sungai Bahar, Kab. Muaro Jambi, Jambi', '082278751757', 'Anugrahnura03@gmail.com', 'BAB 15', 'LPK NAGASAKI', 'Magang Perawat', '2022-01-16', '2022-04-12', 1),
(80, '', 'TAMRIN ANDREAS PARULIAN NAPITUPULU', 'Dusun V RT/RW 000/000 Kel. Alang Bonbon, Kec. aek Kuasan, Kab. Asahan, Sumatera Utara', '082314946981', 'Sindyvitaloka33@gmail.com', 'BAB 10', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(81, '', 'ANISA BR SEMBIRING', 'Pergendangen RT/RW 000/000 Kel. Pergendangen Kec. Tigabinanga Kab. Karo, Sumatera Utara', '082274384926', 'anisasmb13@gmail.com', 'BAB 33', 'LPK GAPINDO', 'Magang Perawat', '2022-01-16', '2022-04-12', 1),
(82, '', 'EKA ASTINA NAJARA', 'Dusun VI solok RT/RW 000/000 Kel. Sitiris Tiris, Kec. Andam Dewi, Kab. Tapanuli Tengah, Sumatera Utara', '082236375791', 'asheka@gmail.com', 'BAB 10', 'LPK GAPINDO', 'Magang Perawat', '2022-01-16', '2022-04-12', 1),
(83, '', 'JONATAN TAMPUBOLON', 'Jl. Bunga Raya I RT/RW 000/000 Kel. Asam Kumbang, Kec. Medan Selayang, Kota Medan, Sumatera Utara', '083199760669', 'jonatantampubolon292@gmail.com', 'BAB 10', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(84, '', 'MUHAMMAD RIZQI ZULKARNAIN DAULAY', 'Jl. Bajak II-H Villa Mutiara 3 Blok J-14 RT/RW 000/000 Kel. Harjosari II Kec. Medan Amplas, Kota Medan, Sumatera Utara', '0895603258960', 'rizqidaulay55@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(85, '', 'PARNINGOTAN SIRINGO - RINGO', 'Jln Serma Ghajali RT/RW 000/000 Kel. Aek Kanopan, Kec. Kualuh Hulu, Kab. Labuhanbatu Utara, Sumatera Utara', '082272738612', 'artosiringo12@gmail.com', 'BAB 10', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(86, '', 'SAMUEL F M SIMATUPANG', 'Afd. II Kwala Sawit RT/RW 000/000 Kel. Namo Sialang, Kec. Batang serangan, Kab. Langkat, Sumatera Utara', '081325836334', 'samuelsimatupang436@gmail.com', 'BAB 10', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(87, '', 'EDU HUTAHAEAN', 'Sigaol RT/RW 000/000 Kel. Bosar Bayu, Kec. Huta Bayu Raja, Kab. Simalungun, Sumatera Utara', '085383576756', 'hutahaeanedu944@gmail.com', 'BAB 50', 'LPK GAPINDO', 'Magang Kontruksi', '2022-01-16', '2022-04-12', 1),
(88, '', 'MUHAMMAD PATIH ADIWIKARTA', 'Jl. Mesjid Gg. Kaum V No. 40 RT/RW 002/004 Kel. Gunung Parang, Kec. Cikole, Kab. Sukabumi, Jawa Barat', '0895341760867', 'adenpatih@gmail.com', 'BAB 50', 'MANDIRI', 'Magang Perawat', '2022-01-17', '2022-04-12', 1),
(89, '', 'RYAN AHMAD JAELANI', 'Bumi Asriyasmin Blok B 09 RT/RW 002/009 Kel. Munjul, Kec. Cilaku, Kab. Cianjur, Jawa Barat', '085156845291', 'Ryand.z3991@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2022-01-18', '2022-04-12', 1),
(90, '', 'MELDA MEDIANA KUSDIANTI', 'Jl. Kapten Bahrudin RT/RW 002/004 Kel. Sawahgede, Kec. Cianjur, Kab. Cianjur, Jawa Barat', '089501160495', 'meldamediana28@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2022-02-02', '2022-04-12', 1),
(91, '', 'NADILA PRATAMA', 'Kp. Pasir Cengkeh RT/RW 001/001 Kel. Mandalawangi, Kec. Leles, Kab. Cianjur, Jawa Barat', '081573314866', 'nadilapratamasukses@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2022-02-02', '2022-04-12', 1),
(92, '', 'ERNITA', 'Kp. citamiang, RT/RW 018/006 Kel. Cikancana, Kec. Gekbrong, Kab. Cianjur, Cianjur', '087822914030', 'ernitawidya.31@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2022-02-02', '2022-04-12', 1),
(93, '', 'NISA DEWI HERLINA', '-', '085782665120', 'nisaherlina91@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2022-02-02', '2022-04-12', 1),
(94, '', 'DIAN ANDARISTA', 'Dusun Geri RT/RW 002/009 Kel. Kandangan, Kec. Purwodadi, Kab. Grobongan, Jawa Tengah', '087831256961', 'diandianwijayanto@gmail.com', 'N4', 'LPK YUTAKA', 'Magang Pengolahan Makanan', '2022-02-07', '2022-04-12', 1),
(95, '', 'MELARESA ELFIANA', 'Lingkungan Bangkalan RT/RW 009/005 Kel. Kalongan, Kec. Purwodadi, Kab. Grobongan, Jawa Tengah', '081298780754', 'melaresaelfiana@gmail.com', 'N4', 'LPK YUTAKA', 'Magang Pengolahan Makanan', '2022-02-07', '2022-04-12', 1),
(96, '', 'GINA AMALIAH', 'Kp. Awi Lega RT/RW 005/005 Kel. Prianganjaya, Kec. Sukalarang, Kab. Sukabumi, Jawa Barat', '085721115404', 'ginaamlh@gmail.com', 'JFT A2', 'LPK IGC', 'Magang Perawat', '2022-02-14', '2022-04-12', 1),
(97, '', 'DENA MILKA', 'Kp. Bojong RT/RW 003/008 Kel. Sukalarang, Kec. Sukalarang, Kab. Sukabumi, Jawa Barat', '085846139760', 'denamilka80@gmail.com', 'BAB 50', 'LPK IGC', 'Magang Perawat', '2022-02-14', '2022-04-12', 1),
(98, '', 'NENG ZAHRA', 'Kp. Awi Lega RT/RW 005/005 Kel. Prianganjaya, Kec. Sukalarang, Kab. Sukabumi, Jawa Barat', '085871255549', 'Zhraaaaaa73@gmail.com', 'JFT A2', 'LPK IGC', 'Magang Perawat', '2022-02-14', '2022-04-12', 1),
(99, '', 'LISTRA MUNTHE', 'Bah Torop RT/RW 000/000 Kel. Pematang Panombeian, Kec. Panombeian Panei, Kab. Simalungun, Sumatera Utara', '087893258944', 'Alicekindaich@icloud.com', 'N4', 'MANDIRI', 'Magang Perawat', '2022-02-17', '2022-04-12', 1),
(100, '', 'SANGGA BUANA RAJA', 'Gading Rejo Utara RT/RW 001/001 Kel. Gading Rejo Utara, Kec. Gading Rejo, Kab. Pringsewu, Lampung', '087878003657', 'Sangga8765432@gmail.com', 'BAB 35', 'LPK KWH', 'Magang Kontruksi', '2022-02-28', '2022-04-12', 1),
(101, '', 'SUMARNO', 'Tegongan RT/RW 003/003 Kel. Tegongan, Kec. Tanjung, Kab. Brebes, Jawa Tengah', '082137224768', 'markoajah98@gmail.com', 'N5', 'BBK ADIWERNA TEGAL', 'Magang Kontruksi', '2019-10-04', '2022-04-12', 1),
(102, '', 'BUDIHARTO', 'nogosari RT 08 Gilagharjo Pandak Bantul Yogyakarta', '082233040276', 'budihartox@gmail.com', 'N3', 'LPK PT.MIRAINO HASHI JAYA', 'Tg Perawat', '2022-04-12', '2022-04-12', 1),
(103, '', 'ELSA TIARA ANGGRAENI', 'Kalibening RT/RW 002/004 Kel. Kebondalem, Kec. Jambu, Kab, Semarang, Jawa Tengah', '082176434527', 'elsata6@gmail.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-04-14', '2022-04-12', 1),
(104, '', 'TAUFIQ HIDAYAT FIRDAUS', 'JL. Bumi Raya VI RT/RW 0008/003 Kel. Duren Sawit, Kec. Duren Sawit, Kota Jakarta Timur, Jakarta', '087729281388', 'taufikconslate@gmail.com', 'N5', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Kontruksi', '2019-01-29', '2022-04-12', 1),
(105, '', 'WAHYU DWI NINGTIAS', 'Dusun Bumi Agung RT/RW 002/001 Kel. Pulau Jaya, Kec. Palas, Kab. Lampung Selatan, Lampung', '085838313793', 'wahyudwiningtias149@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Perawat', '2020-10-12', '2022-04-12', 1),
(106, '', 'FITRI UTAMI', 'Dsn Krageman RT/RW 001/009 Kel. Kradenan, Kec. Srumbung, Kab. Magelang, Jawa Tengah', '085840403099', 'fitriutami967@gmail.com', 'N4', 'LPK TAKAHASHI YOGYAKARTA', 'Magang Perawat', '2020-10-01', '2022-04-12', 1),
(107, '', 'MELISA ULIBASA  BR MARPAUNG', 'Jl. Air Bersih Ujung NO. 226 RT/RW 000/000 Kel. Binjai, Kec. Medan Denai, Kota Medan, Sumatera Utara', '6282182312902', 'melisamarpaung57@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Perawat', '2020-07-27', '2022-04-12', 1),
(108, '', 'ELLA AGUSTIN', 'Dusun  III RT/RW 010/004 Kel. Batang Hari Ogan, Kec. Tegineneng, Kab. Pesawaran, Lampung', '081213631669', 'ellaagustin413@gmail.com', 'N5', 'LPK AKENO GAKUEN', 'Magang Pengolahan Makanan', '2021-05-25', '2022-04-12', 1),
(109, '', 'NOVI OKTAVIANI', 'Kp. Hamerang II RT/RW 017/001 Kel. Hamerang, Kec. Cibinong, Kab. Cianjur, Jawa Barat', '085795741005', 'fiaaaokta@gmail.com', 'N4', 'Lpk BTC', 'Magang Perawat', '2021-01-19', '2022-04-12', 1),
(110, '', 'DWI HAINUN NINGSIH', 'Karanganom RT/RW 009/002 Kel. Karanganom, Kec. Weleri, Kab. Kendal, Jawa Tengah', '085290705302', 'dwihainun05@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Perawat', '2020-10-12', '2022-04-12', 1),
(111, '', 'AGRESIH YOLANDA SINAGA', 'AFD. I Padang Brahrang RT/RW 000/000 Kel. Padang Brahrang, Kec. Selesai, Kab. Langkat, Sumatera Utara', '083171723026', 'yolandasinaga1234@gmail.com', 'N4', 'LPK HOZY', 'Magang Perawat', '2020-09-01', '2022-04-12', 1),
(112, '', 'TRI HARTONO', 'Lingk. Langen RT/RW 003/002 Kel. muktisari, Kec. Langensari, Kota Banjar, Jawa Barat', '085977520975', 'bianpermana5@gmail.com', 'BAB 50', 'LPK OYAMA GAKKO', 'Magang Kontruksi', '2021-12-26', '2022-04-12', 1),
(113, '', 'FAJAR SETIADI', 'Dk Putuk RT/RW 001/003 Kel. Ngloram, Kec. Cepu, Kab. Blora, Jawa Tengah', '089601454540', 'bintangagung101@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Ryuugakusei', '2021-05-25', '2022-04-12', 1),
(114, '', 'RIMA PUSPITA PRADANA', 'Dsn Sanggar RT/RW 003/001 Kel. Ngepeh, Kec. Bandung, Kab. Tulungagung, Jawa Timur', '089501136080', 'misspradana1996@gmail.com', 'N4', 'LPK HIRATA GAKKOU MADIUN', 'Magang Perawat', '2020-09-04', '2022-04-12', 1),
(115, '', 'YOSSI ANDRIYAN', 'Blok I RT/RW 002/003 Kel. Kertasura, Kec. Kapetakan, Kab. Cirebon, Jawa Barat', '085881168056', 'yossiandriyan46@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Kontruksi', '2020-06-07', '2022-04-13', 1),
(116, '', 'FAHAD ARISUL HAKIM', 'Dusun Kebogoran RT/RW 001/011 Kel. Kamulyaan, Kec. Bantarsari, Kab. Cilcap, Jawa Tengah', '082135170119', 'fahadarisul.158240@gmail.com', 'N4', 'LPK HIRATA GAKKOU MADIUN', 'Magang Kontruksi', '2020-09-04', '2022-04-13', 1),
(117, '', 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Kp. Gembong RT/RW 001/006 Kel. Mekar Mukti, Kab. Cikarang Utara, Kab. Bekasi, Jawa Barat', '081316059826', 'mrtnsams1@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Kontruksi', '2021-01-11', '2022-04-13', 1),
(118, '3301202211990001', 'AHMAD RIFA\'I', 'Dusun Sidadadi RT/RW 001/005 Kel. Bulak Sari, Kec. Bantas sari, Kab. Cilacap, Jawa Tengah', '085641798897', 'rifai221199@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Perawat', '2018-11-05', '2022-04-13', 1),
(119, '', 'IMAM SYAFII', 'Jl. Angke Barat No. 84 RT/RW 004/002 Kel. Angke, Kec. Tambora, Jakarta Barat, DKI Jakarta', '085740926585', 'imamc614@gmail.com', 'N5', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Kontruksi', '2018-08-27', '2022-04-13', 1),
(120, '', 'AHMAD HARDIANSYAH', 'Dusun Kawali RT/RW 005/004 Kel. Pancawati, Kec. Klari, Kab. Karawang, Jawa Barat', '081385210986', 'ahmadhardiansyah2309@gmail.com', 'N3', 'LPK PANCA MULTIGUNA SUKSES', 'Magang Kontruksi', '2021-02-05', '2022-04-13', 1),
(121, '', 'DERRY KRISTIAN P SITUMORANG', 'Jl. Perwira II GG Simare Mare No 52 A Comp Ikes RT/RW 000/000 Kel. Pulo Brayan Bengkel, Kec. Medan Timur, Kota Medan, Sumatera Utara', '082367567128', 'derrysitumorang31@yahoo.com', 'N4', 'LPK GAPINDO', 'Magang Kontruksi', '2021-05-28', '2022-04-13', 1),
(122, '', 'DWIK HARDIYANTO', 'Karang Sari RT/RW 021/008 Kel. Negara Nabung, Kec. Sukadana, Kab. Lampung Timur, Lampung', '085769734297', 'dwikhardiyanto115@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Kontruksi', '2020-09-14', '2022-04-13', 1),
(123, '', 'RISMA', 'Dusun IV RT/RW 010/004 Kel. Gunung Sugih Kecil, Kec. Jabung, Kab. Lampung Timur, Lampung', '081322071723', 'rismahakim94@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Perawat', '2020-03-12', '2022-04-13', 1),
(124, '', 'DYAH HARDIYANTI', 'Tlogolelo RT/RW 018/004 Kel. Hargo Mulyo, Kec. Kokap, Kab. Kulon Progo, Daerah Istimewa Yogyakarta', '089637471000', 'hardiyantidyah24@gmail.com', 'N4', 'LPK KENJANI', 'Magang Perawat', '2021-10-01', '2022-04-13', 1),
(125, '', 'SINDY AINURIZQI', 'Blok Pangarangsari RT/RW 003/003 Kel. Waringin, Kec. Palasah, Kab. Majalengka, Jawa Barat', '082114582592', 'shindyar05@gmail.com', 'N4', 'OHJ STUDY JAPAN', 'Magang Perawat', '2020-03-16', '2022-04-13', 1),
(126, '', 'RIZKY ANUGRAH PUTRI', 'Losari Sawahan RT/RW 004/004 Kel. Lodoyong, Kec. Ambarawaa, Kab. Semarang, Jawa Tengah', '082242339199/08818584122', 'Rizkyanugrahputri32@gmail.com', 'N4', 'LPK AKENO GAKUEN', 'Magang Perawat', '2021-05-29', '2022-04-13', 1),
(127, '', 'CITRA ASTRIANI BUTAR BUTAR', 'Bahkisat RT/RW 000/000 Kel. Marihat  Raja, Kec. DOlok Panribuan Kab. Simalungun, Sumatera Utara', '082370703077', 'citrabutar335@gmail.com', 'N4', 'LPK PT.MIRAINO HASHI JAYA', 'Magang Perawat', '2020-11-18', '2022-04-13', 1),
(128, '3201014510930004', 'IRMA ABRIANTIKA NURYANI', 'Lingkungan 01 Ciriung RT/RW 002/001 Kel. Ciriung, Kec. Cibinong, Kab. Bogor, Jawa Barat', '088210005350', '-@gmail.com', '-', 'LPK MIRAINO HASHI JAYA', 'Magang Pengolahan Makanan', '2020-03-16', '2022-04-15', 1),
(129, '', 'MAULANA ABDUSSALAM', 'Desa Bukit Harapan RT/RW 008/002 Kel. Bukit Harapan, Kec. Mersam, Kab. Batang Hari, Jambi', '085220941118', 'maulasta010214@gmail.com', 'JFT A2', 'LPK NAGASAKI', 'Tg Perawat', '2022-01-11', '2022-04-18', 1),
(130, '', 'DELA SRI FAUZAH', 'KP. Buni Sari RT/RW 001/003 Kel. Sukarame, Kec. Sukanagara, Kab. Cianjur, Jawa Barat', '085759367404', 'delasrifauzah36@gmail.com', 'N4', 'Lpk BTC', 'Magang Pengolahan Makanan', '2021-01-11', '2022-04-18', 1),
(131, '', 'RESNAWATI', 'Kp. Sinar Mulya RT/RW 003/004 Kel. Karyamukti, Kec. Leles, Kab. Cianjur, Jawa Barat', '085794095924', 'watiresna915@gmail.com', 'N4', 'Lpk BTC', 'Magang Pengolahan Makanan', '2021-01-11', '2022-04-18', 1),
(132, '', 'BIMA PRAKARSA', 'AFD VII KW. Sawit RT/RW 000/000 Kel. Sei Serdang, Kec. Batang Serangan, Kab. Langkat, Sumatera Utara', '082366179404', 'bimaprakarsa@gmail.com', 'BAB 50', 'LPK HOZY', 'Magang Kontruksi', '2020-09-01', '2022-05-30', 1),
(133, '', 'ANDHARA EARLY SYAHRA', 'Dukuh Turi RT/RW 003/003 Kel. Dukuh Turi, Kec. Bumi Ayu, Kec. Brebes, Jawa Tengah', '082220477280', 'earlysyahra@gmail.com', 'N4', 'UNNES', 'Magang Perawat', '2020-12-28', '2022-05-30', 1),
(134, '', 'CINDY KRISTINA SINAGA', 'Tangga Batu RT/RW 000/000 Kel. Tangga Batu, Kec. Hatonduhan, Kab. Simalungun, Sumatera Utara', '085362075487', 'cindykristina@gmail.com', 'BAB 50', 'LPK HOZY', 'Magang Perawat', '2020-11-18', '2022-05-30', 1),
(135, '', 'DANIEL YULISMAN', 'Piai Tangah RT/RW 001/002 Kel. Piai Tangah, Kec. Pauh, Kota Padang, Sumatera Barat', '082287151459', 'daniel.dn270@gmail.com', 'BAB 50', 'LPK HARUKI GAKKOU', 'Magang Kontruksi', '2019-05-08', '2022-05-30', 1),
(136, '', 'DESI HANDAYANI TAMBUNAN', 'Jl. Mufakat No. 132 RT/RW 002/009 Kel. Sukadame, Kec. Siantar Utara, Kota Pematang Siantar, Sumatera Utara', '082267888640', 'desihandayani121997@gmai.com', 'BAB 50', 'LPK GAPINDO', 'Magang Pengolahan Makanan', '2020-06-29', '2022-05-30', 1),
(137, '1272056812950001', 'DESI NATALIA SIANIPAR', 'Jl. Pattimura Ujung RT/RW 001/001 Kel. Mekar Nauli, Kec. Siantar Marihat, Kota Pematang Siantar, Sumatera Utara', '088263516818', '-@gmail.com', 'BAB 50', 'LPK Gapindo', 'Magang Pengolahan Makanan', '2020-06-29', '2022-05-30', 1),
(138, '', 'FITRI NURAZIZAH', 'Kp. Warung Bawang RT/RW 003/004 Kel. Cibeureum, Kec. Cugenang, Kab. Cianjur, Jawa Barat', '085759859287', 'fitrinurazizah@gmail.com', 'N4', 'LPK MASSAIHARA', 'Magang Perawat', '2020-07-03', '2022-06-01', 1),
(139, '3216224608930006', 'GUSTI AYU PURNAMASARI', 'Perum Bumi SIndang Asri Blok. B 2 No.. 13 RT/RW 002/010 Kel. Sindang Mulya, Kec. Cibarusah, Kab. Bekasi, Jawa Barat', '+821032919155', '-@gmail.com', 'N4', 'LPK MASSAIHARA', 'Magang Perawat', '2020-01-06', '2022-06-01', 1),
(140, '', 'HOTDIANA BR TAMBUNAN', 'Desa Tanjung Pamah RT/RW 000/000 Kel. Tanjung Pamah, Kec. Ardingding, Kab. Karo, Sumatera Utara', '081263814941', 'dianatambunan@gmail.com', 'N4', 'LPK GAPINDO', 'Magang Perawat', '2020-06-29', '2022-06-02', 1),
(141, '', 'HAYATUDDIN', 'Mada Jaya RT/RW 010/005 Kel. Mada Jaya, Kec. Way Khilau, Kab. Pesawaran, Lampung', '082258417072', 'hayatudin@gmail.com', 'N4', 'LPK MIRAINO HASHI JAYA', 'Magang Kontruksi', '2019-11-12', '2022-06-02', 1),
(142, '', 'IKE YULI WIDIASTUTI', 'Pajaresuk RT/RW 003/001 Kel. Pajaresuk, Kec. Pringsewu, Kab. Pringsewu, Lampung', '0895392395888', 'Ikewidiastuti@gmail.com', 'J TEST Level E', 'LPK AKENO GAKUEN', 'Magang Perawat', '2020-07-18', '2022-06-02', 1),
(143, '', 'INDAH AGUSTIN SASADARA', 'Jl. Kenangan RT/RW 001/010 Kel. Kedung Jati, Kec. Buka Teja, Kab. Purbalingga, Jawa Tengah', '082329200538', 'Indahagustin@gmail.com', 'N4', 'UNNES', 'Magang Perawat', '2020-12-28', '2022-06-02', 1),
(144, '', 'JOHAN ALFA REZA', 'Jl. Mawar RT/RW 003/009 Kel. Pakembaran, Kec. Slawi, Kab. Tegal, Jawa Tengah', '085225228840', 'Jhonalfareza87@gmail.com', 'N4', 'LPK YAMAGUCHI', 'Magang Kontruksi', '2021-02-05', '2022-06-02', 1),
(145, '3212286105000001', 'KHANIFAH', 'Blok Masjid RT/RW 011/004 Kel. Kaplongan, Kec. Kedokan Bunder, Kab. Indramayu', '08985612675', '-@gmail.com', 'N4', 'LPK MASSAIHARA', 'Magang Perawat', '2020-01-06', '2022-06-02', 1),
(146, '3216014408000005', 'KHOFIFAH INDAH', 'Desa Pengodengan RT/RW 001/002 Kel. Wirakanan, Kec. Kandang Haur, Kab. Indramayu, Jawa Barat', '083807064546', '-@gmail.com', 'N4', 'LPK MIRAINO HASHI JAYA', 'Magang Perawat', '2019-03-21', '2022-06-02', 1),
(147, '', 'LAILATUL QOMARIYAH', 'Kebanyon RT/RW 003/004 Kel. Kasepuhan, Kec. Batang, Kab. Batang, Jawa Tengah', '089670800424', 'lailatulqomariyah@gmail.com', 'N4', 'UNNES', 'Magang Perawat', '2020-12-28', '2022-06-02', 1),
(148, '', 'MAGFIRA SARIJUDDIN TAKBI', '-', '085398209014', 'magfira@gmail.com', 'N4', 'LPK YAWATA', 'Magang Perawat', '2020-09-09', '2022-06-02', 1),
(149, '1304086907950002', 'METRI NOFITA', 'Perum Villa Gading Harapan Blok Al 4 No. 18 RT/RW 001/024 Kel. Kebalen, Kec. Babelan, Kab. Bekasi, Jawa Barat', '082384340844', '-@gmail.com', 'N4', 'LPK HARUKI GAKKOU', 'Magang Perawat', '2019-08-05', '2022-06-02', 1),
(150, '', 'MOHAMAD SOLIKIN', 'Ngrancah RT/RW 001/001 Kel. Ngrancah, Kec. Grabag Kab. Magelang, Jawa Barat', '085877877885', 'solikin@gmail.com', 'N3', 'LPK AKENO GAKUEN', 'Magang Kontruksi', '2021-04-09', '2022-06-02', 1),
(151, '', 'MUHAMAD HIDAYAT UMASANGAJI', 'Kp. Cibinong RT/RW 003/007 Kel. Ciwalen, Kec. Warung Kondang, Kab. Cianjur, Jawa Barat', '083891524655', 'hidayat@gmail.com', 'N4', 'LPK CBT', 'Magang Kontruksi', '2020-07-06', '2022-06-02', 1),
(152, '1301050302000001', 'MUHAMAD ARYA PUTERA', 'Koto Rawang RT/RW 000/000 Kel. Koto Rawang, Kec. IV Jurai, Kab. Pesisir Selatan, Sumatera Barat', '089602615054', 'Muhamadarya.dimas3@gmail.com', 'N4', 'LPK HARUKI GAKKOU', 'Magang Kontruksi', '2019-05-08', '2022-06-02', 1),
(153, '', 'NURHOLIK', 'Pende RT/RW 005/003 Kel. Pende, Kec. Kersana, Kab. Brebes, Jawa Tengah', '083837364148', 'mrholik2000@gmail.com', '-', 'LPK HIROKU', 'Magang Kontruksi', '2020-01-30', '2022-06-02', 1);

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
(8, 'FITRI NURAZIZAH', '2022-03-28', 'Magang Perawat', 'KOCHI CARE SERVICE COOPERATION', 'MEDICAL CORORATION JINENKAI', 'KOCHI KEN', '2022-03-28', 1),
(9, 'LARAS PERTIWI', '2022-03-28', 'Magang Perawat', 'KOCHI CARE SERVICE COOPERATION', 'MEDICAL CORPORATION JINENKAI', 'KOCHI KEN', '2022-03-28', 1),
(10, 'RESTU YUSTIKA', '2022-03-28', 'Magang Perawat', 'KOCHI CARE SERVICE COOPERATION', 'MEDICAL CORPORATION JINENKAI', 'KOCHI KEN', '2022-03-28', 1),
(11, 'SINDY AINURIZQI', '2020-11-02', 'Magang Perawat', 'KOCHI CARE SERVICE COOPERATION', 'MEDICAL CORPORATION JINENKAI', 'KOCHI KEN', '2022-03-29', 1),
(12, 'NANDA DWI PUJA KUSUMAWANGI', '2020-12-07', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(13, 'RIMA PUSPITA PRADANA', '2020-12-07', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(14, 'MAGFIRA SARIJUDDIN TAKBI', '2020-12-07', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(15, 'HOTDIANA BR TAMBUNAN', '2021-01-19', 'Magang Pengolahan Makanan', 'kochi care service cooperation', 'Medical Corporation Kamikai', 'Kochi Ken', '2022-04-15', 1),
(16, 'DESI HANDAYANI TAMBUNAN', '2021-01-19', 'Magang Pengolahan Makanan', 'kochi care service cooperation', 'Medical Corporation Kamikai', 'Kochi Ken', '2022-04-15', 1),
(17, 'MUHAMAD ARYA PUTERA', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(18, 'AHMAD RIFAI', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(19, 'NANANG DARMAWAN', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(20, 'NICKO AL JABAR', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(21, 'PRIYO PRASSETHIYO', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(22, 'NURJANAH', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(23, 'SELFYANA', '2021-01-21', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(24, 'SAEFUL ANWAR', '2021-02-10', 'Magang Kontruksi', 'GoodFellas Cooperative', 'Murase Setubi Co.,ltd', 'Nara Ken', '2022-04-15', 1),
(25, 'MUHAMMAD HIDAYAT UMASANGAJI', '2021-03-02', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Aisekai', 'Kochi Ken', '2022-04-15', 1),
(26, 'YOHANA MELATI SAGALA', '2021-03-16', 'Magang Pengolahan Makanan', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(27, 'DESI N SIANIPAR', '2021-03-16', 'Magang Pengolahan Makanan', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(28, 'KHOFIFAH INDAH', '2021-03-16', 'Magang Perawat', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(29, 'KHANIFAH', '2021-03-16', 'Magang Perawat', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(30, 'GUSTI AYU PURNAMASARI', '2021-03-16', 'Magang Perawat', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(31, 'METRI NOFITA', '2021-03-16', 'Magang Perawat', 'Cocoloba', 'Medical Corporation Seiwakai', 'Tokushima Ken', '2022-04-15', 1),
(32, 'IKE YULI WIDIASTUTI', '2021-04-05', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation RakuRakukai', 'Kanagawa Ken', '2022-04-15', 1),
(33, 'CINDY KRISTINA SINAGA', '2021-04-05', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation RakuRakukai', 'Kanagawa Ken', '2022-04-15', 1),
(34, 'IRMA ABRIANTIKA NURYANI', '2021-04-12', 'Magang Pengolahan Makanan', 'kochi care service cooperation', 'Medical Corporation Chisiokai', 'Kochi Ken', '2022-04-15', 1),
(35, 'CITRA ASTRIANI BUTAR BUTAR', '2021-05-10', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Kamikai', 'Kochi Ken', '2022-04-15', 1),
(36, 'OKTAVIANA TARIGAN', '2021-05-10', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Kamikai', 'Kochi Ken', '2022-04-15', 1),
(37, 'NURHOLIK', '2021-05-31', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Yamamoto Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(38, 'DANIEL YULISMAN', '2021-05-31', 'Magang Kontruksi', 'Libre Cooperative Representative', 'GSC Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(39, 'JOHAN ALFA REZA', '2021-05-31', 'Magang Kontruksi', 'Libre Cooperative Representative', 'GSC Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(40, 'AHMAD HARDIANSYAH', '2021-05-31', 'Magang Kontruksi', 'Libre Cooperative Representative', 'GSC Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(41, 'IMAM SYAFII', '2021-06-24', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Yokohama Ken', '2022-04-15', 1),
(42, 'SUMARNO', '2021-06-24', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Yokohama Ken', '2022-04-15', 1),
(43, 'TAUFIQ HIDAYAT FIRDAUS', '2021-06-24', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Yokohama Ken', '2022-04-15', 1),
(44, 'RICHO ANDY ERSADA TARIGAN', '2021-07-06', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Jyukichi Co.,ltd', 'Tokyo', '2022-04-15', 1),
(45, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', '2021-07-21', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Axis Co.,ltd', 'Tokyo', '2022-04-15', 1),
(46, 'MOHAMAD SOLIKIN', '2021-07-21', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Axis Co.,ltd', 'Tokyo', '2022-04-15', 1),
(47, 'UTTA FIANNA PUTRI', '2021-09-10', 'Magang Perawat', 'Next Stage Japan ( NSJ ) Cooperative', 'Medical Corporation Jukkekai', 'Wakayama Ken', '2022-04-15', 1),
(48, 'ANDHARA EARLY SAYHRA', '2021-09-10', 'Magang Perawat', 'Next Stage Japan ( NSJ ) Cooperative', 'Medical Corporation Jukkekai', 'Wakayama Ken', '2022-04-15', 1),
(49, 'INDAH AGUSTIN SASADARA', '2021-09-10', 'Magang Perawat', 'Next Stage Japan ( NSJ ) Cooperative', 'Medical Corporation Jukkekai', 'Wakayama Ken', '2022-04-15', 1),
(50, 'LAILATUL QOMARIYAH', '2021-09-10', 'Magang Perawat', 'Next Stage Japan ( NSJ ) Cooperative', 'Medical Corporation Jukkekai', 'Wakayama Ken', '2022-04-15', 1),
(51, 'HILDA ALVIONITA', '2021-10-19', 'Tg Perawat', 'kochi care service cooperation', 'Medical Corporation Shiragikukai', 'Kochi Ken', '2022-04-15', 1),
(52, 'YOGA ARI SANDI', '2021-12-02', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Maruni Kenko Co.,ltd', 'Yamagata Ken', '2022-04-15', 1),
(53, 'ADI SATYA MUKTI', '2021-12-02', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Maruni Kenko Co.,ltd', 'Yamagata Ken', '2022-04-15', 1),
(54, 'SAEFUDIN', '2021-12-02', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Maruni Kenko Co.,ltd', 'Yamagata Ken', '2022-04-15', 1),
(55, 'BIMA PRAKARSA', '2021-12-08', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Minato Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(56, 'MUHAMMAD RIZKY CANDRA', '2021-12-08', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Minato Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(57, 'REANOLD MARTIN SAMUEL SIMORANGKIR', '2021-12-08', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Minato Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(58, 'DWIK HARDIYANTO', '2021-12-21', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(59, 'IBNU ABBAS ALFAROQHI', '0021-12-21', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(60, 'GUNTUR DARMAWAN', '2021-12-21', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Kumagai Kensetsu Co.,ltd', 'Kanagawa Ken', '2022-04-15', 1),
(61, 'FAHAD ARISUL HAKIM', '2022-01-07', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Nakazawa Kensetsu', 'Tokyo', '2022-04-15', 1),
(62, 'RIPALDO HASUDUNGAN LIMBONG', '2022-01-07', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Nakazawa Kensetsu', 'Tokyo', '2022-04-15', 1),
(63, 'AGUNG ALI WASKITO', '2022-01-12', 'Magang Kontruksi', 'Jinzai Cooperative', 'Yugen Kaisha Sankan', 'Kochi Ken', '2022-04-15', 1),
(64, 'YOSSI ANDRIYAN', '2022-01-27', 'Magang Kontruksi', 'Jinzai Cooperative', 'Yugen Kaisha Sankan', 'Kochi Ken', '2022-04-15', 1),
(65, 'HAYATUDDIN', '2022-02-17', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Geotex Co.,ltd', 'Tokyo', '2022-04-15', 1),
(66, 'DERRY KRISTIAN P SITUMORANG', '2022-02-17', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Geotex Co.,ltd', 'Tokyo', '2022-04-15', 1),
(67, 'DWI HAINUN NINGSIH', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(68, 'FITRI UTAMI', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(69, 'RISMA', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(70, 'RIZKY ANUGRAH PUTRI', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(71, 'WAHYU DWININGTYAS', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(72, 'WELLI WENDRI', '2022-02-22', 'Magang Perawat', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(73, 'DELA SRI FAUZAH', '2022-02-22', 'Magang Pengolahan Makanan', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(74, 'RESNAWATI', '2022-02-22', 'Magang Pengolahan Makanan', 'kochi care service cooperation', 'Medical Corporation Takedakai', 'Kochi Ken', '2022-04-15', 1),
(75, 'MUHYI ZAMZAMI', '2022-03-02', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Yamamoto Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(76, 'AA GEDE NGURAH RADITYA SAPUTRA', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Tsurugasaki Komuten Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(77, 'RIZKI ROMADON', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Tsurugasaki Komuten Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(78, 'WAHYU NUROHMAN', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'KHC Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(79, 'I PUTU ARYA JUNI ASTRAWAN', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'KHC Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(80, 'RIMHOT SITANGGANG', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'KHC Co.,ltd', 'Chiba Ken', '2022-04-15', 1),
(81, 'AGUNG CARYANTO', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Shimahisa Kogyou Co.,ltd', 'Yokohama Ken', '2022-04-15', 1),
(82, 'RUSTAM SURYADI PANJAITAN', '2022-03-22', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Shimahisa Kogyou Co.,ltd', 'Yokohama Ken', '2022-04-15', 1),
(83, 'IMAM SUNGKONO', '2022-04-01', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Hakkuryu Co.,ltd', 'Nara Ken', '2022-04-15', 1),
(84, 'IMAM SUNGKONO', '2022-04-01', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Hakkuryu Co.,ltd', 'Nara Ken', '2022-04-15', 1),
(85, 'WAIS AL QORNI', '2022-03-31', 'Tg Perikanan', 'Career bank', 'Career bank Co.,ltd', 'Sapporo, Hokkaido', '2022-04-28', 1),
(86, 'AHMAD SHOIM', '2022-04-19', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Nara kougyo', 'Tokyo', '2022-04-28', 1),
(87, 'SHAZA DHEA PUTRA ANDALUS', '2022-04-19', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Nara kougyo', 'Tokyo', '2022-04-28', 1),
(88, 'TRI HARTONO', '2022-04-19', 'Magang Kontruksi', 'Libre Cooperative Representative', 'Nara kougyo', 'Tokyo', '2022-04-28', 1),
(89, 'JULIANTO SILALAHI', '2022-04-26', 'Magang Kontruksi', 'GoodFellas Cooperative', 'Hashimoto Co.,ltd', 'Kyoto', '2022-04-28', 1);

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
(7, 'BUDIHARTO', 'Tg Perawat', '2019-01-31', 'Mandiri', 10000000, 'Biaya pengurusan dokumen TG Perawat', '2022-03-29', 1),
(8, 'AZIS KURNIAWAN', 'Tg Perawat', '2019-02-01', 'Mandiri', 1500000, 'Deposit Biaya Sertifikasi', '2022-03-29', 1),
(9, 'NAUFAL WILDAN GUSTI MUHAMMAD', 'Magang Perawat', '2019-02-08', 'Mandiri', 2000000, 'Angsuran biaya pendidikan', '2022-03-29', 1),
(10, 'SUPRIYANTO', 'Magang Kontruksi', '2019-03-07', 'Mandiri', 7000000, 'Biaya Pendidikan Bahasa Jepang', '2022-03-29', 1),
(11, 'KHOFIFAH INDAH', 'Magang Perawat', '2019-03-17', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(13, 'RIA LOREN LUMBAN GAOL', 'Magang Perawat', '2019-04-05', 'Mandiri', 12000000, 'Biaya pendidikan bahasa jepang dan Pelatihan Perawat', '2022-03-29', 1),
(14, 'DANIEL YULISMAN', 'Magang Kontruksi', '2019-05-02', 'LPK Haruki Gakkou', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(15, 'MUHAMMAD ARYA PUTRA', 'Magang Perawat', '2019-05-02', 'LPK Haruki Gakkou', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(16, 'METRI NOVITA', 'Magang Perawat', '2019-05-02', 'LPK Haruki Gakkou', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(17, 'WELLI WENDRI', 'Magang Perawat', '2019-05-02', 'LPK Haruki Gakkou', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(18, 'FEBBY FRINELA SARI', 'Magang Perawat', '2019-05-02', 'LPK Haruki Gakkou', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(19, 'IMAM SYAFII', 'Magang Kontruksi', '2019-07-19', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(20, 'AZIS KURNIAWAN', 'Tg Perawat', '2019-08-05', 'Mandiri', 8500000, 'Biaya pengurusan dokumen COE', '2022-03-29', 1),
(21, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2019-09-02', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(22, 'UCEP MULYADIN', 'Magang Perawat', '2019-09-06', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(23, 'WISNU PRATAMA PUTRA', 'Magang Perawat', '2019-09-12', 'Mandiri', 12000000, 'Biaya pendidikan bahasa jepang dan Pelatihan Perawat', '2022-03-29', 1),
(24, 'ARIF SEPTANTO NUGROHO', 'Magang Perawat', '2019-09-13', 'Mandiri', 12000000, 'Biaya pendidikan bahasa jepang dan Pelatihan Perawat', '2022-03-29', 1),
(25, 'MEILANI NURUL AINI', 'Magang Perawat', '2019-10-07', 'Mandiri', 12000000, 'Biaya pendidikan bahasa jepang dan Pelatihan Perawat', '2022-03-29', 1),
(26, 'ANANDA KARLINA', 'Magang Perawat', '2019-10-12', 'Mandiri', 5000000, 'Biaya pelatihan perawat', '2022-03-29', 1),
(27, 'RISMA', 'Magang Perawat', '2019-10-23', 'Mandiri', 5000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(28, 'NICKO AL JABAR', 'Magang Perawat', '2019-10-25', 'LPK Momiji', 5000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(29, 'NANANG DARMAWAN', 'Magang Perawat', '2019-10-25', 'LPK Momiji', 5000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(30, 'REINALDY DJULIUS', 'Magang Kontruksi', '2019-10-19', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(31, 'DICKY ALFIAN', 'Magang Kontruksi', '2019-10-23', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(32, 'JOKO IXZAN PRADANA', 'Magang Perawat', '2019-11-05', 'Mandiri', 5000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(33, 'HAYATUDDIN', 'Magang Kontruksi', '2019-11-11', 'Mandiri', 5000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(34, 'PRIYO PRASSETHIYO', 'Magang Perawat', '2019-11-13', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-29', 1),
(35, 'RISWANTO', 'Tg Pertanian', '2019-11-18', 'Mandiri', 7000000, 'Biaya pendaftaran SSW', '2022-03-29', 1),
(36, 'WISNU PRATAMA PUTRA', 'Magang Perawat', '2019-12-25', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(37, 'RINGGAS LINGGA PERMADI', 'Magang Perawat', '2019-12-25', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(40, 'WISNU PRATAMA PUTRA', 'Magang Perawat', '2019-12-26', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(41, 'WISNU PRATAMA PUTRA', 'Magang Perawat', '2019-12-27', 'Mandiri', 2105000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-29', 1),
(42, 'NAUFAL WILDAN GUSTI MUHAMMAD', 'Magang Perawat', '2019-12-27', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(43, 'WILDAN ARTA HIDAYATULLAH', 'Magang Perawat', '2019-12-27', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(44, 'RINGGAS LINGGA PERMADI', 'Magang Perawat', '2019-12-27', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(45, 'RINGGAS LINGGA PERMADI', 'Magang Perawat', '2019-12-29', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-03-29', 1),
(46, 'RISKA AGUSTIANI', 'Magang Perawat', '2019-12-30', 'Mandiri', 27040000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-29', 1),
(47, 'FEBBY FRINELA SARI', 'Magang Perawat', '2019-12-30', 'Mandiri', 22756000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-29', 1),
(48, 'RINGGAS LINGGA PERMADI', 'Magang Perawat', '2020-01-08', 'Mandiri', 2105000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-31', 1),
(49, 'WILDAN ARTA HIDAYATULLAH', 'Magang Perawat', '2020-12-08', 'Mandiri', 22105000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-31', 1),
(50, 'NAUFAL WILDAN GUSTI MUHAMMAD', 'Magang Perawat', '2020-01-08', 'Mandiri', 26105000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-31', 1),
(51, 'ANANDA KARLINA', 'Magang Perawat', '2020-01-28', 'Mandiri', 5000000, 'Biaya pelatihan perawat', '2022-03-31', 1),
(52, 'MEILANI NURUL AINI', 'Magang Perawat', '2020-01-29', 'Mandiri', 19855000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-31', 1),
(53, 'RIA LOREN LUMBAN GAOL', 'Magang Perawat', '2020-01-30', 'LPK Minori Medan', 21000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-03-31', 1),
(54, 'ALFI MAULANA', 'Magang Kontruksi', '2020-01-30', 'Hiroku TSW', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(55, 'FIQIH PRASETYO', 'Magang Kontruksi', '2020-01-31', 'Hiroku TSW', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(56, 'NURHOLIK', 'Magang Kontruksi', '2020-01-31', 'Hiroku TSW', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(57, 'SAEFUL ANWAR', 'Magang Kontruksi', '2020-02-07', 'Hiroku TSW', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(58, 'MUHAMMAD DIKA HANDIKA GUMILAR', 'Tg Pertanian', '2020-03-02', 'AGUS', 3000000, 'Biaya Administrasi Tg Pertanian', '2022-03-31', 1),
(59, 'MUHAMMAD HIDAYAT UMASANGAJI', 'Magang Perawat', '2020-03-04', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(60, 'HAYATUDDIN', 'Magang Kontruksi', '2020-03-05', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-03-31', 1),
(61, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2020-03-11', 'Mandiri', 3500000, 'Deposit biaya pendidikan', '2022-03-31', 1),
(62, 'ISMAIL', 'Magang Kontruksi', '2020-03-20', 'Mandiri', 7000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(63, 'YOHANA MELATI SAGALA', 'Magang Pengolahan Makanan', '2020-04-08', 'LPK Gapindo', 10000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(64, 'HOTDIANA BR TAMBUNAN', 'Magang Pengolahan Makanan', '2020-04-10', 'LPK Gapindo', 10000000, 'Biaya pendidikan bahasa jepang', '2022-03-31', 1),
(65, 'ROBINSAR SIGALINGGING', 'Tg Kontruksi', '2020-04-23', 'Mandiri', 3000000, 'Biaya proses pengurusan TG Kontruksi', '2022-03-31', 1),
(66, 'IRWAN SETIAWAN', 'Tg Pengolahan Makanan', '2020-05-11', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-03-31', 1),
(67, 'EDI SUNARDI', 'Tg Pengolahan Makanan', '2020-05-21', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-03-31', 1),
(68, 'SRI AGUS SETIAWAN', 'Tg Pengolahan Makanan', '2020-05-11', 'Mandiri', 3000000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(69, 'AGIS FADLI', 'Tg Pengolahan Makanan', '2020-05-10', 'Mandiri', 3000000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(70, 'REZA MUHAMMAD', 'Tg Kontruksi', '2020-05-22', 'Mandiri', 3000000, 'Biaya proses pengurusan TG Kontruksi', '2022-04-05', 1),
(71, 'RAMI', 'Tg Pengolahan Makanan', '2020-05-26', 'Mandiri', 1500000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(72, 'ANDRI KURNIAWAN', 'Tg Pengolahan Makanan', '2020-05-28', 'Mandiri', 1500000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(73, 'ICIH KOMALA DEVI', 'Tg Pengolahan Makanan', '2020-05-28', 'Mandiri', 3000000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(74, 'HOTDIANA BR TAMBUNAN', 'Tg Pengolahan Makanan', '2020-06-10', 'Mandiri', 5000000, 'Angsuran biaya Pendidikan bahasa Jepang', '2022-04-05', 1),
(75, 'YOHANA MELATI SAGALA', 'Magang Pengolahan Makanan', '2020-06-19', 'Mandiri', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(76, 'REZA PAHLEVI MUHAMMAD', 'Tg Pengolahan Makanan', '2020-07-01', 'Mandiri', 3000000, 'Biaya Proses Pengurusan TG Pengoalahan Makanan', '2022-04-05', 1),
(77, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2020-07-21', 'LPK Gapindo', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(78, 'MELISA ULIBASA BR MARPAUNG', 'Magang Perawat', '2020-07-30', 'LPK Gapindo', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(79, 'BIMA PRAKARSA', 'Magang Kontruksi', '2020-08-16', 'LPK HOZY Medan', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(80, 'AGRESIH YOLANDA SINAGA', 'Magang Perawat', '2020-08-25', 'LPK HOZY Medan', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(81, 'MAGFIRA SARIJUDDIN TAKBI', 'Magang Perawat', '2020-09-10', 'LPK Yawata Educational Center', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(82, 'RIMA PUSPITA PRADANA', 'Magang Perawat', '2020-09-10', 'LPK Hirata Gakkou', 2500000, 'Biaya Administrasi setelah tanda tangan kontrak', '2022-04-05', 1),
(83, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2020-09-11', 'Mandiri', 4100000, 'Biaya Administrasi dan SPP September', '2022-04-05', 1),
(84, 'MUHAMMAD YUSRIL RASMIN', 'Magang Kontruksi', '2020-09-12', 'LPK Yawata Educational Center', 10000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(85, 'SELFYANA', 'Magang Perawat', '2020-09-14', 'LPK Murasaki', 3000000, 'Biaya Administrasi setelah tanda tangan kontrak', '2022-04-05', 1),
(86, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2020-09-15', 'Mandiri', 3500000, 'Pelunasan biaya pendidikan bahasa Jepang', '2022-04-05', 1),
(87, 'DYAH HARDIYANTI', 'Magang Perawat', '2020-10-01', 'LPK Takahashi', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(88, 'FITRI UTAMI', 'Magang Perawat', '2020-10-01', 'LPK Takahashi', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(89, 'SARMAULI SIGALINGGING', 'Magang Perawat', '2020-10-01', 'LPK HOZY Medan', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(90, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2020-10-02', 'LPK Yamaguchi', 2500000, 'Biaya Administrasi setelah tanda tangan kontrak', '2022-04-05', 1),
(91, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2020-10-10', 'Mandiri', 1600000, 'Biaya SPP Oktober 2020', '2022-04-05', 1),
(92, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2020-11-04', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(93, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2020-11-06', 'LPK Akeno Gakuen', 4100000, 'Biaya Administrasi dan SPP November 2020', '2022-04-05', 1),
(94, 'FIQIH PRASETYO', 'Magang Kontruksi', '2020-11-09', 'Hiroku TSW', 1500000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(95, 'ISMAIL', 'Magang Kontruksi', '2020-11-12', 'Mandiri', 5000000, 'Biaya Tambahan Pembelian Tiket pesawat', '2022-04-05', 1),
(96, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2020-11-30', 'Mandiri', 1600, 'Biaya SPP November 2020', '2022-04-05', 1),
(97, 'OKTAVIANA TARIGAN', 'Magang Pengolahan Makanan', '2020-12-01', 'LPK Gapindo', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(98, 'ANGGI AGUSTINA', 'Magang Perawat', '2020-12-11', 'LPK PKB Cianjur', 7500000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(99, 'DELA SRI FAUZAH', 'Magang Pengolahan Makanan', '2020-12-11', 'LPK PKB Cianjur', 7500000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(100, 'NOVI OKTAVIANI', 'Magang Perawat', '2020-12-11', 'LPK PKB Cianjur', 7500000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(101, 'RESNAWATI', 'Magang Pengolahan Makanan', '2020-12-11', 'LPK PKB Cianjur', 7500000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(102, 'IRWAN SETIAWAN', 'Tg Pengolahan Makanan', '2020-12-14', 'Mandiri', 17000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(103, 'EDI SUNARDI', 'Tg Pengolahan Makanan', '2020-12-14', 'Mandiri', 17000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(104, 'LARAS PERTIWI', 'Magang Perawat', '2020-12-14', 'LPK PKB Cianjur', 25000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(105, 'AHMAD HAIKAL', 'Tg Kontruksi', '2020-12-15', 'Mandiri', 15000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(106, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2020-12-16', 'LPK Gapindo', 12350000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(107, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2020-12-16', 'LPK Gapindo', 12350000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(108, 'RIPALDO HASUDUNGAN LIMBONG', 'Magang Kontruksi', '2020-12-16', 'LPK Gapindo', 12350000, 'Biaya Pendidikan dan Pemantapan', '2022-04-05', 1),
(109, 'RESTU YUSTIKA', 'Magang Perawat', '2020-12-17', 'LPK PKB Cianjur', 10000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(110, 'ROBINSAR SIGALINGGING', 'Tg Kontruksi', '2020-12-17', 'Mandiri', 17000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(111, 'RIMA PUSPITA PRADANA', 'Magang Perawat', '2020-12-17', 'LPK Hirata Gakkou', 10000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(112, 'AHMAD HAIKAL', 'Tg Kontruksi', '2020-12-18', 'Mandiri', 5000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(113, 'FITRI NURAZIZAH', 'Magang Perawat', '2020-12-18', 'LPK PKB Cianjur', 10000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(114, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2020-12-18', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(115, 'MAGFIRA SARIJUDDIN TAKBI', 'Magang Perawat', '2020-12-18', 'LPK Yawata Educational Center', 11650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(116, 'RIMA PUSPITA PRADANA', 'Magang Perawat', '2020-12-18', 'LPK Hirata Gakkou', 10000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(117, 'SINDY AINURIZQI', 'Magang Perawat', '2020-12-18', 'Mandiri', 16000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(118, 'MUHAMMAD DIKA HANDIKA GUMILAR', 'Tg Pertanian', '2020-12-21', 'Mandiri', 28500000, 'Biaya Keberangkatan Ke Jepang', '2022-04-05', 1),
(119, 'RESTU YUSTIKA', 'Magang Perawat', '2020-12-24', 'LPK PKB Cianjur', 14465000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(120, 'FITRI NURAZIZAH', 'Magang Perawat', '2020-12-24', 'LPK PKB Cianjur', 14650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(121, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2020-12-27', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-05', 1),
(122, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2020-12-28', 'Mandiri', 2650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(123, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2020-12-29', 'Mandiri', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(124, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2020-12-29', 'Mandiri', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(125, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2020-12-29', 'Mandiri', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(126, 'SINDY AINURIZQI', 'Magang Perawat', '2020-12-30', 'Mandiri', 11650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(127, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2020-12-30', 'LPK HOZY Medan', 5000000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(128, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2020-12-30', 'LPK HOZY Medan', 5000000, 'Deposit biaya pendidikan', '2022-04-05', 1),
(129, 'LARAS PERTIWI', 'Magang Perawat', '2021-01-08', 'LPK PKB Cianjur', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(130, 'RESTU YUSTIKA', 'Magang Perawat', '2021-01-08', 'LPK PKB Cianjur', 185000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(131, 'HILDA ALVIONITA', 'Tg Perawat', '2021-01-11', 'Mandiri', 3000000, 'Biaya setelah tanda tangan kontrak TG Perawat', '2022-04-05', 1),
(132, 'SINDY AINURIZQI', 'Magang Perawat', '2021-01-14', 'Mandiri', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(133, 'RESTU YUSTIKA', 'Magang Perawat', '2021-01-14', 'LPK PKB Cianjur', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(134, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2021-01-14', 'Mandiri', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(135, 'FITRI NURAZIZAH', 'Magang Perawat', '2021-01-14', 'LPK PKB Cianjur', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(136, 'RIMA PUSPITA PRADANA', 'Magang Perawat', '2021-01-14', 'LPK Hirata Gakkou', 6950000, 'Biaya Karantina', '2022-04-05', 1),
(137, 'KHOFIFAH INDAH', 'Magang Perawat', '2021-01-20', 'Mandiri', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-05', 1),
(138, 'KHANIFAH', 'Magang Perawat', '2021-01-20', 'Mandiri', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-05', 1),
(139, 'GUSTI AYU PURNAMASARI', 'Magang Perawat', '2021-01-20', 'Mandiri', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-05', 1),
(140, 'METRI NOVITA', 'Magang Perawat', '2021-01-20', 'LPK Haruki Gakkou', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-05', 1),
(141, 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Magang Kontruksi', '2021-01-20', 'LPK Gapindo', 5000000, 'Biaya pendidikan bahasa jepang', '2022-04-05', 1),
(142, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2021-01-25', 'Mandiri', 1600000, 'Biaya SPP Desember 2020', '2022-04-05', 1),
(143, 'WELLI WENDRI', 'Magang Perawat', '2021-01-26', 'LPK Haruki Gakkou', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-05', 1),
(144, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2021-01-29', 'LPK Akeno Gakuen', 8000000, 'Pelunasan biaya pendidikan bahasa Jepang', '2022-04-05', 1),
(145, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2021-01-30', 'LPK HOZY Medan', 3000000, 'Angsuran biaya Pendidikan bahasa Jepang', '2022-04-05', 1),
(146, 'NICKO AL JABAR', 'Magang Perawat', '2021-02-01', 'LPK Momiji', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(147, 'AHMAD RIFAI', 'Magang Perawat', '2021-02-03', 'Mandiri', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(148, 'PRIYO PRASSETHIYO', 'Magang Perawat', '2021-02-03', 'Mandiri', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(149, 'SELFYANA', 'Magang Perawat', '2021-02-05', 'LPK Murasaki', 5000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(150, 'SELFYANA', 'Magang Perawat', '2021-02-14', 'LPK Murasaki', 13656500, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(151, 'MUHAMAD ARYA PUTERA', 'Magang Perawat', '2021-02-19', 'LPK Haruki Gakkou', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(152, 'SAEFUL ANWAR', 'Magang Kontruksi', '2021-02-21', 'Hiroku TSW', 10000000, 'Deposit biaya keberangkatan', '2022-04-05', 1),
(153, 'SAEFUL ANWAR', 'Magang Kontruksi', '2021-02-22', 'Hiroku TSW', 9650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-05', 1),
(154, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-02-26', 'LPK PMS Karawang', 8500000, 'Deposit biaya pendidikan dan pemantapan', '2022-04-05', 1),
(155, 'DWI HAINUN NINGSIH', 'Magang Perawat', '2021-02-26', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(156, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2021-02-26', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang Perawat', '2022-04-05', 1),
(157, 'RICO PRAYOGA WIBISONO', 'Magang Pengolahan Makanan', '2021-02-26', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang Pengolahan Makanan', '2022-04-05', 1),
(158, 'RIZKY SETIAWAN', 'Magang Pengolahan Makanan', '2021-02-26', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang Pengolahan Makanan', '2022-04-05', 1),
(159, 'DELA SRI FAUZAH', 'Magang Pengolahan Makanan', '2021-02-28', 'LPK PKB Cianjur', 3500000, 'Deposit biaya pendidikan dan pemantapan', '2022-04-05', 1),
(160, 'DELA SRI FAUZAH', 'Magang Pengolahan Makanan', '2021-02-28', 'LPK PKB Cianjur', 3500000, 'Deposit biaya pendidikan dan pemantapan', '2022-04-05', 1),
(161, 'ANGGI AGUSTINA', 'Magang Perawat', '2021-03-01', 'LPK PKB Cianjur', 3500000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(162, 'NOVI OKTAVIANI', 'Magang Perawat', '2021-03-02', 'LPK PKB Cianjur', 3500000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(163, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-03-03', 'LPK PMS Karawang', 3600000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(164, 'RESNAWATI', 'Magang Pengolahan Makanan', '2021-03-04', 'LPK PKB Cianjur', 3500000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(165, 'DWI HAINUN NINGSIH', 'Magang Perawat', '2021-03-06', 'LPK Akeno Gakuen', 6000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(166, 'NOVIZA DWI PUTRA', 'Magang Kontruksi', '2021-03-08', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(167, 'DEBI APRIZAL', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(168, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(169, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(170, 'GRESA JUNIO SRIBU', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(171, 'DADI NURHADI', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(172, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(173, 'SENDY FAJAR ARUNA', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(174, 'RIZKI ROMADON', 'Magang Kontruksi', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(175, 'FAJAR SETYADI', 'Ryuugakusei', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(176, 'ELLA AGUSTIN', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(177, 'ESLA TIARA ANGGRAENI', 'Magang Pengolahan Makanan', '2021-03-09', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(178, 'WAHYU DWININGTYAS', 'Magang Perawat', '2021-03-11', 'Mandiri', 2000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(179, 'NURJANAH', 'Magang Perawat', '2021-03-12', 'Mandiri', 20140000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(180, 'DESI HANDAYANI TAMBUNAN', 'Magang Pengolahan Makanan', '2021-03-15', 'LPK Gapindo', 18150000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(181, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2021-03-16', 'Mandiri', 3000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(182, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2021-03-18', 'LPK Akeno Gakuen', 2000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(183, 'MUHAMMAD HIDAYAT UMASANGAJI', 'Magang Perawat', '2021-03-18', 'Mandiri', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(184, 'SRI ANISA RAHAYU', 'Magang Pengolahan Makanan', '2021-03-20', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(185, 'DEWI NOVIANINGSIH', 'Magang Pengolahan Makanan', '2021-03-21', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(186, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-03-22', 'Mandiri', 3000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(187, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2021-03-22', 'Mandiri', 4000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(188, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Magang Kontruksi', '2021-03-30', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(189, 'SUGENG PRIYANTO', 'Magang Kontruksi', '2021-03-30', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(190, 'RANGGA MAULANA', 'Magang Kontruksi', '2021-03-30', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(191, 'SUPARDI', 'Magang Kontruksi', '2021-03-30', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(192, 'EMIL ZHABIL FAUZIA', 'Magang Pengolahan Makanan', '2021-03-31', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(193, 'DYAH NUR SAPUTRI', 'Magang Pengolahan Makanan', '2021-03-31', 'LPK PMS Karawang', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(194, 'NOVI OKTAVIANI', 'Magang Perawat', '2021-04-01', 'LPK PKB Cianjur', 2500000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(195, 'DELA SRI FAUZAH', 'Magang Perawat', '2021-04-01', 'LPK PKB Cianjur', 4000000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(196, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2021-04-04', 'LPK HOZY Medan', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(197, 'EDO ERIK MARLANDO', 'Magang Kontruksi', '2021-04-05', 'Mandiri', 4350000, 'Biaya pendidikan bahasa jepang', '2022-04-06', 1),
(198, 'REDI HERIANTO', 'Magang Kontruksi', '2021-04-05', 'Mandiri', 6350000, 'Deposit biaya pendidikan', '2022-04-06', 1),
(199, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2021-04-09', 'LPK Akeno Gakuen', 4350000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(200, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2021-04-12', 'Mandiri', 3200000, 'Biaya SPP 2 bulan', '2022-04-06', 1),
(201, 'MUHAMMAD SADDANG', 'Magang Pengolahan Makanan', '2021-04-16', 'Mandiri', 3000000, 'Deposit biaya pendidikan', '2022-04-06', 1),
(202, 'FITRI UTAMI', 'Magang Perawat', '2021-04-16', 'LPK Takahashi', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-06', 1),
(203, 'NURHOLIK', 'Magang Kontruksi', '2021-04-17', 'Hiroku TSW', 1800000, 'Deposit biaya sertifikasi', '2022-04-06', 1),
(204, 'RISMA', 'Magang Perawat', '2021-04-17', 'Mandiri', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-06', 1),
(205, 'WAHYU DWININGTYAS', 'Magang Perawat', '2021-04-17', 'Mandiri', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-06', 1),
(206, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Magang Kontruksi', '2021-04-17', 'LPK PMS Karawang', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(207, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2021-04-19', 'LPK Yamaguchi', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(208, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2021-04-19', 'LPK Akeno Gakuen', 14650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(209, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2021-04-19', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(210, 'DWI HAINUN NINGSIH', 'Magang Perawat', '2021-04-19', 'LPK Akeno Gakuen', 3000000, 'Biaya Sertifikasi Perawat', '2022-04-06', 1),
(211, 'DANIEL YULISMAN', 'Magang Kontruksi', '2021-04-20', 'LPK Haruki Gakkou', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(212, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2021-04-20', 'LPK HOZY Medan', 2000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(213, 'METRI NOVITA', 'Magang Perawat', '2021-04-20', 'LPK Haruki Gakkou', 5000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(214, 'GUSTI AYU PURNAMASARI', 'Magang Perawat', '2021-04-20', 'Mandiri', 3000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(215, 'KHOFIFAH INDAH', 'Magang Perawat', '2021-04-20', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(216, 'DESI N SIANIPAR', 'Magang Pengolahan Makanan', '2021-04-20', 'LPK Gapindo', 2500000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(217, 'YOHANA MELATI SAGALA', 'Magang Pengolahan Makanan', '2021-04-20', 'LPK Gapindo', 2000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(218, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2021-04-20', 'LPK Gapindo', 2000000, 'Deposit biaya sertifikasi', '2022-04-06', 1),
(219, 'ELSA TIARA ANGGRAENI', 'Magang Pengolahan Makanan', '2021-04-20', 'LPK Akeno Gakuen', 4100000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(220, 'ELLA AGUSTIN', 'Magang Pengolahan Makanan', '2021-04-20', 'LPK Akeno Gakuen', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-06', 1),
(221, 'RIZKI ROMADON', 'Magang Kontruksi', '2021-04-20', 'LPK Akeno Gakuen', 12100000, 'Biaya Pendidikan dan Pemantapan', '2022-04-06', 1),
(222, 'ESLA TIARA ANGGRAENI', 'Magang Pengolahan Makanan', '2021-04-21', 'LPK Akeno Gakuen', 8000000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(223, 'FAJAR SETYADI', 'Ryuugakusei', '2021-04-21', 'LPK Akeno Gakuen', 9000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(224, 'FAJAR SETYADI', 'Ryuugakusei', '2021-04-22', 'LPK Akeno Gakuen', 3100000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(225, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2021-04-22', 'Mandiri', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(226, 'UTTA FIANNA PUTRI', 'Magang Perawat', '2021-04-29', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(227, 'EMIL ZHABIL FAUZIA', 'Magang Pengolahan Makanan', '2021-05-03', 'LPK PMS Karawang', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(228, 'DYAH NUR SAPUTRI', 'Magang Pengolahan Makanan', '2021-05-03', 'LPK PMS Karawang', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(229, 'SRI ANISA RAHAYU', 'Magang Pengolahan Makanan', '2021-05-03', 'Mandiri', 6000000, 'Deposit biaya pemantapan', '2022-04-06', 1),
(230, 'ELVANY FEBRIANTI', 'Magang Perawat', '2021-05-04', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(231, 'RESNAWATI', 'Magang Pengolahan Makanan', '2021-05-04', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(232, 'RIDHO TRI LAKSONO', 'Tg Perawat', '2021-05-04', 'LPK Akeno Gakuen', 250000, 'Biaya pendaftaran SSW', '2022-04-06', 1),
(233, 'RENDI ISRYADUL KHAQ', 'Tg Perawat', '2021-05-04', 'LPK Akeno Gakuen', 250000, 'Biaya pendaftaran SSW', '2022-04-06', 1),
(234, 'FRENDI SANTOSO', 'Tg Perawat', '2021-05-04', 'LPK Akeno Gakuen', 250000, 'Biaya pendaftaran SSW', '2022-04-06', 1),
(235, 'HENDRO ASEP NANA TARMANA', 'Tg Perawat', '2021-05-06', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-06', 1),
(236, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2021-05-06', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(237, 'ANGGI AGUSTINA', 'Magang Perawat', '2021-05-07', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(238, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2021-05-08', 'Mandiri', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(239, 'MUHAMMAD AL IKHWAN', 'Tg Perawat', '2021-05-10', 'Mandiri', 2000000, 'Deposit biaya pengurusan TG perawat', '2022-04-06', 1),
(240, 'MUHAMMAD AL IKHWAN', 'Tg Perawat', '2021-05-10', 'Mandiri', 3000000, 'Pelunasan biaya pengurusan Tg Perawat', '2022-04-06', 1),
(241, 'REGINA AGUSTINE', 'Magang Pengolahan Makanan', '2021-05-12', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(242, 'PUTRI', 'Magang Pengolahan Makanan', '2021-04-12', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(243, 'RIDHO TRI LAKSONO', 'Tg Perawat', '2021-05-15', 'LPK Akeno Gakuen', 5000000, 'Biaya Proses Tg Perawat', '2022-04-06', 1),
(244, 'RENDI ISRYADUL KHAQ', 'Tg Perawat', '2021-05-15', 'LPK Akeno Gakuen', 5000000, 'Biaya Proses Tg Perawat', '2022-04-06', 1),
(245, 'FRENDI SANTOSO', 'Tg Perawat', '2021-05-16', 'LPK Akeno Gakuen', 5000000, 'Biaya Proses Tg Perawat', '2022-04-06', 1),
(246, 'SRI ANISA RAHAYU', 'Magang Pengolahan Makanan', '2021-05-24', 'Mandiri', 6100000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(247, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2021-05-25', 'Mandiri', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(248, 'PUTRI', 'Magang Pengolahan Makanan', '2021-05-25', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(249, 'REGINA AGUSTINE', 'Magang Pengolahan Makanan', '2021-05-25', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(250, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2021-05-25', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(251, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2021-05-25', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(252, 'ELSA TIARA ANGGRAENI', 'Magang Pengolahan Makanan', '2021-05-26', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(253, 'SINDY AINURIZQI', 'Magang Perawat', '2021-05-27', 'Mandiri', 2000000, 'Bayar Hutang ke MHJ untk angsuran dana didik', '2022-04-06', 1),
(254, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2021-05-28', 'LPK Akeno Gakuen', 8000000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(255, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2021-05-28', 'Mandiri', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(256, 'ANI NURMILASARI', 'Tg Perawat', '2021-05-29', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-06', 1),
(257, 'DWI HAINUN NINGSIH', 'Magang Pertanian', '2021-05-30', 'LPK Akeno Gakuen', 6100000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(258, 'OKTAVIANA TARIGAN', 'Magang Pengolahan Makanan', '2021-05-31', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(259, 'SINDY AINURIZQI', 'Magang Perawat', '2021-06-02', 'Mandiri', 12000000, 'Pelunasan biaya pinjaman untuk bayar dana didik', '2022-04-06', 1),
(260, 'REDI HERIANTO', 'Magang Kontruksi', '2021-06-04', 'Mandiri', 6000000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(261, 'SRI ANISA RAHAYU', 'Magang Pengolahan Makanan', '2021-06-04', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(262, 'SAEFUL ANWAR', 'Magang Kontruksi', '2021-06-04', 'Hiroku TSW', 700000, 'Biaya Lisensi', '2022-04-06', 1),
(263, 'REGINA AGUSTINE', 'Magang Pengolahan Makanan', '2021-06-05', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(264, 'PUTRI', 'Magang Pengolahan Makanan', '2021-06-06', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(265, 'UTTA FIANNA PUTRI', 'Magang Perawat', '2021-06-06', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(266, 'FAJAR SETYADI', 'Ryuugakusei', '2021-06-07', 'LPK Akeno Gakuen', 2000000, 'Deposit biaya sertifikasi', '2022-04-06', 1),
(267, 'WAHYU DWININGTYAS', 'Magang Perawat', '2021-06-08', 'Mandiri', 4100000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(268, 'EVA NOVIYANA', 'Magang Perawat', '2021-06-08', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(269, 'FITRI UTAMI', 'Magang Perawat', '2021-06-08', 'LPK Takahashi', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(270, 'EMIL ZHABIL FAUZIA', 'Magang Pengolahan Makanan', '2021-06-08', 'LPK PMS Karawang', 2000000, 'Deposit biaya sertifikasi', '2022-04-06', 1),
(271, 'ELLA AGUSTIN', 'Magang Pengolahan Makanan', '2021-06-08', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(272, 'EDO ERIK MARLANDO', 'Magang Kontruksi', '2021-06-09', 'Mandiri', 2000000, 'Angsuran biaya Pendidikan bahasa Jepang', '2022-04-06', 1),
(273, 'MAGFIRA SARIJUDDIN TAKBI', 'Magang Perawat', '2021-06-10', 'LPK Yawata Educational Center', 6250000, 'Biaya Karantina', '2022-04-06', 1),
(274, 'DYAH NUR SAPUTRI', 'Magang Pengolahan Makanan', '2021-06-11', 'LPK PMS Karawang', 1500000, 'Deposit biaya sertifikasi', '2022-04-06', 1),
(275, 'ELVANY FEBRIANTI', 'Magang Perawat', '2021-06-11', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(276, 'RIZKI ROMADON', 'Magang Kontruksi', '2021-06-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(277, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2021-06-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(278, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2021-06-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(279, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-06-14', 'LPK PMS Karawang', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(280, 'MUHAMMAD SADDANG', 'Magang Kontruksi', '2021-06-16', 'Mandiri', 9350000, 'Pelunasan biaya pendidikan bahasa Jepang', '2022-04-06', 1),
(281, 'ABDUL WAHID', 'Magang Kontruksi', '2021-06-16', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(282, 'KHOFIFAH INDAH', 'Magang Perawat', '2021-06-20', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(283, 'NURHOLIK', 'Magang Kontruksi', '2021-06-24', 'Hiroku TSW', 24200000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(284, 'EVA NOVIYANA', 'Magang Perawat', '2021-06-28', 'Mandiri', 5000000, 'Deposit biaya pendidikan', '2022-04-06', 1),
(285, 'YOGA ARI SANDI', 'Magang Kontruksi', '2021-06-28', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(286, 'ADI SATYA MUKTI', 'Magang Kontruksi', '2021-06-29', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(287, 'FAJAR SETYADI', 'Ryuugakusei', '2021-06-29', 'LPK Akeno Gakuen', 1000000, 'Pelunasan biaya pemantapan', '2022-04-06', 1),
(288, 'ETA PERMATA HATI', 'Magang Perawat', '2021-07-05', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(289, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2021-07-05', 'LPK Yamaguchi', 10000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(290, 'EMIL ZHABIL FAUZIA', 'Magang Pengolahan Makanan', '2021-07-06', 'LPK PMS Karawang', 1000000, 'Pelunasan Biaya Sertifikasi', '2022-04-06', 1),
(291, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2021-07-06', 'LPK Yamaguchi', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(292, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2021-07-07', 'LPK Yamaguchi', 9250000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(293, 'ADI SATYA MUKTI', 'Magang Kontruksi', '2021-07-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(294, 'YOGA ARI SANDI', 'Magang Kontruksi', '2021-07-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-06', 1),
(295, 'SUMARNO', 'Magang Kontruksi', '2021-07-14', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(296, 'IMAM SYAFII', 'Magang Kontruksi', '2021-07-15', 'Mandiri', 15000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(297, 'IMAM SYAFII', 'Magang Kontruksi', '2021-07-16', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(298, 'SUMARNO', 'Magang Kontruksi', '2021-07-26', 'Mandiri', 13000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(299, 'FIQIH PRASETYO', 'Magang Kontruksi', '2021-07-26', 'Hiroku TSW', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(300, 'ISMAIL', 'Magang Kontruksi', '2021-07-26', 'Mandiri', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(301, 'TAUFIQ HIDAYAT FIRDAUS', 'Magang Kontruksi', '2021-07-30', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(302, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2021-08-06', 'LPK Gapindo', 1000000, 'Pelunasan Biaya Sertifikasi', '2022-04-06', 1),
(303, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2021-08-06', 'LPK Akeno Gakuen', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(304, 'EDO ERIK MARLANDO', 'Magang Kontruksi', '2021-08-09', 'Mandiri', 2450000, 'Angsuran biaya Pendidikan bahasa Jepang', '2022-04-06', 1),
(305, 'AMELIA', 'Magang Pengolahan Makanan', '2021-08-09', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(306, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2021-08-09', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-06', 1),
(307, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2021-08-10', 'LPK Gapindo', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(308, 'DODI LESMANA', 'Magang Kontruksi', '2021-08-12', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(309, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Magang Kontruksi', '2021-08-25', 'LPK PMS Karawang', 25000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(310, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-08-20', 'Mandiri', 3000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(311, 'TAUFIQ HIDAYAT FIRDAUS', 'Magang Kontruksi', '2021-08-23', 'Mandiri', 16000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-06', 1),
(312, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2021-08-23', 'LPK Akeno Gakuen', 5000000, 'Angsuran Biaya Pemantapan', '2022-04-06', 1),
(313, 'FIQIH PRASETYO', 'Magang Kontruksi', '2021-08-26', 'Hiroku TSW', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(314, 'ISMAIL', 'Magang Kontruksi', '2021-08-26', 'Mandiri', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-06', 1),
(315, 'I KOMANG ADI PUTRA', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(316, 'JERRY JULIANTO', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(317, 'I KOMANG ADI WIRAWAN', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(318, 'I MADE WIRA KUSUMA', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(319, 'I PUTU GEDE SUDANA MERTA', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(320, 'GEDE ANDIKA MAHESA PUTRA', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(321, 'DIMAS ADI SEPTIAN', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(322, 'REZA MALANA HAQ', 'Magang Pertanian', '2021-09-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-06', 1),
(323, 'RASTIMAH', 'Magang Pengolahan Makanan', '2021-09-03', 'Mandiri', 500000, 'Biaya pendaftaran Kelas online', '2022-04-06', 1),
(324, 'I KOMANG ADI WIRAWAN', 'Magang Pertanian', '2021-09-05', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(325, 'I KOMANG ADI PUTRA', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-06', 1),
(326, 'JEPRI JULIANTO', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(327, 'I MADE WIRA KUSUMA', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(328, 'I PUTU GEDE SUDANA MERTA', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(329, 'GEDE ANDIKA MAHESA PUTRA', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(330, 'DIMAS ADI SEPTIAN', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(331, 'REZA MALANA HAQ', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(332, 'GRESA JUNIO SRIBU', 'Magang Pertanian', '2021-09-06', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(333, 'SHIFA RAFIFAH', 'Magang Pertanian', '2021-09-07', 'LPK Momotaro', 4000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(334, 'FEBI MAULANA', 'Magang Pertanian', '2021-09-11', 'LPK Akeno Gakuen', 12350000, 'Biaya pendaftaran dan pemantapan setelah ttd kontrak', '2022-04-08', 1),
(335, 'NURBAKTI WIBOWO', 'Magang Kontruksi', '2021-09-13', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(336, 'NURUL HAWA', 'Tg Pengolahan Makanan', '2021-09-16', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(337, 'I PUTU AGUS SETIAWAN', 'Magang Pengolahan Makanan', '2021-09-17', 'LPK Akeno Gakuen', 12350000, 'Biaya pendaftaran dan pemantapan setelah ttd kontrak', '2022-04-08', 1),
(338, 'I GUSTI PUTU CANDRA WIDIANYANA', 'Magang Pengolahan Makanan', '2021-09-20', 'LPK Akeno Gakuen', 12350000, 'Biaya Pendaftaran dan Pemantapan', '2022-04-08', 1),
(339, 'RIFAL AHMAD JULPIKAR', 'Tg Pengolahan Makanan', '2021-09-20', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(340, 'UTTA FIANNA PUTRI', 'Magang Perawat', '2021-09-21', 'LPK Akeno Gakuen', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(341, 'SHOFIQ NUR ADHA', 'Tg Pengolahan Makanan', '2021-09-21', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(342, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2021-09-23', 'LPK Gapindo', 2000000, 'Deposit biaya sertifikasi', '2022-04-08', 1),
(343, 'BIMA PRAKARSA', 'Magang Kontruksi', '2021-09-23', 'LPK HOZY Medan', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(344, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2021-09-24', 'Mandiri', 5000000, 'Pelunasan biaya pemantapan dan sertifikasi', '2022-04-08', 1),
(345, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2021-09-24', 'Mandiri', 1000000, 'Deposit biaya sertifikasi', '2022-04-08', 1),
(346, 'FIQIH PRASETYO', 'Magang Kontruksi', '2021-09-25', 'Hiroku TSW', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(347, 'ISMAIL', 'Magang Kontruksi', '2021-09-25', 'Mandiri', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(348, 'MUKLIS', 'Tg Kontruksi', '2021-09-28', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(349, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-09-30', 'LPK PMS Karawang', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(350, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2021-10-01', 'Mandiri', 1000000, 'Angsuran biaya sertifikasi', '2022-04-08', 1),
(351, 'HARDYAN YOGA RIZKY', 'Tg Kontruksi', '2021-10-04', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(352, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2021-10-04', 'LPK Gapindo', 500000, 'Pelunasan biaya passpor', '2022-04-08', 1),
(353, 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Magang Kontruksi', '2021-10-04', 'LPK Gapindo', 1500000, 'Deposit biaya sertifikasi', '2022-04-08', 1),
(354, 'ADITYA FAHMI HIDAYATULLAH', 'Tg Perawat', '2021-10-04', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(355, 'DANIEL YULISMAN', 'Magang Kontruksi', '2021-10-04', 'LPK Haruki Gakkou', 1500000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(356, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2021-10-05', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(357, 'SHIFA RAFIFAH', 'Magang Pengolahan Makanan', '2021-10-06', 'LPK Momotaro', 4000000, 'Angsuran Biaya Pemantapan', '2022-04-08', 1),
(358, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2021-10-07', 'Mandiri', 5000000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(359, 'I PUTU OKTA SANTIKA', 'Magang Kontruksi', '2021-10-09', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(360, 'AKMAD FAHRUL RAZI PAMUNGKAS', 'Tg Perawat', '2021-10-09', 'LPK Akeno Gakuen', 6000000, 'Biaya pengurusan dokumen TG', '2022-04-08', 1),
(361, 'FEBI MAULANA', 'Magang Pertanian', '2021-10-10', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(362, 'JERRY JULIANTO', 'Magang Pertanian', '2021-10-10', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(363, 'GRESA JUNIO SRIBU', 'Magang Pertanian', '2021-10-10', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(364, 'I KADEK PANDE JULIANANTA', 'Magang Pertanian', '2021-10-10', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(365, 'I PUTU AGUS SETIAWAN', 'Magang Pertanian', '2021-10-11', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(366, 'I KOMANG ADI WIRAWAN', 'Magang Pertanian', '2021-10-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(367, 'REZA MALANA HAQ', 'Magang Pertanian', '2021-10-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(368, 'I KOMANG ADI PUTRA', 'Magang Pertanian', '2021-10-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(369, 'I MADE WIRA KUSUMA', 'Magang Pertanian', '2021-10-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(370, 'I PUTU GEDE SUDANA MERTA', 'Magang Pertanian', '2021-10-12', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(371, 'DIMAS ADI SEPTIAN', 'Magang Pertanian', '2021-10-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(372, 'GEDE ANDIKA MAHESA PUTRA', 'Magang Pertanian', '2021-10-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(373, 'I PUTU CANDRA', 'Magang Pertanian', '2021-10-13', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(374, 'RASTIMAH', 'Magang Pengolahan Makanan', '2021-10-13', 'Mandiri', 700000, 'Biaya SPP ke 2 Kelas Online', '2022-04-08', 1),
(375, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2021-10-15', 'LPK Akeno Gakuen', 5000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(376, 'RIPALDO HASUDUNGAN LIMBONG', 'Magang Kontruksi', '2021-10-15', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(377, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2021-10-16', 'Mandiri', 11100000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(378, 'TONI HERMAWAN', 'Magang Kontruksi', '2021-10-16', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(379, 'NASMIN', 'Magang Kontruksi', '2021-10-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1);
INSERT INTO `payment` (`id`, `name`, `program`, `date_payment`, `person_responsible`, `nominal`, `description`, `date_created`, `is_active`) VALUES
(380, 'ATEP ISKANDAR', 'Tg Kontruksi', '2021-10-19', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(381, 'HAIRUL ANWAR', 'Magang Kontruksi', '2021-10-20', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(382, 'MUHAMAD RIDHO ATMOZO', 'Tg Press Logam', '2021-10-20', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(383, 'PRISMA ABDUROHMAN', 'Tg Press Logam', '2021-10-20', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(384, 'I PUTU ARYA JUNI ASTRAWAN', 'Magang Kontruksi', '2021-10-21', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(385, 'I PUTU ADI SUMADIANA', 'Magang Kontruksi', '2021-10-21', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(386, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2021-10-21', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(387, 'MUHAMMAD JALALUDIN', 'Tg Press Logam', '2021-10-21', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(388, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-10-21', 'Mandiri', 15000000, 'Pelunasan biaya pemantapan, sertifikasi dan Deposit biaya keberangkatan', '2022-04-08', 1),
(389, 'WAHYU DWININGTYAS', 'Magang Perawat', '2021-10-21', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(390, 'HILDA ALVIONITA', 'Tg Perawat', '2021-10-25', 'Mandiri', 12000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(391, 'HAIRUL ANWAR', 'Magang Kontruksi', '2021-10-25', 'Mandiri', 5000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(392, 'FIQIH PRASETYO', 'Magang Kontruksi', '2021-10-26', 'Hiroku TSW', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(393, 'ISMAIL', 'Magang Kontruksi', '2021-10-26', 'Mandiri', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(394, 'MUTIARA KHAERUNNISA', 'Magang Perawat', '2021-10-27', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(395, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2021-10-30', 'LPK Hirata Gakkou', 1000000, 'Deposit biaya sertifikasi', '2022-04-08', 1),
(396, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-10-31', 'LPK PMS Karawang', 2000000, 'Angsuran ke 2 Biaya keberangkatan ke Jepang', '2022-04-08', 1),
(397, 'RADITYA GITA CANDRA', 'Magang Kontruksi', '2021-11-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(398, 'I PUTU AGUS RAKA DARMA PUTRA', 'Magang Kontruksi', '2021-11-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(399, 'PUTU AYRA NURBAWA PUTRA', 'Magang Kontruksi', '2021-11-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(400, 'SULANI', 'Magang Kontruksi', '2021-11-02', 'LPK Akeno Gakuen', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(401, 'RIKE RIANI', 'Ryuugakusei', '2021-11-02', 'Mandiri', 250000, 'Biaya Pendaftaran Ryuugakusei', '2022-04-08', 1),
(402, 'ENDA NURYANA', 'Ryuugakusei', '2021-11-02', 'Mandiri', 250000, 'Biaya Pendaftaran Ryuugakusei', '2022-04-08', 1),
(403, 'EDHWIN FARHAN RIYADHI', 'Ryuugakusei', '2021-11-02', 'Mandiri', 250000, 'Biaya Pendaftaran Ryuugakusei', '2022-04-08', 1),
(404, 'WAHYU DWININGTYAS', 'Magang Perawat', '2021-11-04', 'Mandiri', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(405, 'RIMHOT SITANGGANG', 'Magang Kontruksi', '2021-11-04', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(406, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2021-11-04', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(407, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2021-11-04', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(408, 'FITA GULTOM', 'Magang Perawat', '2021-11-04', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(409, 'HENDRIK PURNOMO', 'Magang Pengolahan Makanan', '2021-11-05', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(410, 'YOLANDA PURNAMA PUTRI', 'Magang Pengolahan Makanan', '2021-11-06', 'LPK Yukimaga', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(411, 'TIRZA SAMANTA VERONICA', 'Magang Pengolahan Makanan', '2021-11-06', 'LPK Yukimaga', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(412, 'EDHWIN FARHAN RIYADHI', 'Ryuugakusei', '2021-11-06', 'Mandiri', 5000000, 'Biaya pengurusan dokumen Ryuugekusei', '2022-04-08', 1),
(413, 'SHIFA RAFIFAH', 'Magang Pengolahan Makanan', '2021-11-08', 'LPK Momotaro', 4000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(414, 'SHIFA RAFIFAH', 'Magang Pengolahan Makanan', '2021-11-08', 'LPK Momotaro', 4000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(415, 'ANGGA ROKHIM PRASETYO', 'Magang Kontruksi', '2021-11-08', 'LPK Yukimaga', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(416, 'ADITYA INDRA WARDANA', 'Magang Kontruksi', '2021-11-08', 'LPK Yukimaga', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(417, 'MICHOLAS SEPTANTO SAPUTRO', 'Magang Kontruksi', '2021-11-09', 'LPK Yukimaga', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(418, 'RYAN RAMADHAN', 'Magang Kontruksi', '2021-11-09', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(419, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-11-09', 'Mandiri', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(420, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-11-09', 'Mandiri', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(421, 'NURJANAH', 'Magang Perawat', '2021-11-10', 'Mandiri', 1510000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(422, 'RASTIMAH', 'Magang Pengolahan Makanan', '2021-11-12', 'Mandiri', 700000, 'Biaya Spp ke 3 Kelas Online', '2022-04-08', 1),
(423, 'FITA GULTOM', 'Magang Pengolahan Makanan', '2021-11-12', 'LPK Gapindo', 10000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(424, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2021-11-13', 'LPK Hirata Gakkou', 1000000, 'Angsuran biaya sertifikasi', '2022-04-08', 1),
(425, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2021-11-15', 'LPK Gapindo', 10000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(426, 'RIMHOT SITANGGANG', 'Magang Kontruksi', '2021-11-15', 'LPK Gapindo', 10000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(427, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2021-11-15', 'LPK Gapindo', 10000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(428, 'HANI KHOIRUNNISA', 'Magang Perawat', '2021-11-15', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(429, 'ANDRY SETYAWAN', 'Magang Kontruksi', '2021-11-15', 'LPK Keigo Cilacap', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(430, 'GUSTI AYU PURNAMASARI', 'Magang Perawat', '2021-11-16', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(431, 'HAIRUL ANWAR', 'Magang Kontruksi', '2021-11-16', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(432, 'WAIS AL QORNI', 'Tg Perikanan', '2021-11-17', 'Mandiri', 5000000, 'Biaya Administrasi setelah tanda tangan kontrak', '2022-04-08', 1),
(433, 'GUSTI AYU PURNAMASARI', 'Magang Perawat', '2021-11-18', 'Mandiri', 9000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(434, 'MOHAMMAD ALFIAN RIFANI', 'Tg Pengelasan', '2021-11-18', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(435, 'NOFA JETLI', 'Tg Pengelasan', '2021-11-18', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(436, 'NINA MEILANI', 'Tg Perawat', '2021-11-18', 'Mandiri', 250, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(437, 'SINTA NERITA', 'Magang Perawat', '2021-11-19', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(438, 'SITI MAESAROH', 'Magang Perawat', '2021-11-19', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(439, 'FIKRI SHOLEHUL AKBAR', 'Magang Pertanian', '2021-11-20', 'LPK Itsukajuu', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(440, 'DIMAS RISQI ATTHORIQ', 'Magang Pertanian', '2021-11-20', 'LPK Itsukajuu', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(441, 'LUKMAN NURAFIF SETIADI', 'Magang Pertanian', '2021-11-20', 'LPK Itsukajuu', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(442, 'NENGSIH', 'Magang Pengolahan Makanan', '2021-11-20', 'LPK Itsukajuu', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(443, 'TASYA AMANDA', 'Magang Perawat', '2021-11-22', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(444, 'TEGUH SUGIONO', 'Tg Pengelasan', '2021-11-22', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(445, 'ANDRE PRAWIRA', 'Magang Pertanian', '2021-11-23', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(446, 'KHANIFAH', 'Magang Perawat', '2021-11-23', 'Mandiri', 19000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(447, 'KHOFIFAH INDAH', 'Magang Perawat', '2021-11-23', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(448, 'AHMAD FAQIH AINUL', 'Magang Kontruksi', '2021-11-24', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(449, 'HARIADI', 'Tg Perawat', '2021-11-24', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(450, 'MUHAMMAD YUSUF', 'Tg Pengolahan Makanan', '2021-11-25', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(451, 'OKTAVIANA TARIGAN', 'Magang Perawat', '2021-11-25', 'LPK Gapindo', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(452, 'SANUDIN', 'Tg Pengolahan Makanan', '2021-11-25', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(453, 'MAMAY BASTIAN ZULKIFLI', 'Tg Perawat', '2021-11-25', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(454, 'BRYAB JOELIO BELLA', 'Tg Perawat', '2021-11-25', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(455, 'ADI NUGROHO', 'Tg Pengolahan Makanan', '2021-11-25', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(456, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2021-11-26', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(457, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2021-11-27', 'LPK Yamaguchi', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(458, 'SRI KUNINGSIH', 'Magang Perawat', '2021-11-27', 'LPK Yamaguchi', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(459, 'METRI NOVITA', 'Magang Perawat', '2021-11-27', 'LPK Haruki Gakkou', 15000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(460, 'TASYA AMANDA', 'Magang Perawat', '2021-11-29', 'Mandiri', 5000000, 'Angsuran Biaya Pemantapan', '2022-04-08', 1),
(461, 'SITI MAESAROH', 'Magang Perawat', '2021-11-29', 'LPK Yamaguchi', 2000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(462, 'SITI FARIHA DOVI', 'Tg Perawat', '2021-11-29', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(463, 'SANDIKA BAGUS PUTRA', 'Tg Perawat', '2021-11-30', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(464, 'MUTIARA KHAERUNNISA', 'Magang Perawat', '2021-11-30', 'Mandiri', 2000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(465, 'SHAZA DHEA PUTRA ANDALUS', 'Magang Kontruksi', '2021-11-30', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(466, 'SULANI', 'Magang Kontruksi', '2021-12-01', 'LPK Akeno Gakuen', 8000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(467, 'HANI KHOIRUNNISA', 'Magang Perawat', '2021-12-01', 'Mandiri', 4000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(468, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2021-12-01', 'Mandiri', 5000000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(469, 'ALFANDY', 'Tg Perawat', '2021-12-01', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(470, 'REZA PURWATI', 'Magang Pengolahan Makanan', '2021-12-01', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(471, 'TASYA AMANDA', 'Magang Perawat', '2021-12-02', 'Mandiri', 10000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(472, 'IRKHAMALI', 'Tg Pengolahan Makanan', '2021-12-02', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(473, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2021-12-03', 'LPK PMS Karawang', 2000000, 'Angsuran ke 4 biaya keberangkatan ke Jepang', '2022-04-08', 1),
(474, 'AGUNG CARYANTO', 'Magang Kontruksi', '2021-12-03', 'LPK Aoki Nusantara', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(475, 'MUHAMMAD IKRIMA', 'Magang Kontruksi', '2021-12-03', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(476, 'REDI HERIANTO', 'Magang Kontruksi', '2021-12-03', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(477, 'MAULINDA KURNIASARI', 'Magang Perawat', '2021-12-05', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(478, 'NURHOLIS', 'Magang Kontruksi', '2021-12-06', 'LPK Aoki Nusantara', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(479, 'RYAN MUAMAR', 'Magang Kontruksi', '2021-12-06', 'LPK Aoki Nusantara', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(480, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2021-12-06', 'LPK Hirata Gakkou', 1000000, 'Pelunasan Biaya Sertifikasi', '2022-04-08', 1),
(481, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2021-12-06', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(482, 'DESI N SIANIPAR', 'Magang Pengolahan Makanan', '2021-12-07', 'LPK Gapindo', 4500000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(483, 'HENDRA KURNIAWAN', 'Magang Kontruksi', '2021-12-08', 'Mandiri', 12000000, 'Biaya pendaftaran dan SPP ke 1 Kelas Online', '2022-04-08', 1),
(484, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2021-12-08', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(485, 'DODI EKO PRASETYO', 'Magang Kontruksi', '2021-12-09', 'LPK Aoki Nusantara', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(486, 'AGUS AHMAD NURSOLEH', 'Tg Pengolahan Makanan', '2021-12-09', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(487, 'SUBHI', 'Tg Pengolahan Makanan', '2021-12-09', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(488, 'IMAM SUNGKONO', 'Magang Kontruksi', '2021-12-09', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(489, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2021-12-10', 'Mandiri', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-08', 1),
(490, 'FIKRI SHOLEHUL AKBAR', 'Magang Pertanian', '2021-12-11', 'Mandiri', 5000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(491, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2021-12-12', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(492, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2021-12-13', 'LPK Yamaguchi', 15000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(493, 'HAIRUL ANWAR', 'Magang Kontruksi', '2021-12-13', 'Mandiri', 5000000, 'Angsuran Biaya Pemantapan', '2022-04-08', 1),
(494, 'RASTIMAH', 'Magang Pengolahan Makanan', '2021-12-14', 'Mandiri', 700000, 'Biaya SPP ke 4 Kelas online', '2022-04-08', 1),
(495, 'ALIF NUR FADILAH', 'Magang Kontruksi', '2021-12-14', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(496, 'WINDA HASTUTI', 'Tg Pengolahan Makanan', '2021-12-16', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(497, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2021-12-18', 'LPK Yamaguchi', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(498, 'ADI SATYA MUKTI', 'Magang Kontruksi', '2021-12-18', 'LPK Akeno Gakuen', 20000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-08', 1),
(499, 'YOGA ARI SANDI', 'Magang Kontruksi', '2021-12-18', 'LPK Akeno Gakuen', 20000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-08', 1),
(500, 'EVAN WELIANA', 'Magang Kontruksi', '2021-12-20', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(501, 'I PUTU ARYA JUNI ASTRAWAN', 'Magang Kontruksi', '2021-12-20', 'LPK Akeno Gakuen', 15100000, 'Biaya pemantapan dan sertifikasi', '2022-04-08', 1),
(502, 'RIMHOT SITANGGANG', 'Magang Kontruksi', '2021-12-20', 'LPK Gapindo', 8000000, 'Biaya sertifikasi dan Pelunasan biaya pemantapan', '2022-04-08', 1),
(503, 'ELVINA CUTMAYLISA', 'Magang Perawat', '2021-12-21', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(504, 'BAGAS ADI SAPUTRA', 'Magang Kontruksi', '2021-12-21', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(505, 'NOVI OKTAVIANI', 'Magang Perawat', '2021-12-21', 'LPK PKB Cianjur', 2000000, 'Deposit biaya sertifikasi', '2022-04-08', 1),
(506, 'BIMA PRAKARSA', 'Magang Kontruksi', '2021-12-21', 'LPK HOZY Medan', 20000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-08', 1),
(507, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2021-12-21', 'LPK Gapindo', 5000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(508, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2021-12-22', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(509, 'RISKA ANJELINA', 'Tg Pengolahan Makanan', '2021-12-22', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(510, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2021-12-22', 'LPK Akeno Gakuen', 3000000, 'Biaya sertifikasi', '2022-04-08', 1),
(511, 'SITI KUMAYA', 'Tg Pengolahan Makanan', '2021-12-22', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-08', 1),
(512, 'DEVIN RAMADHAN', 'Magang Kontruksi', '2021-12-23', 'LPK Hirata Gakkou', 2000000, 'Pelunasan Biaya Sertifikasi', '2022-04-08', 1),
(513, 'ANDRY SETYAWAN', 'Magang Kontruksi', '2021-12-23', 'LPK Keigo Cilacap', 5000000, 'Deposit biaya pemantapan', '2022-04-08', 1),
(514, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2021-12-24', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-08', 1),
(515, 'AGUNG CARYANTO', 'Magang Kontruksi', '2021-12-24', 'LPK Aoki Nusantara', 15000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-08', 1),
(516, 'TRI HARTONO', 'Magang Kontruksi', '2021-12-25', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-08', 1),
(517, 'ANDRY SETYAWAN', 'Magang Kontruksi', '2021-12-26', 'LPK Keigo Cilacap', 4000000, 'Angsuran Biaya Pemantapan', '2022-04-08', 1),
(518, 'FIQIH PRASETYO', 'Magang Kontruksi', '2021-12-26', 'Hiroku TSW', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(519, 'ISMAIL', 'Magang Kontruksi', '2021-12-26', 'Mandiri', 5000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-08', 1),
(520, 'I PUTU ADI SUMADIANA', 'Magang Kontruksi', '2021-12-27', 'LPK Akeno Gakuen', 15100000, 'Biaya pemantapan dan sertifikasi', '2022-04-08', 1),
(521, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2021-12-28', 'LPK Gapindo', 5000000, 'Pelunasan biaya pemantapan', '2022-04-08', 1),
(522, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2022-01-03', 'LPK Akeno Gakuen', 21075000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-09', 1),
(523, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2022-01-03', 'LPK PMS Karawang', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-09', 1),
(524, 'HAIRUL ANWAR', 'Magang Kontruksi', '2022-01-06', 'Mandiri', 5000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-09', 1),
(525, 'MAULINDA KURNIASARI', 'Magang Perawat', '2022-01-07', 'Mandiri', 15, 'Biaya pemantapan setelah ttd kontrak', '2022-04-09', 1),
(526, 'SRI KUNINGSIH', 'Magang Perawat', '2022-01-07', 'Mandiri', 15000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-09', 1),
(527, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2022-01-10', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya keberangkatan', '2022-04-09', 1),
(528, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2022-01-10', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-09', 1),
(529, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2022-01-11', 'LPK Akeno Gakuen', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-09', 1),
(530, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2022-01-11', 'Mandiri', 5000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-09', 1),
(531, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2022-01-13', 'LPK Akeno Gakuen', 12100000, 'Biaya pemantapan setelah ttd kontrak ( 2.100.000 cash )', '2022-04-09', 1),
(532, 'ANDRY SETYAWAN', 'Magang Kontruksi', '2022-01-14', 'LPK Keigo Cilacap', 6000000, 'Pelunasan biaya pemantapan', '2022-04-09', 1),
(533, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-01-14', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-09', 1),
(534, 'SULANI', 'Magang Kontruksi', '2022-01-15', 'LPK Akeno Gakuen', 7000000, 'Pelunasan biaya pemantapan', '2022-04-09', 1),
(535, 'ANUGRAH NUR AFITROH', 'Magang Perawat', '2022-01-16', 'LPK Nagasaki Training Center', 250000, 'Biaya Pendaftaran Magang', '2022-04-09', 1),
(536, 'RAMA DJATIL IMAD', 'Magang Pengolahan Makanan', '2022-01-16', 'LPK Nagasaki Training Center', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(537, 'ANISA BR SEMBIRING', 'Magang Perawat', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(538, 'EDU HUTAHAEAN', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(539, 'EKA ASTINA NAJARA', 'Magang Perawat', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(540, 'JONATAN TAMPUBOLON', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(541, 'MUHAMMAD RIZQY ZULKARNAIN DAULAY', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(542, 'PARNINGOTAN SIRINGO RINGO', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(543, 'SAMUEL FM SIMATUPANG', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(544, 'TAMRIN ANDREAS PARULIAN NAPITUPULU', 'Magang Kontruksi', '2022-01-16', 'LPK Gapindo', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(546, 'NASRA SITUMORANG', 'Magang Perawat', '2022-01-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(547, 'ERDAYANTI SIMAMORA', 'Magang Perawat', '2022-01-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(548, 'ANISA BR SEMBIRING', 'Magang Perawat', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(549, 'EDU HUTAHAEAN', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(550, 'EKA ASTINA NAJARA', 'Magang Perawat', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(551, 'JONATAN TAMPUBOLON', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(552, 'MUHAMMAD RIZQY ZULKARNAIN DAULAY', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(553, 'PARNINGOTAN SIRINGO RINGO', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(554, 'SAMUEL FM SIMATUPANG', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(555, 'TAMRIN ANDREAS PARULIAN NAPITUPULU', 'Magang Kontruksi', '2022-01-18', 'LPK Gapindo', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(556, 'RIPALDO HASUDUNGAN LIMBONG', 'Magang Kontruksi', '2022-01-19', 'LPK Gapindo', 20000000, 'Biaya Keberangkatan Ke Jepang', '2022-04-11', 1),
(557, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-01-20', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya pemantapan', '2022-04-11', 1),
(558, 'MELISA ULIBASA BR MARPAUNG', 'Magang Perawat', '2022-01-20', 'LPK Gapindo', 1000000, 'Deposit biaya sertifikasi', '2022-04-11', 1),
(559, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-01-21', 'LPK Akeno Gakuen', 5000000, 'Pelunasan biaya pemantapan', '2022-04-11', 1),
(560, 'SHAZA DHEA PUTRA ANDALUS', 'Magang Kontruksi', '2022-01-24', 'Mandiri', 5000000, 'Deposit biaya pemantapan', '2022-04-11', 1),
(561, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2022-01-24', 'LPK HOZY Medan', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-11', 1),
(562, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2022-01-24', 'LPK HOZY Medan', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-11', 1),
(563, 'MUHAMMAD RAMDANI FATURACHMAN', 'Magang Perawat', '2022-01-26', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(564, 'RYAN AHMAD JAELANI', 'Magang Kontruksi', '2022-01-26', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(565, 'SHAZA DHEA PUTRA ANDALUS', 'Magang Kontruksi', '2022-01-26', 'Mandiri', 5000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-11', 1),
(566, 'MELDA MEDIANA KUSDIANTI', 'Magang Perawat', '2022-02-02', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(567, 'MELDA MEDIANA KUSDIANTI', 'Magang Perawat', '2022-02-02', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(568, 'ERNITA', 'Magang Perawat', '2022-02-02', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(569, 'NADILA PRATAMA', 'Magang Perawat', '2022-02-02', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(570, 'NISA DEWI HERLINA', 'Magang Perawat', '2022-02-02', 'LPK PKB Cianjur', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(571, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2022-02-02', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-11', 1),
(572, 'MAULANA ABDUSSSALAM', 'Tg Perawat', '2022-02-03', 'Mandiri', 15000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-11', 1),
(573, 'TRI HARTONO', 'Magang Kontruksi', '2022-02-03', 'Mandiri', 15000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-11', 1),
(574, 'ALFI MAULANA', 'Magang Kontruksi', '2022-02-03', 'Hiroku TSW', 3000000, 'Biaya sertifikasi', '2022-04-11', 1),
(575, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2022-02-03', 'Mandiri', 9000000, 'Biaya benggoshi', '2022-04-11', 1),
(576, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-02-03', 'LPK PKB Cianjur', 1000000, 'Deposit biaya pemantapan', '2022-04-11', 1),
(577, 'RYAN AHMAD JAELANI', 'Magang Kontruksi', '2022-02-04', 'LPK Nagasaki Training Center', 12000000, 'Biaya pemantapan setelah ttd kontrak', '2022-04-11', 1),
(578, 'NURHOLIS', 'Magang Kontruksi', '2022-02-05', 'LPK Nagasaki Training Center', 15000000, 'Biaya Pemantapan', '2022-04-11', 1),
(579, 'MELARESA ELFIANA', 'Magang Pengolahan Makanan', '2022-02-07', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(580, 'DIAN ANDARISTA', 'Magang Pengolahan Makanan', '2022-02-07', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(581, 'NOVI OKTAVIANI', 'Magang Perawat', '2022-02-09', 'LPK PKB Cianjur', 2500000, 'Pelunasan biaya sertifikasi dan pelunasan biaya pemantapan', '2022-04-11', 1),
(582, 'ANDRE KURNIAWAN', 'Magang Kontruksi', '2022-02-09', 'Mandiri', 700000, 'Biaya Spp kelas online', '2022-04-11', 1),
(583, 'FITRIANI FAEDAH', 'Magang Perawat', '2022-02-10', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(584, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2022-02-12', 'Mandiri', 2000000, 'Deposit biaya keberangkatan', '2022-04-11', 1),
(585, 'TASYA AMANDA', 'Magang Pengolahan Makanan', '2022-02-14', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-11', 1),
(586, 'DENA MELKA', 'Magang Pengolahan Makanan', '2022-02-14', 'LPK IGC', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(587, 'NENG ZAHRA', 'Magang Pengolahan Makanan', '2022-02-14', 'LPK IGC', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(588, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2022-02-16', 'Mandiri', 12000000, 'Biaya Sertifiikasi dan Deposit biaya keberangkatan', '2022-04-11', 1),
(589, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2022-02-16', 'Mandiri', 5100000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-11', 1),
(590, 'GINA AMALIYAH', 'Magang Pengolahan Makanan', '2022-02-17', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(591, 'LISTRA MUNTRE', 'Magang Perawat', '2022-02-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(592, 'ELY SITI NURLAELI', 'Magang Perawat', '2022-02-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(593, 'AHMAD SHOIM', 'Magang Kontruksi', '2022-02-21', 'LPK Akeno Gakuen', 15000000, 'Biaya pemantapan dan sertifikasi', '2022-04-11', 1),
(594, 'DWI HAINUN NINGSIH', 'Magang Perawat', '2022-02-24', 'LPK Akeno Gakuen', 11000000, 'Deposit biaya keberangkatan', '2022-04-11', 1),
(595, 'RISMA', 'Magang Perawat', '2022-02-25', 'Mandiri', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-11', 1),
(596, 'MAULINDA KURNIASARI', 'Magang Perawat', '2022-02-25', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-11', 1),
(597, 'SANGGA BUANA RAJA', 'Magang Kontruksi', '2022-02-25', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-11', 1),
(598, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2022-02-25', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-11', 1),
(599, 'HANI KHOIRUNNISA', 'Magang Perawat', '2022-02-26', 'Mandiri', 1500000, 'Angsuran Biaya Pemantapan', '2022-04-11', 1),
(600, 'SRI KUNINGSIH', 'Magang Perawat', '2022-02-28', 'LPK Yamaguchi', 3000000, 'Biaya sertifikasi', '2022-04-11', 1),
(601, 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Magang Kontruksi', '2022-02-28', 'LPK Gapindo', 1500000, 'Pelunasan Biaya Sertifikasi', '2022-04-11', 1),
(602, 'NISA DEWI HERLINA', 'Magang Perawat', '2022-03-01', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-04-13', 1),
(603, 'ANGGITA PUTRI', 'Magang Pengolahan Makanan', '2022-03-02', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-13', 1),
(604, 'HAYATUDDIN', 'Magang Kontruksi', '2022-03-02', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(605, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2022-03-02', 'Mandiri', 2000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(606, 'WELLI WENDRI', 'Magang Perawat', '2022-03-02', 'LPK Haruki Gakkou', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(607, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2022-03-05', 'Mandiri', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(608, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-03-07', 'LPK PKB Cianjur', 2000000, 'Angsuran Biaya Pemantapan', '2022-04-13', 1),
(609, 'HAYATUDDIN', 'Magang Kontruksi', '2022-03-07', 'Mandiri', 5650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(610, 'DWI HAINUN NINGSIH', 'Magang Perawat', '2022-03-08', 'LPK Akeno Gakuen', 8000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(611, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2022-03-09', 'LPK Yamaguchi', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(612, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2022-03-09', 'LPK Gapindo', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(613, 'FEBRI NOFRIZAL', 'Tg Press Logam', '2022-03-10', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-13', 1),
(614, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2022-03-10', 'LPK Yamaguchi', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(615, 'DANIEL YULISMAN', 'Magang Kontruksi', '2022-03-14', 'LPK Haruki Gakkou', 15000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(616, 'SRI MARYATI DAMANIK', 'Magang Perawat', '2022-03-17', 'LPK Gapindo', 2000000, 'Deposit biaya sertifikasi', '2022-04-13', 1),
(617, 'SARMAULI SIGALINGGING', 'Magang Perawat', '2022-02-17', 'LPK Gapindo', 1500000, 'Deposit biaya sertifikasi', '2022-04-13', 1),
(618, 'ANDRE PRAWIRA', 'Magang Kontruksi', '2022-03-17', 'Mandiri', 18000000, 'Pelunasan biaya pemantapan dan sertifikasi', '2022-04-13', 1),
(619, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2022-03-18', 'Mandiri', 4650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(620, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2022-03-18', 'Mandiri', 5650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(621, 'SHAZA DHEA PUTRA ANDALUS', 'Magang Kontruksi', '2022-03-20', 'Mandiri', 5000000, 'Pelunasan biaya pemantapan', '2022-04-13', 1),
(622, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2022-03-21', 'LPK Gapindo', 11500000, 'Pelunasan biaya keberangkatan ke Jepang dan sertifikasi, dan tambahan visa', '2022-04-13', 1),
(623, 'RYAN RAMADHAN', 'Magang Kontruksi', '2022-03-21', 'Mandiri', 15000000, 'Pelunasan biaya pemantapan', '2022-04-13', 1),
(624, 'RIZKY ANUGRAH PUTRI', 'Magang Perawat', '2022-03-21', 'LPK Akeno Gakuen', 19650000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(625, 'WELLI WENDRI', 'Magang Perawat', '2022-03-21', 'LPK Haruki Gakkou', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(626, 'AYU MULYANI', 'Tg Perawat', '2022-03-22', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-13', 1),
(627, 'ADI SYAKURO', 'Tg Perawat', '2022-03-22', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-13', 1),
(628, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-03-23', 'LPK PKB Cianjur', 5000000, 'Angsuran Biaya Pemantapan', '2022-04-13', 1),
(629, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2022-03-25', 'LPK Akeno Gakuen', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(630, 'SLAMET RIKARDO MANULANG', 'Tg Perawat', '2022-03-25', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-13', 1),
(631, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-03-27', 'LPK PKB Cianjur', 4000000, 'Pelunasan biaya pemantapan', '2022-04-13', 1),
(632, 'I PUTU ARYA JUNI ASTRAWAN', 'Magang Kontruksi', '2022-03-28', 'LPK Akeno Gakuen', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(633, 'IRWANDI', 'Magang Kontruksi', '2022-03-29', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-13', 1),
(634, 'MUHAMMAD IQBAL', 'Magang Kontruksi', '2022-03-29', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-13', 1),
(635, 'RIMHOT SITANGGANG', 'Magang Kontruksi', '2022-03-30', 'LPK Gapindo', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-13', 1),
(636, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2022-03-30', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(637, 'AGUNG CARYANTO', 'Magang Kontruksi', '2022-03-30', 'LPK Aoki Nusantara', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(638, 'AHMAD SHOIM', 'Magang Kontruksi', '2022-03-30', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(639, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2022-03-30', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(640, 'RIZKI ROMADON', 'Magang Kontruksi', '2022-03-30', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(641, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2022-03-30', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya keberangkatan', '2022-04-13', 1),
(642, 'SAEFUL ANWAR', 'Magang Kontruksi', '2022-03-23', 'Mandiri', 7020000, 'Biaya Karantina ¥60.000', '2022-04-13', 1),
(643, 'UTTA FIANNA PUTRI', 'Magang Perawat', '2022-03-25', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(644, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2022-03-25', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(645, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2022-03-25', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(646, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2022-03-25', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(647, 'TAUFIQ HIDAYAT FIRDAUS', 'Magang Kontruksi', '2022-04-09', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(648, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2022-04-11', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(649, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Magang Kontruksi', '2022-04-11', 'LPK PMS Karawang', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(650, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2022-04-11', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(651, 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Magang Kontruksi', '2022-04-12', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(652, 'BIMA PRAKARSA', 'Magang Kontruksi', '2022-04-12', 'LPK HOZY Medan', 5850000, 'Biaya Karantina ¥50.000', '2022-04-13', 1),
(653, 'NURHOLIK', 'Magang Kontruksi', '2022-03-08', 'Hiroku TSW', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(654, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2022-03-09', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(655, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2022-03-09', 'LPK Gapindo', 700000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(656, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2022-03-11', 'LPK Yamaguchi', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(657, 'SAEFUL ANWAR', 'Magang Kontruksi', '2022-03-11', 'Hiroku TSW', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(658, 'LAILATUL QOMARIYAH', 'Magang Perawat', '2022-03-11', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(659, 'ANDHARA EARLY SAYHRA', 'Magang Perawat', '2022-03-11', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(660, 'UTTA FIANNA PUTRI', 'Magang Perawat', '2022-03-11', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(661, 'INDAH AGUSTIN SASADARA', 'Magang Perawat', '2022-03-12', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(662, 'RIPALDO HASUDUNGAN LIMBONG', 'Magang Kontruksi', '2022-03-15', 'LPK Gapindo', 700000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(663, 'TAUFIQ HIDAYAT FIRDAUS', 'Magang Kontruksi', '2022-03-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(664, 'MUHAMMAD RIZKY CANDRA', 'Magang Kontruksi', '2022-03-21', 'LPK Gapindo', 350000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(665, 'IMAM SYAFII', 'Magang Kontruksi', '2022-03-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(666, 'MOHAMAD SOLIKIN', 'Magang Kontruksi', '2022-03-21', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(667, 'SUMARNO', 'Magang Kontruksi', '2022-03-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(668, 'TAUFIQ HIDAYAT FIRDAUS', 'Magang Kontruksi', '2022-03-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(669, 'REANOLD MARTIN SAMUEL SIMORANGKIR', 'Magang Kontruksi', '2022-03-22', 'LPK Gapindo', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(670, 'MUHAMMAD DIEGO OKTAVIANDO FIRDAUS', 'Magang Kontruksi', '2022-03-22', 'LPK PMS Karawang', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(671, 'NANDA DWI PUJA KUSUMAWANGI', 'Magang Perawat', '2022-03-29', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(672, 'HILDA ALVIONITA', 'Tg Perawat', '2022-03-30', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(673, 'SINDY AINURIZQI', 'Magang Perawat', '2022-04-04', 'Mandiri', 1200000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(674, 'LARAS PERTIWI', 'Magang Perawat', '2022-04-04', 'LPK PKB Cianjur', 1200000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(675, 'RESTU YUSTIKA', 'Magang Perawat', '2022-04-04', 'LPK PKB Cianjur', 1200000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(676, 'FITRI NURAZIZAH', 'Magang Perawat', '2022-04-04', 'LPK PKB Cianjur', 1200000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(677, 'NANANG DARMAWAN', 'Magang Perawat', '2022-04-04', 'LPK Momiji', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(678, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2022-04-04', 'LPK Gapindo', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(679, 'SELFYANA', 'Magang Perawat', '2022-04-04', 'LPK Murasaki', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(680, 'NURJANAH', 'Magang Perawat', '2022-04-04', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(681, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2022-04-04', 'LPK PMS Karawang', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(682, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2022-04-04', 'LPK Yamaguchi', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(683, 'HAYATUDDIN', 'Magang Kontruksi', '2022-04-04', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(684, 'NICKO AL JABAR', 'Magang Perawat', '2022-04-04', 'LPK Momiji', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(685, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2022-04-05', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(686, 'MUHAMAD ARYA PUTERA', 'Magang Perawat', '2022-04-05', 'LPK Haruki Gakkou', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(687, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2022-04-06', 'LPK Hirata Gakkou', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(688, 'MUHAMMAD HIDAYAT UMASANGAJI', 'Magang Perawat', '2022-04-07', 'Mandiri', 800000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(689, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2022-04-08', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(690, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2022-04-11', 'LPK HOZY Medan', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(691, 'HOTDIANA BR TAMBUNAN', 'Magang Pengolahan Makanan', '2022-04-11', 'LPK Gapindo', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(692, 'ADI SATYA MUKTI', 'Magang Kontruksi', '2022-04-11', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(693, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2022-04-11', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(694, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2022-04-11', 'LPK HOZY Medan', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(695, 'YOGA ARI SANDI', 'Magang Kontruksi', '2022-04-11', 'LPK Akeno Gakuen', 600000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(696, 'DESI HANDAYANI TAMBUNAN', 'Magang Pengolahan Makanan', '2022-04-12', 'LPK Gapindo', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(697, 'OKTAVIANA TARIGAN', 'Magang Perawat', '2022-04-12', 'LPK Gapindo', 400000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(698, 'AHMAD RIFAI', 'Magang Perawat', '2022-04-13', 'Mandiri', 800000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(699, 'PRIYO PRASSETHIYO', 'Magang Perawat', '2022-04-13', 'Mandiri', 800000, 'Biaya Visa Premium Lounge', '2022-04-13', 1),
(700, 'MAULANA ABDUSSSALAM', 'Tg Perawat', '2022-04-02', 'LPK Aoki Nusantara', 3000000, 'Biaya sertifikasi', '2022-04-13', 1),
(701, 'MUHAMMAD PATIH ADIWIKARTA', 'Magang Perawat', '2022-04-02', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-04-13', 1),
(702, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2022-04-04', 'LPK HOZY Medan', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(703, 'DESI N SIANIPAR', 'Magang Pengolahan Makanan', '2022-04-04', 'LPK Gapindo', 6500000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-13', 1),
(704, 'RYAN AHMAD JAELANI', 'Magang Perawat', '2022-04-04', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-04-14', 1),
(705, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2022-04-04', 'LPK PMS Karawang', 12000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(706, 'CINTHYA DESSY', 'Tg Pengolahan Makanan', '2022-04-04', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-14', 1),
(707, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2022-04-04', 'Mandiri', 9740200, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(708, 'MELANI NIGI SAFITRI', 'Tg Pengolahan Makanan', '2022-04-05', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-14', 1),
(709, 'NIDA NINGSIH', 'Tg Pengolahan Makanan', '2022-04-05', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-14', 1),
(710, 'NOVI LESTARI', 'Tg Pengolahan Makanan', '2022-04-06', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-14', 1),
(711, 'MOUREEN NURSYAHBANI', 'Tg Pengolahan Makanan', '2022-04-06', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-14', 1),
(712, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2022-04-06', 'Mandiri', 3000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-14', 1),
(713, 'KOCHI CARE SERVICE COOPERATIVE', 'Magang Perawat', '2022-04-06', 'Mr. Yokoyama Kenichi', 32036943, 'Pembayaran Invoice Tiket Pesawat Shiragikukai', '2022-04-14', 1),
(714, 'CATUR YULIANTO', 'Magang Kontruksi', '2022-04-07', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-14', 1),
(715, 'AZIK KURNIA ILALUDIN', 'Magang Kontruksi', '2022-04-07', 'LPK Konayuki', 250000, 'Biaya Pendaftaran Magang', '2022-04-14', 1),
(716, 'DESYI PURNAWIRAWAN', 'Magang Kontruksi', '2022-04-07', 'LPK Konayuki', 250000, 'Biaya Pendaftaran Magang', '2022-04-14', 1),
(717, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2022-04-08', 'LPK HOZY Medan', 10000000, 'Angsuran biaya keberangkatan ke Jepang', '2022-04-14', 1),
(718, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2022-04-09', 'LPK HOZY Medan', 3000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(719, 'DANIEL YULISMAN', 'Magang Kontruksi', '2022-04-11', 'LPK Haruki Gakkou', 7000000, 'Pelunasan biaya keberangkatan dan biaya tambahan visa', '2022-04-14', 1),
(720, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Perawat', '2022-04-12', 'LPK HOZY Medan', 7100000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(721, 'DESI N SIANIPAR', 'Magang Pengolahan Makanan', '2022-04-12', 'LPK Gapindo', 5000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(722, 'YOHANA MELATI SAGALA', 'Magang Pengolahan Makanan', '2022-04-12', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-14', 1),
(723, 'AGUNG CARYANTO', 'Magang Kontruksi', '2022-04-12', 'LPK Aoki Nusantara', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(724, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2022-04-12', 'LPK Gapindo', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-14', 1),
(725, 'HAIRUL ANWAR', 'Magang Kontruksi', '2022-04-13', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-14', 1),
(726, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2022-04-13', 'Mandiri', 800000, 'Biaya Visa Premium Lounge', '2022-04-14', 1),
(727, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2022-04-15', 'LPK Hirata Gakkou', 2000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-15', 1),
(728, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-04-15', 'LPK Akeno Gakuen', 10000000, 'Deposit biaya keberangkatan', '2022-04-15', 1),
(729, 'HARUN AL RASYID', 'Magang Kontruksi', '2022-04-15', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-15', 1),
(730, 'RYAN RAMADHAN', 'Magang Kontruksi', '2022-04-15', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-04-20', 1),
(731, 'KOCHI CARE SERVICE COOPERATIVE', 'Magang Perawat', '2022-04-15', 'Mr. Yokoyama Kenichi', 40765295, 'Biaya Tiket pesawat Restu dkk, dan Yossi dn agung', '2022-04-20', 1),
(732, 'AGUNG CARYANTO', 'Magang Kontruksi', '2022-04-16', 'LPK Aoki Nusantara', 250000, 'Biaya Visa Premium Lounge', '2022-04-20', 1),
(733, 'MUHAMMAD RIZQY ZULKARNAIN DAULAY', 'Magang Kontruksi', '2022-04-16', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-20', 1),
(734, 'HAIDIL SAPUTRA', 'Magang Kontruksi', '2022-04-15', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-20', 1),
(735, 'YOSSI ANDRIYAN', 'Magang Kontruksi', '2022-04-18', 'Mandiri', 5647857, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(736, 'ASTRI ASTANUL MALA', 'Tg Perawat', '2022-04-18', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-04-20', 1),
(737, 'YOHANA MELATI SAGALA', 'Magang Pengolahan Makanan', '2022-04-18', 'LPK Gapindo', 6550000, 'Pelunasan biaya keberangkatan dan biaya tambahan visa', '2022-04-20', 1),
(738, 'SURIP SARIPIN', 'Magang Kontruksi', '2022-04-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-20', 1),
(739, 'MARTATIKA SIREGAR', 'Magang Perawat', '2022-04-18', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-04-20', 1),
(740, 'WAIS AL QORNI', 'Tg Perikanan', '2022-04-19', 'Mandiri', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-20', 1),
(741, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2022-04-19', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(742, 'SAEFUDIN', 'Magang Kontruksi', '2022-04-19', 'Mandiri', 3510000, 'Deposit biaya karantina ¥30.000', '2022-04-20', 1),
(743, 'SUMARNO', 'Magang Kontruksi', '2022-04-19', 'Mandiri', 3510000, 'Deposit biaya karantina ¥30.000', '2022-04-20', 1),
(744, 'HAYATUDDIN', 'Magang Kontruksi', '2022-04-19', 'Mandiri', 3510000, 'Deposit biaya karantina ¥30.000', '2022-04-20', 1),
(745, 'AHMAD HARDIANSYAH', 'Magang Kontruksi', '2022-04-19', 'LPK PMS Karawang', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(746, 'ADI SATYA MUKTI', 'Magang Kontruksi', '2022-04-19', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(747, 'IMAM SYAFII', 'Magang Kontruksi', '2022-04-19', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(748, 'YOGA ARI SANDI', 'Magang Kontruksi', '2022-04-19', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(749, 'DWIK HARDIYANTO', 'Magang Kontruksi', '2022-04-19', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(750, 'GUNTUR DARMAWAN', 'Magang Kontruksi', '2022-04-19', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(751, 'FAHAD ARISUL HAKIM', 'Magang Kontruksi', '2022-04-19', 'LPK Hirata Gakkou', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(752, 'DANIEL YULISMAN', 'Magang Kontruksi', '2022-04-19', 'LPK Haruki Gakkou', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(753, 'IBNU ABBAS ALFAROQHI', 'Magang Kontruksi', '2022-04-19', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(754, 'DERRY KRISTIAN P SITUMORANG', 'Magang Kontruksi', '2022-04-19', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(755, 'JOHAN ALFA REZA', 'Magang Kontruksi', '2022-04-19', 'LPK Yamaguchi', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(756, 'MUHYI ZAMZAMI', 'Magang Kontruksi', '2022-04-19', 'LPK Yamaguchi', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(757, 'RICHO ANDY ERSADA TARIGAN', 'Magang Kontruksi', '2022-04-19', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1);
INSERT INTO `payment` (`id`, `name`, `program`, `date_payment`, `person_responsible`, `nominal`, `description`, `date_created`, `is_active`) VALUES
(758, 'RIPALDO HASUDUNGAN LIMBONG', 'Magang Kontruksi', '2022-04-19', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(759, 'LAPAU TIMBANG', 'Magang Kontruksi', '2022-04-19', 'LPK Konayuki', 250000, 'Biaya Pendaftaran Magang', '2022-04-20', 1),
(760, 'JONATAN TAMPUBOLON', 'Magang Kontruksi', '2022-04-16', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-20', 1),
(761, 'TAMRIN ANDREAS PARULIAN NAPITUPULU', 'Magang Kontruksi', '2022-04-16', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-20', 1),
(762, 'EDU HUTAHAEAN', 'Magang Kontruksi', '2022-04-16', 'LPK Gapindo', 3000000, 'Biaya sertifikasi', '2022-04-20', 1),
(763, 'DESI N SIANIPAR', 'Magang Pengolahan Makanan', '2022-04-20', 'LPK Gapindo', 50000, 'Biaya tambahan visa dan 350rb nya di ambil dari biaya passpor', '2022-04-20', 1),
(764, 'RIMHOT SITANGGANG', 'Magang Kontruksi', '2022-04-20', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-20', 1),
(765, 'KHANIFAH', 'Magang Perawat', '2022-04-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-23', 1),
(766, 'KHOFIFAH INDAH', 'Magang Perawat', '2022-04-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-23', 1),
(767, 'GUSTI AYU PURNAMASARI', 'Magang Perawat', '2022-04-21', 'Mandiri', 600000, 'Biaya Visa Premium Lounge', '2022-04-23', 1),
(768, 'METRI NOVITA', 'Magang Perawat', '2022-04-21', 'LPK Haruki Gakkou', 600000, 'Biaya Visa Premium Lounge', '2022-04-23', 1),
(769, 'RIZKI ROMADON', 'Magang Kontruksi', '2022-04-21', 'LPK Akeno Gakuen', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-23', 1),
(770, 'GINA AMALIYAH', 'Magang Perawat', '2022-04-22', 'Mandiri', 5000000, 'Deposit biaya pemantapan', '2022-04-23', 1),
(771, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-04-22', 'LPK Akeno Gakuen', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-23', 1),
(772, 'TRI HARTONO', 'Magang Kontruksi', '2022-04-22', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-04-23', 1),
(773, 'SELFYANA', 'Magang Perawat', '2022-04-23', 'LPK Murasaki', 5850000, 'Biaya Karantina ¥50.000', '2022-04-23', 1),
(774, 'NURJANAH', 'Magang Perawat', '2022-04-23', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-23', 1),
(775, 'AGUNG CARYANTO', 'Magang Kontruksi', '2022-04-22', 'LPK Aoki Nusantara', 5850000, 'Biaya Karantina ¥50.000', '2022-04-23', 1),
(776, 'RUSTAM SURYADI PANJAITAN', 'Magang Kontruksi', '2022-04-22', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-04-23', 1),
(777, 'AHMAD SHOIM', 'Magang Kontruksi', '2022-04-25', 'LPK Akeno Gakuen', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-25', 1),
(778, 'AGUNG ALI WASKITO', 'Magang Kontruksi', '2022-04-25', 'LPK Gapindo', 5750000, 'Biaya Karantina ¥50.000', '2022-04-25', 1),
(779, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2022-04-25', 'LPK Akeno Gakuen', 5750000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(780, 'WAHYU NUROHMAN', 'Magang Kontruksi', '2022-04-25', 'LPK Akeno Gakuen', 250000, 'Biaya Visa Premium Lounge', '2022-04-26', 1),
(781, 'NANANG DARMAWAN', 'Magang Perawat', '2022-04-26', 'LPK Momiji', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(782, 'AHMAD RIFAI', 'Magang Perawat', '2022-04-26', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(783, 'MUHAMMAD HIDAYAT UMASANGAJI', 'Magang Perawat', '2022-04-26', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(784, 'NICKO AL JABAR', 'Magang Perawat', '2022-04-26', 'LPK Momiji', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(785, 'IKE YULI WIDIASTUTI', 'Magang Perawat', '2022-04-26', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(786, 'CINDY KRISTINA SINAGA', 'Magang Perawat', '2022-04-26', 'LPK HOZY Medan', 5850000, 'Biaya Karantina ¥50.000', '2022-04-26', 1),
(787, 'MUHAMAD ARYA PUTERA', 'Magang Perawat', '2022-04-27', 'LPK Haruki Gakkou', 5850000, 'Biaya Karantina ¥50.000', '2022-04-28', 1),
(788, 'PRIYO PRASSETHIYO', 'Magang Perawat', '2022-04-27', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-04-28', 1),
(789, 'HANI KHOIRUNNISA', 'Magang Perawat', '2022-04-27', 'Mandiri', 2500000, 'Angsuran Biaya Pemantapan', '2022-04-28', 1),
(790, 'RISMA', 'Magang Perawat', '2022-04-28', 'Mandiri', 3000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-28', 1),
(791, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2022-04-28', 'LPK Gapindo', 10000000, 'Deposit biaya keberangkatan', '2022-04-29', 1),
(792, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2022-04-29', 'LPK Gapindo', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-29', 1),
(793, 'TRI HARTONO', 'Magang Kontruksi', '2022-04-27', 'Mandiri', 10000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-04-29', 1),
(794, 'MELDA MEDIANA KUSDIANTI', 'Magang Perawat', '2022-05-10', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-05-11', 1),
(795, 'NADILA PRATAMA', 'Magang Perawat', '2022-05-10', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-05-11', 1),
(796, 'AHMAD SHOIM', 'Magang Kontruksi', '2022-05-10', 'LPK Akeno Gakuen', 5850000, 'Biaya Karantina ¥50.000', '2022-05-11', 1),
(797, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-05-10', 'LPK Akeno Gakuen', 5850000, 'Deposit biaya karantina ¥50.000', '2022-05-11', 1),
(798, 'JULIANTO SILALAHI', 'Magang Kontruksi', '2022-05-10', 'LPK Gapindo', 6900000, 'Biaya Karantina ¥60.000', '2022-05-11', 1),
(799, 'WELLI WENDRI', 'Magang Perawat', '2022-05-07', 'LPK Haruki Gakkou', 3000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-05-11', 1),
(800, 'FIKRI SHOLEHUL AKBAR', 'Magang Pertanian', '2022-05-10', 'LPK Itsukajuu', 10000000, 'Pelunasan biaya pemantapan', '2022-05-11', 1),
(801, 'ANDRE PRAWIRA', 'Magang Kontruksi', '2022-05-10', 'Mandiri', 20000000, 'Biaya Keberangkatan Ke Jepang', '2022-05-11', 1),
(802, 'CITRA ASTRIANI BUTAR BUTAR', 'Magang Pengolahan Makanan', '2022-05-11', 'LPK HOZY Medan', 5850000, 'Biaya Karantina ¥50.000', '2022-05-11', 1),
(803, 'DESI HANDAYANI TAMBUNAN', 'Magang Pengolahan Makanan', '2022-05-11', 'LPK Gapindo', 5850000, 'Biaya Karantina ¥50.000', '2022-05-11', 1),
(804, 'WAIS AL QORNI', 'Tg Pengelasan', '2022-05-09', 'Mandiri', 7426421, 'biaya tiket pesawat', '2022-05-11', 1),
(805, 'OWEN MAKARAWUNG', 'Tg Perawat', '2022-05-04', 'LPK Hikari Kepri', 250000, 'Biaya pendaftaran SSW', '2022-05-11', 1),
(806, 'AHMAD SHOIM', 'Magang Kontruksi', '2022-05-08', 'LPK Akeno Gakuen', 250000, 'Biaya tambahan pengurusan Visa premium lounge', '2022-05-11', 1),
(807, 'TRI HARTONO', 'Magang Kontruksi', '2022-05-08', 'Mandiri', 250000, 'Biaya tambahan pengurusan Visa premium lounge', '2022-05-11', 1),
(808, 'TRI HARTONO', 'Magang Kontruksi', '2022-05-08', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-05-11', 1),
(809, 'SHAZA DHEA PUTRA ANDALUS', 'Magang Kontruksi', '2022-05-08', 'Mandiri', 250000, 'Biaya tambahan pengurusan Visa premium lounge', '2022-05-11', 1),
(810, 'SANGGA BUANA RAJA', 'Magang Kontruksi', '2022-05-11', 'Mandiri', 15000000, 'Biaya pengurusan dokumen dan tanda tangan kontrak', '2022-05-19', 1),
(811, 'GERRY ZULFIKAR', 'Magang Kontruksi', '2022-05-12', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-05-19', 1),
(812, 'FRANSISCA VEBRINA PAREDA', 'Tg Perawat', '2022-05-06', 'LPK Hikari Kepri', 250000, 'Biaya Pendaftaran Magang', '2022-05-19', 1),
(813, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2022-05-13', 'Mandiri', 11000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-05-19', 1),
(814, 'ERLANDA PRATAMA', 'Tg Perawat', '2022-05-18', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-01', 1),
(815, 'SURIP SARIPIN', 'Magang Kontruksi', '2022-05-15', 'Mandiri', 15000000, 'Biaya pengurusan dokumen dan tanda tangan kontrak', '2022-06-01', 1),
(816, 'AA GEDE NGURAH RADITYA SAPUTRA', 'Magang Kontruksi', '2022-05-19', 'LPK Akeno Gakuen', 8500000, 'Biaya pengurusan kesalahan nama saat pengurusan Visa', '2022-06-01', 1),
(817, 'WAIS AL QORNI', 'Tg Pengelasan', '2022-05-19', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-06-01', 1),
(818, 'AJIK KURNIA ILALUDIN', 'Magang Kontruksi', '2022-05-19', 'Mandiri', 14500000, 'Deposit biaya pengurusan dokumen dan pemantapan', '2022-06-01', 1),
(819, 'ANDRIAN AGUSTINUS HUTAPEA', 'Magang Kontruksi', '2022-05-20', 'Mandiri', 12000000, 'Biaya pengurusan dokumen dan pemantapan', '2022-06-01', 1),
(820, 'AGUS TRIHARYANTO', 'Magang Kontruksi', '2022-05-22', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-01', 1),
(821, 'SURIP SARIPIN', 'Magang Kontruksi', '2022-05-22', 'Mandiri', 6000000, 'Deposit Biaya pengurusan dokumen COE dan Keberangkatan', '2022-06-01', 1),
(822, 'ARDI', 'Magang Kontruksi', '2022-05-22', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-01', 1),
(823, 'ERNITA', 'Magang Perawat', '2022-05-23', 'LPK PKB Cianjur', 3000000, 'Biaya sertifikasi', '2022-06-01', 1),
(824, 'RAMA DJATIL IMAD', 'Magang Kontruksi', '2022-05-23', 'LPK Konayuki', 10000000, 'Biaya pengurusan dokumen dan pemantapan', '2022-06-01', 1),
(825, 'ELSA FAUZI', 'Magang Kontruksi', '2022-05-23', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-01', 1),
(826, 'IMAM SUNGKONO', 'Magang Kontruksi', '2022-05-23', 'LPK Akeno Gakuen', 1130000, 'Pelunasan biaya karantina ¥10.000', '2022-06-01', 1),
(827, 'IHWAN MARUF', 'Tg Pertanian', '2022-05-23', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-01', 1),
(828, 'GINA AMALIAH', 'Magang Perawat', '2022-05-25', 'Mandiri', 3000000, 'Biaya sertifikasi', '2022-06-01', 1),
(829, 'GINA AMALIAH', 'Magang Perawat', '2022-05-25', 'Mandiri', 10000000, 'Pelunasan biaya pengurusan dokumen dan pemantapan', '2022-06-01', 1),
(830, 'DADAN HIDAYAT', 'Tg Kontruksi', '2022-05-26', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-01', 1),
(831, 'MUHAMMAD HAN HAN SEPTIANTO', 'Magang Supir', '2022-05-25', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-01', 1),
(832, 'SRI MARYATI DAMANIK', 'Magang Perawat', '2022-05-26', 'LPK Gapindo', 1000000, 'Pelunasan Biaya Sertifikasi', '2022-06-01', 1),
(833, 'IBNU HARIS', 'Tg Pertanian', '2022-05-27', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-01', 1),
(834, 'IRMA ABRIANTIKA NURYANI', 'Magang Pengolahan Makanan', '2022-05-27', 'Mandiri', 5850000, 'Biaya Karantina ¥50.000', '2022-06-01', 1),
(835, 'ANUGRAH NUR AFITROH', 'Magang Perawat', '2022-05-27', 'LPK Konayuki', 10000000, 'Deposit biaya pendidikan dan pemantapan', '2022-06-01', 1),
(836, 'ANUGRAH NUR AFITROH', 'Magang Perawat', '2022-05-28', 'LPK Konayuki', 5000000, 'Pelunasan biaya pemantapan', '2022-06-04', 1),
(837, 'ANUGRAH NUR AFITROH', 'Magang Perawat', '2022-05-28', 'LPK Konayuki', 3000000, 'Biaya sertifikasi', '2022-06-04', 1),
(838, 'AGUS KURNIAWAN', 'Magang Kontruksi', '2022-05-30', 'PT. Gunung Seribu Permata', 250000, 'Biaya Pendaftaran Magang', '2022-06-04', 1),
(839, 'ALPINDO CYAHYA SIPAYUNG', 'Magang Kontruksi', '2022-05-30', 'PT. Gunung Seribu Permata', 250000, 'Biaya Pendaftaran Magang', '2022-06-04', 1),
(840, 'SUPRIYONO', 'Tg Kontruksi', '2022-05-31', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-04', 1),
(841, 'BANGUN TRIYONO', 'Tg Kontruksi', '2022-05-31', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-04', 1),
(842, 'SURONO', 'Magang Supir', '2022-05-31', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-04', 1),
(843, 'KUSDIANA', 'Tg Kontruksi', '2022-06-01', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-04', 1),
(844, 'IKLAN SUSANTO ABADI', 'Tg Kontruksi', '2022-06-01', 'Mandiri', 250000, 'Biaya pendaftaran SSW', '2022-06-04', 1),
(845, 'SANGGA BUANA RAJA', 'Magang Kontruksi', '2022-06-01', 'Mandiri', 10000000, 'Deposit biaya pengurusan COE dan Keberangkatan', '2022-06-04', 1),
(846, 'EKA NUDIYAH AYUNI HABSARI', 'Magang Perawat', '2022-06-01', 'Mandiri', 250, 'Biaya Pendaftaran Magang', '2022-06-04', 1),
(847, 'AZIK KURNIA ILALUDIN', 'Magang Kontruksi', '2022-06-04', 'Mandiri', 10000000, 'Deposit biaya keberangkatan', '2022-06-08', 1),
(848, 'MINAKHUS TSANIA', 'Magang Perawat', '2022-06-05', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-08', 1),
(849, 'HANI KHOIRUNNISA', 'Magang Perawat', '2022-06-05', 'Mandiri', 5000000, 'Pelunasan biaya pemantapan', '2022-06-08', 1),
(850, 'YOPI SEFTA VALDONA', 'Magang Kontruksi', '2022-06-07', 'Mandiri', 250000, 'Biaya Pendaftaran Magang', '2022-06-08', 1),
(851, 'RYAN RAMADHAN', 'Magang Kontruksi', '2022-06-07', 'Mandiri', 20000000, 'Pelunasan biaya keberangkatan ke Jepang', '2022-06-08', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petty_cash_journal`
--

INSERT INTO `petty_cash_journal` (`id`, `output_type`, `details`, `nominal`, `date_payment`, `date_created`, `is_active`) VALUES
(1, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 370000, '2022-06-01', '2022-06-09', 1),
(2, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 160000, '2022-06-01', '2022-06-09', 1),
(3, 'Internet', 'Pembayaran Wifi XL Home Bulan Juni 2022', 553890, '2022-06-01', '2022-06-09', 1),
(4, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 330000, '2022-06-02', '2022-06-09', 1),
(5, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 180000, '2022-06-02', '2022-06-09', 1),
(6, 'Konsumsi', 'Pembelian Teh Pucuk 2 Untuk Tamu', 8000, '2022-01-01', '2022-06-09', 1),
(7, 'ATK', 'Pembelian Swt500Ml & Lain-lain', 55700, '2022-06-03', '2022-06-09', 1),
(8, 'Konsumsi', 'Pembelian Air Galon Aqua', 19000, '2022-06-03', '2022-06-09', 1),
(9, 'Uang Makan Karyawan', 'Uang Makan Karyawan dari Tgl 28 Mei - 03 Juni 2022', 1100000, '2022-06-03', '2022-06-09', 1),
(10, 'Uang Makan Karyawan', 'Uang Makan Marketing dari Tgl 28 Mei - 03 Juni 2022', 400000, '2022-06-03', '2022-06-09', 1),
(11, 'Uang Makan Karyawan', 'Uang Makan Pelatihan dari Tgl 28 Mei - 03 Juni 2022', 600000, '2022-06-03', '2022-06-09', 1),
(12, 'Gaji', 'Gaji Mbk Fariha dari Tgl 30 Mei - 03 Juni 2022', 300000, '2022-06-03', '2022-06-09', 1),
(13, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 380000, '2022-06-03', '2022-06-09', 1),
(14, 'Konsumsi', 'Kupon Makan Siswa di Bakso', 20000, '2022-06-03', '2022-06-09', 1),
(15, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 140000, '2022-06-03', '2022-06-09', 1),
(16, 'Transport Lokal', 'Biaya Grab dari Mhj Ke Bandara', 250000, '2022-06-03', '2022-06-09', 1),
(17, 'Transport Lokal', 'Biaya E-Toll Ke Bandara', 150000, '2022-06-05', '2022-06-09', 1),
(18, 'Biaya Sewa', 'Sewa Mobil Untuk Siswa Ke Bandara & Bensin', 402500, '2022-06-03', '2022-06-09', 1),
(19, 'Konsumsi', 'Pembelian Makan & Minum di Bandara Untuk 2 Staf Ferry &  Bang Aimin', 261500, '2022-06-03', '2022-06-09', 1),
(20, 'Transport Lokal', 'Biaya E-Toll Ke Bandara', 50000, '2022-06-03', '2022-06-09', 1),
(21, 'Transport Lokal', 'Biaya E-Toll Ke Bandara', 150000, '2022-06-05', '2022-06-09', 1),
(22, 'Konsumsi', 'Kupon Makan Karyawan & Shift Malam dari Tgl 04 Juni - 05 Juni 2022', 80000, '2022-06-06', '2022-06-09', 1),
(23, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 230000, '2022-06-06', '2022-06-09', 1),
(24, 'Konsumsi', 'Kupon Makan Siswa di Bakso', 30000, '2022-06-06', '2022-06-09', 1),
(25, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 80000, '2022-06-06', '2022-06-09', 1),
(26, 'ATK', 'Pembelian Map Bening A4 (2 Qt)', 66000, '2022-06-06', '2022-06-09', 1),
(27, 'ATK', 'Pembelian Gagang Pintu 1 Set Untuk asrama 6', 85000, '2022-06-06', '2022-06-09', 1),
(28, 'ATK', 'Pembelian Ib Engkel Brolo Untuk Asrama 6', 15000, '2022-06-06', '2022-06-09', 1),
(29, 'Transport Lokal', 'Biaya Cukai Kantor Pos', 7770, '2022-06-07', '2022-06-09', 1),
(30, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 220000, '2022-06-07', '2022-06-09', 1),
(31, 'Konsumsi', 'Kupon Makan Siswa di Bakso', 20000, '2022-06-07', '2022-06-09', 1),
(32, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 130000, '2022-06-07', '2022-06-09', 1),
(33, 'ATK', 'Pembelian Gas 5,5 Kg Untuk Asrama Wsj', 100000, '2022-06-07', '2022-06-09', 1),
(34, 'ATK', 'Pembelian Lampu 15 Wat Untuk Asrama 6', 30000, '2022-06-07', '2022-06-09', 1),
(35, 'Pantry', 'Pembelian Kopi Kapal Api yang Sedang 1 Pcs', 4000, '2022-06-07', '2022-06-09', 1),
(36, 'Iuran Wajib Lingkungan (RT/Sampah)', 'Pembayaran Iuran Sampah di Claster No. 1 & Wsj', 50000, '2022-06-07', '2022-06-09', 1),
(37, 'ATK', 'Pembelian Gas 12 Kg Untuk Asrama 1', 210000, '2022-06-08', '2022-06-09', 1),
(38, 'Konsumsi', 'Kupon Makan Siswa di Geprek', 220000, '2022-06-08', '2022-06-09', 1),
(39, 'Konsumsi', 'Kupon Makan Siswa di Warteg', 130000, '2022-06-08', '2022-06-09', 1),
(40, 'ATK', 'Pembelian Kertas HVS 2 Rim', 96000, '2022-06-08', '2022-06-09', 1),
(41, 'ATK', 'Pembelian Spidol Snowman 1 Pcs Untuk Asrama 6', 9000, '2022-06-08', '2022-06-09', 1);

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
(15, 'Uang Makan', 2000000, '2022-03-02', '2022-03-29', 1),
(16, 'Gaji', 30000000, '2022-03-25', '2022-03-29', 1);

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
(1, 'Eka Anas Jatnika', 'anasberkata', 'ideanasdesain@gmail.com', '$2y$10$bFHVog6BHgnix/bEaXCWZe/cIRvgOrdf5XIXfbxeezoA97w/A/fTq', 'anas.jpg', 1, 1, '2022-03-07'),
(2, 'PT. MIRAINO HASHI JAYA', 'direktur', 'lpkmirainohashijaya@gmail.com', '$2y$10$nfDvL8Rpyhjcuz1aTB4eBOaW6LFdej3IuqLJUVCUsM3AL5JM4uali', 'admin.jpg', 2, 1, '2022-03-07'),
(3, 'Manager Miraino Hashi', 'manager', 'ptmirainohashijaya@gmail.com', '$2y$10$3ERvat1OI7DrmHvwxYbWtuBqY5gKtI9zTYCC42YdiJZU3Fl6W5S8q', 'manager.jpg', 2, 1, '2022-03-07'),
(9, 'Magfirah Putri', 'admin1', 'magfirah.mhj@gmail.com', '$2y$10$EHYu3br345n75/aRFE95GujExkihVWVy6Zg6nlDSUykTGiwn2roMu', 'default.jpg', 3, 1, '2022-03-29'),
(10, 'Sabrina Salsabilah', 'admin2', 'sabrinasalsabilah92@gmail.com', '$2y$10$EzuIqZIdDcNv/D/.1jibdu1weKCBzQyGG7i5S5BcRfPcsRbKWGMV.', 'default.jpg', 3, 1, '2022-03-29'),
(13, 'Anisa Kumala', 'keuanganMHJ', 'anisakumala3107@gmail.com', '$2y$10$fiHQXZgbIMIGynr5w4KIV.vpCtO4FMCBMPAFiSZF2y9b57ZKw159S', 'default.jpg', 5, 1, '2022-06-09');

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
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 2),
(11, 2, 5),
(12, 3, 3),
(13, 5, 4);

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
(4, 'Keuangan', 4),
(5, 'User', 5);

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
(3, 'Admin'),
(5, 'Keuangan');

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
(7, 3, 'Peserta', 'participant', 'bi bi-person-square', 1),
(8, 5, 'User', 'user/users', 'bi bi-people', 1),
(9, 5, 'My Profile', 'user', 'bi bi-person-fill', 1),
(11, 2, 'Peserta', 'participant', 'bi bi-person-square', 1),
(12, 2, 'Peserta CoE', 'coe', 'bi bi-person-bounding-box', 1),
(13, 2, 'Data Keuangan', 'payment', 'bi bi-wallet', 1),
(14, 2, 'Laporan Keuangan', 'report', 'bi bi-wallet-fill', 1),
(17, 3, 'Peserta CoE', 'coe', 'bi bi-person-bounding-box', 1),
(19, 2, 'Jurnal Kas Kecil', 'petty_cash_journal', 'bi bi-cash', 1),
(20, 4, 'Jurnal Kas Kecil', 'petty_cash_journal', 'bi bi-cash', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `participants_coe`
--
ALTER TABLE `participants_coe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT for table `petty_cash_journal`
--
ALTER TABLE `petty_cash_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
