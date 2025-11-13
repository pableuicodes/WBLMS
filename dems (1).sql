-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 10:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dems`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `station_code` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `extension_name` varchar(20) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Separated') NOT NULL,
  `employee_status` enum('Active','Inactive','Retired','Resigned') NOT NULL,
  `remarks` text DEFAULT NULL,
  `date_time_added` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `station_code`, `last_name`, `first_name`, `middle_name`, `extension_name`, `gender`, `date_of_birth`, `civil_status`, `employee_status`, `remarks`, `date_time_added`) VALUES
(1, '0000290', '003', 'BASSIG', 'GEMMA', 'MORTERO', NULL, 'Female', '1972-08-30', 'Single', 'Active', NULL, '2025-11-05 14:15:21'),
(2, '0005370', '003', 'SANCHEZ', 'MARCIANA', 'ALMOITE', NULL, 'Female', '1970-01-02', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(3, '0006640', '003', 'OPINION', 'AIDA', 'M', NULL, 'Female', '1961-11-30', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(4, '0007310', '003', 'DOMINGO', 'TEODORA', 'BARADI', NULL, 'Female', '1967-03-31', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(5, '0008390', '003', 'DELMENDO', 'MARIBEL', 'VELBIS', NULL, 'Female', '1968-05-29', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(6, '0010160', '003', 'FLORES', 'MARISOL', 'LICAY', NULL, 'Female', '1975-12-21', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(7, '0012150', '003', 'GAON', 'DENNIS', 'C', NULL, 'Male', '1973-06-18', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(8, '0012720', '003', 'VALDEZ', 'AURORA', 'GAMBOA', NULL, 'Female', '1967-08-19', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(9, '0013150', '003', 'CASTILLO', 'FLORENCE', 'ALMODOVAR', NULL, 'Female', '1979-08-30', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(10, '0015480', '003', 'CABAGBAG', 'MARY JANE', 'GARCIA', NULL, 'Female', '1966-06-10', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(11, '0019220', '003', 'BALANON', 'MARITES', 'PAGUIRIGAN', NULL, 'Female', '1974-03-03', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(12, '0019520', '003', 'GERABAN', 'ROSALIA', 'B', NULL, 'Female', '1968-07-11', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(13, '0019750', '003', 'JULAILA', 'PORTIA LESLIE', 'NAVASCA', NULL, 'Female', '1978-07-25', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(14, '0021050', '003', 'POYAOAN', 'MELANIE', 'LAURENTINO', NULL, 'Female', '1980-09-01', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(15, '0021080', '003', 'MANALANG', 'MA REINA', 'TOLENTINO', NULL, 'Female', '1976-09-25', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(16, '0026560', '003', 'AGUSTIN', 'YAZMIN ROSE', 'BACUNGAN', NULL, 'Female', '1981-03-10', 'Single', 'Active', NULL, '2025-11-05 14:15:21'),
(17, '0027000', '003', 'CACCAM', 'JEAN', 'CARIG', NULL, 'Female', '1979-12-29', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(18, '0028500', '003', 'OLBINADO', 'NOEMI', 'CUYO', NULL, 'Female', '1979-08-08', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(19, '0028800', '003', 'SAMBOT', 'YOLANDA', 'AGLUTAY', NULL, 'Female', '1977-06-02', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(20, '3010173', '003', 'CARDINEZ', 'MYRNA', 'NELMIDA', NULL, 'Female', '1960-05-24', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(21, '4104033', '003', 'CORTEZ', 'LEONILDA', 'P', NULL, 'Female', '1959-01-29', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(22, '4104435', '003', 'DUNGAN', 'BELLA', 'BUCCAT', NULL, 'Female', '1963-09-25', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(23, '4106272', '003', 'JULAILA', 'DAISY', 'P', NULL, 'Female', '1963-12-18', 'Single', 'Retired', NULL, '2025-11-05 14:15:21'),
(24, '4106979', '003', 'LICUDINE', 'AGNES VICTORIA', 'NAPUAGA', NULL, 'Female', '1965-10-07', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(25, '4109801', '003', 'CAASI', 'YOLANDA', 'FERNANDEZ', NULL, 'Female', '1966-08-27', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(26, '4113629', '003', 'CARIASO', 'SHIRLEY', 'ORFANO', NULL, 'Female', '1965-09-16', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(27, '4114903', '003', 'GAONA', 'MERLENE', 'CASICAS', NULL, 'Female', '1970-06-11', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(28, '4114904', '003', 'EGUILLOS', 'CHINITA', 'MANALANG', NULL, 'Female', '1969-08-04', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(29, '4114905', '003', 'CANDONG', 'NORA', 'CABAGBAG', NULL, 'Female', '1970-01-17', 'Married', 'Inactive', NULL, '2025-11-05 14:15:21'),
(30, '4114906', '003', 'ARELLANO', 'JUDITH', 'ABAD', NULL, 'Female', '1969-12-15', 'Single', 'Active', NULL, '2025-11-05 14:15:21'),
(31, '4114907', '003', 'BADUA', 'CRISTETA', 'ANTOLIN', NULL, 'Female', '1963-06-13', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(32, '4114908', '003', 'GALVEZ', 'EVELYN', 'CARIASO', NULL, 'Female', '1968-12-18', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(33, '4114909', '003', 'CARIASO', 'MARIVIC', 'DACANAY', NULL, 'Female', '1966-07-07', 'Widowed', 'Active', NULL, '2025-11-05 14:15:21'),
(34, '4114912', '003', 'FONTANILLA', 'ROSEMARIE', 'KARGANILLA', NULL, 'Female', '1964-11-24', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(35, '4114913', '003', 'CARBONELL', 'LORNA', 'ACOSTA', NULL, 'Female', '1965-11-16', 'Widowed', 'Active', NULL, '2025-11-05 14:15:21'),
(36, '4114916', '003', 'GAONA', 'MARCIAL', 'NEBRES', NULL, 'Male', '1969-03-22', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(37, '4114917', '003', 'FERNANDEZ', 'BRENDA', 'CORPUZ', NULL, 'Female', '1968-06-16', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(38, '4114919', '003', 'MENCIAS', 'MYRNA', 'DELOS TRINOS', NULL, 'Female', '1962-10-15', 'Married', 'Retired', NULL, '2025-11-05 14:15:21'),
(39, '4114920', '003', 'ACOSTA', 'MA LORMA', 'LICOS', NULL, 'Female', '1964-06-03', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(40, '4114921', '003', 'GAETOS', 'WILMA', 'MARTINEZ', NULL, 'Female', '1964-03-08', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(41, '4114925', '003', 'MESINA', 'ROWENA', 'OREDINA', NULL, 'Female', '1969-09-23', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(42, '4114926', '003', 'ABAT', 'EDITHA', 'OFIAZA', NULL, 'Female', '1971-07-20', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(43, '4114927', '003', 'OBRA', 'LEONIDA', 'OFIAZA', NULL, 'Female', '1969-03-24', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(44, '4114928', '003', 'ACOSTA', 'JULITA', 'PAJIMOLA', NULL, 'Female', '1970-07-23', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(45, '4114929', '003', 'CABRAL', 'FLORENCIA', 'PASCUA', NULL, 'Female', '1966-02-23', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(46, '4116449', '003', 'OREIRO', 'PATRICIA', 'ORINA', NULL, 'Female', '1972-05-13', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(47, '4117404', '003', 'MINASALVAS', 'MERLIE', 'ESLAVA', NULL, 'Female', '1971-03-11', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(48, '4117693', '003', 'FLORIA', 'LOURDES', 'ALMOITE', NULL, 'Female', '1971-11-14', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(49, '4117892', '003', 'MONTEPALCO', 'NORMA', 'ARELLANO', NULL, 'Female', '1970-09-08', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(50, '4117893', '003', 'BUCSIT', 'CARINA', 'BAGUIO', NULL, 'Female', '1973-11-08', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(51, '4118252', '003', 'OSOTEO', 'DIGNA ESTELA', 'PADILLA', NULL, 'Female', '1966-06-14', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(52, '4118791', '003', 'DINGLE', 'VILMA', 'PARCHAMENTO', NULL, 'Female', '1971-09-10', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(53, '4119032', '003', 'CARIASO', 'ESTELA', 'TORRALBA', NULL, 'Female', '1964-08-29', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(54, '4119901', '003', 'BADUA', 'CRISTINA', 'DAGANG', NULL, 'Female', '1972-12-15', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(55, '4121143', '003', 'BERNARDO', 'ROWENA', 'NARES', NULL, 'Female', '1972-10-03', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(56, '4121144', '003', 'ALMOJUELA', 'JASMIN', 'GAZMEN', NULL, 'Female', '1972-01-06', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(57, '4121191', '003', 'KARGANILLA', 'IRENE', 'DELMENDO', NULL, 'Female', '1971-07-09', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(58, '4121192', '003', 'PALANCA', 'LILY', 'BERNARDO', NULL, 'Female', '1965-07-02', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(59, '4121194', '003', 'VALMORES', 'JENNIFER', 'BARROGA', NULL, 'Female', '1973-07-12', 'Single', 'Active', NULL, '2025-11-05 14:15:21'),
(60, '4186286', '003', 'BERNARDO', 'GLENDA', 'BASSIG', NULL, 'Female', '1971-08-19', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(61, '4186664', '003', 'ALMOITE', 'NORA', 'PAJARILLO', NULL, 'Female', '1973-09-08', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(62, '4186665', '003', 'OREDINA', 'JULIET', 'PAGELA', NULL, 'Female', '1965-07-03', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(63, '4186666', '003', 'CARDINEZ', 'EDWIN', 'OBRA', NULL, 'Male', '1972-08-16', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(64, '4187305', '003', 'CARDINEZ', 'JERIEL', 'ESTABILLO', NULL, 'Female', '1976-02-21', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(65, '4188005', '003', 'DE CASTRO', 'MARIA THERESA', 'SORIANO', NULL, 'Female', '1981-10-02', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(66, '4188006', '003', 'ALMODOVAR', 'LUDIVINA', 'BUCCAT', NULL, 'Female', '1971-04-26', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(67, '4188007', '003', 'CARDINEZ', 'MARITES', 'DUMO', NULL, 'Female', '1971-12-07', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(68, '4188102', '003', 'ALMOITE', 'FELICIDAD', 'RESURRECCION', NULL, 'Female', '1970-03-03', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(69, '4188343', '003', 'RAGPALA', 'MARITES', 'BUCSIT', NULL, 'Female', '1974-11-07', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(70, '4188665', '003', 'CLATA', 'AGRIPINA', 'PULIDO', NULL, 'Female', '1975-06-23', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(71, '4189396', '003', 'ALMOITE', 'LENY', 'PARCHAMENTO', NULL, 'Female', '1975-07-26', 'Single', 'Active', NULL, '2025-11-05 14:15:21'),
(72, '4189432', '003', 'VALMONTE', 'ANALIZA', 'DELFINADO', NULL, 'Female', '1973-06-06', 'Married', 'Active', NULL, '2025-11-05 14:15:21'),
(73, '4189465', '003', 'MADAYAG', 'JENNIFER', 'DAMASCO', NULL, 'Female', '1979-12-12', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(74, '4189466', '003', 'PAGADUAN', 'MELINDA', 'QUITLONG', NULL, 'Female', '1978-12-10', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(75, '4189467', '003', 'RAMOS', 'TZARITA MARIE', 'C', NULL, 'Female', '1983-09-18', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(76, '4189468', '003', 'GAUDIA', 'MELODY', 'RAGPALA', NULL, 'Female', '1983-06-01', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(77, '4189470', '003', 'MARQUEZ', 'YOLANDA', 'ACOSTA', NULL, 'Female', '1978-01-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(78, '4189471', '003', 'CARDINEZ', 'MICHELLE', 'N', NULL, 'Female', '1976-10-20', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(79, '4189546', '003', 'CASICAS', 'VICENTE', 'LUMAMBA', NULL, 'Male', '1972-08-17', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(80, '4189662', '003', 'RAGUINDIN', 'MARIA LISA', 'RIVERA', NULL, 'Female', '1971-08-15', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(81, '4190089', '003', 'CARINO', 'RENALY', 'SIBAYAN', NULL, 'Female', '1985-03-28', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(82, '4190421', '003', 'MARQUEZ', 'FLORIDA', 'BADUA', NULL, 'Female', '1983-09-01', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(83, '4190803', '003', 'ARELLANO', 'RAQUEL', 'JUBILO', NULL, 'Female', '1973-04-25', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(84, '4190804', '003', 'AGLUTAY', 'JOAN', 'OBAÑA', NULL, 'Female', '1985-01-15', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(85, '4190852', '003', 'MARRERO', 'GENA', 'RAMOS', NULL, 'Female', '1970-03-10', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(86, '4190887', '003', 'BUSTAMANTE', 'JEAN', 'BAUTISTA', NULL, 'Female', '1983-05-24', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(87, '4190981', '003', 'CARIG', 'BERNADETTE', 'GAÑOLA', NULL, 'Female', '1982-11-16', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(88, '4191003', '003', 'ESPERON', 'MIRIAM', 'PAGADUAN', NULL, 'Female', '1970-10-10', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(89, '4191118', '003', 'ALMOJUELA', 'MAYBELLE', 'CALICA', NULL, 'Female', '1977-05-06', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(90, '4191119', '003', 'BUCASAS', 'LESTER', 'ANTONIO', NULL, 'Male', '1983-11-18', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(91, '4191306', '003', 'LAYSON', 'MAY FLOR', 'SIBAYAN', NULL, 'Female', '1983-05-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(92, '4191307', '003', 'MONIS', 'MINDA', 'OREIRO', NULL, 'Female', '1975-02-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(93, '4191582', '003', 'GANOLA', 'ANALEEN', 'OREIRO', NULL, 'Female', '1980-05-13', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(94, '4191824', '003', 'GANOLA', 'MARIA CRISANTA', 'LEANO', NULL, 'Female', '1977-10-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(95, '4191840', '003', 'SALES', 'DINA', 'DELOS TRINOS', NULL, 'Female', '1980-12-26', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(96, '4191998', '003', 'OBRA', 'ESTRELLA', 'PICAZO', NULL, 'Female', '1974-08-06', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(97, '4192104', '003', 'BERGANIO', 'ROMMEL', 'CARGO', NULL, 'Male', '1985-04-02', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(98, '4192105', '003', 'OREDINA', 'ROSEMARIE', 'NEBRES', NULL, 'Female', '1982-10-29', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(99, '4192106', '003', 'CARDINEZ', 'BUTCH HANSEL', 'TANGALIN', NULL, 'Male', '1985-11-13', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(100, '4192237', '003', 'MENDOZA', 'LOUELA', 'MARTINEZ', NULL, 'Female', '1984-06-10', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(101, '4192238', '003', 'BUCCAT', 'MARIA FATIMA', 'BONDOC', NULL, 'Female', '1985-10-21', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(102, '4192473', '003', 'GANALON', 'MARISA', 'VILLANUEVA', NULL, 'Female', '1972-03-05', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(103, '4192474', '003', 'ABAYA', 'MARIVIC', 'BADUA', NULL, 'Female', '1983-05-10', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(104, '4192477', '003', 'ESPERON', 'JUDILYN', 'VALMONTE', NULL, 'Female', '1982-09-24', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(105, '4193529', '003', 'ARRUEJO', 'KATHERINE', 'MARARAC', NULL, 'Female', '1972-05-15', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(106, '4193645', '003', 'OFIAZA', 'LETICIA', 'ALMOITE', NULL, 'Female', '1977-10-15', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(107, '4194002', '003', 'BADUA', 'CHERYL', 'KARGANILLA', NULL, 'Female', '1980-03-18', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(108, '4194197', '003', 'OREIRO', 'ETHEL', 'GONZALES', NULL, 'Female', '1977-12-19', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(109, '4194745', '003', 'ALMODOVAR', 'JEANNELYN', 'VALMONTE', NULL, 'Female', '1978-11-24', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(110, '4194746', '003', 'CORTEZ', 'MARILYN', 'CARDINES', NULL, 'Female', '1980-06-11', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(111, '4194831', '003', 'CARDINEZ', 'RODOLFO', 'RAMOS', NULL, 'Male', '1988-12-26', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(112, '4195410', '003', 'DACANAY', 'ARLYN', 'BADUA', NULL, 'Female', '1984-10-21', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(113, '4195505', '003', 'DELFINADO', 'ZENAIDA', 'IDIO', NULL, 'Female', '1980-07-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(114, '4195526', '003', 'SISON', 'VIVIAN ROSE', 'ACOSTA', NULL, 'Female', '1986-06-13', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(115, '4195527', '003', 'ORIENTE', 'EUFEMIA', 'UGOT', NULL, 'Female', '1988-01-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(116, '4195970', '003', 'LOGRO', 'GLORY', 'LICUDINE', NULL, 'Female', '1968-04-12', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(117, '4195971', '003', 'ANCHETA', 'SANNY', 'RAMIREZ', NULL, 'Male', '1977-01-23', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(118, '4196198', '003', 'DE SAHAGUN', 'MARY JEAN', 'QUIAÑO', NULL, 'Female', '1979-05-25', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(119, '4196883', '003', 'QUIBAN', 'RHEMA', 'ESPERO', NULL, 'Female', '1987-05-09', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(120, '4196984', '003', 'CARDINEZ', 'MIA', 'TEJANO', NULL, 'Female', '1980-03-17', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(121, '4197242', '003', 'DELA CRUZ', 'JUVY', 'ARELLANO', NULL, 'Female', '1969-01-02', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(122, '4197732', '003', 'GACAYAN', 'JANICE', 'MARTINEZ', NULL, 'Female', '1983-06-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(123, '4197733', '003', 'GUILLET', 'SHIELA MARIE', 'LARON', NULL, 'Female', '1978-06-23', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(124, '4197734', '003', 'ULAT', 'CATHERINE', 'ESTEPA', NULL, 'Female', '1984-02-17', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(125, '4197982', '003', 'NARCISO', 'CORIE', 'TULLAS', NULL, 'Female', '1986-08-03', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(126, '4198451', '003', 'LAGUTAN', 'GINA', 'ALMOITE', NULL, 'Female', '1977-09-08', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(127, '4198461', '003', 'ATO', 'LOUELLA', 'CAVANEYRO', NULL, 'Female', '1976-10-07', 'Married', 'Inactive', NULL, '2025-11-05 14:15:22'),
(128, '4198594', '003', 'ALMIROL', 'FREDELENE', 'RUBANG', NULL, 'Female', '1984-01-07', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(129, '4198834', '003', 'OBAÑA', 'HAZEL', 'GAMBOA', NULL, 'Female', '1990-02-23', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(130, '4198936', '003', 'DUCULAN', 'ANALISA', 'CARIASO', NULL, 'Female', '1971-01-28', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(131, '4198937', '003', 'DULAY', 'CLARA', 'POLONIO', NULL, 'Female', '1972-12-31', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(132, '4199441', '003', 'ALMODOVAR', 'AYLENE', 'MAALA', NULL, 'Female', '1983-12-23', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(133, '4199442', '003', 'ANGELITO', 'MELANIE', 'G', NULL, 'Female', '1982-11-27', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(134, '4199443', '003', 'BAÑEZ', 'LALAINE', 'GAZMEN', NULL, 'Female', '1983-04-22', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(135, '4199444', '003', 'POLICARPIO', 'VIRGIE', 'REDONGA', NULL, 'Female', '1984-12-08', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(136, '4199446', '003', 'ZUILAN', 'MA. JENNIFER', 'BADUA', NULL, 'Female', '1984-07-30', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(137, '4200016', '003', 'CABRADILLA', 'LORENA', 'ALMOJUELA', NULL, 'Female', '1984-07-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(138, '4201094', '003', 'AGTARAP', 'MARISSA', 'ESPEJO', NULL, 'Female', '1990-01-16', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(139, '4201138', '003', 'SANCHEZ', 'MARIBEL', 'VALMONTE', NULL, 'Female', '1976-10-17', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(140, '4201233', '003', 'SIMON', 'NORALYN', 'BADUA', NULL, 'Female', '1991-08-03', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(141, '4201974', '003', 'CARDINEZ', 'CESAR', 'PAGADUAN', NULL, 'Male', '1961-01-11', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(142, '4201983', '003', 'GAMBOA', 'LORY BELLE', 'BADUA', NULL, 'Female', '1988-09-12', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(143, '4201984', '003', 'NIEVA', 'MARLINA', 'ESPERON', NULL, 'Female', '1968-01-18', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(144, '4202035', '003', 'TABANGCURA', 'MARILOU', 'N', NULL, 'Female', '1972-08-27', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(145, '4203105', '003', 'BON', 'RUZZEL LIANFER', 'CARDINEZ', NULL, 'Female', '1990-02-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(146, '4203332', '003', 'DELMENDO', 'LENNY GRACE', 'CARIASO', NULL, 'Female', '1988-04-11', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(147, '4203445', '003', 'CASTILLONES', 'NIEVES', 'HUFALAR', NULL, 'Female', '1966-11-17', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(148, '4203767', '003', 'FERRERA', 'JOYCE ANNE', 'VALMORES', NULL, 'Female', '1983-01-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(149, '4204754', '003', 'AREOLA', 'SORAYDA', 'FERRER', NULL, 'Female', '1987-04-21', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(150, '4204768', '003', 'URBANO', 'NELIA', 'ALMOITE', NULL, 'Female', '1978-08-29', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(151, '4205182', '003', 'AGLIBOT', 'MARICRIS', 'SURELL', NULL, 'Female', '1985-08-31', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(152, '4205949', '003', 'APILADO', 'MARIA CATHERINE', 'RIÑON', NULL, 'Female', '1987-08-06', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(153, '4207601', '003', 'OREIRO', 'FERRY', 'ABAOAG', NULL, 'Female', '1986-12-01', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(154, '4207602', '003', 'VALMONTE', 'JO-ANN MAYBELLE', 'LICUDAN', NULL, 'Female', '1988-04-02', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(155, '4207604', '003', 'BRAVO', 'MARICEL', 'COLLADO', NULL, 'Female', '1987-09-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(156, '4207634', '003', 'LIYO', 'ARLYN', 'PASCUA', NULL, 'Female', '1984-10-02', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(157, '4207956', '003', 'MONTEPALCO', 'CHRISTINE MAY', 'OREJUDOS', NULL, 'Female', '1990-05-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(158, '4207957', '003', 'GONZALES', 'MAY', 'BERNARDINO', NULL, 'Female', '1977-05-08', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(159, '4207958', '003', 'CARDINEZ', 'EDEN', 'NAVALTA', NULL, 'Female', '1984-10-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(160, '4207959', '003', 'LICUDINE', 'DESIREE', 'ESPE', NULL, 'Female', '1984-12-29', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(161, '4209211', '003', 'NUGAL', 'JESSICA', 'VALMONTE', NULL, 'Female', '1987-01-21', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(162, '4210047', '003', 'BALUTAN', 'RAYMUND', 'DELFINADO', NULL, 'Male', '1988-07-01', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(163, '4210048', '003', 'DACUMOS', 'MARIZAL ALIH', 'CABALLERO', NULL, 'Female', '1991-12-30', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(164, '4212434', '003', 'HUFANA', 'CATHERINE', 'CATIVO', NULL, 'Female', '1981-11-22', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(165, '4212764', '003', 'TABOR', 'PHOEBELYN', 'OREIRO', NULL, 'Female', '1986-02-09', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(166, '4213942', '003', 'BAWAS', 'ANNIE', 'ROY', NULL, 'Female', '1978-10-31', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(167, '4214934', '003', 'BUCSIT', 'JELYN', 'CORPUZ', NULL, 'Female', '1985-10-30', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(168, '4215286', '003', 'CARIASO', 'ADONA MAE', 'ALMOITE', NULL, 'Female', '1990-05-18', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(169, '4215287', '003', 'CAYETANO', 'RENATO', 'ASIS', NULL, 'Male', '1976-10-06', 'Single', 'Active', NULL, '2025-11-05 14:15:22'),
(170, '4215288', '003', 'KIAT-ONG', 'MARIZ LOUIE', 'DE GUZMAN', NULL, 'Female', '1992-06-04', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(171, '4215289', '003', 'OREIRO', 'JENNIFER', 'RIÑON', NULL, 'Female', '1985-11-25', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(172, '4215315', '003', 'PACETES', 'FLORA MAY', 'QUIDPOAN', NULL, 'Female', '1996-01-05', 'Single', 'Retired', NULL, '2025-11-05 14:15:22'),
(173, '4215316', '003', 'ESTRADA', 'MARILOU IRMA', 'RAMIL', NULL, 'Female', '1990-10-02', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(174, '4215872', '003', 'ESTOCAPIO', 'MILANY', 'CORPUZ', NULL, 'Female', '1983-04-14', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(175, '4217129', '003', 'FLORENDO', 'MARY ANN', 'BACTAD', NULL, 'Female', '1989-09-03', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(176, '4217130', '003', 'PAGADUAN', 'SHAHARA', 'NAUNGAYAN', NULL, 'Female', '1992-03-11', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(177, '4217409', '003', 'ESLAVA', 'VINGLES', 'DACANAY', NULL, 'Female', '1990-11-30', 'Married', 'Retired', NULL, '2025-11-05 14:15:22'),
(178, '4219708', '003', 'CARDINEZ', 'KRYSSA', 'OMINGA', NULL, 'Female', '1994-07-04', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(179, '4219709', '003', 'ALMIROL', 'ALADIN', 'ROMERO', NULL, 'Male', '1984-12-05', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(180, '4220018', '003', 'SAMBOT', 'KAREN', 'ABUAN', NULL, 'Female', '1976-04-05', 'Married', 'Active', NULL, '2025-11-05 14:15:22'),
(181, '4220019', '003', 'DELMENDO', 'MELVIN', 'VELBIS', NULL, 'Male', '1994-05-01', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(182, '4220020', '003', 'LACONSAY', 'SARAH JAENKLE', 'PADUA', NULL, 'Female', '1990-12-07', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(183, '4220021', '003', 'ACOSTA', 'CHASTINE ANN', 'ALMINIANA', NULL, 'Female', '1990-03-05', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(184, '4220022', '003', 'AGLUTAY', 'RICHARD', 'TABOR', NULL, 'Male', '1991-02-08', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(185, '4220023', '003', 'TUBOG', 'MARIBEL', 'ALMOITE', NULL, 'Female', '1991-03-23', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(186, '4220594', '003', 'SIMON', 'ESMAEL', 'CANDONG', NULL, 'Male', '1994-06-25', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(187, '4220595', '003', 'HERNANDEZ', 'RIZZA', 'FONTANILLA', NULL, 'Female', '1985-02-24', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(188, '4221077', '003', 'CARIASO', 'VANE CHARME LYN', 'CABUTOTAN', NULL, 'Female', '1990-01-07', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(189, '4221078', '003', 'LICUDAN', 'JEA CAMILE', 'LOGRO', NULL, 'Female', '1995-06-30', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(190, '4221079', '003', 'SALAZAR', 'GEBERLY', 'GALCON', NULL, 'Female', '1984-10-20', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(191, '4221871', '003', 'CARIASO', 'RICHELLE', 'CABATAN', NULL, 'Female', '1994-02-18', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(192, '4222692', '003', 'TEÑOSO', 'RONELIA', 'GANUELAS', NULL, 'Female', '1995-07-22', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(193, '4222779', '003', 'CATACUTAN', 'JEN JEN', 'OBRA', NULL, 'Female', '1991-07-04', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(194, '4234069', '003', 'GAON', 'FERCRIS', 'PULIDO', NULL, 'Male', '1996-02-25', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(195, '4234070', '003', 'ANGELITO', 'FERLENE MAY', 'MARQUEZ', NULL, 'Female', '1997-05-18', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(196, '4234203', '003', 'HUFANA', 'SHERWIN', 'RILLORAZA', NULL, 'Male', '1981-10-20', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(197, '4234409', '003', 'ALMOJUELA', 'EDELIZA', 'UGOT', NULL, 'Female', '1989-10-12', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(198, '4234607', '003', 'BUEN', 'JULIUS CESAR', 'DELMENDO', NULL, 'Male', '1994-06-22', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(199, '4234790', '003', 'GAVINA', 'JENNY', 'CARDINEZ', NULL, 'Female', '1992-12-09', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(200, '4235404', '003', 'BADUA', 'MARIE DIANE', 'KARGANILLA', NULL, 'Female', '1993-12-02', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(201, '4235405', '003', 'MORALES', 'EARNEST DOMINIC', 'ABUBO', NULL, 'Female', '1989-09-14', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(202, '4235406', '003', 'BUCCAT', 'MARY ELLEN', 'RACSA', NULL, 'Female', '1995-10-26', 'Married', 'Resigned', NULL, '2025-11-05 14:15:23'),
(203, '4235407', '003', 'GAUDIA', 'DENIS', 'BUCSIT', NULL, 'Male', '1993-04-10', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(204, '4235630', '003', 'VALDEZ', 'JENNY LYN', 'GAUDIA', NULL, 'Female', '1993-09-12', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(205, '4238102', '003', 'CASTILLO', 'ROXANNE', 'BALUCON', NULL, 'Female', '1995-08-23', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(206, '4238200', '003', 'CABATO', 'KRISTINE', 'CABATAN', NULL, 'Female', '1994-09-10', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(207, '4238470', '003', 'GASCON', 'LEI-ANN', 'ESPERON', NULL, 'Female', '1987-02-02', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(208, '4238492', '003', 'MARGALLO', 'ANABEL', 'BUEN', NULL, 'Female', '1995-12-06', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(209, '4238720', '003', 'PADUA', 'AIRA MAI', 'CARDINEZ', NULL, 'Female', '1991-10-19', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(210, '4239893', '003', 'NILLO', 'JESSICA', 'NAPEÑAS', NULL, 'Female', '1994-03-10', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(211, '4240046', '003', 'LICUDAN', 'MYRA', 'CAYABYAB', NULL, 'Female', '1981-11-10', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(212, '4240678', '003', 'CERVANTES', 'GLENAH MAE', 'DE LEON', NULL, 'Female', '1993-05-07', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(213, '4240679', '003', 'LICOS', 'REYVELYN', 'UBAS', NULL, 'Female', '1993-06-13', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(214, '4240821', '003', 'HIGOY', 'MARINELLE', 'PARTIBLE', NULL, 'Female', '1993-09-13', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(215, '4240822', '003', 'NEBRES', 'KENETH', 'DULATRE', NULL, 'Male', '1994-11-27', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(216, '4240874', '003', 'SALUTA', 'JEAN', 'BERNADAS', NULL, 'Female', '1988-05-18', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(217, '4241372', '003', 'ORTALIZA', 'MARY JANE', 'CARIASO', NULL, 'Female', '1994-08-20', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(218, '4242543', '003', 'BADUA', 'JUDILYN', 'OBAÑA', NULL, 'Female', '1994-04-16', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(219, '4242544', '003', 'BAUTISTA', 'CRISTAL', 'BANDOLIN', NULL, 'Female', '1995-08-20', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(220, '4242550', '003', 'HIGONA', 'LORIEMIL', 'NACIS', NULL, 'Female', '1992-12-29', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(221, '4243302', '003', 'ALMOITE', 'JENNY', 'DE LOS TRINOS', NULL, 'Female', '1992-09-22', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(222, '4243704', '003', 'DE LOS TRINOS', 'JESSICA', 'BADUA', NULL, 'Female', '1994-12-23', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(223, '4243705', '003', 'GAÑALON', 'CRISTY', 'PARAS', NULL, 'Female', '1983-02-05', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(224, '4245064', '003', 'MARTINEZ', 'JOURIEZ', 'CARDINEZ', NULL, 'Female', '1974-12-03', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(225, '4245123', '003', 'CASER', 'DIANNE', 'MARIÑAS', NULL, 'Female', '1983-11-01', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(226, '4245125', '003', 'NITURA', 'RUBILYN', 'CASEM', NULL, 'Female', '1996-05-15', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(227, '4245129', '003', 'OREIRO', 'XYZAN', 'NATALIO', NULL, 'Male', '2000-06-20', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(228, '4245954', '003', 'MACUROY', 'MA. FE', 'PARONG', NULL, 'Female', '1997-06-24', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(229, '4246254', '003', 'DACUMOS', 'GLORIAN', 'CALBONE', NULL, 'Female', '1982-04-11', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(230, '4246284', '003', 'BENTRIZ', 'HAZEL', 'DE LEON', NULL, 'Female', '1988-11-08', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(231, '4246498', '003', 'GAON', 'RALPH VINCENT', 'OBENARIO', NULL, 'Male', '1998-01-25', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(232, '4246747', '003', 'NAVALTA', 'WENDYL KHAREN MAE', 'NAVARRO', NULL, 'Female', '1994-09-28', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(233, '4246748', '003', 'MARTICIO', 'EXCEL JOY', 'CARDONA', NULL, 'Female', '1998-08-25', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(234, '4246749', '003', 'BALLESTEROS', 'PRECY', 'ARQUITOLA', NULL, 'Female', '1988-05-16', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(235, '4246958', '003', 'PASCUA', 'FELKHRESS JANE', 'BRAVO', NULL, 'Female', '1996-06-11', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(236, '4246971', '003', 'ANDAYA', 'CRISTY', 'SARICAL', NULL, 'Female', '1987-06-04', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(237, '4246980', '003', 'CARDINEZ', 'JOHN MARK', 'CORPUZ', NULL, 'Male', '1993-03-09', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(238, '4248119', '003', 'ABUNGAN', 'CHERRY JOY', 'DOLIENTAS', NULL, 'Female', '1997-01-22', 'Married', 'Active', NULL, '2025-11-05 14:15:23'),
(239, '4354932', '003', 'VILLANUEVA', 'MARITES', 'PASCUA', NULL, 'Female', '1983-03-24', 'Single', 'Active', NULL, '2025-11-05 14:15:23'),
(240, '4563695', '003', 'LICOS', 'ELENA', 'PACETES', NULL, 'Female', '1961-10-25', 'Married', 'Retired', NULL, '2025-11-05 14:15:23'),
(241, '0001400', '006', 'PADILLA', 'MERLINDA', 'P', NULL, 'Female', '1961-10-29', 'Married', 'Retired', NULL, '2025-11-13 10:49:26'),
(242, '0002530', '006', 'PIAOAN', 'MYRNA', 'BARNACHEA', NULL, 'Female', '1976-08-25', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(243, '0002540', '006', 'CASTILLO', 'MARIBEL', 'MILLARES', NULL, 'Female', '1974-03-20', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(244, '0003900', '006', 'VERBO', 'JAIME', 'MIBALO', NULL, 'Male', '1973-12-18', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(245, '0006690', '006', 'MARTOS', 'MARILOU', 'DIRECTO', NULL, 'Female', '1974-02-26', 'Single', 'Active', NULL, '2025-11-13 10:49:26'),
(246, '0007560', '006', 'GOZAR', 'IMELDA', 'TORALBA', NULL, 'Female', '1968-09-01', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(247, '0011490', '006', 'BALDONADI', 'DIVINA GRACIA', 'MACASO', NULL, 'Female', '1976-04-21', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(248, '0013930', '006', 'MAYRENA', 'JUDILYN', 'MUNOZ', NULL, 'Female', '1976-12-22', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(249, '0014050', '006', 'ORINA', 'MARY GRACE', 'SABADO', NULL, 'Female', '1976-01-18', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(250, '0018190', '006', 'VIRAY', 'ROWENA', 'MORALES', NULL, 'Female', '1976-01-02', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(251, '0019070', '006', 'MOSUELA', 'RODEL', 'CORPUZ', NULL, 'Female', '1976-11-18', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(252, '0022050', '006', 'FRONDA', 'MARINA', 'LOPEZ', NULL, 'Female', '1961-08-01', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(253, '0022720', '006', 'VIDANA', 'ZENAIDA', 'LOPEZ', NULL, 'Female', '1973-02-24', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(254, '0024290', '006', 'DAT-AY', 'NORA', 'MOSUELA', NULL, 'Female', '1976-11-03', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(255, '0024300', '006', 'ALAY-AY', 'DEBBIE', 'YADAO', NULL, 'Female', '1977-11-17', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(256, '0024760', '006', 'VERBO', 'RUBY ROSE', 'MAALA', NULL, 'Female', '1978-08-06', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(257, '0024770', '006', 'MARRON', 'JOEL', 'CLEMENTE', NULL, 'Male', '1970-10-02', 'Single', 'Active', NULL, '2025-11-13 10:49:26'),
(258, '0026430', '006', 'DAUZ', 'ROSEMARIE', 'PIDOT', NULL, 'Female', '1973-11-13', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(259, '4103740', '006', 'MOSTER', 'VICTORIA', 'LUCERO', NULL, 'Female', '1965-11-17', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(260, '4105896', '006', 'ABRIAM', 'FLORIDA', 'MICO', NULL, 'Female', '1966-07-09', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(261, '4106679', '006', 'CONTAOI', 'RONILA', 'CABUSORA', NULL, 'Female', '1964-01-10', 'Single', 'Active', NULL, '2025-11-13 10:49:26'),
(262, '4109078', '006', 'MANZANO', 'LYDIA', 'RAMIREZ', NULL, 'Female', '1966-08-02', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(263, '4110125', '006', 'SIBAYAN', 'ROSALINA', 'MORILLO', NULL, 'Female', '1966-06-11', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(264, '4110145', '006', 'APOLINAR', 'FERNANDO', 'MONIS', NULL, 'Male', '1967-09-30', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(265, '4110256', '006', 'RIVERA', 'EDITA', 'OLPINDO', NULL, 'Female', '1967-08-18', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(266, '4110482', '006', 'ROXAS', 'DOLORES', 'DE GUZMAN', NULL, 'Female', '1968-04-08', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(267, '4111185', '006', 'MONIS', 'FERNANDO', 'MACANLALAY', NULL, 'Female', '1967-11-03', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(268, '4113393', '006', 'ESTRADA', 'LORETO', 'PIDOT', NULL, 'Male', '1968-05-21', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(269, '4113394', '006', 'PACPACO', 'EDGAR', 'CASTRO', NULL, 'Male', '1968-06-28', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(270, '4113396', '006', 'DOMONDON', 'VIRGINIA', 'MANTILLA', NULL, 'Female', '1966-08-22', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(271, '4113397', '006', 'VILLALUNA', 'JOCELYN', 'ORMITA', NULL, 'Female', '1966-02-25', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(272, '4113399', '006', 'QUIDANGEN', 'IMELDA', 'CORPUZ', NULL, 'Female', '1967-04-03', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(273, '4113401', '006', 'BUCSIT', 'EDITHA', 'MARTOS', NULL, 'Female', '1968-06-12', 'Single', 'Active', NULL, '2025-11-13 10:49:26'),
(274, '4113403', '006', 'CABALONA', 'CLARISSA', 'CORPUZ', NULL, 'Female', '1969-09-23', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(275, '4113404', '006', 'LEONEN', 'JUANITA', 'SIBAYAN', NULL, 'Female', '1967-04-09', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(276, '4113405', '006', 'MACADAEG', 'GLECIE', 'BAGUYO', NULL, 'Female', '1969-06-13', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(277, '4113407', '006', 'BAUTISTA', 'SUSAN', 'LUCINA', NULL, 'Female', '1969-02-04', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(278, '4113409', '006', 'TALLIAD', 'GLORIA', 'GALLARDO', NULL, 'Female', '1968-01-09', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(279, '4113411', '006', 'VILLANUEVA', 'ZENAIDA', 'L', NULL, 'Female', '1963-07-30', 'Married', 'Retired', NULL, '2025-11-13 10:49:26'),
(280, '4113413', '006', 'LEGASPI', 'DIVINA', 'MACAYAN', NULL, 'Female', '1967-07-30', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(281, '4113414', '006', 'MAALA', 'GEMMA', 'FLORES', NULL, 'Female', '1968-09-06', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(282, '4113415', '006', 'ACOSTA', 'REBECCA', 'MONTE', NULL, 'Female', '1967-01-13', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(283, '4113416', '006', 'CARVAJAL', 'FELICIDAD', 'FOLLOSCO', NULL, 'Female', '1971-03-06', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(284, '4113417', '006', 'MONIS', 'EUFEMIA', 'BALBIN', NULL, 'Female', '1970-09-16', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(285, '4113419', '006', 'DEL ROSARIO', 'IMELDA', 'VISAYA', NULL, 'Female', '1970-12-05', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(286, '4113420', '006', 'MAALA', 'ANILYN', 'PASCUA', NULL, 'Female', '1971-09-01', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(287, '4113421', '006', 'MADRIGAL', 'CORAZON', 'LUCERO', NULL, 'Female', '1971-06-04', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(288, '4116198', '006', 'RAMOS', 'MARY ANN', 'LUCINA', NULL, 'Female', '1969-02-17', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(289, '4116199', '006', 'MACADAEG', 'ELVIE', 'BUENO', NULL, 'Female', '1972-05-31', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(290, '4116200', '006', 'MAYNES', 'EMILIA', 'ACOSTA', NULL, 'Female', '1972-07-17', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(291, '4116412', '006', 'ABENES', 'RAQUEL', 'VALDEZ', NULL, 'Female', '1972-12-23', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(292, '4117087', '006', 'COLOMA', 'PERLITO', 'MUNIO', NULL, 'Male', '1970-05-07', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(293, '4117397', '006', 'TABUSO', 'MERLYN', 'MOSUELA', NULL, 'Female', '1972-04-14', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(294, '4117545', '006', 'MACAYAN', 'JOSE RUFINO', 'RIVERA', NULL, 'Male', '1965-07-19', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(295, '4118042', '006', 'CASUGA', 'REGINA', 'RAMIREZ', NULL, 'Female', '1970-09-07', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(296, '4118795', '006', 'LACASANDILI', 'ADELIA', 'CASUGA', NULL, 'Female', '1969-08-12', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(297, '4118796', '006', 'ACEDO', 'FLORABEL', 'MANTILLA', NULL, 'Female', '1972-07-13', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(298, '4119700', '006', 'APOLINAR', 'ARIEL', 'MONIS', NULL, 'Female', '1973-04-20', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(299, '4119701', '006', 'MAGANIS', 'CRISTINA', 'LOPEZ', NULL, 'Female', '1972-03-01', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(300, '4121150', '006', 'MIFA', 'ROWENA', 'SABADO', NULL, 'Female', '1970-07-24', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(301, '4121201', '006', 'VIDUYA', 'MARLENE', 'MACANAS', NULL, 'Female', '1967-07-12', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(302, '4121202', '006', 'MORILLO', 'MARILYN', 'DINGLE', NULL, 'Female', '1968-09-29', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(303, '4121259', '006', 'MARTOS', 'CONSUELO RICARDA', 'HABER', NULL, 'Female', '1969-09-18', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(304, '4121260', '006', 'COLOMA', 'DOLORES EDITHA', 'ROJAS', NULL, 'Female', '1974-10-06', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(305, '4186555', '006', 'CARBONELL', 'GEMMA', 'ABRIAM', NULL, 'Female', '1975-09-24', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(306, '4186559', '006', 'PACPACO', 'GEORGIA', 'FOLLOSCO', NULL, 'Female', '1978-01-02', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(307, '4187307', '006', 'LEONEN', 'ANALYN', 'MOSUELA', NULL, 'Female', '1974-08-16', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(308, '4187546', '006', 'CORTEZ', 'MINERVA', 'ACOSTA', NULL, 'Female', '1975-08-21', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(309, '4187889', '006', 'LUCERO', 'DOLLY KHARNA', 'ABRAJANO', NULL, 'Female', '1978-04-13', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(310, '4188579', '006', 'GUBA', 'JENALYN', 'MARRON', NULL, 'Female', '1978-05-22', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(311, '4189341', '006', 'AGAS', 'MERCY', 'ACOSTA', NULL, 'Female', '1973-11-05', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(312, '4189653', '006', 'BAUTISTA', 'LIBERTY', 'LABERINTO', NULL, 'Female', '1979-12-04', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(313, '4190036', '006', 'SANTOS', 'MARIA TESSA', 'BARNACHEA', NULL, 'Female', '1981-01-30', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(314, '4190072', '006', 'ALMAZAN', 'RUBY', 'FONTANILLA', NULL, 'Female', '1974-12-29', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(315, '4190073', '006', 'NONES', 'MARJORIE', 'SUYAT', NULL, 'Female', '1975-12-30', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(316, '4190076', '006', 'LABSILICA', 'MERINISSA', 'DELFIN', NULL, 'Female', '1982-01-25', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(317, '4190225', '006', 'MADRIGAL', 'ANNA LIZA', 'MORGATE', NULL, 'Female', '1982-01-05', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(318, '4190228', '006', 'BALDERAS', 'JOAN', 'C', NULL, 'Female', '1985-06-28', 'Married', 'Retired', NULL, '2025-11-13 10:49:26'),
(319, '4191131', '006', 'MACAYAN', 'ROCELYN', 'GARCESA', NULL, 'Female', '1973-03-19', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(320, '4191586', '006', 'RAMOS', 'JOY', 'MIFA', NULL, 'Female', '1982-12-12', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(321, '4191963', '006', 'VELASCO', 'TOMAS', 'NATIVIDAD', NULL, 'Male', '1971-01-30', 'Single', 'Active', NULL, '2025-11-13 10:49:26'),
(322, '4192289', '006', 'SIBAYAN', 'ROLANDO', 'JASMIN', NULL, 'Male', '1969-09-29', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(323, '4192528', '006', 'MAALA', 'ANNA MARIE', 'TOMINES', NULL, 'Female', '1982-01-10', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(324, '4192530', '006', 'CORTEZ', 'ALMA MARIE', 'CORPUZ', NULL, 'Female', '1982-07-12', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(325, '4192531', '006', 'MANANTAN', 'MARLON', 'CASTRO', NULL, 'Male', '1982-04-25', 'Married', 'Active', NULL, '2025-11-13 10:49:26'),
(326, '4192532', '006', 'MACANAS', 'MOISES', 'LOZANO', NULL, 'Male', '1982-01-05', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(327, '4192759', '006', 'MATEO', 'CHRISTYLYN', 'VELASCO', NULL, 'Female', '1981-12-25', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(328, '4192762', '006', 'ACOSTA', 'EVELYN', 'BALDONADI', NULL, 'Female', '1982-04-05', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(329, '4192899', '006', 'HERNANDEZ', 'ELLEN', 'MAGPALI', NULL, 'Female', '1977-09-14', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(330, '4193137', '006', 'SIBAYAN', 'MARICEL', 'MARZO', NULL, 'Female', '1982-10-13', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(331, '4193420', '006', 'MENDOZA', 'AIDA', 'ACOSTA', NULL, 'Female', '1977-04-15', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(332, '4193469', '006', 'SISON', 'MARILYN', 'GANAT', NULL, 'Female', '1975-11-12', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(333, '4193471', '006', 'CARIAGA', 'MARY JANE', 'LUCINA', NULL, 'Female', '1979-02-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(334, '4193607', '006', 'CORONEL', 'JESSIE', 'REGPALA', NULL, 'Male', '1982-06-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(335, '4193608', '006', 'DELA PENA', 'MA LOURDES', 'HERNANDEZ', NULL, 'Female', '1983-11-06', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(336, '4193653', '006', 'MAYNES', 'ZEA MAE', 'NARES', NULL, 'Female', '1988-02-21', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(337, '4193654', '006', 'ORPIA', 'JONALYN', 'SIBAYAN', NULL, 'Female', '1987-05-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(338, '4193920', '006', 'CABUSORA', 'HAROLD', 'MARTOS', NULL, 'Male', '1986-08-02', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(339, '4193921', '006', 'SIBAYAN', 'JASMIN', 'TELACAS', NULL, 'Female', '1987-12-01', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(340, '4193995', '006', 'DELA PEÑA', 'AMYLEN', 'BEGUAS', NULL, 'Female', '1985-03-02', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(341, '4193999', '006', 'MAYNES', 'REYNALDO', 'SOLIS', NULL, 'Male', '1987-02-03', 'Widowed', 'Active', NULL, '2025-11-13 10:49:27'),
(342, '4194158', '006', 'RICARDE', 'CONSTANTINO', 'CABANIT', NULL, 'Male', '1984-09-20', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(343, '4194737', '006', 'MOSUELA', 'REYNALDO', 'DOMINGO', NULL, 'Male', '1977-10-30', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(344, '4194878', '006', 'SIBAYAN', 'MAXIMINO EDUARDO', 'GARCIA', NULL, 'Male', '1982-07-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(345, '4195215', '006', 'LOPEZ', 'MARILYN', 'LOZANO', NULL, 'Female', '1973-01-09', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(346, '4195411', '006', 'AGAS', 'MANUEL', 'APOLINAR', NULL, 'Male', '1977-08-19', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(347, '4195413', '006', 'LUMIIB', 'LUISA', 'LACUADRA', NULL, 'Female', '1978-07-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(348, '4195414', '006', 'LACSAMANA', 'GIGI', 'TORRES', NULL, 'Female', '1982-11-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(349, '4195528', '006', 'VALDEZ', 'CATHERINE', 'MOSTER', NULL, 'Female', '1986-07-16', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(350, '4195804', '006', 'SIBAYAN', 'AIDA', 'LEAL', NULL, 'Female', '1977-11-03', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(351, '4196086', '006', 'ACOSTA', 'REMEDIOS', 'MIFA', NULL, 'Female', '1983-06-25', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(352, '4196200', '006', 'MICUA', 'JENNIFER MAE', 'MAQUI', NULL, 'Female', '1986-06-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(353, '4196605', '006', 'MILLARES', 'ROSE ANN', 'MURAO', NULL, 'Female', '1986-12-21', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(354, '4196606', '006', 'VELASCO', 'BERNADETH', 'BORJA', NULL, 'Female', '1966-04-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(355, '4196653', '006', 'LOPEZ', 'PIER PAOLO', 'SIMON', NULL, 'Male', '1987-10-08', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(356, '4196793', '006', 'AGOOT', 'JHONA', 'A', NULL, 'Female', '1979-06-27', 'Married', 'Retired', NULL, '2025-11-13 10:49:27'),
(357, '4197580', '006', 'ABAD', 'JUNE', 'DINGLE', NULL, 'Male', '1987-06-13', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(358, '4197737', '006', 'CORPUZ', 'RHEA', 'MANTILLA', NULL, 'Female', '1985-09-23', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(359, '4197818', '006', 'MONIS', 'KAREN KEITH', 'QUINTO', NULL, 'Female', '1985-07-12', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(360, '4197987', '006', 'EBOJO', 'RIZA MAE', 'BUSTAMANTE', NULL, 'Female', '1978-05-27', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(361, '4197988', '006', 'MONIS', 'REICELY', 'ASTRANDE', NULL, 'Female', '1989-03-08', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(362, '4198455', '006', 'ORTEZA', 'EMELYN', 'MOSUELA', NULL, 'Female', '1978-11-16', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(363, '4198456', '006', 'ORTIZ', 'CATHERINE', 'MAYRENA', NULL, 'Female', '1982-08-25', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(364, '4198592', '006', 'MONIS', 'JESSICA', 'BANCUD', NULL, 'Female', '1985-12-22', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(365, '4198680', '006', 'CABUEÑAS', 'GLAIZA', 'MATRO', NULL, 'Female', '1987-09-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(366, '4198872', '006', 'GARCIA', 'JANICE', 'COLOMA', NULL, 'Female', '1982-12-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(367, '4199199', '006', 'ESTEPA', 'AMELIA', 'MAYRENA', NULL, 'Female', '1981-11-28', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(368, '4199499', '006', 'LOPEZ', 'SHARON', 'RAMOS', NULL, 'Female', '1982-05-23', 'Married', 'Active', NULL, '2025-11-13 10:49:27');
INSERT INTO `employees` (`id`, `employee_id`, `station_code`, `last_name`, `first_name`, `middle_name`, `extension_name`, `gender`, `date_of_birth`, `civil_status`, `employee_status`, `remarks`, `date_time_added`) VALUES
(369, '4200900', '006', 'VIDAÑA', 'SALLY', 'MARQUEZ', NULL, 'Female', '1981-12-19', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(370, '4201051', '006', 'ACOSTA', 'RAYMOND', 'DIALOGO', NULL, 'Male', '1986-03-07', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(371, '4201052', '006', 'MONIS', 'AILEEN', 'GALUTAN', NULL, 'Female', '1981-08-17', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(372, '4201096', '006', 'GUMANGAN', 'MARILYN', 'RAQUEDAN', NULL, 'Female', '1982-01-19', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(373, '4201238', '006', 'OPLE', 'JESSICA', 'MOGOTE', NULL, 'Female', '1988-01-28', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(374, '4201475', '006', 'HABAB', 'MYRNA', 'MICUA', NULL, 'Female', '1981-05-13', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(375, '4202387', '006', 'LIMON', 'JOBELLE MARIE', 'S', NULL, 'Female', '1990-07-06', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(376, '4203108', '006', 'MENDEZ', 'MELODY', 'NOTO', NULL, 'Female', '1984-06-09', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(377, '4203296', '006', 'RAMOS', 'JONELYN', 'COLOMA', NULL, 'Female', '1980-10-23', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(378, '4203391', '006', 'SABADO', 'WILSON', 'M', NULL, 'Male', '1977-12-26', 'Single', 'Retired', NULL, '2025-11-13 10:49:27'),
(379, '4203392', '006', 'LEGASPI', 'ELVIE', 'BUSTAMANTE', NULL, 'Female', '1978-02-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(380, '4203393', '006', 'NOTO', 'GEMMA', 'MANZANO', NULL, 'Female', '1985-02-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(381, '4203490', '006', 'MAYRENA', 'ELPIDIO', 'DINGLE', NULL, 'Male', '1976-03-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(382, '4203491', '006', 'FABRO', 'ELSIE', 'MURAO', NULL, 'Female', '1985-01-09', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(383, '4204755', '006', 'PAT-OG', 'MARIA CONCEPCION', 'MOSTER', NULL, 'Female', '1984-12-08', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(384, '4205603', '006', 'PIMENTEL', 'CHRISTOPHER', 'PULANCO', NULL, 'Male', '1976-07-23', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(385, '4207623', '006', 'MADRID', 'ALBERT', 'MAALA', NULL, 'Male', '1983-09-27', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(386, '4207624', '006', 'MACUROY', 'GINA', 'SABADO', NULL, 'Female', '1979-09-22', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(387, '4207625', '006', 'CABUSORA', 'MARLON', 'POJAS', NULL, 'Male', '1989-02-19', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(388, '4207649', '006', 'GALUTAN', 'MAAN', 'MOLINA', NULL, 'Female', '1982-08-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(389, '4207650', '006', 'TANES', 'ELENA', 'MUPAS', NULL, 'Female', '1971-09-13', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(390, '4210491', '006', 'NELMIDA', 'CLAUDINE', 'CABANIT', NULL, 'Female', '1988-05-11', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(391, '4210492', '006', 'SORIANO', 'GENALYN CARMENCITA', 'SIBAYAN', NULL, 'Female', '1975-07-16', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(392, '4212270', '006', 'MARTOS', 'MARNET', 'MOSUELA', NULL, 'Female', '1978-07-11', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(393, '4213834', '006', 'JAPSON', 'REGIE', 'AMAMANGPANG', NULL, 'Male', '1989-05-20', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(394, '4215262', '006', 'ABRIAM', 'MARIEL', 'VIERNES', NULL, 'Female', '1983-02-05', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(395, '4215263', '006', 'SABADO', 'GLORILYN', 'PATACSIL', NULL, 'Female', '1978-03-25', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(396, '4215874', '006', 'NELMIDA', 'DIVINA GRACIA', 'CORPUZ', NULL, 'Male', '1981-04-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(397, '4215875', '006', 'MINIANO', 'CAROLINE', 'MANGABANG', NULL, 'Female', '1980-06-21', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(398, '4216081', '006', 'CAS', 'JESSICA ANNE', 'FRONDA', NULL, 'Female', '1987-12-15', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(399, '4216782', '006', 'MORLA', 'RHYMA', 'ORMITA', NULL, 'Female', '1981-11-29', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(400, '4219126', '006', 'GUZMANI', 'JOEMA KHYN', 'DELOS SANTOS', NULL, 'Male', '1992-09-28', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(401, '4219164', '006', 'GALUTAN', 'MICHELLE', 'DINGLE', NULL, 'Female', '1981-09-12', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(402, '4219714', '006', 'ORTEGA', 'JAYSON', 'MONIS', NULL, 'Male', '1988-10-12', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(403, '4219715', '006', 'LACSAMANA', 'RIZA', 'ESQUITA', NULL, 'Female', '1992-12-29', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(404, '4219716', '006', 'ACOSTA', 'GLADYS', 'OLPINDO', NULL, 'Female', '1992-05-11', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(405, '4220032', '006', 'AGAS', 'MAYBELLE CHRISTELLE', 'RIZO', NULL, 'Female', '1994-05-29', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(406, '4220033', '006', 'COLOMA', 'JENALYN', 'LEONEN', NULL, 'Female', '1987-12-06', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(407, '4220224', '006', 'DELOS REYES', 'HANNA GRACE', 'VIRAY', NULL, 'Female', '1977-05-24', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(408, '4220225', '006', 'AGOOT', 'VALERIE JOY', 'MOSUELA', NULL, 'Female', '1995-10-25', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(409, '4220996', '006', 'PORLUCAS', 'JERRY', 'CAPITULO', NULL, 'Male', '1992-10-22', 'Single', 'Retired', NULL, '2025-11-13 10:49:27'),
(410, '4220997', '006', 'JARAMILLA', 'EVELYN', 'OSARRAGA', NULL, 'Female', '1983-03-30', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(411, '4220998', '006', 'FERNANDEZ', 'SHEILAMAY GLORY', 'SALES', NULL, 'Female', '1989-03-25', 'Widowed', 'Active', NULL, '2025-11-13 10:49:27'),
(412, '4220999', '006', 'DINGLE', 'ABIGAIL', 'LOPEZ', NULL, 'Female', '1994-09-14', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(413, '4221000', '006', 'DEL ROSARIO', 'MANUELLA GERRONE', 'ESTRADA', NULL, 'Female', '1995-11-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(414, '4221001', '006', 'DE GUZMAN', 'CARLOTA', 'MAER', NULL, 'Female', '1993-11-28', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(415, '4221002', '006', 'SALES', 'JULIET', 'VIDAÑA', NULL, 'Female', '1996-07-08', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(416, '4233669', '006', 'GARCIA', 'FEMARIE', 'MUNIO', NULL, 'Female', '1989-09-20', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(417, '4234060', '006', 'MONIS', 'JENNIFER', 'BURBANO', NULL, 'Female', '1980-01-07', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(418, '4234411', '006', 'LEONEN', 'NIDA', 'VALDEZ', NULL, 'Female', '1986-07-12', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(419, '4234600', '006', 'MORGATE', 'CLARK NEIL', 'ALLAGAY', NULL, 'Male', '1982-10-07', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(420, '4234883', '006', 'CORPUZ', 'JESUS', 'ORDINARIO', NULL, 'Male', '1989-01-04', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(421, '4235623', '006', 'MACADAEG', 'GLENNIE MAE', 'VALDEZ', NULL, 'Female', '1992-07-16', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(422, '4235624', '006', 'CACCAM', 'CHERRY', 'NILLO', NULL, 'Female', '1993-06-29', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(423, '4236467', '006', 'MANI', 'JEFFRY', 'MURAO', NULL, 'Male', '1995-04-18', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(424, '4236679', '006', 'MOSUELA', 'ERIC', 'DOMINGO', NULL, 'Male', '1980-12-07', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(425, '4236680', '006', 'MACABITAS', 'JONNALYN', 'SANTIAGO', NULL, 'Female', '1994-04-05', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(426, '4237099', '006', 'CARIDO', 'ANGELYN', 'LEONEN', NULL, 'Female', '1993-02-06', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(427, '4237104', '006', 'SIBAYAN', 'RONELLA FRANCESCA', 'STA. ROMANA', NULL, 'Female', '1996-03-27', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(428, '4237250', '006', 'GABUAT', 'MARLON', 'BASILIO', NULL, 'Male', '1980-08-18', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(429, '4237251', '006', 'PARAMI', 'ELLYN', 'MONDEJAR', NULL, 'Female', '1985-01-16', 'Single', 'Retired', NULL, '2025-11-13 10:49:27'),
(430, '4237252', '006', 'MIFA', 'JOEL', 'VALDEZ', NULL, 'Male', '1990-09-28', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(431, '4238208', '006', 'OLPINDO', 'MARIA TERESA', 'NAVALTA', NULL, 'Female', '1972-08-08', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(432, '4238478', '006', 'MANANTAN', 'MARILOU', 'BRAVO', NULL, 'Female', '1981-12-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(433, '4238721', '006', 'SOMERA', 'GEMMA', 'RAMOS', NULL, 'Female', '1978-07-07', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(434, '4238722', '006', 'TOLENTINO', 'MARIANITA', 'RODRIGUEZ', NULL, 'Female', '1982-09-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(435, '4239686', '006', 'MORGATE', 'MARY ANN', 'MALANO', NULL, 'Female', '1992-11-24', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(436, '4239687', '006', 'RAMOS', 'DONABEL', 'NONES', NULL, 'Female', '1992-06-01', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(437, '4239894', '006', 'GUADILLA', 'NEIL JERINA', 'OLPINDO', NULL, 'Female', '1993-12-13', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(438, '4240225', '006', 'NERONA', 'DOMINIC', 'ORDONO', NULL, 'Male', '1995-09-12', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(439, '4240824', '006', 'MANANGAN', 'JOHN RAY', 'MARTIN', NULL, 'Male', '1997-03-07', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(440, '4241375', '006', 'CABRADILLA', 'JESIEL JOY', 'CORPUZ', NULL, 'Female', '1988-12-31', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(441, '4241376', '006', 'RINGOR', 'KEZIA CARL', 'ESTRADA', NULL, 'Female', '1992-06-28', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(442, '4241377', '006', 'MAALA', 'CHARITO', 'MONIS', NULL, 'Female', '1970-08-08', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(443, '4241378', '006', 'RUIZ', 'LARA JOY', 'RENTUTAR', NULL, 'Female', '1993-04-14', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(444, '4241379', '006', 'VILLANUEVA', 'RONNIE', 'TIENZO', NULL, 'Male', '1992-04-11', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(445, '4241951', '006', 'ANDALLO', 'LEVIE', 'MURAO', NULL, 'Male', '1998-06-08', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(446, '4241952', '006', 'CASTUERAS', 'ANGELIQUE MAE', 'PARTIBLE', NULL, 'Female', '1996-07-12', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(447, '4241960', '006', 'MUNIO', 'CHRISTIAN JOY', 'ORPIA', NULL, 'Male', '1998-07-22', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(448, '4242305', '006', 'LUCERO', 'EDMON', 'MIFA', NULL, 'Male', '1985-08-20', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(449, '4242545', '006', 'AGAS', 'ANDREA JOYCE', 'FLORDELIZA', NULL, 'Female', '1996-10-03', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(450, '4242547', '006', 'MON', 'ARVIE', 'MARTOS', NULL, 'Male', '1991-05-03', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(451, '4243228', '006', 'MIFA', 'GRACE', 'MAGANIS', NULL, 'Female', '1992-01-16', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(452, '4243229', '006', 'LIZARDO', 'DAWN', 'MAMORNO', NULL, 'Female', '1997-08-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(453, '4243711', '006', 'MARAÑA', 'LERMA', 'MONIS', NULL, 'Female', '1997-10-10', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(454, '4243712', '006', 'MARQUEZ', 'DONNA MAE', 'MANANGAN', NULL, 'Female', '1997-05-06', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(455, '4243720', '006', 'MONIS', 'ABIGAIL', 'MAALLA', NULL, 'Female', '1998-01-25', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(456, '4245066', '006', 'BUSCAS', 'DARYL', 'DOCLARA', NULL, 'Female', '1998-02-07', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(457, '4245130', '006', 'PABONA', 'ANGIELYN', 'NAVOR', NULL, 'Female', '1994-04-01', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(458, '4245487', '006', 'BUCCAT', 'SYRA', 'UJANO', NULL, 'Female', '1991-11-16', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(459, '4245962', '006', 'BAYSA', 'FRANCIS JAY', 'CASTRO', NULL, 'Male', '1993-01-13', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(460, '4246289', '006', 'AGOOT', 'MARIA TERESA', 'OSIAS', NULL, 'Female', '1999-07-16', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(461, '4246652', '006', 'CARIÑO', 'ANGELIKA MAE', 'JIMENEZ', NULL, 'Female', '1997-11-04', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(462, '4246753', '006', 'SABADO', 'SARAH JANE', 'LUCINA', NULL, 'Female', '2000-02-23', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(463, '4246944', '006', 'MADIAM', 'MARIE JOY', 'PASCUAL', NULL, 'Female', '1984-12-25', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(464, '4246963', '006', 'VILLANUEVA', 'CLEYTHON', 'MUECA', NULL, 'Male', '1994-11-11', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(465, '4248448', '006', 'NOTO', 'JHERELYN', 'ABELLA', NULL, 'Female', '1997-10-28', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(466, '4248451', '006', 'NAVALTA', 'LUCELLE', 'CORONEL', NULL, 'Female', '1985-11-22', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(467, '4248452', '006', 'DE FIESTA', 'ARJIE', 'NOTO', NULL, 'Male', '1997-09-01', 'Single', 'Active', NULL, '2025-11-13 10:49:27'),
(468, '4564627', '006', 'LUCINA', 'NATIVIDAD', 'MAYNES', NULL, 'Female', '1970-11-08', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(469, '4566168', '006', 'SIBAYAN', 'FRANCIS CHRISTOPHER', 'R', NULL, 'Male', '1979-07-04', 'Married', 'Active', NULL, '2025-11-13 10:49:27'),
(470, '4566214', '006', 'PAJARILLO', 'MARY ANN', 'LAISA', NULL, 'Female', '1982-04-25', 'Married', 'Active', NULL, '2025-11-13 10:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `apptID` int(11) NOT NULL,
  `empNum` mediumint(7) UNSIGNED ZEROFILL NOT NULL,
  `natureAppt` enum('Original','Latest Promotion','Transfer','') NOT NULL,
  `dateAppt` date NOT NULL,
  `appt_PlantllaItem` varchar(60) NOT NULL,
  `posTitle` int(11) NOT NULL,
  `appt_SG` tinyint(2) NOT NULL,
  `posAnnualSalary` int(11) NOT NULL,
  `apptStatus` enum('Permanent','Temporary','Provisional','Substitute','Co-terminous','Casual','Contractual','') NOT NULL,
  `appt_plantillaSource` set('Elementary','Secondary','Division Office','Senior High School') NOT NULL,
  `appt_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `appt_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign`
