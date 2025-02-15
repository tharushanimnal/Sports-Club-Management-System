-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2025 at 07:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exx`
--

-- --------------------------------------------------------

--
-- Table structure for table `club_register`
--

CREATE TABLE `club_register` (
  `no` int(11) NOT NULL,
  `reg_id` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `division` text NOT NULL,
  `village` text NOT NULL,
  `club_name` text NOT NULL,
  `reg_date` date NOT NULL,
  `chair_name` text NOT NULL,
  `sec_name` text NOT NULL,
  `volleyball` int(10) NOT NULL,
  `net` int(10) NOT NULL,
  `nb` int(10) NOT NULL,
  `football` int(10) NOT NULL,
  `tenis` int(10) NOT NULL,
  `bat` int(10) NOT NULL,
  `wicket` int(10) NOT NULL,
  `equipments` text NOT NULL,
  `reco_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ගාල්ල`
--

CREATE TABLE `ගාල්ල` (
  `ID` int(5) NOT NULL,
  `division` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ගාල්ල`
--

INSERT INTO `ගාල්ල` (`ID`, `division`) VALUES
(1, 'ගාල්ල'),
(2, 'බෝපේ පෝදල'),
(3, 'අක්මීමණ'),
(4, 'හික්කඩුව'),
(5, 'හබරාදූව'),
(6, 'බද්දේගම'),
(7, 'බෙන්තර'),
(8, 'කරණ්දෙණිය'),
(9, 'නෙළුව'),
(10, 'තවලම'),
(11, 'යක්කලමුල්ල'),
(12, 'ඉමදූව'),
(13, 'නියාගම'),
(14, 'ඇල්පිටිය'),
(15, 'බලපිටිය'),
(16, 'අම්බලන්ගොඩ'),
(17, 'නාගොඩ'),
(18, 'වැලිවිටිය දිවිතුර'),
(19, 'ගෝනාපීනුවල'),
(20, 'රත්ගම'),
(21, 'වඳුරඹ'),
(22, 'මාදම්පාගම');

-- --------------------------------------------------------

--
-- Table structure for table `මාතර`
--

CREATE TABLE `මාතර` (
  `ID` int(5) NOT NULL,
  `division` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `මාතර`
--

INSERT INTO `මාතර` (`ID`, `division`) VALUES
(1, 'අකුරැස්ස'),
(2, 'අතුරලිය'),
(3, 'දෙවිනුවර'),
(4, 'දික්වැල්ල'),
(6, 'හක්මන'),
(7, 'කිරින්ද'),
(8, 'කොටපොල'),
(9, 'මාලිම්බඩ'),
(10, 'මාතර'),
(11, 'මුලටියන'),
(12, 'පස්ගොඩ'),
(13, 'පිටබැද්දර'),
(14, 'තිහගොඩ'),
(15, 'වැලිගම'),
(16, 'වැලිපිටිය'),
(17, 'කඹුරුපිටිය');

-- --------------------------------------------------------

--
-- Table structure for table `හම්බන්තොට`
--

CREATE TABLE `හම්බන්තොට` (
  `ID` int(5) NOT NULL,
  `division` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `හම්බන්තොට`
--

INSERT INTO `හම්බන්තොට` (`ID`, `division`) VALUES
(1, 'අම්බලන්තොට'),
(2, 'අඟුණුකොළපැලැස්ස'),
(3, 'බෙලිඅත්ත'),
(4, 'හම්බන්තොට'),
(5, 'කටුවන'),
(6, 'ලුණුගම්වෙහෙර'),
(7, 'ඕකේවෙල'),
(8, 'සූරියවැව'),
(9, 'තංගල්ල'),
(10, 'තිස්සමහාරාම'),
(11, 'වලස්මුල්ල'),
(12, 'වීරකැටිය');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club_register`
--
ALTER TABLE `club_register`
  ADD PRIMARY KEY (`reg_id`),
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `ගාල්ල`
--
ALTER TABLE `ගාල්ල`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `මාතර`
--
ALTER TABLE `මාතර`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `හම්බන්තොට`
--
ALTER TABLE `හම්බන්තොට`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club_register`
--
ALTER TABLE `club_register`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ගාල්ල`
--
ALTER TABLE `ගාල්ල`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `මාතර`
--
ALTER TABLE `මාතර`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `හම්බන්තොට`
--
ALTER TABLE `හම්බන්තොට`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
