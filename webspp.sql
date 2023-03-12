-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 01:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webspp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `user_admin` varchar(50) NOT NULL,
  `pass_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'Notice:  Undefined variable: res in C:xampphtdocsp', 'Notice:  Undefined variable: res in C:xampphtdocsp', 'Notice:  Undefined variable: res in C:xampphtdocsp'),
(2, 'Notice:  Undefined variable: res in C:xampphtdocsp', 'Notice:  Undefined variable: res in C:xampphtdocsp', 'Notice:  Undefined variable: res in C:xampphtdocsp');

-- --------------------------------------------------------

--
-- Table structure for table `angkatan`
--

CREATE TABLE `angkatan` (
  `id_angkatan` int(11) NOT NULL,
  `nama_angkatan` varchar(50) NOT NULL,
  `biaya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `angkatan`
--

INSERT INTO `angkatan` (`id_angkatan`, `nama_angkatan`, `biaya`) VALUES
(3, '2022/2023', '300000'),
(5, '2020/2021', '200000'),
(6, '2021/2022', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(4, 'AK'),
(5, 'RPL'),
(8, 'DKV'),
(9, 'TKR'),
(10, 'TP'),
(11, 'TKR'),
(12, 'TP'),
(13, 'TL');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X'),
(5, 'XI'),
(6, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idspp` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jatuhtempo` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `nobayar` varchar(50) NOT NULL,
  `tglbayar` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idspp`, `id_siswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `id_admin`) VALUES
(1, 12, '2023-02-05', 'Februari 2023', '150220230233363336', '', '300000', 'LUNAS', 0),
(2, 12, '2023-03-05', 'Maret 2023', '080220230108220822', '', '300000', 'LUNAS', 0),
(3, 12, '2023-04-05', 'April 2023', '', '', '300000', NULL, 0),
(4, 12, '2023-05-05', 'Mei 2023', '', '', '300000', NULL, 0),
(5, 12, '2023-06-05', 'Juni 2023', '', '', '300000', NULL, 0),
(6, 12, '2023-07-05', 'Juli 2023', '', '', '300000', NULL, 0),
(7, 12, '2023-08-05', 'Agustus 2023', '', '', '300000', NULL, 0),
(8, 12, '2023-09-05', 'September 2023', '', '', '300000', NULL, 0),
(9, 12, '2023-10-05', 'Oktober 2023', '', '', '300000', NULL, 0),
(10, 12, '2023-11-05', 'November 2023', '', '', '300000', NULL, 0),
(11, 12, '2023-12-05', 'Desember 2023', '', '', '300000', NULL, 0),
(12, 12, '2024-01-05', 'Januari 2024', '', '', '300000', NULL, 0),
(13, 12, '2024-02-05', 'Februari 2024', '', '', '300000', NULL, 0),
(14, 12, '2024-03-05', 'Maret 2024', '', '', '300000', NULL, 0),
(15, 12, '2024-04-05', 'April 2024', '', '', '300000', NULL, 0),
(16, 12, '2024-05-05', 'Mei 2024', '', '', '300000', NULL, 0),
(17, 12, '2024-06-05', 'Juni 2024', '', '', '300000', NULL, 0),
(18, 12, '2024-07-05', 'Juli 2024', '', '', '300000', NULL, 0),
(19, 12, '2024-08-05', 'Agustus 2024', '', '', '300000', NULL, 0),
(20, 12, '2024-09-05', 'September 2024', '', '', '300000', NULL, 0),
(21, 12, '2024-10-05', 'Oktober 2024', '', '', '300000', NULL, 0),
(22, 12, '2024-11-05', 'November 2024', '', '', '300000', NULL, 0),
(23, 12, '2024-12-05', 'Desember 2024', '', '', '300000', NULL, 0),
(24, 12, '2025-01-05', 'Januari 2025', '', '', '300000', NULL, 0),
(25, 12, '2025-02-05', 'Februari 2025', '', '', '300000', NULL, 0),
(26, 12, '2025-03-05', 'Maret 2025', '', '', '300000', NULL, 0),
(27, 12, '2025-04-05', 'April 2025', '', '', '300000', NULL, 0),
(28, 12, '2025-05-05', 'Mei 2025', '', '', '300000', NULL, 0),
(29, 12, '2025-06-05', 'Juni 2025', '', '', '300000', NULL, 0),
(30, 12, '2025-07-05', 'Juli 2025', '', '', '300000', NULL, 0),
(31, 12, '2025-08-05', 'Agustus 2025', '', '', '300000', NULL, 0),
(32, 12, '2025-09-05', 'September 2025', '', '', '300000', NULL, 0),
(33, 12, '2025-10-05', 'Oktober 2025', '', '', '300000', NULL, 0),
(34, 12, '2025-11-05', 'November 2025', '', '', '300000', NULL, 0),
(35, 12, '2025-12-05', 'Desember 2025', '', '', '300000', NULL, 0),
(36, 12, '2026-01-05', 'Januari 2026', '', '', '300000', NULL, 0),
(37, 13, '2023-02-06', 'Februari 2023', '060220230411301130', '', '300000', 'LUNAS', 0),
(38, 13, '2023-03-06', 'Maret 2023', '060220230411501150', '', '300000', 'LUNAS', 0),
(39, 13, '2023-04-06', 'April 2023', '150220230150105010', '', '300000', 'LUNAS', 0),
(40, 13, '2023-05-06', 'Mei 2023', '', '', '300000', NULL, 0),
(41, 13, '2023-06-06', 'Juni 2023', '', '', '300000', NULL, 0),
(42, 13, '2023-07-06', 'Juli 2023', '', '', '300000', NULL, 0),
(43, 13, '2023-08-06', 'Agustus 2023', '', '', '300000', NULL, 0),
(44, 13, '2023-09-06', 'September 2023', '', '', '300000', NULL, 0),
(45, 13, '2023-10-06', 'Oktober 2023', '', '', '300000', NULL, 0),
(46, 13, '2023-11-06', 'November 2023', '', '', '300000', NULL, 0),
(47, 13, '2023-12-06', 'Desember 2023', '', '', '300000', NULL, 0),
(48, 13, '2024-01-06', 'Januari 2024', '', '', '300000', NULL, 0),
(49, 13, '2024-02-06', 'Februari 2024', '', '', '300000', NULL, 0),
(50, 13, '2024-03-06', 'Maret 2024', '', '', '300000', NULL, 0),
(51, 13, '2024-04-06', 'April 2024', '', '', '300000', NULL, 0),
(52, 13, '2024-05-06', 'Mei 2024', '', '', '300000', NULL, 0),
(53, 13, '2024-06-06', 'Juni 2024', '', '', '300000', NULL, 0),
(54, 13, '2024-07-06', 'Juli 2024', '', '', '300000', NULL, 0),
(55, 13, '2024-08-06', 'Agustus 2024', '', '', '300000', NULL, 0),
(56, 13, '2024-09-06', 'September 2024', '', '', '300000', NULL, 0),
(57, 13, '2024-10-06', 'Oktober 2024', '', '', '300000', NULL, 0),
(58, 13, '2024-11-06', 'November 2024', '', '', '300000', NULL, 0),
(59, 13, '2024-12-06', 'Desember 2024', '', '', '300000', NULL, 0),
(60, 13, '2025-01-06', 'Januari 2025', '', '', '300000', NULL, 0),
(61, 13, '2025-02-06', 'Februari 2025', '', '', '300000', NULL, 0),
(62, 13, '2025-03-06', 'Maret 2025', '', '', '300000', NULL, 0),
(63, 13, '2025-04-06', 'April 2025', '', '', '300000', NULL, 0),
(64, 13, '2025-05-06', 'Mei 2025', '', '', '300000', NULL, 0),
(65, 13, '2025-06-06', 'Juni 2025', '', '', '300000', NULL, 0),
(66, 13, '2025-07-06', 'Juli 2025', '', '', '300000', NULL, 0),
(67, 13, '2025-08-06', 'Agustus 2025', '', '', '300000', NULL, 0),
(68, 13, '2025-09-06', 'September 2025', '', '', '300000', NULL, 0),
(69, 13, '2025-10-06', 'Oktober 2025', '', '', '300000', NULL, 0),
(70, 13, '2025-11-06', 'November 2025', '', '', '300000', NULL, 0),
(71, 13, '2025-12-06', 'Desember 2025', '', '', '300000', NULL, 0),
(72, 13, '2026-01-06', 'Januari 2026', '', '', '300000', NULL, 0),
(73, 14, '2023-02-08', 'Februari 2023', '', '', '300000', NULL, 0),
(74, 14, '2023-03-08', 'Maret 2023', '', '', '300000', NULL, 0),
(75, 14, '2023-04-08', 'April 2023', '', '', '300000', NULL, 0),
(76, 14, '2023-05-08', 'Mei 2023', '', '', '300000', NULL, 0),
(77, 14, '2023-06-08', 'Juni 2023', '', '', '300000', NULL, 0),
(78, 14, '2023-07-08', 'Juli 2023', '', '', '300000', NULL, 0),
(79, 14, '2023-08-08', 'Agustus 2023', '', '', '300000', NULL, 0),
(80, 14, '2023-09-08', 'September 2023', '', '', '300000', NULL, 0),
(81, 14, '2023-10-08', 'Oktober 2023', '', '', '300000', NULL, 0),
(82, 14, '2023-11-08', 'November 2023', '', '', '300000', NULL, 0),
(83, 14, '2023-12-08', 'Desember 2023', '', '', '300000', NULL, 0),
(84, 14, '2024-01-08', 'Januari 2024', '', '', '300000', NULL, 0),
(85, 14, '2024-02-08', 'Februari 2024', '', '', '300000', NULL, 0),
(86, 14, '2024-03-08', 'Maret 2024', '', '', '300000', NULL, 0),
(87, 14, '2024-04-08', 'April 2024', '', '', '300000', NULL, 0),
(88, 14, '2024-05-08', 'Mei 2024', '', '', '300000', NULL, 0),
(89, 14, '2024-06-08', 'Juni 2024', '', '', '300000', NULL, 0),
(90, 14, '2024-07-08', 'Juli 2024', '', '', '300000', NULL, 0),
(91, 14, '2024-08-08', 'Agustus 2024', '', '', '300000', NULL, 0),
(92, 14, '2024-09-08', 'September 2024', '', '', '300000', NULL, 0),
(93, 14, '2024-10-08', 'Oktober 2024', '', '', '300000', NULL, 0),
(94, 14, '2024-11-08', 'November 2024', '', '', '300000', NULL, 0),
(95, 14, '2024-12-08', 'Desember 2024', '', '', '300000', NULL, 0),
(96, 14, '2025-01-08', 'Januari 2025', '', '', '300000', NULL, 0),
(97, 14, '2025-02-08', 'Februari 2025', '', '', '300000', NULL, 0),
(98, 14, '2025-03-08', 'Maret 2025', '', '', '300000', NULL, 0),
(99, 14, '2025-04-08', 'April 2025', '', '', '300000', NULL, 0),
(100, 14, '2025-05-08', 'Mei 2025', '', '', '300000', NULL, 0),
(101, 14, '2025-06-08', 'Juni 2025', '', '', '300000', NULL, 0),
(102, 14, '2025-07-08', 'Juli 2025', '', '', '300000', NULL, 0),
(103, 14, '2025-08-08', 'Agustus 2025', '', '', '300000', NULL, 0),
(104, 14, '2025-09-08', 'September 2025', '', '', '300000', NULL, 0),
(105, 14, '2025-10-08', 'Oktober 2025', '', '', '300000', NULL, 0),
(106, 14, '2025-11-08', 'November 2025', '', '', '300000', NULL, 0),
(107, 14, '2025-12-08', 'Desember 2025', '', '', '300000', NULL, 0),
(108, 14, '2026-01-08', 'Januari 2026', '', '', '300000', NULL, 0),
(109, 15, '2023-02-08', 'Februari 2023', '', '', '300000', NULL, 0),
(110, 15, '2023-03-08', 'Maret 2023', '', '', '300000', NULL, 0),
(111, 15, '2023-04-08', 'April 2023', '', '', '300000', NULL, 0),
(112, 15, '2023-05-08', 'Mei 2023', '', '', '300000', NULL, 0),
(113, 15, '2023-06-08', 'Juni 2023', '', '', '300000', NULL, 0),
(114, 15, '2023-07-08', 'Juli 2023', '', '', '300000', NULL, 0),
(115, 15, '2023-08-08', 'Agustus 2023', '', '', '300000', NULL, 0),
(116, 15, '2023-09-08', 'September 2023', '', '', '300000', NULL, 0),
(117, 15, '2023-10-08', 'Oktober 2023', '', '', '300000', NULL, 0),
(118, 15, '2023-11-08', 'November 2023', '', '', '300000', NULL, 0),
(119, 15, '2023-12-08', 'Desember 2023', '', '', '300000', NULL, 0),
(120, 15, '2024-01-08', 'Januari 2024', '', '', '300000', NULL, 0),
(121, 15, '2024-02-08', 'Februari 2024', '', '', '300000', NULL, 0),
(122, 15, '2024-03-08', 'Maret 2024', '', '', '300000', NULL, 0),
(123, 15, '2024-04-08', 'April 2024', '', '', '300000', NULL, 0),
(124, 15, '2024-05-08', 'Mei 2024', '', '', '300000', NULL, 0),
(125, 15, '2024-06-08', 'Juni 2024', '', '', '300000', NULL, 0),
(126, 15, '2024-07-08', 'Juli 2024', '', '', '300000', NULL, 0),
(127, 15, '2024-08-08', 'Agustus 2024', '', '', '300000', NULL, 0),
(128, 15, '2024-09-08', 'September 2024', '', '', '300000', NULL, 0),
(129, 15, '2024-10-08', 'Oktober 2024', '', '', '300000', NULL, 0),
(130, 15, '2024-11-08', 'November 2024', '', '', '300000', NULL, 0),
(131, 15, '2024-12-08', 'Desember 2024', '', '', '300000', NULL, 0),
(132, 15, '2025-01-08', 'Januari 2025', '', '', '300000', NULL, 0),
(133, 15, '2025-02-08', 'Februari 2025', '', '', '300000', NULL, 0),
(134, 15, '2025-03-08', 'Maret 2025', '', '', '300000', NULL, 0),
(135, 15, '2025-04-08', 'April 2025', '', '', '300000', NULL, 0),
(136, 15, '2025-05-08', 'Mei 2025', '', '', '300000', NULL, 0),
(137, 15, '2025-06-08', 'Juni 2025', '', '', '300000', NULL, 0),
(138, 15, '2025-07-08', 'Juli 2025', '', '', '300000', NULL, 0),
(139, 15, '2025-08-08', 'Agustus 2025', '', '', '300000', NULL, 0),
(140, 15, '2025-09-08', 'September 2025', '', '', '300000', NULL, 0),
(141, 15, '2025-10-08', 'Oktober 2025', '', '', '300000', NULL, 0),
(142, 15, '2025-11-08', 'November 2025', '', '', '300000', NULL, 0),
(143, 15, '2025-12-08', 'Desember 2025', '', '', '300000', NULL, 0),
(144, 15, '2026-01-08', 'Januari 2026', '', '', '300000', NULL, 0),
(145, 15, '2023-02-08', 'Februari 2023', '', '', '300000', NULL, 0),
(146, 15, '2023-03-08', 'Maret 2023', '', '', '300000', NULL, 0),
(147, 15, '2023-04-08', 'April 2023', '', '', '300000', NULL, 0),
(148, 15, '2023-05-08', 'Mei 2023', '', '', '300000', NULL, 0),
(149, 15, '2023-06-08', 'Juni 2023', '', '', '300000', NULL, 0),
(150, 15, '2023-07-08', 'Juli 2023', '', '', '300000', NULL, 0),
(151, 15, '2023-08-08', 'Agustus 2023', '', '', '300000', NULL, 0),
(152, 15, '2023-09-08', 'September 2023', '', '', '300000', NULL, 0),
(153, 15, '2023-10-08', 'Oktober 2023', '', '', '300000', NULL, 0),
(154, 15, '2023-11-08', 'November 2023', '', '', '300000', NULL, 0),
(155, 15, '2023-12-08', 'Desember 2023', '', '', '300000', NULL, 0),
(156, 15, '2024-01-08', 'Januari 2024', '', '', '300000', NULL, 0),
(157, 15, '2024-02-08', 'Februari 2024', '', '', '300000', NULL, 0),
(158, 15, '2024-03-08', 'Maret 2024', '', '', '300000', NULL, 0),
(159, 15, '2024-04-08', 'April 2024', '', '', '300000', NULL, 0),
(160, 15, '2024-05-08', 'Mei 2024', '', '', '300000', NULL, 0),
(161, 15, '2024-06-08', 'Juni 2024', '', '', '300000', NULL, 0),
(162, 15, '2024-07-08', 'Juli 2024', '', '', '300000', NULL, 0),
(163, 15, '2024-08-08', 'Agustus 2024', '', '', '300000', NULL, 0),
(164, 15, '2024-09-08', 'September 2024', '', '', '300000', NULL, 0),
(165, 15, '2024-10-08', 'Oktober 2024', '', '', '300000', NULL, 0),
(166, 15, '2024-11-08', 'November 2024', '', '', '300000', NULL, 0),
(167, 15, '2024-12-08', 'Desember 2024', '', '', '300000', NULL, 0),
(168, 15, '2025-01-08', 'Januari 2025', '', '', '300000', NULL, 0),
(169, 15, '2025-02-08', 'Februari 2025', '', '', '300000', NULL, 0),
(170, 15, '2025-03-08', 'Maret 2025', '', '', '300000', NULL, 0),
(171, 15, '2025-04-08', 'April 2025', '', '', '300000', NULL, 0),
(172, 15, '2025-05-08', 'Mei 2025', '', '', '300000', NULL, 0),
(173, 15, '2025-06-08', 'Juni 2025', '', '', '300000', NULL, 0),
(174, 15, '2025-07-08', 'Juli 2025', '', '', '300000', NULL, 0),
(175, 15, '2025-08-08', 'Agustus 2025', '', '', '300000', NULL, 0),
(176, 15, '2025-09-08', 'September 2025', '', '', '300000', NULL, 0),
(177, 15, '2025-10-08', 'Oktober 2025', '', '', '300000', NULL, 0),
(178, 15, '2025-11-08', 'November 2025', '', '', '300000', NULL, 0),
(179, 15, '2025-12-08', 'Desember 2025', '', '', '300000', NULL, 0),
(180, 15, '2026-01-08', 'Januari 2026', '', '', '300000', NULL, 0),
(181, 17, '2023-02-08', 'Februari 2023', '', '', '300000', NULL, 0),
(182, 17, '2023-03-08', 'Maret 2023', '', '', '300000', NULL, 0),
(183, 17, '2023-04-08', 'April 2023', '', '', '300000', NULL, 0),
(184, 17, '2023-05-08', 'Mei 2023', '', '', '300000', NULL, 0),
(185, 17, '2023-06-08', 'Juni 2023', '', '', '300000', NULL, 0),
(186, 17, '2023-07-08', 'Juli 2023', '', '', '300000', NULL, 0),
(187, 17, '2023-08-08', 'Agustus 2023', '', '', '300000', NULL, 0),
(188, 17, '2023-09-08', 'September 2023', '', '', '300000', NULL, 0),
(189, 17, '2023-10-08', 'Oktober 2023', '', '', '300000', NULL, 0),
(190, 17, '2023-11-08', 'November 2023', '', '', '300000', NULL, 0),
(191, 17, '2023-12-08', 'Desember 2023', '', '', '300000', NULL, 0),
(192, 17, '2024-01-08', 'Januari 2024', '', '', '300000', NULL, 0),
(193, 17, '2024-02-08', 'Februari 2024', '', '', '300000', NULL, 0),
(194, 17, '2024-03-08', 'Maret 2024', '', '', '300000', NULL, 0),
(195, 17, '2024-04-08', 'April 2024', '', '', '300000', NULL, 0),
(196, 17, '2024-05-08', 'Mei 2024', '', '', '300000', NULL, 0),
(197, 17, '2024-06-08', 'Juni 2024', '', '', '300000', NULL, 0),
(198, 17, '2024-07-08', 'Juli 2024', '', '', '300000', NULL, 0),
(199, 17, '2024-08-08', 'Agustus 2024', '', '', '300000', NULL, 0),
(200, 17, '2024-09-08', 'September 2024', '', '', '300000', NULL, 0),
(201, 17, '2024-10-08', 'Oktober 2024', '', '', '300000', NULL, 0),
(202, 17, '2024-11-08', 'November 2024', '', '', '300000', NULL, 0),
(203, 17, '2024-12-08', 'Desember 2024', '', '', '300000', NULL, 0),
(204, 17, '2025-01-08', 'Januari 2025', '', '', '300000', NULL, 0),
(205, 17, '2025-02-08', 'Februari 2025', '', '', '300000', NULL, 0),
(206, 17, '2025-03-08', 'Maret 2025', '', '', '300000', NULL, 0),
(207, 17, '2025-04-08', 'April 2025', '', '', '300000', NULL, 0),
(208, 17, '2025-05-08', 'Mei 2025', '', '', '300000', NULL, 0),
(209, 17, '2025-06-08', 'Juni 2025', '', '', '300000', NULL, 0),
(210, 17, '2025-07-08', 'Juli 2025', '', '', '300000', NULL, 0),
(211, 17, '2025-08-08', 'Agustus 2025', '', '', '300000', NULL, 0),
(212, 17, '2025-09-08', 'September 2025', '', '', '300000', NULL, 0),
(213, 17, '2025-10-08', 'Oktober 2025', '', '', '300000', NULL, 0),
(214, 17, '2025-11-08', 'November 2025', '', '', '300000', NULL, 0),
(215, 17, '2025-12-08', 'Desember 2025', '', '', '300000', NULL, 0),
(216, 17, '2026-01-08', 'Januari 2026', '', '', '300000', NULL, 0),
(217, 18, '2023-02-15', 'Februari 2023', '', '', '300000', NULL, 0),
(218, 18, '2023-03-15', 'Maret 2023', '', '', '300000', NULL, 0),
(219, 18, '2023-04-15', 'April 2023', '', '', '300000', NULL, 0),
(220, 18, '2023-05-15', 'Mei 2023', '', '', '300000', NULL, 0),
(221, 18, '2023-06-15', 'Juni 2023', '', '', '300000', NULL, 0),
(222, 18, '2023-07-15', 'Juli 2023', '', '', '300000', NULL, 0),
(223, 18, '2023-08-15', 'Agustus 2023', '', '', '300000', NULL, 0),
(224, 18, '2023-09-15', 'September 2023', '', '', '300000', NULL, 0),
(225, 18, '2023-10-15', 'Oktober 2023', '', '', '300000', NULL, 0),
(226, 18, '2023-11-15', 'November 2023', '', '', '300000', NULL, 0),
(227, 18, '2023-12-15', 'Desember 2023', '', '', '300000', NULL, 0),
(228, 18, '2024-01-15', 'Januari 2024', '', '', '300000', NULL, 0),
(229, 18, '2024-02-15', 'Februari 2024', '', '', '300000', NULL, 0),
(230, 18, '2024-03-15', 'Maret 2024', '', '', '300000', NULL, 0),
(231, 18, '2024-04-15', 'April 2024', '', '', '300000', NULL, 0),
(232, 18, '2024-05-15', 'Mei 2024', '', '', '300000', NULL, 0),
(233, 18, '2024-06-15', 'Juni 2024', '', '', '300000', NULL, 0),
(234, 18, '2024-07-15', 'Juli 2024', '', '', '300000', NULL, 0),
(235, 18, '2024-08-15', 'Agustus 2024', '', '', '300000', NULL, 0),
(236, 18, '2024-09-15', 'September 2024', '', '', '300000', NULL, 0),
(237, 18, '2024-10-15', 'Oktober 2024', '', '', '300000', NULL, 0),
(238, 18, '2024-11-15', 'November 2024', '', '', '300000', NULL, 0),
(239, 18, '2024-12-15', 'Desember 2024', '', '', '300000', NULL, 0),
(240, 18, '2025-01-15', 'Januari 2025', '', '', '300000', NULL, 0),
(241, 18, '2025-02-15', 'Februari 2025', '', '', '300000', NULL, 0),
(242, 18, '2025-03-15', 'Maret 2025', '', '', '300000', NULL, 0),
(243, 18, '2025-04-15', 'April 2025', '', '', '300000', NULL, 0),
(244, 18, '2025-05-15', 'Mei 2025', '', '', '300000', NULL, 0),
(245, 18, '2025-06-15', 'Juni 2025', '', '', '300000', NULL, 0),
(246, 18, '2025-07-15', 'Juli 2025', '', '', '300000', NULL, 0),
(247, 18, '2025-08-15', 'Agustus 2025', '', '', '300000', NULL, 0),
(248, 18, '2025-09-15', 'September 2025', '', '', '300000', NULL, 0),
(249, 18, '2025-10-15', 'Oktober 2025', '', '', '300000', NULL, 0),
(250, 18, '2025-11-15', 'November 2025', '', '', '300000', NULL, 0),
(251, 18, '2025-12-15', 'Desember 2025', '', '', '300000', NULL, 0),
(252, 18, '2026-01-15', 'Januari 2026', '', '', '300000', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_angkatan` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nama`, `id_angkatan`, `id_jurusan`, `id_kelas`, `alamat`) VALUES
(9, '789657', 'Novi D', 3, 1, 1, 'Beged'),
(11, '03022023043233', 'Aria', 3, 1, 1, 'Pwr'),
(12, '05022023060309', 'Nopi Dwi', 3, 5, 1, 'Gayam'),
(13, '06022023020940', 'Siti', 3, 8, 1, 'Pojok'),
(15, '08022023034543', 'Rianti', 3, 5, 5, 'Ngerco'),
(16, '08022023035724', 'Bn ', 0, 1, 1, 'Vyuccgh'),
(17, '08022023035755', 'Bn ', 3, 4, 1, 'Kbjg'),
(18, '15022023014852', 'As', 3, 5, 5, 'Defg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user1`
--

CREATE TABLE `tb_user1` (
  `id` int(10) NOT NULL,
  `nama_lengkap` varchar(45) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL,
  `telp` varchar(16) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user1`
--

INSERT INTO `tb_user1` (`id`, `nama_lengkap`, `username`, `password`, `telp`, `level`) VALUES
(1, '', 'admin', '123', '', 'admin'),
(3, '', 'petugas', '123', '', 'petugas'),
(4, '', 'siswa', '123', '', 'siswa'),
(124, 'sa', 'as', 'sa', '2', 'user'),
(125, 'ayang', 'novi', 'abay', '1234', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `angkatan`
--
ALTER TABLE `angkatan`
  ADD PRIMARY KEY (`id_angkatan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idspp`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_user1`
--
ALTER TABLE `tb_user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `angkatan`
--
ALTER TABLE `angkatan`
  MODIFY `id_angkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idspp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_user1`
--
ALTER TABLE `tb_user1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
