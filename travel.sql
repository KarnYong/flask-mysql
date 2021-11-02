-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 11:10 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `detail`) VALUES
(1, 'หมู่เกาะพีพี', 'หมู่เกาะพีพีเป็นกลุ่มเกาะในประเทศไทยระหว่างเกาะภูเก็ตขนาดใหญ่และช่องแคบชายฝั่งมะละกาของประเทศไทย เกาะเป็นส่วนหนึ่งของการปกครองของจังหวัดกระบี่'),
(2, 'หอไอเฟล', 'หอไอเฟลเป็นหนึ่งในสิ่งก่อสร้างที่โด่งดังที่สุดแห่งหนึ่งของโลก ตั้งชื่อตามกุสตาฟ ไอเฟล สถาปนิกและวิศวกรชั้นนำของฝรั่งเศส ซึ่งเป็นผู้ออกแบบหอคอยนี้ หอไอเฟลสร้างขึ้นเพื่อใช้เป็นสัญลักษณ์ของงานแสดงสินค้าโลก ในปี ค.ศ. 1889');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
