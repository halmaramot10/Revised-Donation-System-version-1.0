-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 05:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donatetest5`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_code` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_code`, `cat_name`) VALUES
(1, 'OD', 'Others'),
(2, 'CD', 'Clothes'),
(3, 'FD', 'Food'),
(4, 'MD', 'Money'),
(5, 'SD', 'School Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `clothes_donate`
--

CREATE TABLE `clothes_donate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `cond` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes_donate`
--

INSERT INTO `clothes_donate` (`id`, `date`, `type`, `item`, `des`, `qty`, `cond`, `size`, `color`, `gender`, `age`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'Clothes', 'Pants', 'Uniqlo', '1', 'New', 'XL', 'Red', 'Male', 'Teen', 'Anonymous', 'Ken', 'Pending', '03-19-2020', 'John Doe', '03-16-2020-CD-001'),
(2, '03-19-2020', 'Clothes', 'Shirt', 'This is a demo for clothes', '2', 'New', 'XS', 'White', 'Unisex', 'Teen', 'John', 'Snow', 'Received', '00/00/0000', 'John Doe', '03-19-2020-CD-002'),
(3, '03-19-2020', 'Clothes', 'Shorts', 'This is a demo for clothes admin', '2', 'New', 'S', 'Red', 'Female', 'Adult', 'Jane Doe', 'Denver', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-CD-003');

--
-- Triggers `clothes_donate`
--
DELIMITER $$
CREATE TRIGGER `aftinvoicenum3` AFTER INSERT ON `clothes_donate` FOR EACH ROW BEGIN

	 UPDATE `counters` SET `ctr` = `ctr` + 1 WHERE `cat_name`=NEW.type;
	 INSERT INTO `donation`(`date`,`type`,`item`,`des`,`qty`,`fr`,`donto`,`stat`,`datemod`,`addedby`,`invoicenum`) VALUES(NEW.date,NEW.type,NEW.item,NEW.des,NEW.qty,NEW.fr,NEW.donto,NEW.stat,NEW.datemod,NEW.addedby,NEW.invoicenum);
	
	
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `befinvoicenum3` BEFORE INSERT ON `clothes_donate` FOR EACH ROW BEGIN
IF((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<10) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-00',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));

ELSEIF ((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)>=10 AND (SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<99) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-0',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
ELSE 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) NOT NULL,
  `ctr` int(11) NOT NULL,
  `cat_code` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `ctr`, `cat_code`, `cat_name`) VALUES
(1, 10, 'OD', 'Others'),
(2, 4, 'CD', 'Clothes'),
(3, 6, 'FD', 'Food'),
(4, 8, 'MD', 'Money'),
(5, 5, 'SD', 'School Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `date`, `type`, `item`, `des`, `qty`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'Others', 'Laptop', 'Samsung Galaxy Note 5 demo edit', '1', 'Anonymous', 'Rem\'s Foundation', 'Released', '03-19-2020', 'John Doe', '03-16-2020-OD-001'),
(2, '03-16-2020', 'Others', 'Laptop', 'Acer Swift 3', '1', 'Anonymous', 'Hearth\'s Center', 'Released', '03-16-2020', 'John Doe', '03-16-2020-OD-002'),
(3, '03-16-2020', 'Clothes', 'Pants', 'Uniqlo', '1', 'Anonymous', 'Ken', 'Pending', '03-19-2020', 'John Doe', '03-16-2020-CD-001'),
(4, '03-16-2020', 'Food', 'Rice', 'Maharlika', '25 kg', 'Anonymous', 'John\'s Food for a Cause', 'Pending', '03-19-2020', 'John Doe', '03-16-2020-FD-001'),
(5, '03-16-2020', 'Money', 'Check', 'Fifty Thousand Pesos send to Rem\'s', '50,000', 'John', 'Rem\'s Foundation - Cavite Branch', 'Released', '03-19-2020', 'John Doe', '03-16-2020-MD-001'),
(6, '03-16-2020', 'School Supplies', 'Pencil', 'Mongol No.3', '3', 'John', 'Jane Doe', 'Released', '03-19-2020', 'John Doe', '03-16-2020-SD-001'),
(7, '03-16-2020', 'Others', 'Cellphone', 'Acer Swift 3', '2', 'Anonymous', 'John', 'Pending', '03-18-2020', 'John Doe', '03-16-2020-OD-003'),
(8, '03-17-2020', 'Others', 'Radio', 'Royal Road', '5', 'Anonymous', 'John\'s Foundation', 'Received', '03-17-2020', 'John Doe', '03-17-2020-OD-004'),
(9, '03-17-2020', 'Others', 'Pillow', 'White Pillow', '5', 'Hazel ', 'Jon\'s Foundation', 'Pending', '03-19-2020', 'John Doe', '03-17-2020-OD-005'),
(10, '03-17-2020', 'School Supplies', 'Pencil', 'Dong - A No. 3', '2', 'Anonymous', 'John', 'Pending', '03-18-2020', 'John Doe', '03-17-2020-SD-002'),
(11, '03-17-2020', 'Others', 'Plates', 'Plastic Ones for Jon\'s Foundation', '2', 'John Doe', 'Jon\'s Foundation', 'Received', '00/00/0000', 'Jane Doe', '03-17-2020-OD-006'),
(12, '03-18-2020', 'Food', 'Rice', 'Bheng Rice', '1', 'Anonymous', 'Joestar', 'Released', '03-18-2020', 'John Doe', '03-18-2020-FD-002'),
(13, '03-18-2020', 'Food', 'Rice', 'Maharlika Brown Rice', '2', 'Anonymous', 'Joestar', 'Pending', '03-18-2020', 'John Doe', '03-18-2020-FD-003'),
(14, '03-19-2020', 'Others', 'Blankets', 'Tweety Bird', '1', 'John Doe', 'Jane Doe', 'Received', '00/00/0000', 'John Doe', '03-19-2020-OD-007'),
(15, '03-19-2020', 'Clothes', 'Shirt', 'This is a demo for clothes', '2', 'John', 'Snow', 'Received', '00/00/0000', 'John Doe', '03-19-2020-CD-002'),
(16, '03-19-2020', 'Food', 'Canned Goods', 'This is a demo for Food', '3', 'Jane Doe', 'Jon\'s Eatery', 'Received', '00/00/0000', 'John Doe', '03-19-2020-FD-004'),
(17, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money', '4', 'Mr. Doe', 'Fin\'s Foundation', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-002'),
(18, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money online', '45', 'John Snow', 'Sherlock', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-003'),
(19, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money others', '56', 'Waston', 'Afrei', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-004'),
(20, '03-19-2020', 'School Supplies', 'Notebook', 'This is a demo for school supplies', '5', 'John Doe', 'Jame Smith\'s Orphanage', 'Received', '00/00/0000', 'John Doe', '03-19-2020-SD-003'),
(21, '03-19-2020', 'Others', 'Ladle', 'This is a demo others from admin', '3', 'Jon\'s Eatery', 'Snow\'s Cafeteria', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-OD-008'),
(22, '03-19-2020', 'Others', 'Spoon', 'Other Demo', '1', 'Henry', 'Zoey', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-OD-009'),
(23, '03-19-2020', 'Clothes', 'Shorts', 'This is a demo for clothes admin', '2', 'Jane Doe', 'Denver', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-CD-003'),
(24, '03-19-2020', 'Food', 'Beans', 'Mongo Beans Pack', '3', 'Hannah', 'Baker', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-FD-005'),
(25, '03-19-2020', 'Money', 'Check', 'this is a demo for money bank', '4.1', 'Baker', 'Zoey', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-005'),
(26, '03-19-2020', 'Money', 'Check', 'this is a demo for money online admin', '56,000', 'Hannah', 'Haime', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-006'),
(27, '03-19-2020', 'Money', 'Cash', 'this is a demo for money others', '56789', 'Jane', 'Erwin\'s Foundation', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-007'),
(28, '03-19-2020', 'School Supplies', 'Crayons', 'this is a demo for school supplies admin', '5', 'Hone', 'Dens', 'Released', '03-19-2020', 'Jane Doe', '03-19-2020-SD-004');

-- --------------------------------------------------------

--
-- Table structure for table `edit_request`
--

CREATE TABLE `edit_request` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL,
  `daterequest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit_request`
--

INSERT INTO `edit_request` (`id`, `type`, `invoicenum`, `daterequest`) VALUES
(1, 'Others', '03-16-2020-OD-003', 'John Doe'),
(2, 'Others', '03-16-2020-OD-001', 'John Doe'),
(3, 'Others', '03-17-2020-OD-004', 'John Doe'),
(4, 'School Supplies', '03-17-2020-SD-002', 'John Doe'),
(5, 'Others', '03-19-2020-OD-008', 'Jane Doe');

-- --------------------------------------------------------

--
-- Table structure for table `foods_donate`
--

CREATE TABLE `foods_donate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `exp` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods_donate`
--

INSERT INTO `foods_donate` (`id`, `date`, `type`, `item`, `des`, `qty`, `exp`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'Food', 'Rice', 'Maharlika', '25 kg', '2020-03-06', 'Anonymous', 'John\'s Food for a Cause', 'Pending', '03-19-2020', 'John Doe', '03-16-2020-FD-001'),
(2, '03-18-2020', 'Food', 'Rice', 'Bheng Rice', '1', '', 'Anonymous', 'Joestar', 'Released', '03-18-2020', 'John Doe', '03-18-2020-FD-002'),
(3, '03-18-2020', 'Food', 'Rice', 'Maharlika Brown Rice', '2', '', 'Anonymous', 'Joestar', 'Pending', '03-18-2020', 'John Doe', '03-18-2020-FD-003'),
(4, '03-19-2020', 'Food', 'Canned Goods', 'This is a demo for Food', '3', '2021-07-14', 'Jane Doe', 'Jon\'s Eatery', 'Received', '00/00/0000', 'John Doe', '03-19-2020-FD-004'),
(5, '03-19-2020', 'Food', 'Beans', 'Mongo Beans Pack', '3', '2020-08-07', 'Hannah', 'Baker', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-FD-005');

--
-- Triggers `foods_donate`
--
DELIMITER $$
CREATE TRIGGER `aftinvoicenum2` AFTER INSERT ON `foods_donate` FOR EACH ROW BEGIN

	 UPDATE `counters` SET `ctr` = `ctr` + 1 WHERE `cat_name`=NEW.type;
	 INSERT INTO `donation`(`date`,`type`,`item`,`des`,`qty`,`fr`,`donto`,`stat`,`datemod`,`addedby`,`invoicenum`) VALUES(NEW.date,NEW.type,NEW.item,NEW.des,NEW.qty,NEW.fr,NEW.donto,NEW.stat,NEW.datemod,NEW.addedby,NEW.invoicenum);
	
	
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `befinvoicenum2` BEFORE INSERT ON `foods_donate` FOR EACH ROW BEGIN
IF((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<10) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-00',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));

ELSEIF ((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)>=10 AND (SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<99) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-0',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
ELSE 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `item_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `category`, `item_name`) VALUES
(1, 'Others', 'Cellphone'),
(2, 'Others', 'Laptop'),
(3, 'Clothes', 'Pants'),
(4, 'Food', 'Rice'),
(5, 'Clothes', 'Check'),
(6, 'School Supplies', 'Pencil'),
(7, 'Others', 'Radio'),
(8, 'Others', 'Pillow'),
(9, 'Others', 'Plates'),
(10, 'Others', 'Blankets'),
(11, 'Clothes', 'Shirt'),
(12, 'Food', 'Canned Goods'),
(13, 'Money', 'Cash'),
(14, 'School Supplies', 'Notebook'),
(15, 'Others', 'Ladle'),
(16, 'Others', 'Spoon'),
(17, 'Clothes', 'Shorts'),
(18, 'Food', 'Beans'),
(19, 'Money', 'Check'),
(20, 'School Supplies', 'Crayons');

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`id`, `method`) VALUES
(1, 'Bank'),
(2, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `money_donate`
--

CREATE TABLE `money_donate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `met` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `refno` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `money_donate`
--

INSERT INTO `money_donate` (`id`, `date`, `type`, `item`, `des`, `qty`, `met`, `pays`, `refno`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'Money', 'Check', 'Fifty Thousand Pesos send to Rem\'s', '50,000', 'Bank', 'BDO', '123456789', 'John', 'Rem\'s Foundation - Cavite Branch', 'Released', '03-19-2020', 'John Doe', '03-16-2020-MD-001'),
(2, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money', '4', 'Bank', 'Security Bank', '56784521', 'Mr. Doe', 'Fin\'s Foundation', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-002'),
(3, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money online', '45', 'Online', 'Paymaya', '123456', 'John Snow', 'Sherlock', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-003'),
(4, '03-19-2020', 'Money', 'Cash', 'This is a demo for Money others', '56', 'Other', 'Cash on Hand', '', 'Waston', 'Afrei', 'Received', '00/00/0000', 'John Doe', '03-19-2020-MD-004'),
(5, '03-19-2020', 'Money', 'Check', 'this is a demo for money bank', '4.1', 'Bank', 'PNB', '456789', 'Baker', 'Zoey', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-005'),
(6, '03-19-2020', 'Money', 'Check', 'this is a demo for money online admin', '56,000', 'Online', 'Coins.ph', '56321456', 'Hannah', 'Haime', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-006'),
(7, '03-19-2020', 'Money', 'Cash', 'this is a demo for money others', '56789', 'Other', 'On Hand', '', 'Jane', 'Erwin\'s Foundation', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-MD-007');

--
-- Triggers `money_donate`
--
DELIMITER $$
CREATE TRIGGER `aftinvoicenum4` AFTER INSERT ON `money_donate` FOR EACH ROW BEGIN

	 UPDATE `counters` SET `ctr` = `ctr` + 1 WHERE `cat_name`=NEW.type;
	 INSERT INTO `donation`(`date`,`type`,`item`,`des`,`qty`,`fr`,`donto`,`stat`,`datemod`,`addedby`,`invoicenum`) VALUES(NEW.date,NEW.type,NEW.item,NEW.des,NEW.qty,NEW.fr,NEW.donto,NEW.stat,NEW.datemod,NEW.addedby,NEW.invoicenum);
	
	
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `befinvoicenum4` BEFORE INSERT ON `money_donate` FOR EACH ROW BEGIN
IF((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<10) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-00',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));

ELSEIF ((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)>=10 AND (SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<99) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-0',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
ELSE 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `others_donate`
--

CREATE TABLE `others_donate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `cond` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `others_donate`
--

INSERT INTO `others_donate` (`id`, `date`, `type`, `item`, `des`, `qty`, `cond`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'Others', 'Laptop', 'Samsung Galaxy Note 5 demo edit', '1', 'Used', 'Anonymous', 'Rem\'s Foundation', 'Released', '03-19-2020', 'John Doe', '03-16-2020-OD-001'),
(2, '03-16-2020', 'Others', 'Laptop', 'Acer Swift 3', '1', 'New', 'Anonymous', 'Hearth\'s Center', 'Released', '03-16-2020', 'John Doe', '03-16-2020-OD-002'),
(3, '03-16-2020', 'Others', 'Cellphone', 'Acer Swift 3', '2', 'Used', 'Anonymous', 'John', 'Pending', '03-18-2020', 'John Doe', '03-16-2020-OD-003'),
(4, '03-17-2020', 'Others', 'Radio', 'Royal Road', '5', 'New', 'Anonymous', 'John\'s Foundation', 'Received', '03-17-2020', 'John Doe', '03-17-2020-OD-004'),
(5, '03-17-2020', 'Others', 'Pillow', 'White Pillow', '5', 'New', 'Hazel ', 'Jon\'s Foundation', 'Pending', '03-19-2020', 'John Doe', '03-17-2020-OD-005'),
(6, '03-17-2020', 'Others', 'Plates', 'Plastic Ones for Jon\'s Foundation', '2', 'New', 'John Doe', 'Jon\'s Foundation', 'Received', '00/00/0000', 'Jane Doe', '03-17-2020-OD-006'),
(7, '03-19-2020', 'Others', 'Blankets', 'Tweety Bird', '1', 'New', 'John Doe', 'Jane Doe', 'Received', '00/00/0000', 'John Doe', '03-19-2020-OD-007'),
(8, '03-19-2020', 'Others', 'Ladle', 'This is a demo others from admin', '3', 'Used', 'Jon\'s Eatery', 'Snow\'s Cafeteria', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-OD-008'),
(9, '03-19-2020', 'Others', 'Spoon', 'Other Demo', '1', 'New', 'Henry', 'Zoey', 'Received', '00/00/0000', 'Jane Doe', '03-19-2020-OD-009');

--
-- Triggers `others_donate`
--
DELIMITER $$
CREATE TRIGGER `aftinvoicenum` AFTER INSERT ON `others_donate` FOR EACH ROW BEGIN

	 UPDATE `counters` SET `ctr` = `ctr` + 1 WHERE `cat_name`=NEW.type;
	 INSERT INTO `donation`(`date`,`type`,`item`,`des`,`qty`,`fr`,`donto`,`stat`,`datemod`,`addedby`,`invoicenum`) VALUES(NEW.date,NEW.type,NEW.item,NEW.des,NEW.qty,NEW.fr,NEW.donto,NEW.stat,NEW.datemod,NEW.addedby,NEW.invoicenum);
	
	
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `befinvoicenum` BEFORE INSERT ON `others_donate` FOR EACH ROW BEGIN
IF((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<10) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-00',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));

ELSEIF ((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)>=10 AND (SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<99) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-0',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
ELSE 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `paymet`
--

CREATE TABLE `paymet` (
  `id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `met_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymet`
--

INSERT INTO `paymet` (`id`, `method`, `met_name`) VALUES
(1, 'Online', 'BPI App'),
(2, 'Online', 'GCash'),
(3, 'Bank', 'Security Bank'),
(4, 'Online', 'Paymaya'),
(5, 'Bank', 'PNB'),
(6, 'Online', 'Coins.ph');

-- --------------------------------------------------------

--
-- Table structure for table `school_donate`
--

CREATE TABLE `school_donate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `donto` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `datemod` varchar(255) NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `invoicenum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_donate`
--

INSERT INTO `school_donate` (`id`, `date`, `type`, `item`, `des`, `qty`, `fr`, `donto`, `stat`, `datemod`, `addedby`, `invoicenum`) VALUES
(1, '03-16-2020', 'School Supplies', 'Pencil', 'Mongol No.3', '3', 'John', 'Jane Doe', 'Released', '03-19-2020', 'John Doe', '03-16-2020-SD-001'),
(2, '03-17-2020', 'School Supplies', 'Pencil', 'Dong - A No. 3', '2', 'Anonymous', 'John', 'Pending', '03-18-2020', 'John Doe', '03-17-2020-SD-002'),
(3, '03-19-2020', 'School Supplies', 'Notebook', 'This is a demo for school supplies', '5', 'John Doe', 'Jame Smith\'s Orphanage', 'Received', '00/00/0000', 'John Doe', '03-19-2020-SD-003'),
(4, '03-19-2020', 'School Supplies', 'Crayons', 'this is a demo for school supplies admin', '5', 'Hone', 'Dens', 'Released', '03-19-2020', 'Jane Doe', '03-19-2020-SD-004');

--
-- Triggers `school_donate`
--
DELIMITER $$
CREATE TRIGGER `ainvoicenum` AFTER INSERT ON `school_donate` FOR EACH ROW BEGIN

	 UPDATE `counters` SET `ctr` = `ctr` + 1 WHERE `cat_name`=NEW.type;
	 INSERT INTO `donation`(`date`,`type`,`item`,`des`,`qty`,`fr`,`donto`,`stat`,`datemod`,`addedby`,`invoicenum`) VALUES(NEW.date,NEW.type,NEW.item,NEW.des,NEW.qty,NEW.fr,NEW.donto,NEW.stat,NEW.datemod,NEW.addedby,NEW.invoicenum);
	
	
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `binvoicenum` BEFORE INSERT ON `school_donate` FOR EACH ROW BEGIN
IF((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<10) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-00',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));

ELSEIF ((SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)>=10 AND (SELECT `ctr` FROM `counters` WHERE `cat_name`=NEW.type)<99) THEN 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),'-0',(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
ELSE 
SET NEW.invoicenum = CONCAT(NEW.date,'-',(SELECT `cat_code` FROM `counters` WHERE `cat_name`=NEW.type),(SELECT `ctr` FROM `counters` WHERE `cat_name` = NEW.type));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`, `name`, `contact`, `email`) VALUES
(1, 'user1', 'user1', 'User', 'Active', 'John Doe', '506 - 1082', 'johndoe@email.com'),
(2, 'admin1', 'admin1', 'Admin', 'Active', 'Jane Doe', '507 - 2635', 'janedoe@email.com'),
(3, 'user2', 'user2', 'User', 'Active', 'Ayano Aishi', '7895545', 'ayanoaishi@email.com'),
(4, 'admin2', 'admin2', 'Admin', 'Inactive', 'Taro Yamada', '987654321', 'taro@email.com'),
(6, 'user3', 'user3', 'User', 'Active', 'User3', '1334567', 'user3@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothes_donate`
--
ALTER TABLE `clothes_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_request`
--
ALTER TABLE `edit_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods_donate`
--
ALTER TABLE `foods_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_donate`
--
ALTER TABLE `money_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_donate`
--
ALTER TABLE `others_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymet`
--
ALTER TABLE `paymet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_donate`
--
ALTER TABLE `school_donate`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clothes_donate`
--
ALTER TABLE `clothes_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `edit_request`
--
ALTER TABLE `edit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foods_donate`
--
ALTER TABLE `foods_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `method`
--
ALTER TABLE `method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `money_donate`
--
ALTER TABLE `money_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `others_donate`
--
ALTER TABLE `others_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paymet`
--
ALTER TABLE `paymet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school_donate`
--
ALTER TABLE `school_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
