-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2016 at 07:49 AM
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
  `payment_status` int(11) NOT NULL,
  `amount_paid` float NOT NULL,
  `registration_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registrants`
--

INSERT INTO `tbl_registrants` (`registrantID`, `lastname`, `firstname`, `middlename`, `suffix`, `company_affliated`, `sex`, `categoryID`, `registration_type`, `registration_status`, `payment_status`, `amount_paid`, `registration_time`) VALUES
(1, 'lastname', 'firstname', 'middlename', 'suffix', 'company/agency/school', '', '1', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:40'),
(2, 'Dela Rosa', 'Dir. Evamay', 'C.', '', 'DICT MC 2', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:40'),
(3, 'Urbiztondo', 'Engr. Cipriano', '', '', 'DICT MC 3', '', '2', 'pre-registered', 1, 1, 0, '2016-10-10 08:30:35'),
(4, 'Raposala', 'Eugene', '', '', 'DICT MC 4', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(5, 'Asum', 'Dr. Alimbar', 'P.', '', 'DICT MC 3', '', '2', 'pre-registered', 1, 1, 0, '2016-10-10 08:36:49'),
(6, 'Guevara', 'Engr. Paullette', '', '', 'DICT MC 3', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(7, 'Ortega', 'Dir. Cheryl', ' C. ', '', 'DICT LC 2', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(8, 'Padre', 'Dir. Tony', '', '', 'DICT VC 2', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(9, 'Francisco', 'JV', '', '', 'GMA', '', '2', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(10, 'Ceniza', 'Ethel', ' M. ', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 1, 1, 0, '2016-10-10 08:58:34'),
(11, ' Briones', ' Yani Lea', '', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(12, 'King', 'Bryan Joseph', '', '', 'CDO Logisticbase Interactive', '', '3', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(13, 'Ayub', ' Raphy', '', '', 'OWNER', '', '3', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(14, 'Antiojo', 'Milo', '', ' II', 'ZAREB/ZAREA', '', '3', 'pre-registered', 1, 1, 0, '2016-10-10 07:20:09'),
(15, 'Raton', 'Jeremille ', '', '', 'Entrepreneur', '', '3', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(16, ' Pamaran', 'Marielle Carmela', '', '', 'ADZU', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(17, 'Balita', 'Clifford Jay ', '', '', 'ADZU', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(18, 'Cabunog, RVM', 'Sister Maria Charita', '', '', 'Pilar College', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(19, 'Inggal', 'Janalan', ' S.', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(20, ' Ismael', 'Delia Ruxanna', '', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(21, 'Kadil', 'Jerry', '', '', 'Universidad de Zamboanga', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(22, 'Madriaga', 'Norwesa', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 1, 1, 0, '2016-10-10 08:51:34'),
(23, 'Davilan', 'Jinky', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 1, 1, 0, '2016-10-10 08:33:25'),
(24, 'Javar', ' Vincent John ', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:41'),
(25, 'Pelaez', ' Rayyan', '', '', 'STI-Zamboanga', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(26, ' Sanido', 'Angel', '', '', 'Western Mindanao \nFoundation College, Inc.', '', '4', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(27, 'Rotoni', 'Charles Anthony', '', '', 'City Toursim Office', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(28, 'Labitad', 'Armando', '', '', 'City Toursim Office', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(29, '', 'Dr. Ariola', '', '', 'City Veterinarian''s Office', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:08:54'),
(30, '', 'Ms. Contilanano', '', '', 'City Planning and Development Office', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(31, 'Sicat', 'Engr. Rodrigo', '', '', 'City Planning and Development Office', '', '5', 'pre-registered', 1, 0, 0, '2016-10-10 08:05:42'),
(32, 'Pidor', 'Prince Ralph', ' S.', '', 'City Budget Office', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(33, 'Caballero', 'Eugene', '', '', 'Manukan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(34, 'Celestial', 'Lynne', ' B.', '', 'BIR-RD91', '', '5', 'pre-registered', 1, 1, 0, '2016-10-10 08:32:03'),
(35, ' Baya', 'Maria Dolores', 'A.', '', 'Dimataling', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(36, 'Asoy', 'Wilfredo', 'R.', ' Sr. ', 'Dinas', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(37, 'Cerilles', 'Junaflor ', 'S.', '', 'Dumalinao', '', '5', 'pre-registered', 1, 1, 0, '2016-10-10 09:32:46'),
(38, 'Cruz', 'Vee Arr', '', '', 'Dumalinao', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(39, 'Pacalioga', 'Mark', 'V.', '', 'Dumingag', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(40, 'Oraiz', 'Francisco', 'N. ', ' Jr. ', 'Guipos', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(41, 'Adapon', 'Catalino', 'A. ', '', 'Josefina', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(42, 'Relacion ', 'Eduardo', 'B.', '', 'Labangan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(43, 'Clavero', 'Diego ', 'M.', '', 'Midsalip', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(44, 'Pulmones', 'Romeo', ' P.', '', 'Pagadian City', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(45, 'Borinaga', 'Leonilo', 'D.', ' Sr. ', 'Ramon Magsaysay', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(46, 'Maata', 'Merlinda', 'P.', '', 'Vicenzo A. Sagun', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(47, 'Cainglet', 'George', 'C.', '', 'Kabasalan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(48, 'CaloÃ±ge', 'Restituto', 'O.', '', 'Mabuhay', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:42'),
(49, 'Napigkit', 'Ric', '', '', 'Tungawan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(50, 'Rocero', 'Jackielou', '', '', 'Bayugan City', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(51, 'Rotoni', 'Charles ', '', '', 'Department of Tourism IX', '', '6', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(52, 'Labitat', 'Junn', '', '', 'Department of Tourism IX', '', '6', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(53, 'Rojas', 'Ma. Isabel', '', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 1, 0, '2016-10-10 11:22:21'),
(54, 'Alfanta', 'Amelita', '', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 1, 0, '2016-10-10 09:34:57'),
(55, 'Alameda', 'Edna', '', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 1, 0, '2016-10-10 09:35:20'),
(56, 'Reambonanza', 'Ma. Soceorro', '', '', 'Department of Agrarian Reform IX', '', '6', 'pre-registered', 1, 1, 0, '2016-10-10 09:03:38'),
(57, 'Amaraja', 'Yildrim', 'T.', '', 'Land Transportation Office IX', '', '6', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(58, 'Noche', 'Donel ', '', '', 'Land Transportation Office IX', '', '6', 'pre-registered', 1, 1, 0, '2016-10-10 09:37:52'),
(59, 'Infante', 'Vanessa', '', '', 'Ungkaya Pukan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(60, 'Abdulcadir', 'Marie', '', '', 'Ungkaya Pukan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(61, 'Salasim', 'Usodan', '', '', 'Basilan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(62, 'Asalul', 'Farsi', 'D.', '', 'Basilan', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(63, 'Jolo', 'Michael', '', '', 'Deped', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(64, ' Usman', 'Engr. Nadzrimar', ' A.', '', 'Lugus', '', '5', 'pre-registered', 1, 1, 0, '2016-10-10 09:21:36'),
(65, 'Salih', 'Hadja Rahiema', 'A.', '', 'Tandubas', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(66, 'Hussin', ' Salomas', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 1, 1, 0, '2016-10-10 08:40:47'),
(67, 'Noor', ' Almadee Lee', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(68, 'Junaid', 'Omar Aziz', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(69, 'Wara', 'Tweetee Liza', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(70, 'Omar', 'Jimar', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:43'),
(71, 'Mongcupa', 'Angela', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(72, 'Haman', 'Aishia', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(73, 'Hama', 'Ervira', '', '', 'ABUBAKAR COMPUTER LEARNING ', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(74, 'Macaambac', 'Salvador', '', '', 'Labason', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(75, 'Majan', 'BenHamer', '', '', 'Sulu State College', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(76, 'Hayudini', 'Furqaan', ' I ', '', 'Sulu State College', '', '5', 'pre-registered', 0, 1, 0, '2016-10-10 04:00:44'),
(77, 'tahil', 'salimar', 'B', '', 'WMSU', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 03:47:17'),
(78, 'Salimin', 'Jeva', 'K. ', '', 'MINDA', 'Female', '3', 'walk-in', 1, 1, 0, '2016-10-10 03:52:38'),
(79, 'Micubo', 'Garry', 'S.J', '', 'dti', '', '7', 'walk-in', 1, 1, 0, '2016-10-10 06:54:48'),
(80, 'Rabajante', 'Romeo', 'A.', '', 'ADZU', '', '8', 'walk-in', 1, 0, 0, '2016-10-10 07:08:07'),
(81, 'Miravite', 'Rexor', 'M.', '', 'ADZU', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 04:00:07'),
(82, 'Credo', 'Fritzie Lee', 'B.', '', 'PLDT', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 04:02:02'),
(83, 'Mohd.Arip', 'Al-Jastrie', 'L.', '', 'DEPED', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 04:12:46'),
(84, 'Torres', 'Lucivel', 'C.', '', 'DTI', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 04:13:18'),
(85, 'Camba', 'Maria Teresa', 'M.', '', 'DICT', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 04:16:43'),
(86, 'Antiojo', 'Milo', 'A.', 'II', 'Real Estate', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 04:19:04'),
(87, 'Natividad', 'Ana Kriselda', 'O.', '', 'DICT', '', '8', 'walk-in', 1, 0, 0, '2016-10-10 07:23:39'),
(88, 'Calingacion', 'Juanito', 'M.', 'jr', 'DICT', '', '8', 'walk-in', 1, 0, 0, '2016-10-10 07:45:49'),
(89, 'Wee', 'Jake Christian', 'L.', '', 'STI-Zamboanga', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 04:40:52'),
(90, 'Amsain', 'Fatima Darshell Ann', 'A.', '', 'STI College Zamboanga', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 04:48:25'),
(91, 'Jaron', 'Joe Darryl', 'L.', '', 'DTI', 'Male', '7', 'walk-in', 1, 1, 0, '2016-10-10 04:52:24'),
(92, 'Musa', 'Al-Kaizer', 'M.', '', 'DCIT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 04:53:46'),
(93, 'Inding', 'Ahmad-Fahem', 'T.', '', 'MSU-Sulu', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 04:54:28'),
(94, 'Martinez', 'Wilfrido', 'M.', 'Jr.', 'DICT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 04:55:17'),
(95, 'Patrinomo', 'Gay', 'C.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 04:57:37'),
(96, 'Mohammad', 'Jacob', 'F.', '', 'DICT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 04:59:06'),
(97, 'Inding', 'Ahmad-Fahem', 'T.', '', 'MSU-Sulu', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 04:59:35'),
(98, 'Asari', 'Mersalyn', 'A.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:00:50'),
(99, 'Aburkair', 'Fahda', 'S.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:01:58'),
(100, 'Pabriga', 'Charlyn', 'O.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:02:46'),
(101, 'De Guzman', 'Carmilvar', 'Saavedra', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:03:54'),
(102, 'Magbanua', 'Lea Genesis', 'B.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:04:37'),
(103, 'Tinio', 'Eloisa', 'P', '', 'Speaker', 'Female', '2', 'walk-in', 1, 1, 0, '2016-10-10 05:06:31'),
(104, 'Bimbo', 'Cheryl', 'B.', '', 'Mahayag', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:10:40'),
(105, 'Caylan', 'Nel Trixter', 'R.', '', 'Mahayag', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:11:21'),
(106, 'Gevera', 'Paulette', 'V.', '', 'DICT', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:12:24'),
(107, 'Tomas', 'Rodolfo', 'A.', '', 'DIC', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:14:05'),
(108, 'Abubakar', 'Muhammad', 'S.', '', 'DICT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:14:38'),
(109, 'Casimiro', 'Reynaldo', 'L.', '', 'DI', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:14:46'),
(110, 'Claveio', 'Diego', 'M.', '', 'Midsaup', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:14:55'),
(111, 'Avergonzado', 'Dario', 'E.', '', 'DICT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:15:22'),
(112, 'Maturan', 'Joel', 'C.', '', 'DICT', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:15:51'),
(113, 'Jamalul', 'Harshid', 'A.', '', 'BIR', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:15:59'),
(114, 'Macasantos', 'Rodrigo', 'A.', '', 'DICT', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:16:06'),
(115, 'Amaraja', 'Yildrim', 'T.', '', 'LTO', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:16:49'),
(116, 'Estioina', 'Earl Kent', 'P.', '', 'Adzu', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:18:09'),
(117, 'Bello', 'Oliver Jem', 'B.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:18:44'),
(118, 'Manalo', 'Aileen', 'G.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:19:18'),
(119, 'Aggabao', 'Jose', 'E.', 'Jr.', 'DepEd', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:20:18'),
(120, 'Palis', 'Mary Gay', 'S.', '', 'DepEd', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:21:43'),
(121, 'Baybay', 'Marcelo', 'M.', 'jr', 'Mayor''s Office', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:23:58'),
(122, 'Noor', 'Almadee', 'L.', '', 'ACLCFI', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:28:20'),
(123, 'Junaid', 'Omar', 'A.', '', 'ACLCFI', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:29:12'),
(124, 'Escorial', 'Aida', 'A.', '', 'WMSU', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:29:16'),
(125, 'Wara', 'Tweetee Liza', ' ', '', 'ACLCFI', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:29:57'),
(126, 'Escorial', 'John Ed Augustus', 'A.', '', 'Wm', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:30:15'),
(127, 'Padre', 'Antonio Edward', 'E.', '', 'DICT', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 05:30:21'),
(128, 'Omar', 'Jimar', ' ', '', 'ACLCFI', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:30:35'),
(129, 'Rapasola', 'Eugene', 'C.', 'III', 'DICT', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 05:31:24'),
(130, 'Haman', 'Ervira', 'B.', '', 'Adzu', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:31:33'),
(131, 'Andrade', 'Ferdinand', ' V.', '', 'ZCSPC', 'Male', '4', 'walk-in', 1, 0, 0, '2016-10-10 05:35:40'),
(132, 'Jumah', 'Sitti Khadija', 'B.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:36:54'),
(133, 'Tawakal', 'Rashida', 'M.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:37:43'),
(134, 'Halil', 'Jaymar', 'M.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:39:53'),
(135, 'Halil', 'Jaymar', 'M.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:40:53'),
(136, 'Hussin', 'Saloma', 'J.', '', 'ACLCFI', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:40:54'),
(137, 'Manuel', 'Marjorie', 'M.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:42:15'),
(138, 'Quidilla', 'Jasper', 'C', '', 'Right jobs Solutions', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 05:43:25'),
(139, 'Gatong', 'Eduard Emmanuel', 'D.', '', 'Bayugan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:44:34'),
(140, 'Briones', 'Remilia ', 'C', '', 'LGU', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:45:04'),
(141, 'Hadjula', 'Rami Yasier', 'M', '', 'LGU', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:45:53'),
(142, 'Alivio', 'Eduardo', 'C. ', '', 'MSU-Tawi Tawi', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:45:57'),
(143, 'Ngian', 'Wilma', 'A.', '', 'Alhadeetha Mindanao College', '', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:46:00'),
(144, 'Apilong', 'Fadznur', 'P.', '', 'Alhadeetha Mindanao College', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:46:58'),
(145, 'Wahid', 'Jimar', 'D.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:47:56'),
(146, 'Amil', 'Zaldivar', 'A.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:47:57'),
(147, 'Saydil', 'Alfreetcher', 'A.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:48:36'),
(148, 'Habibul', 'Charlene', 'P.', '', 'Uz', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:48:42'),
(149, 'Sangkula', 'Zahirlan', 'A.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:49:10'),
(150, 'Piamonte', 'Imee', 'A.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:49:26'),
(151, 'Asgali', 'Muhaina', 'J.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:49:45'),
(152, 'Habibul', 'Michelle Anne', 'P.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:50:14'),
(153, 'Sahaji', 'Jerhafar', 'H.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:50:27'),
(154, 'Alivio', 'Eduardo', 'C.', '', 'MSU-Tawi Tawi', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:51:02'),
(155, 'Perez', 'Marweena', 'H.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:51:03'),
(156, 'Barhama', 'Asan', 'A.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:51:10'),
(157, 'Rebollos', 'Emerson Jay', 'L.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:51:36'),
(158, 'Francisco', 'Rey John', 'D.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:52:04'),
(159, 'Zamora', 'Khaizer', 'B.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:52:35'),
(160, 'Ladia', 'Jinky', 'H.', '', 'Bayugan', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:52:38'),
(161, 'Lorenzo', 'Ceed Jezreel', 'B.', '', 'WMSU', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 05:52:59'),
(162, 'Rocero', 'Jackielou', 'H.', '', 'Bayugan', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:53:31'),
(163, 'Amlani', 'Fahad', 'H.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:53:33'),
(164, 'Bersalote', 'Rodel', 'L.', '', 'Bayugan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:54:36'),
(165, 'Bandahala', 'Alabashar ', 'J.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:55:19'),
(166, 'Asis', 'Kirk', 'A.', '', 'Bayugan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:55:22'),
(167, 'Timpangco', 'Whesley', 'G.', '', 'Pilar College', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:56:24'),
(168, 'Tomas', 'Ernesto', 'M.', 'jr', 'Minda', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 05:57:03'),
(169, 'Reyes', 'Maricar', 'F.', '', 'Pilar College', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 05:57:27'),
(170, 'Malali', 'Hja. Fawzia', 'S.', '', 'Tandubas', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:57:30'),
(171, 'Napigkit', 'Ric Jose', 'A.', '', 'DICT', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 05:58:20'),
(172, 'Lim', 'Loter', 'K.', '', 'Patikul', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:00:53'),
(173, 'Lim', 'Nurida', 'U.', '', 'Patikul', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:00:53'),
(174, 'Narciza', 'Mark Chester', 'P.', '', 'LGU-Lamitan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:01:32'),
(175, 'So', 'Armando', 'M.', 'III', 'Adzu', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:02:02'),
(176, 'Paclibar', 'Edmon', 'P.', '', 'LGU-Lamitan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:02:11'),
(177, 'Lim', 'Nurida', 'U.', '', 'LGU-Patikul', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:03:10'),
(178, 'Pabalinas', 'Erica', 'S.J', '', 'Minda', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 06:04:04'),
(179, 'Oredimo', 'Russell Jun', 'M.', '', 'ICT - Councel', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:04:53'),
(180, 'Mana', 'Albert', 'J.', '', 'Kapatagan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:05:30'),
(181, 'Alano', 'Crizyl', 'M.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:06:04'),
(182, 'Saladaga', 'Marc Jordan', 'C.', '', 'EMCT', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:06:40'),
(183, 'Clerigo', 'Joylyn', 'J.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:06:54'),
(184, 'Mateo', 'Jhamie Tetz', 'I.', '', 'CHED', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:07:00'),
(185, 'Siguin', 'Jennevieve', 'V.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:07:38'),
(186, 'Sa-a', 'Wilfredo', 'T.', 'Jr', 'CEDF-IT', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:07:42'),
(187, 'Apid', 'Chrystaele Jade', 'B.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:08:33'),
(188, 'De Mesa', 'Mark Anthony', 'D.G ', '', 'iPLus', 'Male', '3', 'walk-in', 1, 1, 0, '2016-10-10 06:09:01'),
(189, 'Tan', 'Darwin', '-', '', 'E-Commerce', '', '2', 'walk-in', 1, 0, 0, '2016-10-10 09:14:21'),
(190, 'Daymon', 'Jericho', 'S.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:09:23'),
(191, 'Amerkhan', 'Carfel', 'G.', '', 'PLDT', 'Male', '3', 'walk-in', 1, 1, 0, '2016-10-10 06:09:59'),
(192, 'Mateo', 'Jhamie Tetz', 'I.', '', 'Ched', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:10:42'),
(193, 'Lu Wee', 'Tang', '-', '', 'E-Commerce', 'Female', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:11:26'),
(194, 'Pidor', 'Prince Ralph', 'S.', '', 'City Government of Zamboanga', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:12:10'),
(195, 'Mercado', 'Jose Mari', 'P.', '', 'Microsoft', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:12:49'),
(196, 'Garcia', 'Mark Lemuel', 'L', '', 'Malaybalay', '', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:14:02'),
(197, 'Lapeciros', 'Romeo', 'R.', 'Jr', 'Malaybalay', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:15:35'),
(198, 'Tinsay', 'Roberto', 'V.', 'Jr.', 'Malaybalay', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:15:56'),
(199, 'Opinion', 'Precious', 'T.', '', 'Adzu', '', '4', 'walk-in', 1, 0, 0, '2016-10-10 12:02:20'),
(200, 'Tanni', 'Melanie', 'C.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:17:58'),
(201, 'Alderite', 'Jerome', 'M.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:18:48'),
(202, 'Castillano', 'Richard', 'C.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:19:32'),
(203, 'Solis', 'Mike', 'T.', '', 'GLOBE', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 06:20:57'),
(204, 'Juban', 'Alvin', 'M.', '', 'GDAP', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:24:51'),
(205, 'Schuck', 'Bismarck', 'J.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:25:57'),
(206, 'Madja', 'Jami', 'H.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:26:38'),
(207, 'Aizon', 'Alan', 'D.', '', 'City Goverrnment', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 06:28:13'),
(208, 'Castillon', 'April Love', 'E.', '', 'Pagasa', 'Female', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:30:46'),
(209, 'Karunungan', 'Jesreel Anne', 'M.', '', 'DICT', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 06:31:43'),
(210, 'Visperas', 'Nikko', 'B.', '', 'DICT', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:31:44'),
(211, 'Valdez', 'Frances Loraine', 'T.', '', 'DICT', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 06:32:26'),
(212, 'Catalino', 'Ard', 'C.', '', 'DICT', 'Male', '2', 'walk-in', 1, 0, 0, '2016-10-10 06:34:16'),
(213, 'Martinez', 'Rachel', 'R.', '', 'Curuan National High School', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:38:04'),
(214, 'Amilassan', 'Abdelshan', 'N.', '', ' ', 'Male', '6', 'walk-in', 1, 1, 0, '2016-10-10 06:39:23'),
(215, 'Lanzaderas', 'Gretchen', 'E.', '', 'WMFC', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:40:24'),
(216, 'Kuyong', 'Usay', 'J.', 'Jr', 'DSWD-Zamboanga', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:41:19'),
(217, 'Rellon', 'Aiza', 'P.', '', 'Lanao Del norte', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:42:55'),
(218, 'Megabon', 'Maria Preciosa', 'A.', '', 'Claret School of Isabela', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:44:07'),
(219, 'Valiente', 'Jessah', 'B.', '', 'Lanao Del norte', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 06:44:09'),
(220, 'Valmores', 'Marco', 'L.', '', ' ', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:46:42'),
(221, 'Matunog', 'Sam', ' ', '', 'ICT-Davao', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:52:52'),
(222, 'SIgue', 'Joselle', ' ', '', 'DICT', 'Female', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:53:34'),
(223, 'Davi', 'Danica Joy', 'P.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:54:18'),
(224, 'Lim', 'Rolando', 'G.', '', 'Caraga ICT Council', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 06:57:31'),
(225, 'Saladain', 'Anibal', 'S.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 06:58:01'),
(226, 'Wong', 'Andrew', '-', '', 'Mad Incubator', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 06:58:30'),
(227, 'Crudu', 'Jeng', 'A.', '', 'DSWD-Zamboanga', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 07:12:00'),
(228, 'Bello', 'Lani May', 'C.', '', 'DSWD-Zamboanga', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 07:13:03'),
(229, 'Sali', 'Abdulrauf', 'A.', '', 'LGU-Basilan', '', '2', 'walk-in', 1, 0, 0, '2016-10-10 10:18:20'),
(230, 'Enerio', 'Canuto', 'C.', 'Jr.', 'Lakewood', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 07:16:57'),
(231, 'Dimaporo', 'Abdurajik', ' ', '', 'LGU-Basilan', 'Male', '2', 'walk-in', 1, 1, 0, '2016-10-10 07:17:41'),
(232, 'Abdul', 'Abdurauf', 'S.', '', 'Basilan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 07:20:42'),
(233, 'Dimagporo', 'Addurajik', 'E.', '', 'Basilan', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 07:22:04'),
(234, 'Omar', 'Abdil Khair', 'K.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:22:14'),
(235, 'Honggo', 'Raymond', 'C.', '', 'Ipil', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 07:23:00'),
(236, 'Empig', 'Ernesto', 'E.', '', 'MSU - Iligan', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:29:51'),
(237, 'Arevalo', 'Madeline', 'R.', '', 'DICT', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 07:30:03'),
(238, 'Booc', 'Sarah Jane', ' ', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:36:04'),
(239, 'Lagura', 'Paul', '-', '', 'Smart', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 07:43:50'),
(240, 'Ibra', 'Salimar', 'E.', '', 'UZ', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:50:03'),
(241, 'Aman', 'Fariza Mae', 'I.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:51:01'),
(242, 'Majan', 'Benhamer', 'S', '', 'Sulu State College', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 07:52:01'),
(243, 'Carrillo', 'Ruby', 'S.', '', 'Smart Gaurd', 'Female', '3', 'walk-in', 1, 1, 0, '2016-10-10 08:00:39'),
(244, 'Feranil', 'Maria Elisa', 'G.', '', 'Smart Gaurd', 'Female', '3', 'walk-in', 1, 1, 0, '2016-10-10 08:01:22'),
(245, 'Dawabi', 'Jasser Arabani', 'T.', '', 'ADZU', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 08:11:55'),
(246, 'Olegario', 'Robert Andrew', 'P.', '', 'Ipil', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 08:19:48'),
(247, 'Alvarex', 'Erlene', 'D.', '', 'Ayala', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 08:55:03'),
(248, 'Alvarex', 'Erlene', 'D.', '', 'Ayala', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 08:55:03'),
(249, 'Ladjamain', 'Alysha', ' ', '', 'Baliwasan', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 08:59:14'),
(250, 'Adolfo', 'Jonathan Arvin', 'D.', '', 'CDO - ICT', 'Male', '3', 'walk-in', 1, 1, 0, '2016-10-10 09:01:44'),
(251, 'Angeles', 'Melanie', 'R.', '', 'Talon - Talon', '', '4', 'walk-in', 1, 0, 0, '2016-10-10 12:33:07'),
(252, 'Lee', 'Glydon', 'B.', '', 'Talon - Talon', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 09:06:26'),
(253, 'ALMAKAJA', 'YUDRAM', ' ', '', 'LTO', 'Male', '6', 'walk-in', 1, 1, 0, '2016-10-10 09:07:14'),
(254, 'Natividad', 'Xyrill Von', 'C.', '', 'Poblacion,Titay', 'Female', '5', 'walk-in', 1, 1, 0, '2016-10-10 09:07:50'),
(255, 'Tialil', 'Jaymar', 'M.', '', 'Rio Hondo', 'Male', '4', 'walk-in', 1, 1, 0, '2016-10-10 09:09:19'),
(256, 'HAMAN', 'FRUIRA', 'B.', '', ' ABUBAKAR COMPUTER LEARNING CENTER', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 09:12:14'),
(257, 'NOOR', 'OMAR', 'A.', '', 'ACRCFI', 'Male', '5', 'walk-in', 1, 1, 0, '2016-10-10 09:13:44'),
(258, 'AGAN', 'RACHELLE ', 'Q.', '', 'UZ', 'Female', '4', 'walk-in', 1, 1, 0, '2016-10-10 09:17:11'),
(259, 'AGIAN', 'WILMA', 'A.', '', 'MINDA', 'Female', '6', 'walk-in', 1, 1, 0, '2016-10-10 09:25:30'),
(260, 'Tabuniag', 'Jamepol', 'R.', '', 'Globe', 'Male', '7', 'walk-in', 1, 1, 0, '2016-10-10 09:47:19'),
(261, 'Sedillio', 'Neil', 'B.', '', 'GLOBE', 'Male', '7', 'walk-in', 1, 1, 0, '2016-10-10 09:48:44'),
(262, 'Arellano', 'Leny', 'O', '', 'GLOBE', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 09:49:34'),
(263, 'Gaspar', 'Jay-ar France', 'C.', '', 'GLOBE', 'Male', '7', 'walk-in', 1, 1, 0, '2016-10-10 09:50:24'),
(264, 'Faustino', 'Joezel', 'A.', '', 'Cityhall-majors office', 'Male', '8', 'walk-in', 1, 1, 0, '2016-10-10 09:54:20'),
(265, 'Francisco', 'Lourdes', 'S.', '', 'CSWD-PESO', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 10:20:12'),
(266, 'Abdul', 'Al-Shierlyunn', 'A.', '', 'PLDT', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 10:26:10'),
(267, 'Asmawil', 'Maria Lucille', 'H.', '', 'PLDT', 'Female', '7', 'walk-in', 1, 1, 0, '2016-10-10 10:27:00'),
(268, 'Medina', 'Yollene', '-', '', 'UZ', 'Female', '8', 'walk-in', 1, 1, 0, '2016-10-10 10:53:33'),
(269, 'Sorio', 'George ', 'D.', '', 'Freelancer Pinoy', 'Male', '10', 'walk-in', 1, 1, 0, '2016-10-10 10:58:06'),
(270, 'Quin', 'Ryan Cristopher', 'Y.', '', 'ZAREP', 'Male', '2', 'walk-in', 1, 0, 0, '2016-10-10 11:02:25'),
(271, 'Quin', 'Michelle', 'M.', '', 'Zampen', 'Female', '2', 'walk-in', 1, 0, 0, '2016-10-10 11:04:17'),
(272, 'Inclan', 'Rodel', 'L.', '', 'PAGASA', 'Male', '2', 'walk-in', 1, 0, 0, '2016-10-10 11:16:24');

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
-- AUTO_INCREMENT for table `tbl_registrants`
--
ALTER TABLE `tbl_registrants`
MODIFY `registrantID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
