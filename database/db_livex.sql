-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2016 at 07:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_livex`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE IF NOT EXISTS `tbl_accounts` (
`accountID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`accountID`, `username`, `password`) VALUES
(1, 'user1', 'user1'),
(2, 'user2', 'user2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
`categoryID` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`categoryID`, `category`) VALUES
(2, 'Guest/VIP'),
(3, 'Business Sectors'),
(4, 'Schools'),
(5, 'Local Government Units'),
(6, 'National Government Agency'),
(7, 'Exhibitor'),
(8, 'Committee'),
(9, 'JOb Fair'),
(10, 'Speaker\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymenttype`
--

CREATE TABLE IF NOT EXISTS `tbl_paymenttype` (
`payment_typeID` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_paymenttype`
--

INSERT INTO `tbl_paymenttype` (`payment_typeID`, `payment_type`, `amount`) VALUES
(1, 'student', 600),
(2, 'Stakeholder & NGA', 1000),
(3, 'professional', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registrants`
--

CREATE TABLE IF NOT EXISTS `tbl_registrants` (
`registrantID` int(11) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `suffix` varchar(10) NOT NULL,
  `company_affliated` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `categoryID` varchar(20) NOT NULL,
  `registration_type` varchar(20) NOT NULL,
  `registration_status` int(11) NOT NULL DEFAULT '0',
  `paymentID` int(11) NOT NULL,
  `amount_paid` float NOT NULL,
  `registration_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registrants`
--

INSERT INTO `tbl_registrants` (`registrantID`, `lastname`, `firstname`, `middlename`, `suffix`, `company_affliated`, `sex`, `categoryID`, `registration_type`, `registration_status`, `paymentID`, `amount_paid`, `registration_time`) VALUES
(2, 'Dela Rosa', 'Dir. Evamay', 'C.', '', 'DICT MC 2', '', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(3, 'Urbiztondo', 'Engr. Cipriano', '', '', 'DICT MC 3', '', '2', 'pre-registered', 1, 0, 0, '2016-10-11 08:47:31'),
(4, 'Raposala', 'Eugene', '', '', 'DICT MC 4', '', '2', 'pre-registered', 1, 0, 0, '2016-10-11 08:47:50'),
(5, 'Asum', 'Dr. Alimbar', 'P.', '', 'DICT MC 3', '', '2', 'pre-registered', 1, 0, 0, '2016-10-11 08:44:48'),
(6, 'Guevara', 'Engr. Paullette', '', '', 'DICT MC 3', '', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(7, 'Ortega', 'Dir. Cheryl', ' C. ', '', 'DICT LC 2', '', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(8, 'Padre', 'Dir. Tony', '', '', 'DICT VC 2', '', '2', 'pre-registered', 1, 0, 0, '2016-10-11 08:46:57'),
(9, 'Francisco', 'JV', '', '', 'GMA', '', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(10, 'Ceniza', 'Ethel', ' M. ', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 1, 0, 0, '2016-10-11 08:36:53'),
(11, ' Briones', ' Yani Lea', '', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(12, 'King', 'Bryan Joseph', '', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(13, 'Ayub', ' Raphy', '', '', 'OWNER', '', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(15, 'Raton', 'Jeremille ', '', '', 'Entrepreneur', '', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(16, ' Pamaran', 'Marielle Carmela', '', '', 'ADZU', '', '4', 'pre-registered', 1, 1, 500, '2016-10-11 11:21:03'),
(17, 'Balita', 'Clifford Jay ', '', '', 'ADZU', '', '4', 'pre-registered', 1, 1, 500, '2016-10-11 11:21:28'),
(18, 'Cabunog, RVM', 'Sister Maria Charita', '', '', 'Pilar College', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(19, 'Inggal', 'Janalan', ' S.', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(20, ' Ismael', 'Delia Ruxanna', '', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(21, 'Kadil', 'Jerry', '', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(22, 'Madriaga', 'Norwesa', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(23, 'Davilan', 'Jinky', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 1, 0, 0, '2016-10-11 09:30:32'),
(24, 'Javar', ' Vincent John ', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(25, 'Pelaez', ' Rayyan', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(26, ' Sanido', 'Angel', '', '', 'Western Mindanao \nFoundation College, Inc.', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(27, 'Rotoni', 'Charles Anthony', '', '', 'City Toursim Office', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(28, 'Labitad', 'Armando', '', '', 'City Toursim Office', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(29, '', 'Dr. Ariola', '', '', 'City Veterinarian''s Office', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(30, '', 'Ms. Contilanano', '', '', 'City Planning and Development Office', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(31, 'Sicat', 'Engr. Rodrigo', '', '', 'City Planning and Development Office', '', '5', 'pre-registered', 1, 0, 0, '2016-10-11 08:26:03'),
(33, 'Caballero', 'Eugene', '', '', 'Manukan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(34, 'Celestial', 'Lynne', ' B.', '', 'BIR-RD91', '', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:24:14'),
(35, ' Baya', 'Maria Dolores', 'A.', '', 'Dimataling', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(36, 'Asoy', 'Wilfredo', 'R.', ' Sr. ', 'Dinas', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(37, 'Cerilles', 'Junaflor ', 'S.', '', 'Dumalinao', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(38, 'Cruz', 'Vee Arr', '', '', 'Dumalinao', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(39, 'Pacalioga', 'Mark', 'V.', '', 'Dumingag', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(40, 'Oraiz', 'Francisco', 'N. ', ' Jr. ', 'Guipos', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(41, 'Adapon', 'Catalino', 'A. ', '', 'Josefina', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(42, 'Relacion ', 'Eduardo', 'B.', '', 'Labangan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(43, 'Clavero', 'Diego ', 'M.', '', 'Midsalip', '', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 08:47:23'),
(44, 'Pulmones', 'Romeo', ' P.', '', 'Pagadian City', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(45, 'Borinaga', 'Leonilo', 'D.', ' Sr. ', 'Ramon Magsaysay', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(46, 'Maata', 'Merlinda', 'P.', '', 'Vicenzo A. Sagun', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(47, 'Cainglet', 'George', 'C.', '', 'Kabasalan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(48, 'CaloÃ±ge', 'Restituto', 'O.', '', 'Mabuhay', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(49, 'Napigkit', 'Ric', '', '', 'Tungawan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(51, 'Rotoni', 'Charles ', '', '', 'Department of Tourism IX', '', '6', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(52, 'Labitat', 'Junn', '', '', 'Department of Tourism IX', '', '6', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(53, 'Rojas', 'Ma. Isabel', 'D.', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 3, 1200, '2016-10-11 10:07:57'),
(54, 'Alfanta', 'Amelita', 'R.', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 0, 3, 1200, '0000-00-00 00:00:00'),
(55, 'Alameda', 'Edna', '-', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 0, 3, 1200, '0000-00-00 00:00:00'),
(56, 'Reambonanza', 'Ma. Soceorro', 'C.', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 3, 1200, '2016-10-11 10:59:29'),
(58, 'Noche', 'Donel ', '', '', 'Land Transportation Office IX', '', '6', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(59, 'Infante', 'Vanessa', '', '', 'Ungkaya Pukan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(60, 'Abdulcadir', 'Marie', '', '', 'Ungkaya Pukan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(61, 'Salasim', 'Usodan', '', '', 'Basilan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(62, 'Asalul', 'Farsi', 'D.', '', 'Basilan', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(63, 'Jolo', 'Michael', '', '', 'Deped', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(64, ' Usman', 'Engr. Nadzrimar', ' A.', '', 'Lugus', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(65, 'Salih', 'Hadja Rahiema', 'A.', '', 'Tandubas', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(66, 'Hussin', ' Salomas', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(67, 'Noor', ' Almadee Lee', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:53:03'),
(68, 'Junaid', 'Omar Aziz', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(71, 'Mongcupa', 'Angela', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(72, 'Haman', 'Aishia', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:29:22'),
(73, 'Hama', 'Ervira', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:40:37'),
(74, 'Macaambac', 'Salvador', '', '', 'Labason', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(76, 'Hayudini', 'Furqaan', ' I ', '', 'Sulu State College', '', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(77, 'tahil', 'salimar', 'B', '', 'WMSU', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 08:33:30'),
(78, 'Salimin', 'Jeva', 'K. ', '', 'MINDA', 'Female', '3', 'pre-registered', 1, 0, 0, '2016-10-11 07:57:06'),
(79, 'Micubo', 'Garry', 'S.J', '', 'dti', '', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(80, 'Rabajante', 'Romeo', 'A.', '', 'ADZU', '', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(81, 'Miravite', 'Rexor', 'M.', '', 'ADZU', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(82, 'Credo', 'Fritzie Lee', 'B.', '', 'PLDT', 'Female', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(83, 'Mohd.Arip', 'Al-Jastrie', 'L.', '', 'DEPED', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 08:19:18'),
(84, 'Torres', 'Lucivel', 'C.', '', 'DTI', 'Female', '7', 'pre-registered', 1, 0, 0, '2016-10-11 11:04:41'),
(85, 'Camba', 'Maria Teresa', 'M.', '', 'DICT', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(86, 'Antiojo', 'Milo', 'A.', 'II', 'Real Estate', 'Male', '5', 'pre-registered', 0, 3, 1200, '0000-00-00 00:00:00'),
(87, 'Natividad', 'Ana Kriselda', 'O.', '', 'DICT', '', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(88, 'Calingacion', 'Juanito', 'M.', 'jr', 'DICT', '', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(89, 'Wee', 'Jake Christian', 'L.', '', 'STI-Zamboanga', 'Male', '4', 'pre-registered', 1, 0, 0, '2016-10-11 09:58:41'),
(90, 'Amsain', 'Fatima Darshell Ann', 'A.', '', 'STI College Zamboanga', 'Female', '4', 'pre-registered', 1, 0, 0, '2016-10-11 09:58:51'),
(91, 'Jaron', 'Joe Darryl', 'L.', '', 'DTI', 'Male', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(92, 'Musa', 'Al-Kaizer', 'M.', '', 'DCIT', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(93, 'Inding', 'Ahmad-Fahem', 'T.', '', 'MSU-Sulu', 'Male', '4', 'pre-registered', 1, 2, 1000, '2016-10-11 08:31:05'),
(94, 'Martinez', 'Wilfrido', 'M.', 'Jr.', 'DICT', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 08:26:42'),
(95, 'Patrinomo', 'Gay', 'C.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(96, 'Mohammad', 'Jacob', 'F.', '', 'DICT', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 07:52:15'),
(97, 'Inding', 'Ahmad-Fahem', 'T.', '', 'MSU-Sulu', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(98, 'Asari', 'Mersalyn', 'A.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(99, 'Aburkair', 'Fahda', 'S.', '', 'UZ', 'Female', '4', 'pre-registered', 1, 1, 600, '2016-10-11 08:23:04'),
(100, 'Pabriga', 'Charlyn', 'O.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(101, 'De Guzman', 'Carmilvar', 'Saavedra', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(102, 'Magbanua', 'Lea Genesis', 'B.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(103, 'Tinio', 'Eloisa', 'P', '', 'Speaker', 'Female', '2', 'pre-registered', 1, 0, 0, '2016-10-11 09:19:23'),
(104, 'Bimbo', 'Cheryl', 'B.', '', 'Mahayag', 'Female', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:29:55'),
(105, 'Caylan', 'Nel Trixter', 'R.', '', 'Mahayag', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:29:50'),
(106, 'Gevera', 'Paulette', 'V.', '', 'DICT', 'Female', '8', 'pre-registered', 1, 0, 0, '2016-10-11 08:11:56'),
(107, 'Tomas', 'Rodolfo', 'A.', '', 'DIC', 'Male', '5', 'pre-registered', 1, 0, 0, '2016-10-11 08:26:24'),
(108, 'Abubakar', 'Muhammad', 'S.', '', 'DICT', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 08:25:05'),
(109, 'Casimiro', 'Reynaldo', 'L.', '', 'DI', 'Male', '5', 'pre-registered', 1, 0, 0, '2016-10-11 08:26:08'),
(110, 'Claveio', 'Diego', 'M.', '', 'Midsaup', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(111, 'Avergonzado', 'Dario', 'E.', '', 'DICT', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 08:24:55'),
(112, 'Maturan', 'Joel', 'C.', '', 'DICT', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(113, 'Jamalul', 'Harshid', 'A.', '', 'BIR', 'Male', '5', 'pre-registered', 1, 2, 500, '2016-10-11 08:33:34'),
(114, 'Macasantos', 'Rodrigo', 'A.', '', 'DICT', 'Male', '8', 'pre-registered', 1, 0, 0, '2016-10-11 09:13:14'),
(115, 'Amaraja', 'Yildrim', 'T.', '', 'LTO', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(116, 'Estioina', 'Earl Kent', 'P.', '', 'Adzu', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(117, 'Bello', 'Oliver Jem', 'B.', '', 'UZ', 'Male', '4', 'pre-registered', 1, 1, 600, '2016-10-11 08:55:11'),
(118, 'Manalo', 'Aileen', 'G.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(119, 'Aggabao', 'Jose', 'E.', 'Jr.', 'DepEd', 'Male', '5', 'pre-registered', 1, 3, 1200, '2016-10-11 09:35:21'),
(120, 'Palis', 'Mary Gay', 'S.', '', 'DepEd', 'Female', '5', 'pre-registered', 1, 3, 1200, '2016-10-11 08:56:44'),
(121, 'Baybay', 'Marcelo', 'M.', 'jr', 'Mayor''s Office', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(122, 'Noor', 'Almadee', 'L.', '', 'ACLCFI', 'Male', '4', 'pre-registered', 1, 1, 600, '2016-10-11 09:33:34'),
(123, 'Junaid', 'Omar', 'A.', '', 'ACLCFI', 'Male', '4', 'pre-registered', 1, 1, 600, '2016-10-11 09:31:06'),
(124, 'Escorial', 'Aida', 'A.', '', 'WMSU', 'Female', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(125, 'Wara', 'Tweetee Liza', ' ', '', 'ACLCFI', 'Female', '4', 'pre-registered', 1, 1, 600, '2016-10-11 09:31:27'),
(126, 'Escorial', 'John Ed Augustus', 'A.', '', 'Wm', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(127, 'Padre', 'Antonio Edward', 'E.', '', 'DICT', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(128, 'Omar', 'Jimar', ' ', '', 'ACLCFI', 'Male', '4', 'pre-registered', 1, 1, 600, '2016-10-11 09:32:46'),
(129, 'Rapasola', 'Eugene', 'C.', 'III', 'DICT', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(130, 'Haman', 'Ervira', 'B.', '', 'Adzu', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(131, 'Andrade', 'Ferdinand', ' V.', '', 'ZCSPC', 'Male', '4', 'pre-registered', 1, 0, 0, '2016-10-11 08:59:50'),
(132, 'Jumah', 'Sitti Khadija', 'B.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(133, 'Tawakal', 'Rashida', 'M.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(134, 'Halil', 'Jaymar', 'M.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(135, 'Halil', 'Jaymar', 'M.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(136, 'Hussin', 'Saloma', 'J.', '', 'ACLCFI', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(137, 'Manuel', 'Marjorie', 'M.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(138, 'Quidilla', 'Jasper', 'C', '', 'Right jobs Solutions', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(139, 'Gatong', 'Eduard Emmanuel', 'D.', '', 'Bayugan', 'Male', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:32:13'),
(140, 'Briones', 'Remilia ', 'C', '', 'LGU', 'Female', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:52:43'),
(141, 'Hadjula', 'Rami Yasier', 'M', '', 'LGU', 'Male', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:09:13'),
(142, 'Alivio', 'Eduardo', 'C. ', '', 'MSU-Tawi Tawi', 'Male', '4', 'pre-registered', 1, 2, 1000, '2016-10-11 09:11:23'),
(143, 'Ngian', 'Wilma', 'A.', '', 'Alhadeetha Mindanao College', '', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(144, 'Apilong', 'Fadznur', 'P.', '', 'Alhadeetha Mindanao College', 'Male', '4', 'pre-registered', 1, 3, 1200, '2016-10-11 09:26:13'),
(145, 'Wahid', 'Jimar', 'D.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(146, 'Amil', 'Zaldivar', 'A.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(147, 'Saydil', 'Alfreetcher', 'A.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(148, 'Habibul', 'Charlene', 'P.', '', 'Uz', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(149, 'Sangkula', 'Zahirlan', 'A.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(150, 'Piamonte', 'Imee', 'A.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(151, 'Asgali', 'Muhaina', 'J.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(152, 'Habibul', 'Michelle Anne', 'P.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(153, 'Sahaji', 'Jerhafar', 'H.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(154, 'Alivio', 'Eduardo', 'C.', '', 'MSU-Tawi Tawi', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(155, 'Perez', 'Marweena', 'H.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(156, 'Barhama', 'Asan', 'A.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(157, 'Rebollos', 'Emerson Jay', 'L.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(158, 'Francisco', 'Rey John', 'D.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(159, 'Zamora', 'Khaizer', 'B.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(160, 'Ladia', 'Jinky', 'H.', '', 'Bayugan', 'Female', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:32:35'),
(161, 'Lorenzo', 'Ceed Jezreel', 'B.', '', 'WMSU', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(162, 'Rocero', 'Jackielou', 'H.', '', 'Bayugan', 'Female', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:32:00'),
(163, 'Amlani', 'Fahad', 'H.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(164, 'Bersalote', 'Rodel', 'L.', '', 'Bayugan', 'Male', '5', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(165, 'Bandahala', 'Alabashar ', 'J.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(166, 'Asis', 'Kirk', 'A.', '', 'Bayugan', 'Male', '5', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(167, 'Timpangco', 'Whesley', 'G.', '', 'Pilar College', 'Male', '4', 'pre-registered', 1, 3, 1200, '2016-10-11 09:41:03'),
(168, 'Tomas', 'Ernesto', 'M.', 'jr', 'Minda', 'Male', '10', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(169, 'Reyes', 'Maricar', 'F.', '', 'Pilar College', 'Female', '4', 'pre-registered', 1, 3, 1200, '2016-10-11 08:32:11'),
(170, 'Malali', 'Hja. Fawzia', 'S.', '', 'Tandubas', 'Female', '5', 'pre-registered', 0, 2, 500, '0000-00-00 00:00:00'),
(171, 'Napigkit', 'Ric Jose', 'A.', '', 'ICT-SIBUGAY', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:16:01'),
(172, 'Lim', 'Loter', 'K.', '', 'Patikul', 'Male', '5', 'pre-registered', 1, 3, 600, '2016-10-11 09:40:26'),
(173, 'Lim', 'Nurida', 'U.', '', 'Patikul', 'Female', '5', 'pre-registered', 1, 3, 1200, '2016-10-11 09:39:55'),
(174, 'Narciza', 'Mark Chester', 'P.', '', 'LGU-Lamitan', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:21:35'),
(175, 'So', 'Armando', 'M.', 'III', 'Adzu', 'Male', '4', 'pre-registered', 0, 3, 600, '0000-00-00 00:00:00'),
(176, 'Paclibar', 'Edmon', 'P.', '', 'LGU-Lamitan', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:20:50'),
(177, 'Lim', 'Nurida', 'U.', '', 'LGU-Patikul', 'Female', '5', 'pre-registered', 1, 0, 0, '2016-10-11 09:39:34'),
(178, 'Pabalinas', 'Erica', 'S.J', '', 'Minda', 'Female', '7', 'pre-registered', 1, 0, 0, '2016-10-11 10:34:40'),
(179, 'Oredimo', 'Russell Jun', 'M.', '', 'ICT - Councel', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:34:41'),
(180, 'Mana', 'Albert', 'J.', '', 'Kapatagan', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:05:03'),
(181, 'Alano', 'Crizyl', 'M.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(182, 'Saladaga', 'Marc Jordan', 'C.', '', 'EMCT', 'Male', '4', 'pre-registered', 0, 3, 1200, '0000-00-00 00:00:00'),
(183, 'Clerigo', 'Joylyn', 'J.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(184, 'Mateo', 'Jhamie Tetz', 'I.', '', 'CHED', 'Female', '5', 'pre-registered', 0, 2, 1000, '2016-10-11 09:06:40'),
(185, 'Siguin', 'Jennevieve', 'V.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(186, 'Sa-a', 'Wilfredo', 'T.', 'Jr', 'CEDF-IT', 'Male', '10', 'pre-registered', 1, 0, 0, '2016-10-11 08:58:57'),
(187, 'Apid', 'Chrystaele Jade', 'B.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(188, 'De Mesa', 'Mark Anthony', 'D.G ', '', 'iPLus', 'Male', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(189, 'Tan', 'Darwin', '-', '', 'E-Commerce', '', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(190, 'Daymon', 'Jericho', 'S.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(191, 'Amerkhan', 'Carfel', 'G.', '', 'PLDT', 'Male', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(192, 'Mateo', 'Jhamie Tetz', 'I.', '', 'Ched', 'Female', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(193, 'Lu Wee', 'Tang', '-', '', 'E-Commerce', 'Female', '2', 'pre-registered', 1, 0, 0, '2016-10-11 09:06:58'),
(194, 'Pidor', 'Prince Ralph', 'S.', '', 'City Government of Zamboanga', 'Female', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 10:38:27'),
(195, 'Mercado', 'Jose Mari', 'P.', '', 'Microsoft', 'Male', '10', 'pre-registered', 1, 0, 0, '2016-10-11 09:01:43'),
(196, 'Garcia', 'Mark Lemuel', 'L', '', 'Malaybalay', '', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:29:36'),
(197, 'Lapeciros', 'Romeo', 'R.', 'Jr', 'Malaybalay', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:29:39'),
(198, 'Tinsay', 'Roberto', 'V.', 'Jr.', 'Malaybalay', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 09:23:41'),
(199, 'Opinion', 'Precious', 'T.', '', 'Adzu', '', '4', 'pre-registered', 1, 1, 600, '2016-10-11 10:19:08'),
(200, 'Tanni', 'Melanie', 'C.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '2016-10-11 09:09:26'),
(201, 'Alderite', 'Jerome', 'M.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '2016-10-11 09:09:58'),
(202, 'Castillano', 'Richard', 'C.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(203, 'Solis', 'Mike', 'T.', '', 'GLOBE', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(204, 'Juban', 'Alvin', 'M.', '', 'GDAP', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(205, 'Schuck', 'Bismarck', 'J.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(206, 'Madja', 'Jami', 'H.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(207, 'Aizon', 'Alan', 'D.', '', 'City Goverrnment', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(208, 'Castillon', 'April Love', 'E.', '', 'Pagasa', 'Female', '2', 'pre-registered', 1, 0, 0, '2016-10-11 10:50:39'),
(209, 'Karunungan', 'Jesreel Anne', 'M.', '', 'DICT', 'Female', '8', 'pre-registered', 1, 0, 0, '0000-00-00 00:00:00'),
(210, 'Visperas', 'Nikko', 'B.', '', 'DICT', 'Male', '2', 'pre-registered', 1, 0, 0, '0000-00-00 00:00:00'),
(211, 'Valdez', 'Frances Loraine', 'T.', '', 'DICT', 'Female', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(212, 'Catalino', 'Ard', 'C.', '', 'DICT', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(213, 'Martinez', 'Rachel', 'R.', '', 'Curuan National High School', 'Female', '4', 'pre-registered', 0, 3, 600, '2016-10-11 09:15:48'),
(214, 'Amilassan', 'Abdelshan', 'N.', '', ' ', 'Male', '6', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(215, 'Lanzaderas', 'Gretchen', 'E.', '', 'WMFC', 'Female', '4', 'pre-registered', 1, 2, 1000, '2016-10-11 09:33:27'),
(216, 'Kuyong', 'Usay', 'J.', 'Jr', 'DSWD-Zamboanga', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(217, 'Rellon', 'Aiza', 'P.', '', 'Lanao Del norte', 'Female', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 10:15:56'),
(218, 'Megabon', 'Maria Preciosa', 'A.', '', 'Claret School of Isabela', 'Female', '4', 'pre-registered', 1, 2, 1000, '2016-10-11 09:41:26'),
(219, 'Valiente', 'Jessah', 'B.', '', 'Lanao Del norte', 'Female', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 10:16:21'),
(220, 'Valmores', 'Marco', 'L.', '', ' ', 'Male', '10', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(221, 'Matunog', 'Sam', ' ', '', 'ICT-Davao', 'Male', '10', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(222, 'SIgue', 'Joselle', ' ', '', 'DICT', 'Female', '10', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(223, 'Davi', 'Danica Joy', 'P.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 3, 600, '0000-00-00 00:00:00'),
(224, 'Lim', 'Rolando', 'G.', '', 'Caraga ICT Council', 'Male', '2', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(225, 'Saladain', 'Anibal', 'S.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(226, 'Wong', 'Andrew', '-', '', 'Mad Incubator', 'Male', '10', 'pre-registered', 1, 0, 0, '2016-10-11 10:41:08'),
(227, 'Crudu', 'Jeng', 'A.', '', 'DSWD-Zamboanga', 'Female', '8', 'pre-registered', 1, 0, 0, '2016-10-11 11:36:58'),
(228, 'Bello', 'Lani May', 'C.', '', 'DSWD-Zamboanga', 'Female', '8', 'pre-registered', 1, 0, 0, '2016-10-11 12:02:12'),
(229, 'Sali', 'Abdulrauf', 'A.', '', 'LGU-Basilan', '', '2', 'pre-registered', 1, 0, 0, '2016-10-11 09:03:47'),
(230, 'Enerio', 'Canuto', 'C.', 'Jr.', 'Lakewood', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(231, 'Dimaporo', 'Abdurajik', ' ', '', 'LGU-Basilan', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(232, 'Abdul', 'Abdurauf', 'S.', '', 'Basilan', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(233, 'Dimagporo', 'Addurajik', 'E.', '', 'Basilan', 'Male', '5', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(234, 'Omar', 'Abdil Khair', 'K.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(235, 'Hinggo', 'Raymond', 'C.', '', 'Ipil', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 10:01:22'),
(236, 'Empig', 'Ernesto', 'E.', '', 'MSU - Iligan', 'Male', '4', 'pre-registered', 1, 0, 0, '2016-10-11 08:26:16'),
(237, 'Arevalo', 'Madeline', 'R.', '', 'DICT', 'Female', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(238, 'Booc', 'Sarah Jane', ' ', '', 'UZ', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(239, 'Lagura', 'Paul', '-', '', 'Smart', 'Male', '10', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(240, 'Ibra', 'Salimar', 'E.', '', 'UZ', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(241, 'Aman', 'Fariza Mae', 'I.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(242, 'Majan', 'Benhamer', 'S', '', 'Sulu State College', 'Male', '4', 'pre-registered', 1, 0, 0, '2016-10-11 10:45:14'),
(243, 'Carrillo', 'Ruby', 'S.', '', 'Smart Gaurd', 'Female', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(244, 'Feranil', 'Maria Elisa', 'G.', '', 'Smart Gaurd', 'Female', '3', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(245, 'Dawabi', 'Jasser Arabani', 'T.', '', 'ADZU', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(246, 'Olegario', 'Robert Andrew', 'P.', '', 'Ipil', 'Male', '5', 'pre-registered', 1, 2, 1000, '2016-10-11 10:01:55'),
(247, 'Alvarex', 'Erlene', 'D.', '', 'Ayala', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(248, 'Alvarex', 'Erlene', 'D.', '', 'Ayala', 'Female', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(249, 'Ladjamain', 'Alysha', ' ', '', 'Baliwasan', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(250, 'Adolfo', 'Jonathan Arvin', 'D.', '', 'CDO - ICT', 'Male', '3', 'pre-registered', 1, 2, 1000, '2016-10-11 09:39:39'),
(251, 'Angeles', 'Melanie', 'R.', '', 'Talon - Talon', '', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(252, 'Lee', 'Glyden', 'B.', '', 'Talon - Talon', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(253, 'ALMAKAJA', 'YUDRAM', ' ', '', 'LTO', 'Male', '6', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(254, 'Natividad', 'Xyrill Von', 'C.', '', 'Poblacion,Titay', 'Female', '5', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(255, 'Tialil', 'Jaymar', 'M.', '', 'Rio Hondo', 'Male', '4', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(256, 'HAMAN', 'FRUIRA', 'B.', '', ' ABUBAKAR COMPUTER LEARNING CENTER', 'Female', '4', 'pre-registered', 0, 2, 1000, '0000-00-00 00:00:00'),
(257, 'NOOR', 'OMAR', 'A.', '', 'ACRCFI', 'Male', '5', 'pre-registered', 0, 3, 600, '0000-00-00 00:00:00'),
(258, 'AGAN', 'RACHELLE ', 'Q.', '', 'UZ', 'Female', '4', 'pre-registered', 0, 1, 300, '0000-00-00 00:00:00'),
(259, 'AGIAN', 'WILMA', 'A.', '', 'MINDA', 'Female', '6', 'pre-registered', 0, 3, 600, '0000-00-00 00:00:00'),
(260, 'Tabuniag', 'Jamepol', 'R.', '', 'Globe', 'Male', '7', 'pre-registered', 1, 0, 0, '2016-10-11 10:27:12'),
(261, 'Sedillio', 'Neil', 'B.', '', 'GLOBE', 'Male', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(262, 'Arellano', 'Leny', 'O', '', 'GLOBE', 'Female', '7', 'pre-registered', 1, 0, 0, '2016-10-11 08:31:16'),
(263, 'Gaspar', 'Jay-ar France', 'C.', '', 'GLOBE', 'Male', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(264, 'Faustino', 'Joezel', 'A.', '', 'Cityhall-majors office', 'Male', '8', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(265, 'Francisco', 'Lourdes', 'S.', '', 'CSWD-PESO', 'Female', '8', 'pre-registered', 1, 0, 0, '2016-10-11 12:01:57'),
(266, 'Abdul', 'Al-Shierlyunn', 'A.', '', 'PLDT', 'Female', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(267, 'Asmawil', 'Maria Lucille', 'H.', '', 'PLDT', 'Female', '7', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(268, 'Medina', 'Yollene', '-', '', 'UZ', 'Female', '8', 'pre-registered', 1, 0, 0, '2016-10-11 07:42:28'),
(269, 'Sorio', 'George ', 'D.', '', 'Freelancer Pinoy', 'Male', '10', 'pre-registered', 1, 0, 0, '2016-10-11 08:38:25'),
(270, 'Quin', 'Ryan Cristopher', 'Y.', '', 'ZAREP', 'Male', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(271, 'Quin', 'Michelle', 'M.', '', 'Zampen', 'Female', '2', 'pre-registered', 0, 0, 0, '0000-00-00 00:00:00'),
(272, 'Inclan', 'Rodel', 'L.', '', 'PAGASA', 'Male', '2', 'pre-registered', 1, 0, 0, '2016-10-11 08:41:54'),
(275, 'Pampanga', 'Eleonor', 'D.', '', ' ', 'Female', '2', 'pre-registered', 0, 1, 300, '2016-10-11 09:01:19'),
(276, 'Jailani', 'Sernalih', 'A.', '', ' ', 'Female', '2', 'pre-registered', 0, 1, 300, '2016-10-11 09:00:41'),
(277, 'Abdumajid', 'Merwina', 'A.', '', ' ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 08:42:31'),
(278, 'Banasali', 'Hernita', 'J.', '', ' ', 'Female', '4', 'pre-registered', 0, 1, 300, '2016-10-11 08:59:39'),
(279, 'Genca', 'Kennie', 'A.', '', ' ', 'Female', '4', 'pre-registered', 0, 1, 300, '2016-10-11 09:00:03'),
(280, 'Husin', 'Solomon', ' ', '', ' ', 'Male', '4', 'pre-registered', 0, 1, 300, '2016-10-11 09:00:17'),
(281, 'Albarico', 'Rio Amoine', 'Y.', '', ' LGU-DIMANTALING', 'Female', '6', 'pre-registered', 1, 2, 1000, '2016-10-11 09:30:48'),
(282, 'Javar', 'Vincent John', 'D.', '', 'STI-Zamboanga', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-11 04:48:19'),
(283, 'Matura', 'Lani', 'A.', '', 'DICT-ZAMBOANGA', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 05:00:10'),
(284, 'Alegre', 'Edgar', 'N.', '', 'GITF', 'Male', '4', 'walk-in', 1, 2, 500, '2016-10-11 08:06:20'),
(285, 'Simene', 'Guilbert', 'D.', '', 'DICT-ZAMBOANGA', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 05:26:58'),
(286, 'Francisco', 'Ghian Carlo', 'A.', '', 'UZ', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 05:30:55'),
(287, 'Maylon', 'Rosario', 'M.', '', 'office of the mayor', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:46:26'),
(288, 'Gapo', 'Ellijane Mae', 'P.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:51:01'),
(289, 'Olvido', 'Jessa', 'S.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:52:10'),
(290, 'Gapo', 'Ellijane Mae', 'P.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:52:16'),
(291, 'Gallardo', 'Justine', 'V.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:52:56'),
(292, 'Abdullatip', 'Rumaida', 'S.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:52:57'),
(293, 'Amacanin', 'Airene', 'F.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 05:56:21'),
(294, 'Chua', 'Angelita', '', '', 'DICT-ZAMBOANGA', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 05:57:19'),
(295, 'Chua', 'Angelita', '', '', 'DICT-ZAMBOANGA', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 05:57:19'),
(296, 'Binti Daiman', 'Rachel ', 'j.', '', 'ICT-DAVAO', 'Female', '2', 'walk-in', 1, 0, 0, '2016-10-11 06:08:27'),
(297, 'Brillantes', 'Manuel', 'C.', '', 'DICT-ZAMBOANGA', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 06:10:52'),
(298, 'Asio', 'Romelito', 'I.', '', 'ICT-Compostella Valley', 'Male', '5', 'walk-in', 1, 2, 1000, '2016-10-11 06:14:19'),
(299, 'Cortez', 'Mila', 'B.', '', 'Cityhall-majors office', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 06:20:09'),
(300, 'kreutz', 'fr. Bill', '', '', 'ADZU', 'Male', '2', 'walk-in', 1, 0, 0, '2016-10-11 06:22:23'),
(301, 'Agustin', 'Adonis', 'B', '', 'HP COMPANY', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 06:23:13'),
(302, 'Sanson', 'Rosedy', 'P.', '', 'SMART', 'Female', '7', 'walk-in', 1, 0, 0, '2016-10-11 06:25:44'),
(303, 'Carreon', 'Manuel', 'L.', '', 'Don Pablo', 'Male', '4', 'walk-in', 1, 3, 600, '2016-10-11 06:36:05'),
(304, 'Ardenia', 'Romel', 'D.', '', 'UZ', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 06:37:03'),
(305, 'Bello', 'Emery', 'E.', '', 'UZ', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 06:38:01'),
(306, 'Abdulgani', 'Taib', 'S.', '', 'DAR-Zamboanga', 'Male', '5', 'walk-in', 1, 3, 1200, '2016-10-11 06:43:34'),
(307, 'Encarnation', 'Nikk', 'S.', '', 'PLDT', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 06:47:31'),
(308, 'Tahir', 'Muslemin', 'A.', '', 'DAR-Zamboanga', 'Male', '5', 'walk-in', 1, 3, 1200, '2016-10-11 06:47:36'),
(309, 'Omamalin', 'Noah', 'Catis', '', 'DICT Dipolog', 'Male', '5', 'walk-in', 1, 0, 0, '2016-10-11 07:07:10'),
(310, 'Diaz', 'Michael Vincent', 'B.', '', 'AMA', 'Male', '4', 'walk-in', 1, 3, 600, '2016-10-11 07:11:09'),
(311, 'Gonzales', 'Nestor', 'A.', '', 'Plaridel Misamis Occidental', 'Male', '5', 'walk-in', 1, 2, 500, '2016-10-11 10:24:31'),
(312, 'Caragos', 'Stephanie Rosal', 'P.', '', 'ICT-CDO', 'Female', '10', 'walk-in', 1, 0, 0, '2016-10-11 07:25:54'),
(313, 'Salon', 'Pamila', 'N.', '', 'ICT - Councel - CDO', 'Female', '5', 'walk-in', 1, 2, 500, '2016-10-11 07:26:06'),
(314, 'Canda', 'Danilo ', 'm.', '', 'HP COMPANY', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 07:29:03'),
(315, 'Educador', 'Arjay', ' ', '', 'Smart', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 07:45:14'),
(316, 'Majan', 'Dayang Farmyzuli', 'K.', '', 'SULU STATE COLLEGE', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 07:52:35'),
(317, 'Amatong', 'Roi Larrence', 'R.', '', 'STI College Zamboanga', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 07:56:31'),
(318, 'Elago', 'Leopoldo Antonio', 'C.', '', 'Sangguniaan Panlungsod', 'Male', '2', 'walk-in', 1, 0, 0, '2016-10-11 07:58:41'),
(319, 'Canizares', 'Benson', 'D.', '', 'ZICT-ZAMBOANGA', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:01:43'),
(320, 'Gregorio', 'Jenyvie', 'A.', '', 'ZICT', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:02:33'),
(321, 'Javier', 'Eufemio', 'D.', 'Jr', 'ICT-Sibugay', 'Female', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:05:56'),
(322, 'Arip', 'Jhon Paul', 'I.', '', 'STI-Zamboanga', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:07:07'),
(323, 'Tolomia', 'Cipriano', 'M.', '', 'STI-Zamboanga', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:07:46'),
(324, 'Tolentino', 'Jean paul', '', '', 'Minda', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 08:17:36'),
(325, 'Celorico', 'Edgardo', '', '', 'NPC', 'Male', '8', 'walk-in', 1, 0, 0, '2016-10-11 08:40:33'),
(326, 'Evangelista', 'Angel', ' ', '', 'ADZU', 'Female', '4', 'walk-in', 1, 1, 300, '2016-10-11 08:52:39'),
(327, 'Raip', 'Adam', 'A.', '', 'Smart', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 09:03:52'),
(328, 'Agan', 'Rommel', 'S.', '', 'City Council', 'Male', '2', 'walk-in', 1, 2, 500, '2016-10-11 09:32:15'),
(329, 'Chua', 'Alexis', 'L.', '', 'DTI', 'Male', '7', 'walk-in', 1, 0, 0, '2016-10-11 09:36:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
 ADD PRIMARY KEY (`accountID`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
 ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `tbl_paymenttype`
--
ALTER TABLE `tbl_paymenttype`
 ADD PRIMARY KEY (`payment_typeID`);

--
-- Indexes for table `tbl_registrants`
--
ALTER TABLE `tbl_registrants`
 ADD PRIMARY KEY (`registrantID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_paymenttype`
--
ALTER TABLE `tbl_paymenttype`
MODIFY `payment_typeID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_registrants`
--
ALTER TABLE `tbl_registrants`
MODIFY `registrantID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=330;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
