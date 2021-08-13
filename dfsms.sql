-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 07:52 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `name`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567812, 'admin@milkbase.com', 'Test@123', '2021-05-20 18:30:00', '2021-07-26 12:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'Milk', 'MK01', '2021-06-24 16:27:43'),
(2, 'Butter', 'BT01', '2021-06-24 16:27:59'),
(3, 'Bread', 'BD01', '2021-06-24 16:28:12'),
(4, 'Paneer', 'PN01', '2021-06-24 16:29:18'),
(7, 'Ghee', 'GH01', '2021-06-25 14:52:08'),
(10, 'Lassi', 'LS1', '2021-07-26 12:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Amul', '2021-07-25 03:30:51'),
(2, 'Mother Diary', '2021-07-25 03:30:59'),
(3, 'Patanjali', '2021-07-25 03:31:09'),
(4, 'Namaste India', '2021-07-25 03:31:21'),
(10, 'Paras', '2021-07-25 14:52:50'),
(11, 'Shubham Dairy', '2021-07-18 12:07:10'),
(12, 'Nandini', '2021-07-18 12:07:46'),
(13, 'Ganga Dairy', '2021-07-18 12:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(2, 1, 1, 753947547, 'Anuj', 9354778033, 'cash', '2021-06-25 08:32:47'),
(3, 1, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2021-06-23 08:32:47'),
(5, 1, 1, 861354457, 'Rahul', 9876543210, 'cash', '2021-06-25 08:32:47'),
(7, 5, 1, 276794782, 'Sarita', 1122334455, 'cash', '2021-06-25 08:32:47'),
(9, 6, 2, 744608164, 'Babu Pandey', 1234589623, 'card', '2021-06-25 08:32:47'),
(11, 7, 1, 139640585, 'John', 4563214789, 'cash', '2021-06-25 08:32:47'),
(23, 7, 1, 476221377, 'Ankush', 9834267826, 'Card', '2021-07-17 13:53:14'),
(25, 1, 1, 213805840, 'rishabh', 9056234510, 'Cash', '2021-06-18 11:28:48'),
(26, 4, 1, 338173672, 'Laddu Prasad', 9834728923, 'Card', '2021-07-18 12:10:33'),
(27, 1, 1, 290169453, 'devyani', 9726688801, 'Cash', '2021-07-18 12:17:46'),
(29, 9, 4, 291763020, 'devyani', 3456745673, 'Cash', '2021-07-18 14:01:27'),
(32, 11, 2, 401671306, 'shivam', 9856451280, 'Cash', '2021-07-16 15:08:49'),
(34, 7, 1, 513350126, 'kush', 9999999999, 'Cash', '2021-07-26 10:58:37'),
(35, 4, 4, 863853964, 'Yak', 1234635671, 'Card', '2021-07-26 12:06:30'),
(36, 7, 3, 863853964, 'Yak', 1234635671, 'Card', '2021-07-26 12:06:30'),
(39, 2, 1, 843867224, 'Kushagra', 7265873648, 'Cash', '2021-07-30 05:03:26'),
(40, 7, 1, 701778596, 'Kushagra', 7265873648, 'Cash', '2021-07-30 05:43:25'),
(41, 1, 1, 155466000, 'k', 74653, 'Cash', '2021-07-30 05:57:25'),
(42, 9, 1, 399030256, 'Kushagra', 7265873648, 'Cash', '2021-07-30 05:58:37'),
(43, 1, 2, 195650897, 'abcd', 1234, 'Cash', '2021-08-11 03:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', '22', '2021-07-25 05:22:37', '2021-07-26 11:24:16'),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', '42', '2021-07-25 04:25:20', '2021-07-26 11:24:19'),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2021-06-25 06:42:24', '2021-07-26 11:24:24'),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', '50', '2021-07-25 06:42:39', '2021-07-26 11:24:29'),
(5, 'Butter', 'Amul', 'Butter 100mg', '46', '2021-06-25 11:42:56', '2021-07-26 11:24:34'),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', '30', '2021-07-25 11:40:10', '2021-07-26 11:24:38'),
(7, 'Ghee', 'Paras', 'Ghee 500mg', '350', '2021-06-25 14:53:33', '2021-07-26 11:24:42'),
(8, 'Butter', 'Nandini', 'butterdelight-500ml', '180', '2021-06-18 12:08:31', '2021-07-26 11:24:46'),
(9, 'Milk', 'Shubham Dairy', 'freshmilk-500ml', '28', '2021-06-18 12:08:53', '2021-07-26 11:24:50'),
(10, 'Ghee', 'Ganga Dairy', 'desi ghee(apna ghee)-500ml', '350', '2021-06-18 12:09:39', '2021-07-26 11:24:53'),
(11, 'Paneer', 'Mother Diary', 'Paneer 500g', '150', '2021-06-16 15:07:22', NULL),
(12, 'Paneer', 'Paras', 'Fresh Paneer500gm', '180', '2021-06-16 15:07:57', NULL),
(13, 'Paneer', 'Patanjali', 'abc', '12', '2021-08-11 03:53:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `Id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Contact` bigint(15) DEFAULT NULL,
  `address` text NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Id`, `name`, `username`, `Contact`, `address`, `password`) VALUES
(29, 'Kushagra', 'kush', 7265873648, 'B-24 srinagar new colony up', '1234'),
(33, 'Ku', 'kush1', 1234567890, 'hi', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