--

CREATE TABLE `tbl_assign` (
  `assign_id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `empNum` mediumint(7) NOT NULL,
  `assign_type` enum('School Head','Teacher') NOT NULL,
  `assign_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sch_id` tinyint(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(60) NOT NULL,
  `dist_supvrname` varchar(60) NOT NULL,
  `dist_municipality` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `empId` int(11) NOT NULL,
  `apptID` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `emp_staCode` smallint(3) UNSIGNED ZEROFILL NOT NULL,
  `empNum` mediumint(7) UNSIGNED ZEROFILL NOT NULL,
  `lname` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `mname` varchar(60) NOT NULL,
  `empDOB` date NOT NULL,
  `emp_gender` set('Male','Female') NOT NULL,
  `emp_cStatus` set('Single','Married','Divorced','Legally-Separated') NOT NULL,
  `empStatus` enum('Active','Inactive','','') NOT NULL DEFAULT 'Active',
  `emp_remarks` text NOT NULL,
  `emp_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`empId`, `apptID`, `pos_id`, `emp_staCode`, `empNum`, `lname`, `fname`, `mname`, `empDOB`, `emp_gender`, `emp_cStatus`, `empStatus`, `emp_remarks`, `emp_datetimeAdded`) VALUES
(1, 0, 0, 000, 0000456, 'POSAS', 'PAUL JUSTINE', 'APOLONIO', '1994-04-11', 'Male', 'Married', 'Active', 'New Employee', '2025-09-08 00:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leavecard`
--

CREATE TABLE `tbl_leavecard` (
  `lc_id` int(11) NOT NULL,
  `empNum` mediumint(7) UNSIGNED ZEROFILL NOT NULL,
  `lc_dateperiodStart` date NOT NULL,
  `lc_dateperiodEnd` date NOT NULL,
  `lc_particulars` text NOT NULL,
  `lc_type` enum('Vacation Leave','Sick Leave','Personal Leave','Special Privilege Leave','Maternity Leave','Solo Parent Leave','Rehabilitation Leave','Paternity Leave','Special Leave Benefits for Women','Terminal Leave','Adoption Leave','Calamity Leave','CTO/COC') NOT NULL,
  `lc_noOfDays` smallint(5) UNSIGNED NOT NULL,
  `lc_absenceStat` enum('With Pay','Without Pay') NOT NULL,
  `lc_pvpDays` smallint(6) NOT NULL,
  `lc_remarks` text NOT NULL,
  `lc_notes` text NOT NULL,
  `lc_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_leavecard`
--

INSERT INTO `tbl_leavecard` (`lc_id`, `empNum`, `lc_dateperiodStart`, `lc_dateperiodEnd`, `lc_particulars`, `lc_type`, `lc_noOfDays`, `lc_absenceStat`, `lc_pvpDays`, `lc_remarks`, `lc_notes`, `lc_datetimeAdded`) VALUES
(1, 4190076, '2017-09-13', '2017-10-12', '', 'Sick Leave', 30, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(2, 4190076, '2025-10-29', '2025-11-11', '', 'Special Leave Benefits for Women', 14, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(3, 4190076, '2017-11-13', '2017-11-13', '', 'Sick Leave', 1, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(4, 4190076, '2024-03-14', '2024-03-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(5, 4190076, '2013-06-12', '2013-08-01', '', 'Sick Leave', 51, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(6, 4190076, '2012-07-09', '2012-09-16', '', 'Maternity Leave', 50, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(7, 4190076, '2017-07-05', '2017-08-11', '', 'Sick Leave', 37, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(8, 4190076, '2017-07-03', '2017-07-05', '', 'Sick Leave', 3, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(9, 4190076, '2014-01-20', '2014-01-22', '', 'Sick Leave', 3, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(10, 4190076, '2025-01-15', '2025-01-15', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(11, 4190076, '2013-01-07', '2013-03-07', '', 'Vacation Leave', 60, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(12, 4190076, '2017-08-14', '2017-09-12', '', 'Sick Leave', 30, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(13, 4190076, '2013-08-04', '2013-10-26', '', 'Maternity Leave', 60, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(14, 4190076, '2019-09-10', '2019-09-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(15, 4190076, '2019-10-14', '2019-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(16, 4190076, '2019-10-16', '2019-10-16', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(17, 4190076, '2022-06-01', '2022-06-01', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(18, 4190076, '2023-04-25', '2023-04-25', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(19, 4190076, '2023-09-11', '2023-09-11', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(20, 4190076, '2023-10-19', '2023-10-19', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(21, 4190076, '2024-01-04', '2024-01-04', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(22, 4190076, '2024-01-10', '2024-01-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(23, 4190076, '2011-07-02', '2011-07-02', '', 'Sick Leave', 1, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(24, 4190076, '2013-06-03', '2013-06-11', '', 'Sick Leave', 9, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(27, 4106676, '2025-10-01', '2025-12-30', '', 'Terminal Leave', 56, 'With Pay', 11, 'with 11 PVP days earned (Dec 20, 2025 - Dec 30, 2025)', '', '2025-11-06 07:11:17'),
(28, 4106676, '2025-10-01', '2025-12-19', '', 'Terminal Leave', 56, 'With Pay', 11, 'with 11 PVP days earned (Dec 20, 2025 - Dec 30, 2025)', '', '2025-11-06 06:56:41'),
(29, 4106676, '2025-09-15', '2025-09-20', '', 'Sick Leave', 6, 'With Pay', 0, '', '', '2025-11-06 06:56:41'),
(32, 4194939, '2025-11-01', '2025-12-19', '', 'Sick Leave', 49, 'Without Pay', 12, 'with 12 PVP days earned (Dec 20, 2025 - Dec 31, 2025)', '', '2025-11-07 04:22:04'),
(33, 4194939, '2025-06-16', '2025-07-31', '', 'Sick Leave', 34, 'With Pay', 0, '', '', '2025-11-07 04:22:04'),
(34, 4207668, '2025-10-09', '2025-10-09', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(35, 4207668, '2025-10-10', '2025-10-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(36, 4207668, '2025-10-13', '2025-10-14', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(37, 4113397, '2026-01-05', '2026-01-06', '', 'Vacation Leave', 2, 'Without Pay', 16, 'with 16 PVP days earned (Dec 20, 2025 - Jan 04, 2026)', '', '2025-11-12 01:25:41'),
(85, 0013930, '2025-11-10', '2025-12-09', '', 'Sick Leave', 21, 'With Pay', 0, '', '', '2025-11-13 03:11:46'),
(86, 4243228, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(87, 4220225, '2025-10-07', '2025-10-07', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(88, 4205603, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(89, 4204755, '2025-10-14', '2025-10-15', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(90, 4202387, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(91, 4191586, '2025-10-07', '2025-10-07', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(92, 4215874, '2025-10-20', '2025-10-20', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(93, 4241378, '2025-10-14', '2025-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(94, 4248448, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(95, 4239686, '2025-10-06', '2025-10-06', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(96, 0013930, '2025-10-14', '2025-10-17', '', 'Sick Leave', 4, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(97, 0013930, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(98, 0013930, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(99, 4220224, '2025-10-10', '2025-10-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(100, 4203108, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(101, 4241960, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(102, 4212270, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(103, 4201096, '2025-10-02', '2025-10-02', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(104, 4201096, '2025-10-09', '2025-10-09', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(105, 4197580, '2025-10-21', '2025-10-22', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(106, 4198872, '2025-10-02', '2025-10-02', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(107, 0006690, '2025-10-17', '2025-10-17', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(108, 4192289, '2025-10-06', '2025-10-06', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(109, 4119701, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(110, 4207649, '2025-10-09', '2025-10-09', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(111, 4189653, '2025-10-15', '2025-10-15', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(112, 4234883, '2025-10-14', '2025-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(113, 4192528, '2025-10-23', '2025-10-23', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(114, 4193653, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(115, 0019070, '2025-10-02', '2025-10-02', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(116, 4193920, '2025-10-20', '2025-10-23', '', 'Sick Leave', 4, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(117, 4213834, '2025-10-08', '2025-10-09', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(118, 4237099, '2025-10-23', '2025-10-23', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(119, 4238722, '2025-10-30', '2025-12-28', '', 'Special Leave Benefits for Women', 60, 'Without Pay', 0, '', '', '2025-11-13 08:52:59'),
(120, 4241379, '2025-10-13', '2025-10-13', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 08:52:59'),
(121, 4202035, '2025-10-16', '2025-10-16', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 08:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lwops`
--

CREATE TABLE `tbl_lwops` (
  `lwop_id` int(11) NOT NULL,
  `lwop_type` enum('Sick Leave','Vacation Leave','Personal Leave','') NOT NULL,
  `lwop_datestart` date NOT NULL,
  `lwop_dateend` date NOT NULL,
  `lwop_noOfDays` mediumint(9) NOT NULL,
  `lwop_remarks` text NOT NULL,
  `lwop_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_positions`
--

CREATE TABLE `tbl_positions` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(60) NOT NULL,
  `pos_sg` tinyint(2) NOT NULL DEFAULT 1,
  `pos_step` tinyint(1) NOT NULL,
  `pos_status` enum('active','inactive','') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schools`
--

CREATE TABLE `tbl_schools` (
  `sch_id` tinyint(4) NOT NULL,
  `sch_name` varchar(100) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `sch_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_srecords`
--

CREATE TABLE `tbl_srecords` (
  `srId` int(11) NOT NULL,
  `empNum` mediumint(7) NOT NULL,
  `sr_datefrom` date NOT NULL,
  `sr_dateto` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `apptID` int(11) NOT NULL,
  `sr_remarks` text NOT NULL,
  `sr_branch` enum('Nat''l','Prov''l','Mun''l','') NOT NULL,
  `sr_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`apptID`);

--
-- Indexes for table `tbl_assign`
--
ALTER TABLE `tbl_assign`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `tbl_leavecard`
--
ALTER TABLE `tbl_leavecard`
  ADD PRIMARY KEY (`lc_id`);

--
-- Indexes for table `tbl_lwops`
--
ALTER TABLE `tbl_lwops`
  ADD PRIMARY KEY (`lwop_id`);

--
-- Indexes for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_schools`
--
ALTER TABLE `tbl_schools`
  ADD PRIMARY KEY (`sch_id`);

--
-- Indexes for table `tbl_srecords`
--
ALTER TABLE `tbl_srecords`
  ADD PRIMARY KEY (`srId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `apptID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assign`
--
ALTER TABLE `tbl_assign`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_leavecard`
--
ALTER TABLE `tbl_leavecard`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tbl_lwops`
--
ALTER TABLE `tbl_lwops`
  MODIFY `lwop_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_schools`
--
ALTER TABLE `tbl_schools`
  MODIFY `sch_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_srecords`
--
ALTER TABLE `tbl_srecords`
  MODIFY `srId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
