-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 01:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purchase_order_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_itemlist`
--

CREATE TABLE `backup_itemlist` (
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` int(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `schedule_id` int(5) NOT NULL,
  `status` enum('0','1','2') NOT NULL COMMENT '0=pending,1=approved,2=reject/delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `gender`, `address`, `contact`, `schedule_id`, `status`) VALUES
(57, 'Jason', 'Yecyec', 'jasonyecyec@gmail.com', 'male', '5 BigHorseshoe Drive, Cubao', '09216732715', 1, '1'),
(58, 'John Renzo', 'Crisostomo', 'johnrenzo.crisostomo07@gmail.com', 'male', '#20 B. Carnation St. Torres Subd. Banlat Rd.', '09086447418', 1, '1'),
(59, 'Jason', 'Yecyec', 'jason.yecyec023@gmail.com', 'male', '5 BigHorseshoe Drive, Cubao', '09216732715', 0, '0'),
(60, 'Aldrin', 'De Vera', 'aldrindevera412@gmail.com', 'male', 'sitio looban duhat st. greenfields 1', '09193371115', 2, '1'),
(61, 'Agatha Cyril', 'Medina', 'agathacyril.medina24@gmail.com', 'female', '99 Nawasa Road Veterans Village, Pasong Tamo Quezon City', '09615409788', 1, '1'),
(62, 'Alexandra Marie', 'Pareja', 'alexmarie0513@gmail.com', 'female', 'Sauyo, Novaliches, Quezon City', '09566119147', 1, '1'),
(63, 'Christian Amiel', 'Dela Cruz', 'christianamiel17@gmail.com', 'male', 'Santol, Malolos, Bulacan', '09184912085', 1, '1'),
(64, 'Shine', 'Tacsiat', 'shine.tacsiat09@gmail.com', 'female', 'Novaliches, Quezon City', '09123456789', 2, '1'),
(65, 'Dave Flourenz', 'Amit', 'daveflourenz.amit23@gmail.com', 'male', 'Pasong Tamo, Quezon City', '09269987023', 1, '1'),
(66, 'Angelica', 'Guiyab', 'angelica.guiyab023@gmail.com', 'female', 'Novaliches, QC', '09558603891', 1, '1'),
(67, 'Jerome', 'Chua', 'jerome.chua06@gmail.com', 'male', 'C5 Quezon City', '09380533018', 2, '1'),
(68, 'Whacky', 'Maliwat', 'Maliwatwhacky01@gmail.com', 'male', 'Bl7 lot 13 YALONG ST. (MARIHIT DR.) MALIGAYA capitol parklan', '09453371027', 1, '1'),
(69, 'Alfie Lindon', 'Adrales', 'alfielindon.adrales@gmail.com', 'male', '23 USAFFE Road, Veterans Village, Holy Spirit Q.C.', '09973007793', 1, '1'),
(70, 'Rochelle', 'Macatiag', 'rochelle.pabilane30@gmail.com', 'female', '318 Nawasa Road, Veterans Village Pasong Tamo Q.C.', '09192149003', 1, '1'),
(71, 'Czernest', 'Custodio', 'czernestcustodio@gmail.com', 'male', 'Blk 45 Lot 32 Tatlong Hari St. Lagro Subd. Q.C', '09293547044', 1, '1'),
(72, 'Pau', 'Castro', 'castro.paulo5.00@gmail.com', 'male', '#14 katuparan st batasan hills q.c', '09810851408', 1, '1'),
(73, 'Johny', 'Oghayon', 'johny.oghayon14@gmail.com', 'male', 'Blk 54 Lot 15 SRCC-Magic Circle Housing, Pingkian 2, Pasong ', '09707951615', 2, '1'),
(74, 'John Renzo', 'Crisostomo', '3gclothingline@gmail.com', 'male', '#20 B. Carnation St. Torres Subd. Banlat Rd.', '09086447418', 1, '1'),
(75, 'Stephanie Grace', 'Villafuerte', 'stephaniegrace.villafuerte16@gmail.com', 'female', '#114 Orchids St. Payatas A. Quezon City', '09156771405', 1, '1'),
(76, 'Shiela Mae', 'Morallos', 'shielamorallos429@gmail.com', 'female', 'Pasong Tamo, Quezon City', '09128477653', 1, '1'),
(77, 'Dhel', 'Cabahug', 'dhelcabahug123@gmail.com', 'male', '21Verbena Street West Fairview Quezon City', '09517559797', 1, '1'),
(78, 'Kristine', 'Baja', 'baja.kristine19@gmail.com', 'female', 'Holy Spirit, Quezon City', '09463549761', 2, '1'),
(79, 'Princess Julla', 'Fallaria', 'princessjulla.fallaria@gmail.com', 'female', 'Kapalaran St. Litex Barangay Commonwealth', '09051876373', 2, '1'),
(80, 'John Kenneth', 'Bitoon', 'johnkenneth.bitoon5@gmail.com', 'male', '3349 MRB Compound Brgy. Commonwealth, Quezon City', '09462605117', 1, '1'),
(81, 'Nadine', 'Pimentel', 'nadine.pimentel3002@gmail.com', 'female', '17 Wagner st, Quezon City', '09951703362', 2, '1'),
(82, 'Milandro', 'Uy', 'milandro.uy0108@gmail.com', 'male', 'Blk. 4 Lot 13  Natividad St. Brgy. Sta. Lucia Novaliches Que', '09957256429', 1, '1'),
(83, 'Shyrell Patricia', 'Coballes', 'shyrellpatricia.coballes@gmail.com', 'female', '13 Sampaloc St. Old Cabuyao Brgy. Sauyo Quezon City', '09104145293', 1, '1'),
(84, 'Shyrell Patricia', 'Coballes', 'coballesshyrell@gmail.com', 'female', '13 Sampaloc St. Old Cabuyao Brgy. Sauyo Quezon City', '09104145293', 0, '0'),
(85, 'Melchor', 'Acilo', 'acilo.melchor021@gmail.com', 'male', '13 blk a sto nino brgy. san antonio sfdm q.c', '09083265512', 1, '1'),
(86, 'Johnny Frey', 'Balubal', 'johnnyfreybalubal02@gmail.com', 'male', 'Bocaue Bulacan', '09069619957', 1, '1'),
(87, 'Quenie Elaiza', 'Narisma', 'quenieelaiza.narisma08@gmail.com', 'female', 'blk2 lot36 talisayan st. maligaya park qc', '09158886125', 1, '1'),
(88, 'Cristian', 'Ramiscal', 'cristian.ramiscal67@gmail.com', 'male', '31 Commodore St Veterans Village Brgy Holy Spirit QC', '09707085729', 1, '1'),
(89, 'Jan Michael Vincent', 'Aristorenas', 'jan.michael.aristorenas@gmail.com', 'male', '346 Ramoy Compound Sangandaan Qc', '09614502252', 1, '1'),
(90, 'Eric Johnes', 'Delos Reyes', 'ericjohnesdelosreyes@gmail.com', 'male', 'B12 L29 Poinsenttia St. Bf Homes 3 Deparo', '09358376997', 1, '1'),
(91, 'Shaira', 'Balosa', 'shairalyn.balosa024@gmail.com', 'female', '#31 Mabituan Street Barangay Masambong', '09568707568', 1, '1'),
(92, 'Justin Daniel', 'de Jesus', 'justindanieldejesus4@gmail.com', 'male', 'Bgy. Kaligayahan, Q.C.', '09365374128', 1, '1'),
(93, 'Cedrick John', 'Rojas', 'rojas.cedrickjohn05@gmail.com', 'male', 'B5 L10 Champaca St. Maligaya Subd, QC', '09494036643', 1, '1'),
(94, 'Rowell', 'Sumpay', 'rowellsumpay2@gmail.com', 'male', '212 Pacamara Street. Barangay Commonwealth Quezon City', '639564687851', 2, '1'),
(95, 'Mark jay', 'Bares', 'bares.markjay01@gmail.com', 'male', 'Kapalaran', '09125412189', 1, '1'),
(96, 'John Lester', 'Acerdano', 'johnlester.acerdano@gmail.com', 'male', '17 Aloevera Street Payatas A. Quezon City', '09074489981', 1, '1'),
(97, 'John Red', 'Cabato', 'johnred.cabato18@gmail.com', 'male', '#10 Everlasting Street, Brgy. Batasan Hills, Quezon City', '09460743379', 0, '0'),
(98, 'Precious', 'Baylon', 'baylon.precios.pentinio@gmail.com', 'female', '#22H. Saint Joseph Street, Brgy. Holy Spirit Quezon City', '09763711084', 1, '1'),
(99, 'Precious', 'Baylon', 'starbaylon263@gmail.com', 'female', '#22H. Saint Joseph Street, Brgy. Holy Spirit Quezon City', '09763711084', 0, '0'),
(100, 'Jayron', 'Borrinaga', 'jayron.borrinaga013@gmail.com', 'male', 'Bulacan St. Group 3, Area B, Brgy. Payatas Quezon City.', '09958315356', 1, '1'),
(101, 'Javez Xavier', 'Ibay', 'ibayjavezxavier@gmail.com', 'male', '149. P. Dela Cruz St. San Bartolome Novaliches  Quezon City', '09510194303', 1, '1'),
(102, 'Jesse', 'Cunanan', 'jesse.cunanan182@gmail.com', 'female', 'Block 11 Lot 36 Sugartowne Batasan Hills Quezon City', '09260266594', 1, '1'),
(103, 'Athena Renevieve', 'Loreno', 'athena.loreno023@gmail.com', 'female', 'B5 L1 Junji St. Rolling Hills Subd. Brgy. Kaligayahan, Nova.', '09635995060', 1, '1'),
(104, 'Jasper', 'Ramos', 'jasperramos023@gmail.com', 'male', '1252 flora vista. commonwealth, Quezon City', '09270883870', 2, '1'),
(105, 'May Lee', 'Fiecas', 'maylee.fiecas177@gmail.com', 'female', '#31 Kalayaan C Ext. Libis Compound', '09615911906', 1, '1'),
(106, 'Marence Dainiel', 'Alonzo', 'marencedainielalonzo@gmail.com', 'male', 'B7 L9 Princess Anne St. Nagkaisang Nayon Q.C', '09773622259', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(11) NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `resume_path` varchar(60) NOT NULL,
  `picture_path` varchar(100) NOT NULL,
  `sss` enum('0','1') DEFAULT NULL,
  `pagibig` enum('0','1') DEFAULT NULL,
  `philhealth` enum('0','1') DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `rate_per_hour` int(11) DEFAULT NULL,
  `overtime_hours` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `date_hired` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `position` varchar(50) NOT NULL,
  `department_position` varchar(60) NOT NULL,
  `employee_type` varchar(60) NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `num_hr` int(50) NOT NULL,
  `over_time` int(20) NOT NULL,
  `vacation_leave` int(11) NOT NULL,
  `sick_leave` varchar(60) NOT NULL,
  `health_insurance` varchar(60) NOT NULL,
  `christmas_bonus` varchar(60) NOT NULL,
  `food_allowance` varchar(60) NOT NULL,
  `transpo_allowance` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `resume_name`, `resume_path`, `picture_path`, `sss`, `pagibig`, `philhealth`, `salary`, `rate_per_hour`, `overtime_hours`, `department`, `date_applied`, `date_hired`, `employee_id`, `position`, `department_position`, `employee_type`, `branch`, `num_hr`, `over_time`, `vacation_leave`, `sick_leave`, `health_insurance`, `christmas_bonus`, `food_allowance`, `transpo_allowance`) VALUES
(1, 'Jason Yecyec_2023-03-20 - payslip', '644729c2a56993.53986227.pdf', '644729c2a56a72.73255356.jpg', '1', '1', '1', NULL, 183, NULL, 'human-resource', '2023-04-25 09:15:46', '2023-04-25 09:24:08', 57, 'admin', 'HR Assistant', 'regular', 'Cubao', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(2, 'Crisostomo-John-Renzo-M', '64472be4806e75.27781835.pdf', '64472be4806f52.46398511.png', '1', '1', '1', NULL, 1071, NULL, 'human-resource', '2023-04-25 09:24:52', '2023-04-25 09:26:58', 58, 'admin', 'HR Director', 'regular', 'Tandang sora', 8, 0, 15, '60', '1', '1', '1500', '1500'),
(3, 'Jason Yecyec_2023-03-20 - payslip', '64472da2542ac0.62939681.pdf', '64472da2542bd2.79107451.png', NULL, NULL, NULL, NULL, NULL, NULL, 'human-resource', '2023-04-25 09:32:18', NULL, 59, '', '', '', NULL, 0, 0, 0, '', '', '', '', ''),
(4, 'De Vera Aldrin A', '64472efb58c707.37536470.pdf', '64472efb58c7f3.42500892.jpg', '1', '1', '1', NULL, 425, NULL, 'human-resource', '2023-04-25 09:38:03', '2023-04-25 09:40:11', 60, 'employee', 'Safety Manager', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(5, 'CV-AgathaCyrilMedina ', '64473629c6fc91.81145681.pdf', '64473629c6fde8.43477056.jpg', '1', '1', '1', NULL, 248, NULL, 'human-resource', '2023-04-25 10:08:41', '2023-04-25 10:49:45', 61, 'employee', 'Personal Manager', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(6, 'Pareja, Alexandra Marie C', '64473fee200f61.12600524.pdf', '64473fee201060.86200887.jpg', '1', '1', '1', NULL, 253, NULL, 'human-resource', '2023-04-25 10:50:22', '2023-04-26 07:30:23', 62, 'employee', 'Recruiter', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(7, 'Work-Resume', '6447414e3f8117.66087626.pdf', '6447414e3f8212.62638490.jpg', '1', '1', '1', NULL, 227, NULL, 'human-resource', '2023-04-25 10:56:14', '2023-04-26 07:29:46', 63, 'employee', 'Staffing Specialist', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(8, 'Tacsiat_Resume', '644744b79e8787.22034854.pdf', '644744b79e8889.52627334.jpeg', '1', '1', '1', NULL, 211, NULL, 'human-resource', '2023-04-25 11:10:47', '2023-04-26 07:32:08', 64, 'employee', 'Staffing Coordinator', 'regular', 'Tandang sora', 3, 0, 15, '60', '1', '1', '1000', '1000'),
(9, 'Dave Flourenz Amit - Virtual Resume', '644867971a8d98.92525580.pdf', '644867971a8e62.63838010.jpg', '1', '1', '1', NULL, 200, NULL, 'human-resource', '2023-04-26 07:51:51', '2023-04-26 07:54:47', 65, 'admin', 'HR Administrator', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '0', '0'),
(10, 'Resume', '644895ec40ceb3.83514037.pdf', '644895ec40d016.98558532.jpg', '1', '1', '1', NULL, 265, NULL, 'human-resource', '2023-04-26 11:09:32', '2023-04-26 16:26:52', 66, 'employee', 'HR Analyst', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(11, 'Food Delivery App', '6448ed500a4213.31085415.pdf', '6448ed500a4382.64248858.jpg', '1', '1', '1', NULL, 443, NULL, 'human-resource', '2023-04-26 17:22:24', '2023-04-26 17:23:44', 67, 'admin', 'HR Manager', 'regular', 'Quezon City', 22, 0, 15, '60', '1', '1', '1500', '1500'),
(12, 'Resume', '6448ed59570d35.45697019.pdf', '6448ed59570da0.70641690.jpg', '1', '1', '1', NULL, 200, NULL, 'human-resource', '2023-04-26 17:22:33', '2023-04-26 17:24:02', 68, 'employee', 'HR Associate', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(13, 'Adrales_ResumeM', '6448f1a4a7ab55.07738147.pdf', '6448f1a4a7acb1.96135722.jpg', '1', '1', '1', NULL, 701, NULL, 'human-resource', '2023-04-26 17:40:52', '2023-04-26 18:03:58', 69, 'employee', 'Employee Relations Manager', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(14, 'Macatiag-Resume', '6448f3ead94312.67569726.pdf', '6448f3ead944c1.33149894.jpg', '1', '1', '1', NULL, 196, NULL, 'human-resource', '2023-04-26 17:50:34', '2023-04-26 18:04:32', 70, 'employee', 'HR Representative', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(15, 'Custodio,Czernest_Resume', '64490eaf1e8cb4.11030610.pdf', '64490eaf1e8de4.57525585.jpg', '1', '1', '1', NULL, 83, NULL, 'sales', '2023-04-26 19:44:47', '2023-04-26 23:17:24', 71, 'admin', 'Sales Manager', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(17, 'Resume', '644a31d96d0553.09414568.pdf', '644a31d96d0652.44024112.png', '1', '1', '1', NULL, 500, NULL, 'purchaser', '2023-04-27 16:27:05', '2023-04-29 09:34:18', 73, 'admin', 'Program Manager', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(19, 'Villafuerte_Resume', '644b7f9c80b568.97015417.pdf', '644b7f9c80b6c7.74345810.jpg', '1', '1', '1', NULL, 45, NULL, 'sales', '2023-04-28 16:11:08', '2023-04-29 09:36:58', 75, 'employee', 'Cash Registry Operator 1', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(20, 'inbound5940579721925016665', '644bc0774a9550.31455269.pdf', '644bc0774a9757.16812142.png', '1', '1', '1', NULL, 45, NULL, 'sales', '2023-04-28 20:47:51', '2023-04-29 09:37:44', 76, 'employee', 'Cash Registry Operator 2', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(21, 'Cabahug, Dhel O', '644bc8051dded6.42521876.pdf', '644bc8051de008.31860462.jpg', '1', '1', '1', NULL, 45, NULL, 'sales', '2023-04-28 21:20:05', '2023-04-29 09:42:40', 77, 'employee', 'Customer Service Representative 1', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(22, 'Baja-Kristine-Resume', '644bd497a43379.83805714.pdf', '644bd497a43468.29815625.jpg', '1', '1', '1', NULL, 45, NULL, 'sales', '2023-04-28 22:13:43', '2023-04-29 09:39:01', 78, 'employee', 'Cash Registry Operator 4', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(23, 'Julla-resume', '644bd7dd5c64a6.78909585.pdf', '644bd7dd5c65d2.57887336.jpg', '1', '1', '1', NULL, 45, NULL, 'sales', '2023-04-28 22:27:41', '2023-04-29 09:38:28', 79, 'employee', 'Cash Registry Operator 3', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(24, 'Resume', '644cc5960d2047.43136475.pdf', '644cc5960d2142.41115166.jpg', '1', '1', '1', NULL, 150, NULL, 'sales', '2023-04-29 15:21:58', '2023-04-30 10:00:30', 80, 'admin', 'Data Analyst 1', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(25, 'nadine_pimentel_resume_samp - Google Docs', '644e4032334581.20169722.pdf', '644e4032334650.26173711.jpeg', '1', '1', '1', NULL, 150, NULL, 'sales', '2023-04-30 18:17:22', '2023-05-01 09:25:26', 81, 'admin', 'Data Analyst 2', 'regular', 'Tandang sora', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(26, 'UY, MILANDRO - RESUME ', '644fc9e0b1beb8.61484566.pdf', '644fc9e0b1c0e0.71559027.jpeg', '1', '1', NULL, NULL, 100, NULL, 'purchaser', '2023-05-01 22:17:04', '2023-05-02 21:55:54', 82, 'employee', 'Purchasing Agent', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(27, 'Coballes-Shyrell-Patricia-P', '6450669d312644.89144119.pdf', '6450669d3127a3.60262504.jpg', '1', '1', '1', NULL, 100, NULL, 'purchaser', '2023-05-02 09:25:49', '2023-05-03 07:02:21', 83, 'employee', 'Purchasing Associate', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(28, 'Coballes-Shyrell-Patricia-P', '64506715d6ef30.97820682.pdf', '64506715d6f038.14110149.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'purchaser', '2023-05-02 09:27:49', NULL, 84, '', '', '', NULL, 0, 0, 0, '', '', '', '', ''),
(29, 'ACILO_RESUME', '645067fdd8c0e9.20337963.pdf', '645067fdd8c253.17433243.jpg', '1', '1', '1', NULL, 100, NULL, 'purchaser', '2023-05-02 09:31:41', '2023-05-02 21:57:14', 85, 'employee', 'Purchasing Assistant', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(30, 'inbound8603274645162337488', '645068b0da38a4.28304263.pdf', '645068b0da3980.05338366.jpg', '1', '1', '1', NULL, 75, NULL, 'purchaser', '2023-05-02 09:34:40', '2023-05-02 21:58:16', 86, 'employee', 'Purchasing Clerk', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(31, 'NARISMA_RESUME', '645068c8385350.23090488.pdf', '645068c8385462.52758247.jpg', '1', '1', '1', NULL, 100, NULL, 'purchaser', '2023-05-02 09:35:04', '2023-05-02 21:59:28', 87, 'employee', 'Purchasing Associate', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(32, 'Ramiscal-Cristian-S', '64506954080320.56450444.pdf', '645069540803b2.69597753.png', '1', '1', '1', NULL, 443, NULL, 'purchaser', '2023-05-02 09:37:24', '2023-05-02 22:00:00', 88, 'admin', 'Procurement Manager', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(33, 'Vincent-Aristorenas-Resume', '645069e335c977.68377822.pdf', '645069e335ca86.44981137.jpeg', '1', '1', '1', NULL, 75, NULL, 'purchaser', '2023-05-02 09:39:47', '2023-05-02 22:00:46', 89, 'employee', 'Purchasing Clerk', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(34, 'Delos-Reyes-Resume', '64506a0a489aa0.80765103.pdf', '64506a0a489bc5.50281338.jpg', '1', '1', '1', NULL, 100, NULL, 'purchaser', '2023-05-02 09:40:26', '2023-05-02 22:01:32', 90, 'employee', 'Procurement Clerk', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(35, 'Resume - Shaira_22', '6450d2157fe947.57525665.pdf', '6450d2157fea92.21509639.png', '1', '1', '1', NULL, 100, NULL, 'purchaser', '2023-05-02 17:04:21', '2023-05-02 22:02:12', 91, 'employee', 'Purchasing Associate', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(36, 'Daniel-Resume', '64511de4798dd2.89999852.pdf', '64511de4798ef9.32861985.jpg', '1', '1', '1', NULL, 600, NULL, 'purchaser', '2023-05-02 22:27:48', '2023-05-03 00:21:21', 92, 'admin', 'Operations Manager', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(37, 'RESUME', '6451b161e45533.62306177.pdf', '6451b161e45664.56792786.png', '1', '1', '1', NULL, 550, NULL, 'warehouse', '2023-05-03 08:57:05', '2023-05-03 09:05:08', 93, 'admin', 'Warehouse manager', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(38, 'Resume_Sumpay', '6451b35346ee60.92307199.pdf', '6451b35346efc2.81485127.jpg', '1', NULL, '1', NULL, 220, NULL, 'warehouse', '2023-05-03 09:05:23', '2023-05-03 14:29:33', 94, 'employee', 'Stocker', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(39, 'resume', '6451b6a4e80968.25026939.pdf', '6451b6a4e80a82.85359361.jpg', '1', '1', '1', NULL, 550, NULL, 'warehouse', '2023-05-03 09:19:32', '2023-05-03 14:30:46', 95, 'admin', 'Warehouse specialist', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(40, 'inbound5597482440900809149', '6451bd87abb2b5.42920609.pdf', '6451bd87abb489.86450025.jpg', '1', '1', '1', NULL, 550, NULL, 'warehouse', '2023-05-03 09:48:55', '2023-05-03 14:31:47', 96, 'admin', 'Forklift operator', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1500', '1500'),
(41, 'CABATO_RESUME', '6451c6f8295545.17850872.pdf', '6451c6f82956e1.14354696.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'warehouse', '2023-05-03 10:29:12', NULL, 97, '', '', '', NULL, 0, 0, 0, '', '', '', '', ''),
(42, 'RESUME', '6451c91dcfb8e3.44495983.pdf', '6451c91dcfba55.08449366.jpg', '1', NULL, '1', NULL, 220, NULL, 'warehouse', '2023-05-03 10:38:21', '2023-05-03 14:33:08', 98, 'employee', 'Warehouse worker', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(43, 'RESUME', '6451c9a694e328.27930498.pdf', '6451c9a694e415.97176701.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'warehouse', '2023-05-03 10:40:38', NULL, 99, '', '', '', NULL, 0, 0, 0, '', '', '', '', ''),
(44, 'Borrinaga, Jayron R', '6451caf2c8e882.80369722.pdf', '6451caf2c8e9e6.55360385.jpg', '1', NULL, '1', NULL, 270, NULL, 'warehouse', '2023-05-03 10:46:10', '2023-05-03 14:35:03', 100, 'employee', 'Shipping and receiving clerk', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(45, 'Resume', '6451d20245e585.68611744.pdf', '6451d20245e6c1.57379435.jpg', '1', NULL, '1', NULL, 270, NULL, 'warehouse', '2023-05-03 11:16:18', '2023-05-03 14:36:38', 101, 'employee', 'Loader', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(46, 'Resume', '6451d31a6ca772.08503592.pdf', '6451d31a6ca906.99288828.jpg', '1', NULL, '1', NULL, 250, NULL, 'warehouse', '2023-05-03 11:20:58', '2023-05-03 14:43:01', 102, 'employee', 'Receiving associate', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(47, 'Athena Renevieve M', '6451d42c08ce26.23799508.pdf', '6451d42c08cfa4.87985575.jpg', '1', NULL, '1', NULL, 220, NULL, 'warehouse', '2023-05-03 11:25:32', '2023-05-03 14:43:51', 103, 'employee', 'Stocking associate', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(48, 'Ramos, Jasper P_Resume', '6451dc00d2b357.33756496.pdf', '6451dc00d2b590.42749539.jpg', '1', NULL, '1', NULL, 250, NULL, 'warehouse', '2023-05-03 11:58:56', '2023-05-03 14:44:46', 104, 'employee', 'Warehouse clerk', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(49, 'Fiecas, May Lee C', '6451dd65b79668.35249518.pdf', '6451dd65b79781.57758168.png', '1', NULL, '1', NULL, 270, NULL, 'warehouse', '2023-05-03 12:04:53', '2023-05-03 14:46:16', 105, 'employee', 'Receiver', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000'),
(50, 'RESUME', '6451e0fe096f30.25525414.pdf', '6451e0fe097045.87298199.jpg', '1', NULL, '1', NULL, 220, NULL, 'warehouse', '2023-05-03 12:20:14', '2023-05-03 14:47:04', 106, 'employee', 'Laborer', 'regular', 'Quezon City', 0, 0, 15, '60', '1', '1', '1000', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` int(15) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 1 = Active, 0 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`id`, `name`, `description`, `price`, `supplier`, `status`, `date_created`) VALUES
(1, 'Item 1', 'Sample Item Only. Test 101', 900, '', 1, '2021-09-08 10:17:19'),
(2, 'Item 102', 'Sample Only', 900, '', 1, '2021-09-08 10:21:42'),
(3, 'Item 3', 'Sample product 103. 3x25 per boxes', 9, '', 1, '2021-09-08 10:22:10'),
(6, '300', '12 packed mongol', 7000, '', 1, '2023-02-21 13:36:26'),
(7, 'Lenovo', 'mongol pack of 7\r\n', 7000, '', 1, '2023-02-24 12:10:01'),
(8, 'socks', 'malinis', 7000, '', 1, '2023-02-24 12:17:32'),
(9, 'medyas', 'mabango', 350, '', 1, '2023-02-24 12:17:56'),
(10, 'shoes', 'Islander', 7000, '', 1, '2023-02-25 16:07:24'),
(11, 'Oppo', 'Cp ni ej', 800000, '', 1, '2023-03-31 17:36:28'),
(12, 'Oppo', 'FRAEFDEWDW', 800000, '', 1, '2023-04-19 11:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `po_id` int(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`po_id`, `item_id`, `unit`, `unit_price`, `quantity`) VALUES
(2, 1, 'pcs', 3788.99, 10),
(1, 1, 'boxes', 15000, 10),
(1, 2, 'pcs', 17999.9, 6),
(3, 9, '23', 1000, 14);

-- --------------------------------------------------------

--
-- Table structure for table `po_list`
--

CREATE TABLE `po_list` (
  `id` int(30) NOT NULL,
  `po_no` varchar(100) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `discount_percentage` float NOT NULL,
  `discount_amount` float NOT NULL,
  `tax_percentage` float NOT NULL,
  `tax_amount` float NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1= Approved, 2 = Denied',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `po_list`
--

INSERT INTO `po_list` (`id`, `po_no`, `supplier_id`, `discount_percentage`, `discount_amount`, `tax_percentage`, `tax_amount`, `notes`, `status`, `date_created`, `date_updated`) VALUES
(1, 'PO-94619964639', 1, 2, 5159.99, 12, 30959.9, 'Sample Purchase Order Only', 1, '2021-09-08 15:20:57', '2021-09-08 15:59:56'),
(2, 'PO-92093417806', 2, 1, 378.899, 12, 4546.79, 'Sample', 0, '2021-09-08 15:49:55', '2021-09-08 16:03:16'),
(3, 'PO-51168934287', 28, 10, 1400, 5, 700, '', 1, '2023-05-01 16:51:57', '2023-05-01 16:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productcode`, `productname`, `qty`, `price`, `size`, `photo`, `details`) VALUES
(1, '1', 'Asus Laptop', '99', 50, 'Large', 'asus.jfif', 'asdasdasdasdasdasdasdasdasdasdasdasda'),
(2, '2', 'MOBO', '50', 56, 'Medium', '02.jpg', 'asdasdasdasdasdasdasdasddasdasdasdasdasdasdasdasdasdadasdasdasdasdasdsadasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdadsasd'),
(3, '3', 'IPhone 12', '199', 23, 'Large', '03.jpg', ''),
(4, '4', 'Acer Laptop', '549', 23, 'Large', '04.jpg', ''),
(5, '5', 'Predator Laptop', '120', 26, 'Large', '05.jpg', ''),
(6, '6', 'Asus Monitor', '210', 53, 'Large', '06.jpg', ''),
(8, '7', 'Acer Laptop', '550', 45, 'Large', '07.jpg', ''),
(9, '8', 'Logitech Mouse', '270', 25, 'Large', '08.jpg', ''),
(10, '9', 'Logitech Headset', '550', 45, 'Large', '09.jpg', ''),
(11, '10', 'Logitech Keyboard', '213', 45, 'Large', '01.jpg', ''),
(13, '12', 'Sony Camera', '12', 38, 'Large', '03.jpg', ''),
(14, '13', 'Samsung Galaxy S', '50', 56, 'Large', '04.jpg', ''),
(15, '14', 'Samsung Galaxy Laptop', '33', 36, 'Large', '05.jpg', ''),
(16, '15', 'RGB Keyboard', '8', 45, 'Large', '06.jpg', ''),
(17, '16', 'Logitech Earphone', '515', 38, 'Large', '07.jpg', ''),
(18, '17', 'Logitech Mousepad', '15', 39, 'Large', '08.jpg', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd'),
(20, '21', 'Sample', '1', 200, 'Large', '10.jpg', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `productcode` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `requestqty` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_log`
--

CREATE TABLE `request_log` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `productcode` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `requestqty` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

CREATE TABLE `supplier_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `contact_person` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `bir` text DEFAULT NULL,
  `mayor` text DEFAULT NULL,
  `brgy` text DEFAULT NULL,
  `dti` text DEFAULT NULL,
  `business` text DEFAULT NULL,
  `ocular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `name`, `address`, `contact_person`, `contact`, `email`, `description`, `date_created`, `bir`, `mayor`, `brgy`, `dti`, `business`, `ocular`) VALUES
(1, 'Supplier 101', 'Sample Address Only', 'George Wilson', '09123459879', 'supplier101@gmail.com', 'This is Just a sample 101', '2021-09-08 09:46:45', 'uploads/1683021660_Screenshot (6).png', NULL, NULL, NULL, NULL, 1),
(2, 'Supplier 102', 'Supplier 102 Address, 23rd St, Sample City, Test Province, ####', 'Samantha Lou', '09332145889', 'sLou@supplier102.com', 'This is just a sample 102', '2021-09-08 10:25:12', '', NULL, NULL, NULL, NULL, 0),
(5, 'Acorn Shoes Company', 'San Antonio  Laguna', 'Joshua Arago', '09729464748', 'Aragon@gmail.com', 'Legit kami', '2023-03-18 09:00:36', 'uploads/1683025740_Screenshot (6).png', 'uploads/1683025740_Screenshot (4).png', 'uploads/1683025740_Screenshot (3).png', 'uploads/1683025740_Screenshot (10).png', 'uploads/1683025740_Screenshot (17).png', 1),
(6, 'Wool supplies', 'Taguig', 'Christian Ramiscal', '8567635', 'Ramiscal@yahoo.com', 'Wool supplier company', '2023-04-01 09:48:19', 'jyjgfbrgegsergaeha', NULL, NULL, NULL, NULL, 1),
(7, 'Guess Supplier Corporation', 'BGC', 'Ronald Sta. Maria', '55345145', 'Sta.Maria@yahoo.com', 'Apparel Supplier', '2023-04-01 10:11:46', 'grraggergagera', NULL, NULL, NULL, NULL, 1),
(8, 'Indie Source', 'Los Angeles', 'Angelo', '098373476345', 'Angelo_Indie@gmail.com', 'Indie Source is full-service clothing development and manufacturing consultancy, based in Los Angeles.', '2023-04-01 13:51:32', '', NULL, NULL, NULL, NULL, 1),
(12, 'Billoomi Fashion', 'New Delhi', 'Patel', '5426546465462', 'Patel_Billoomi@yahoo.com', 'Billoomi Fashion is an India-based private label clothing manufacturer of ready-to-wear woven and knitted garments for men, women, and children.', '2023-04-01 14:13:26', '', NULL, NULL, NULL, NULL, 1),
(19, 'Euphoric Colors', 'Los Angeles', 'Ufora', '092382327623', 'Ufora_Euphoric@gmail.com', 'Euphoric Color is a full-service clothing manufacturer based in Los Angeles.', '2023-04-01 15:08:10', '', NULL, NULL, NULL, NULL, 1),
(20, 'yuuenn', 'gergaduhgerguyerhgeu', 'gjuhdvgaerjhgrng', '9438345867', 'gjkjaergdr@gmail.com', 'hgdghverugvb', '2023-04-01 15:24:15', '', NULL, NULL, NULL, NULL, 1),
(21, 'DSA Manufacturing', 'Londo, United Kingdom', 'Kadita', '093734873436', 'Kadita_DSA@yahoo.com', 'DSA manufacturing is based in the UK and offers a range of high quality clothing manufacturing.', '2023-04-01 15:27:12', '', NULL, NULL, NULL, NULL, 1),
(22, 'Portland Garment Factory', 'Portland, Oregon', 'Uragon', '43263234', 'Uragon_Garment@yahoo.com', 'Portland Garment Factory is a full-service creative design and fabrication studio, based in Portland, Oregon.', '2023-04-01 15:30:18', '', NULL, NULL, NULL, NULL, 1),
(23, 'H&M Manufacturing Corp.', 'Makati City', 'Albert Dela Cruz', '092137623', 'delacruz@gmail.com', 'Apparel Supplier', '2023-04-01 15:32:01', '', NULL, NULL, NULL, NULL, 1),
(24, 'Yuckkk', 'gwergsgwrg', 'dhsdhdga', '43658686899', 'hsddgdg@yahoo.com', 'hbdgergdgd', '2023-04-01 15:55:46', '', NULL, NULL, NULL, NULL, 1),
(25, 'Dewhirst', 'Geneva, Switzerland', 'Dewy', '09877654321', 'Dewy_dewhirst@gmail.com', 'Dewhirst design, develop and manufacture a wide range of men’s, women’s, and children’s clothing.', '2023-04-26 14:35:20', NULL, NULL, NULL, NULL, NULL, 1),
(26, 'Apparel Productions Inc.', 'New York', 'Ronald', '09746352437', 'Ronald_mabait@gmail.com', 'Apparel Production Incorporated is a distinguished and highly experienced garment manufacturer in New York', '2023-04-27 04:36:09', NULL, NULL, NULL, NULL, NULL, 1),
(27, 'Pineapple Clothing', 'Texas, USA', 'Trixie Marcelo', '09735241', 'Marcelo_marketing@gmail.com', 'Pineapple Clothing is a US-based clothing supplier and manufacturer of women’s and children’s apparel.', '2023-04-27 04:57:52', NULL, NULL, NULL, NULL, NULL, 1),
(28, 'Good Clothing Company', 'Oregon, USA', 'Narisma Racal', '098731748393', 'Racal_procurement@gmail.com', 'The company prides itself on using environmentally sustainable production/', '2023-04-27 04:59:22', NULL, NULL, NULL, NULL, NULL, 1),
(29, 'Zega Apparel', 'Karachi, Pakistan', 'Sriracha', '0982723662384', 'Sriracha_Karachi@gmail.com', 'Zega Apparel is one of the full-service apparel manufacturers.', '2023-04-27 05:34:37', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Purchasing Order Management System'),
(6, 'short_name', 'POMS'),
(11, 'logo', 'uploads/1677313620_1435864.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1677313620_𝘞𝘌 𝘉𝘌 𝘚𝘖 𝘊𝘖𝘔𝘗𝘓𝘐𝘊𝘈𝘛𝘌𝘋 __ 𝐄_ 𝐘𝐀𝐄𝐆𝐄𝐑.jpg'),
(15, 'company_name', 'Gene'),
(16, 'company_email', 'Gene@gmail.com'),
(17, 'company_address', 'Abacus St. Pasay City');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Manager', 'Joni', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2023-03-18 08:56:18'),
(7, 'Alfred', 'Reyes', 'Alfei', '5e8ff9bf55ba3508199d22e984129be6', 'uploads/1682544960_Screenshot (9).png', NULL, 1, '2023-03-10 08:31:05', '2023-04-27 05:36:51'),
(8, 'Joni', 'Og', 'staff', 'de9bf5643eabf80f4a56fda3bbb84483', NULL, NULL, 2, '2023-03-10 08:33:51', '2023-05-01 16:53:34'),
(9, 'justin', 'de jesus', 'justin', '4297f44b13955235245b2497399d7a93', NULL, NULL, 2, '2023-03-30 16:41:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `po_id` (`po_id`),
  ADD KEY `item_no` (`item_id`);

--
-- Indexes for table `po_list`
--
ALTER TABLE `po_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_log`
--
ALTER TABLE `request_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `po_list`
--
ALTER TABLE `po_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9223372036854775807;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `request_log`
--
ALTER TABLE `request_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`po_id`) REFERENCES `po_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `po_list`
--
ALTER TABLE `po_list`
  ADD CONSTRAINT `po_list_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
