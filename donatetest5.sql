-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 02:06 PM
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
(1, '03-01-2020', 'Clothes', 'Shorts', 'Uniqlo sosyal', '24', 'New', 'S', 'BLue', 'Male', 'Adult', 'heizeru', 'Taro', 'Pending', '03-08-2020', 'USER1', '03-01-2020-CD-001'),
(2, '03-04-2020', 'Clothes', 'Shirt', 'errrt', '144566', 'New', 'S', 'rbrry', 'Female', 'Teen', 'nfnt', 'sascqwc', 'Received', '00/00/0000', 'USER1', '03-04-2020-CD-002'),
(3, '03-04-2020', 'Clothes', 'Jogging Pants', 'brdtry', '795', 'Used', 'XS', 'btuytbiu', 'Male', 'Kid', 'dbt', 'etrbty', 'Released', '03-04-2020', 'USER1', '03-04-2020-CD-003'),
(4, '03-08-2020', 'Clothes', 'Jogging Pants', 'banana123', '45', 'Slightly Damaged', 'M', '4h5t', 'Female', 'Teen', 'Anonymous', 'wata', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-CD-004'),
(5, '03-12-2020', 'Clothes', 'Jogging Pantsy', 'banana123', '123', 'Used', 'M', 'BLue', 'Female', 'Infant', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-CD-005'),
(6, '03-12-2020', 'Clothes', 'newt1', 'gdfy', '3454', 'Slightly Damaged', 'ert', '646', 'Male', 'Infant', 'ghgju', 'jhk', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-CD-006'),
(7, '03-12-2020', 'Clothes', 'Jogging Pantsy', '', '', 'New', '', '', 'Male', 'Infant', '', '', 'Received', '00/00/0000', 'USER1', '03-12-2020-CD-007');

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
(1, 19, 'OD', 'Others'),
(2, 8, 'CD', 'Clothes'),
(3, 8, 'FD', 'Food'),
(4, 8, 'MD', 'Money'),
(5, 11, 'SD', 'School Supplies');

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
(1, '02-29-2020', 'School Supplies', 'Cellphone', 'kdjlkkgfjdfhjdyo', '1378658', '69uioyito', 'ghkjhnghkjlkji', 'Pending', '03-01-2020', 'USER1', '02-29-2020-SD-001'),
(2, '02-29-2020', 'School Supplies', 'Paper', 'gfngjhgkj', '46589', 'sryryhjgjk', 'srthbb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-002'),
(3, '02-29-2020', 'Others', 'Toothbrush', 'sdklgjlkj', 'we234', 'dyuioo', 'w44h', 'Released', '03-01-2020', 'USER1', '02-29-2020-OD-001'),
(4, '02-29-2020', 'School Supplies', 'Cellphone', 'e667ky', 'wq43', 'we46gf', 'dyru', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-003'),
(5, '02-29-2020', 'Others', 'Toothbrush', 'yuti78', 'ert34', 'dy58i', 'w534g', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-002'),
(6, '02-29-2020', 'School Supplies', 'Cellphone', 'wtytk', '2343dw', 'trgu568', 'dte5t4', 'Released', '03-01-2020', 'USER1', '02-29-2020-SD-004'),
(7, '02-29-2020', 'School Supplies', 'Cellphone', 'fyughtyu', 'q43sad', 'eyefh', 'yerfga', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-005'),
(8, '02-29-2020', 'Others', 'Cellphone', 'gjj68', 'sfrtds', 't456', 're56gf', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-003'),
(9, '02-29-2020', 'Others', 'Toothpaste', 're4i', 'fsdt4s', 'dfs5', 'sefs', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-004'),
(10, '02-29-2020', 'School Supplies', 'Cellphone', 'ftia', '35', 'dfdj', '5jhvb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-006'),
(11, '02-29-2020', 'School Supplies', 'Cellphone', 'drefh', 'st345t', 'erwfdg', 'cdghtj', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-007'),
(12, '02-29-2020', 'School Supplies', 'Notebook', 'sft5j', 'deer4', 'q35gfg', 'htiyhfger', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-008'),
(13, '02-29-2020', 'School Supplies', 'Crayons', 'test  again 1345', '6567', 'gfghj', 'wwrewd', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-009'),
(14, '02-29-2020', 'Others', 'Soap', 'ert4iijhj', '1334', 'rughji', 'wt45gd', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-005'),
(15, '03-01-2020', 'Food', 'Rice', 'this a test test 2', '35', 'Anonymous', 'watapad21', 'Pending', '03-01-2020', 'USER1', '03-01-2020-FD-001'),
(16, '03-01-2020', 'Clothes', 'Shorts', 'adwbbg', '24', ' tfhfgh', 'ret3be', 'Pending', '03-01-2020', 'USER1', '03-01-2020-CD-001'),
(17, '03-01-2020', 'Others', 'Cellphone', 'd  h', '243', 'ery', 'ete', 'Received', '00/00/0000', 'USER1', '03-01-2020-OD-006'),
(18, '03-01-2020', 'School Supplies', 'Notebook', 'Mega Sardines', '789', 'sdf;jsd', 'djkjsklf', 'Received', '00/00/0000', 'USER1', '03-01-2020-SD-010'),
(19, '03-01-2020', 'Money', 'Check', 'guygubjh', '78921', 'knjhiu', 'ytrrrtd', 'Pending', '03-01-2020', 'USER1', '03-01-2020-MD-001'),
(20, '03-04-2020', 'Money', 'Check', 'scholl', '78756', 'Anonymous', 'a rebyre', 'Received', '00/00/0000', 'USER1', '03-04-2020-MD-002'),
(21, '03-04-2020', 'Money', 'Cash', 'ebebdfg', '12323', 'dggsdg', 'dfbdbge', 'Released', '03-04-2020', 'USER1', '03-04-2020-MD-003'),
(22, '03-04-2020', 'Food', 'Sugar', 'its brown just like u reading dis dipshit', '657657', 'dsrt', 'wata', 'Released', '03-04-2020', 'USER1', '03-04-2020-FD-002'),
(23, '03-04-2020', 'Food', 'Canned Goods', 'Mega Sardines ulit', '134', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'USER1', '03-04-2020-FD-003'),
(24, '03-04-2020', 'Clothes', 'Shirt', 'errrt', '144566', 'nfnt', 'sascqwc', 'Received', '00/00/0000', 'USER1', '03-04-2020-CD-002'),
(25, '03-04-2020', 'Clothes', 'Jogging Pants', 'brdtry', '795', 'dbt', 'etrbty', 'Released', '03-04-2020', 'USER1', '03-04-2020-CD-003'),
(26, '03-04-2020', 'Others', 'Cellphone', '', '', '', '', 'Received', '00/00/0000', 'USER1', '03-04-2020-OD-007'),
(27, '03-08-2020', 'Others', 'Cellphone', 'admin 1', '123', 'heizeru', 'Taro', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-OD-008'),
(28, '03-08-2020', 'Clothes', 'Jogging Pants', 'banana123', '45', 'Anonymous', 'wata', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-CD-004'),
(29, '03-08-2020', 'Food', 'Canned Goods', 'Mega Sardines', '4521', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-FD-004'),
(30, '03-08-2020', 'Money', 'Check', 'banana', '1234', 'Anonymous', 'wata', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-MD-004'),
(31, '03-08-2020', 'Money', 'Check', 'Uniqlo sosyal', '12323', 'fsteeruui', 'qwe23', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-MD-005'),
(32, '03-11-2020', 'Food', 'Beans', 'String Beans in Can', '345', 'fsteeruui', 'watapad21', 'Pending', '03-11-2020', 'ADMIN1', '03-11-2020-FD-005'),
(33, '03-12-2020', 'Others', 'Cellphone', 'this is deployed test', '69', 'Anonymous', 'Good', 'Pending', '03-12-2020', 'ADMIN1', '03-12-2020-OD-009'),
(34, '03-12-2020', 'Others', 'Cellphone', 'this came from donation.com:8080', '', '', '', 'Released', '03-12-2020', 'ADMIN1', '03-12-2020-OD-010'),
(35, '03-12-2020', 'Others', 'Cellphone', 'banana123', '789', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-011'),
(36, '03-12-2020', 'Others', 'Cellphone', '', '', '', '', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-012'),
(37, '03-12-2020', 'Others', 'Cellphone', '', '', '', '', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-013'),
(38, '03-12-2020', 'Others', 'Cellphone', 'Mega Sardines', '13', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-014'),
(39, '03-12-2020', 'Clothes', 'Jogging Pantsy', 'banana123', '123', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-CD-005'),
(40, '03-12-2020', 'Others', 'home', 'banana123', 'erwt', 'fsteeruui', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-015'),
(41, '03-12-2020', 'Clothes', 'newt1', 'gdfy', '3454', 'ghgju', 'jhk', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-CD-006'),
(42, '03-12-2020', 'Food', 'Canned Goods', 'banana1234', '68787', 'gygyut', 'gyutu6', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-FD-006'),
(43, '03-12-2020', 'Food', 'beansu', 'ouoiuyo6', 'asd4iou', 'dfdghjklu', 'eruru7u', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-FD-007'),
(44, '03-12-2020', 'Money', 'Cash', '3467', 'rte5', 'qw43', 'y57', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-MD-006'),
(45, '03-12-2020', 'Money', 'e467678', 'ste556', 'gu89', 'ry567', 't7678', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-MD-007'),
(46, '03-12-2020', 'Others', 'Cellphone', '', '', '', '', 'Received', '00/00/0000', 'USER1', '03-12-2020-OD-016'),
(47, '03-12-2020', 'Clothes', 'Jogging Pantsy', '', '', '', '', 'Received', '00/00/0000', 'USER1', '03-12-2020-CD-007'),
(48, '03-12-2020', 'Others', 'Cellphone', 'banana123', '10', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-017'),
(49, '03-12-2020', 'Others', 'testulit', 'this is red', '79', 'rjito', 'reotuyiu', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-018');

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
(1, 'School Supplies', '02-29-2020-SD-002', '03-12-2020'),
(2, 'Others', '03-12-2020-OD-011', '03-12-2020');

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
(1, 'null', 'Food', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '03-11-2020', 'USER1', '03-01-2020-FD-001'),
(2, '03-04-2020', 'Food', 'Sugar', 'its brown just like u reading dis dipshit', '657657', '03/08/2020', 'dsrt', 'wata', 'Released', '03-04-2020', 'USER1', '03-04-2020-FD-002'),
(3, '03-04-2020', 'Food', 'Canned Goods', 'Mega Sardines ulit', '134', '03/08/2021', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'USER1', '03-04-2020-FD-003'),
(4, '03-08-2020', 'Food', 'Canned Goods', 'Mega Sardines', '4521', '03/08/2021', 'fsteeruui', 'wat', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-FD-004'),
(5, '03-11-2020', 'Food', 'Beans', 'String Beans in Can', '345', '03-01-2022', 'fsteeruui', 'watapad21', 'Pending', '03-11-2020', 'ADMIN1', '03-11-2020-FD-005'),
(6, '03-12-2020', 'Food', 'Canned Goods', 'banana1234', '68787', '09-08-2021', 'gygyut', 'gyutu6', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-FD-006'),
(7, '03-12-2020', 'Food', 'beansu', 'ouoiuyo6', 'asd4iou', 'p345u06u6590', 'dfdghjklu', 'eruru7u', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-FD-007');

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
(1, 'Food', 'Canned Goods'),
(2, 'Others', 'Cellphone'),
(3, 'Clothes', 'Jogging Pantsy'),
(4, 'Money', 'Cash'),
(5, 'School Supplies', 'Notebook'),
(6, 'Others', 'Toothpaste'),
(7, 'School Supplies', 'Paper'),
(8, 'Others', 'Toothbrush'),
(9, 'School Supplies', 'Crayons'),
(10, 'Others', 'Soap'),
(11, 'Food', 'Rice'),
(12, 'Clothes', 'Shorts'),
(13, 'Money', 'Check'),
(14, 'Money', 'test1'),
(15, 'Money', '342'),
(16, 'Money', 'otherss'),
(17, 'Money', 'utr65'),
(18, 'Food', 'Sugar'),
(19, 'Clothes', 'Shirt'),
(20, 'Food', 'Beans'),
(21, 'Others', 'home'),
(22, 'Clothes', 'newt1'),
(23, 'Food', 'beansu'),
(24, 'Money', 'e467678'),
(25, 'Others', 'testulit');

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
(1, '03-01-2020', 'Money', 'Check', 'guygubjh', '78921', 'Bank', 'BDO', '798321', 'knjhiu', 'ytrrrtd', 'Pending', '03-08-2020', 'USER1', '03-01-2020-MD-001'),
(2, '03-04-2020', 'Money', 'Check', 'scholl', '78756', 'Online', 'GCash', '2312', 'Anonymous', 'a rebyre', 'Received', '00/00/0000', 'USER1', '03-04-2020-MD-002'),
(3, '03-04-2020', 'Money', 'Cash', 'ebebdfg', '12323', 'Bank', 'BDO', 'svw4r75767', 'dggsdg', 'dfbdbge', 'Released', '03-04-2020', 'USER1', '03-04-2020-MD-003'),
(4, '03-08-2020', 'Money', 'Check', 'banana', '1234', 'Bank', 'BDO', '456789', 'Anonymous', 'wata', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-MD-004'),
(5, '03-08-2020', 'Money', 'Check', 'Uniqlo sosyal', '12323', 'Online', 'PayMaya', '2321', 'fsteeruui', 'qwe23', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-MD-005'),
(6, '03-12-2020', 'Money', 'Cash', '3467', 'rte5', 'Bank', 'Security Bank', 'et6790', 'qw43', 'y57', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-MD-006'),
(7, '03-12-2020', 'Money', 'e467678', 'ste556', 'gu89', 'Online', 'GCash', '768678', 'ry567', 't7678', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-MD-007');

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
(1, '02-29-2020', 'Others', 'Toothpaste', 'ferret', '789', 'New', 'srertrty', 'gjhjyi', 'Released', '03-12-2020', 'USER1', '02-29-2020-OD-001'),
(2, '02-29-2020', 'Others', 'Toothbrush', 'yuti78', 'ert34', 'Slightly Damaged', 'dy58i', 'w534g', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-002'),
(3, '02-29-2020', 'Others', 'Cellphone', 'gjj68', 'sfrtds', 'Used', 't456', 're56gf', 'Pending', '03-01-2020', 'USER1', '02-29-2020-OD-003'),
(4, '02-29-2020', 'Others', 'Toothpaste', 're4i', 'fsdt4s', 'Used', 'dfs5', 'sefs', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-004'),
(5, '02-29-2020', 'Others', 'Soap', 'ert4iijhj', '1334', 'New', 'rughji', 'wt45gd', 'Received', '00/00/0000', 'USER1', '02-29-2020-OD-005'),
(6, '03-01-2020', 'Others', 'Cellphone', 'd  h', '243', 'New', 'ery', 'ete', 'Received', '00/00/0000', 'USER1', '03-01-2020-OD-006'),
(7, '03-04-2020', 'Others', 'Cellphone', '', '', 'New', '', '', 'Received', '00/00/0000', 'USER1', '03-04-2020-OD-007'),
(8, '03-08-2020', 'Others', 'Cellphone', 'admin 1', '123', 'Used', 'heizeru', 'Taro', 'Received', '00/00/0000', 'ADMIN1', '03-08-2020-OD-008'),
(9, '03-12-2020', 'Others', 'Cellphone', 'this is deployed test', '69', 'New', 'Anonymous', 'Good', 'Pending', '03-12-2020', 'ADMIN1', '03-12-2020-OD-009'),
(10, '03-12-2020', 'Others', 'Cellphone', 'this came from donation.com:8080', '', 'New', '', '', 'Released', '03-12-2020', 'ADMIN1', '03-12-2020-OD-010'),
(11, '03-12-2020', 'Others', 'Cellphone', 'banana123', '789', 'New', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-011'),
(12, '03-12-2020', 'Others', 'Cellphone', '', '', 'New', '', '', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-012'),
(13, '03-12-2020', 'Others', 'Cellphone', '', '', 'New', '', '', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-013'),
(14, '03-12-2020', 'Others', 'Cellphone', 'Mega Sardines', '13', 'Used', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-014'),
(15, '03-12-2020', 'Others', 'home', 'banana123', 'erwt', 'Used', 'fsteeruui', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-015'),
(16, '03-12-2020', 'Others', 'Cellphone', '', '', 'New', '', '', 'Received', '00/00/0000', 'USER1', '03-12-2020-OD-016'),
(17, '03-12-2020', 'Others', 'Cellphone', 'banana123', '10', 'New', 'Anonymous', 'Good', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-017'),
(18, '03-12-2020', 'Others', 'testulit', 'this is red', '79', 'New', 'rjito', 'reotuyiu', 'Received', '00/00/0000', 'ADMIN1', '03-12-2020-OD-018');

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
(1, 'null', 'BDOs'),
(2, 'Online', 'GCash'),
(3, 'Bank', 'Security Bank'),
(4, 'Online', 'PayMaya'),
(5, 'Bank', 'AUB'),
(6, 'Bank', '34323wre');

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
(1, '02-29-2020', 'School Supplies', 'Cellphone', 'kdjlkkgfjdfhjdyo', '1378658', '69uioyito', 'ghkjhnghkjlkji', 'Pending', '03-12-2020', 'USER1', '02-29-2020-SD-001'),
(2, '02-29-2020', 'School Supplies', 'Paper', 'gfngjhgkj', '46589', 'sryryhjgjk', 'srthbb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-002'),
(3, '02-29-2020', 'School Supplies', 'Cellphone', 'e667ky', 'wq43', 'we46gf', 'dyru', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-003'),
(4, '02-29-2020', 'School Supplies', 'Cellphone', 'wtytk', '2343dw', 'trgu568', 'dte5t4', 'Released', '03-01-2020', 'USER1', '02-29-2020-SD-004'),
(5, '02-29-2020', 'School Supplies', 'Cellphone', 'fyughtyu', 'q43sad', 'eyefh', 'yerfga', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-005'),
(6, '02-29-2020', 'School Supplies', 'Cellphone', 'ftia', '35', 'dfdj', '5jhvb', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-006'),
(7, '02-29-2020', 'School Supplies', 'Cellphone', 'drefh', 'st345t', 'erwfdg', 'cdghtj', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-007'),
(8, '02-29-2020', 'School Supplies', 'Notebook', 'sft5j', 'deer4', 'q35gfg', 'htiyhfger', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-008'),
(9, '02-29-2020', 'School Supplies', 'Crayons', 'test  again 1345', '6567', 'gfghj', 'wwrewd', 'Received', '00/00/0000', 'USER1', '02-29-2020-SD-009'),
(10, '03-01-2020', 'School Supplies', 'Notebook', 'Mega Sardines', '789', 'sdf;jsd', 'djkjsklf', 'Received', '00/00/0000', 'USER1', '03-01-2020-SD-010');

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
(2, 'user2', 'user2', 'User', 'Inactive', 'USER2', '5463421', 'user2@email.com'),
(3, 'admin1', 'admin1', 'Admin', 'Active', 'ADMIN1', '4778684339798', 'admin@admin.com'),
(4, 'admin2', 'admin2', 'Admin', 'Inactive', 'ADMIN2', '7894556246', 'admin2@email.com'),
(5, 'admin', 'admin', 'Admin', 'Active', 'ADMIN', '7895545', 'admin@admin.com'),
(6, 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
(7, 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
(8, 'null', 'null', 'null', 'null', 'null', 'null', 'null');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `edit_request`
--
ALTER TABLE `edit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foods_donate`
--
ALTER TABLE `foods_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `paymet`
--
ALTER TABLE `paymet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school_donate`
--
ALTER TABLE `school_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
