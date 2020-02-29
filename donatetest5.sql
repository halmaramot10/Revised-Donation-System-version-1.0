-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 11:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

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
(1, 6, 'OD', 'Others'),
(2, 1, 'CD', 'Clothes'),
(3, 1, 'FD', 'Food'),
(4, 1, 'MD', 'Money'),
(5, 10, 'SD', 'School Supplies');

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
(1, '02-29-2020', 'School Supplies', 'Cellphone', 'kdjlkkgfjdfhjdyo', '1378658', '69uioyito', 'ghkjhnghkjlkji', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-001'),
(2, '02-29-2020', 'School Supplies', 'Paper', 'gfngjhgkj', '46589', 'sryryhjgjk', 'srthbb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-002'),
(3, '02-29-2020', 'Others', 'Toothbrush', 'sdklgjlkj', 'we234', 'dyuioo', 'w44h', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-001'),
(4, '02-29-2020', 'School Supplies', 'Cellphone', 'e667ky', 'wq43', 'we46gf', 'dyru', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-003'),
(5, '02-29-2020', 'Others', 'Toothbrush', 'yuti78', 'ert34', 'dy58i', 'w534g', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-002'),
(6, '02-29-2020', 'School Supplies', 'Cellphone', 'wtytk', '2343dw', 'trgu568', 'dte5t4', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-004'),
(7, '02-29-2020', 'School Supplies', 'Cellphone', 'fyughtyu', 'q43sad', 'eyefh', 'yerfga', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-005'),
(8, '02-29-2020', 'Others', 'Cellphone', 'gjj68', 'sfrtds', 't456', 're56gf', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-003'),
(9, '02-29-2020', 'Others', 'Toothpaste', 're4i', 'fsdt4s', 'dfs5', 'sefs', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-004'),
(10, '02-29-2020', 'School Supplies', 'Cellphone', 'ftia', '35', 'dfdj', '5jhvb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-006'),
(11, '02-29-2020', 'School Supplies', 'Cellphone', 'drefh', 'st345t', 'erwfdg', 'cdghtj', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-007'),
(12, '02-29-2020', 'School Supplies', 'Notebook', 'sft5j', 'deer4', 'q35gfg', 'htiyhfger', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-008'),
(13, '02-29-2020', 'School Supplies', 'Crayons', 'test  again 1345', '6567', 'gfghj', 'wwrewd', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-009'),
(14, '02-29-2020', 'Others', 'Soap', 'ert4iijhj', '1334', 'rughji', 'wt45gd', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-005');

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
(1, 'Food', 'Canned Goods'),
(2, 'Others', 'Cellphone'),
(3, 'Clothes', 'Jogging Pants'),
(4, 'Money', 'Cash'),
(5, 'School Supplies', 'Notebook'),
(6, 'Others', 'Toothpaste'),
(7, 'School Supplies', 'Paper'),
(8, 'Others', 'Toothbrush'),
(9, 'School Supplies', 'Crayons'),
(10, 'Others', 'Soap');

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
(1, '02-29-2020', 'Others', 'Toothbrush', 'sdklgjlkj', 'we234', 'Used', 'dyuioo', 'w44h', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-001'),
(2, '02-29-2020', 'Others', 'Toothbrush', 'yuti78', 'ert34', 'Slightly Damaged', 'dy58i', 'w534g', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-002'),
(3, '02-29-2020', 'Others', 'Cellphone', 'gjj68', 'sfrtds', 'Used', 't456', 're56gf', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-003'),
(4, '02-29-2020', 'Others', 'Toothpaste', 're4i', 'fsdt4s', 'Used', 'dfs5', 'sefs', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-004'),
(5, '02-29-2020', 'Others', 'Soap', 'ert4iijhj', '1334', 'New', 'rughji', 'wt45gd', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-005');

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
(1, '02-29-2020', 'School Supplies', 'Cellphone', 'kdjlkkgfjdfhjdyo', '1378658', '69uioyito', 'ghkjhnghkjlkji', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-001'),
(2, '02-29-2020', 'School Supplies', 'Paper', 'gfngjhgkj', '46589', 'sryryhjgjk', 'srthbb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-002'),
(3, '02-29-2020', 'School Supplies', 'Cellphone', 'e667ky', 'wq43', 'we46gf', 'dyru', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-003'),
(4, '02-29-2020', 'School Supplies', 'Cellphone', 'wtytk', '2343dw', 'trgu568', 'dte5t4', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-004'),
(5, '02-29-2020', 'School Supplies', 'Cellphone', 'fyughtyu', 'q43sad', 'eyefh', 'yerfga', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-005'),
(6, '02-29-2020', 'School Supplies', 'Cellphone', 'ftia', '35', 'dfdj', '5jhvb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-006'),
(7, '02-29-2020', 'School Supplies', 'Cellphone', 'drefh', 'st345t', 'erwfdg', 'cdghtj', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-007'),
(8, '02-29-2020', 'School Supplies', 'Notebook', 'sft5j', 'deer4', 'q35gfg', 'htiyhfger', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-008'),
(9, '02-29-2020', 'School Supplies', 'Crayons', 'test  again 1345', '6567', 'gfghj', 'wwrewd', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-009');

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
(1, 'user1', 'user1', 'User', 'Active', 'USER1', '123456789', 'user1@email.com'),
(2, 'user2', 'user2', 'User', 'Inactive', 'USER2', '5463421', 'user2@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_donate`
--
ALTER TABLE `others_donate`
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
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `others_donate`
--
ALTER TABLE `others_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_donate`
--
ALTER TABLE `school_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
