-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 jun 2016 om 14:05
-- Serverversie: 10.1.9-MariaDB
-- PHP-versie: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hartige_hap`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Paap');

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `brandtypeproduct`
--
CREATE TABLE `brandtypeproduct` (
`name` varchar(50)
,`b_id` int(11)
,`type` varchar(50)
,`t_id` int(11)
,`description` text
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'paprikas'),
(5, 'bananen'),
(6, 'paprikas');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `consumption`
--

CREATE TABLE `consumption` (
  `ConsumptionNumber` int(11) NOT NULL,
  `ConsumptionName` varchar(30) NOT NULL,
  `ConsumptionPrice` int(11) NOT NULL,
  `ConsumptionTime` int(11) NOT NULL,
  `ConsumptionType` enum('appetizer','maindish','hot beverage','salad','drink','dessert') NOT NULL DEFAULT 'maindish',
  `Info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `consumption`
--

INSERT INTO `consumption` (`ConsumptionNumber`, `ConsumptionName`, `ConsumptionPrice`, `ConsumptionTime`, `ConsumptionType`, `Info`) VALUES
(1, 'Bacon and Eggs', 2, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(2, 'Salade', 2, 10, 'salad', 'Er is geen informatie over dit gerecht.'),
(3, 'Tomatensoep', 2, 10, 'appetizer', 'Met zoete rode paprika''s en passata maakt u een mooie, rode soep die verfijnd is. Gegarneerd met creme fraiche en geserveerd met warm pestobrood.\n\nIngredienten:\n\nstokbrood\nel pesto\nel olijfolie, extra vergine\nui, grofgesneden\nteentje knoflook, fijngesneden\nrode paprika , zonder zaden en grofgesneden\ngroentebouillon, bij voorkeur zelfgemaakte\npassata\nfijngehakte verse tijm \ngemalen kaneel\nsuiker\npeper en zout'),
(4, 'Kippensoep', 2, 10, 'appetizer', 'Er is geen informatie over dit gerecht.'),
(5, 'Pompoensoep', 2, 10, 'appetizer', 'Er is geen informatie over dit gerecht.'),
(6, 'Gevulde eieren', 3, 10, 'appetizer', 'Er is geen informatie over dit gerecht.'),
(7, 'Pita broodje met gegrilde kaas', 5, 20, 'maindish', 'Er is geen informatie over dit gerecht.'),
(8, 'Wrap met kip', 6, 20, 'maindish', 'Er is geen informatie over dit gerecht.'),
(9, 'Vis met panko en tomaat', 8, 20, 'maindish', 'Er is geen informatie over dit gerecht.'),
(10, 'Lasagne bolognese', 8, 25, 'maindish', 'Er is geen informatie over dit gerecht.'),
(11, 'Sate', 6, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(12, 'Friet', 3, 10, 'maindish', 'Er is geen informatie over dit gerecht.'),
(13, 'Biefstuk', 10, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(14, 'Noedels met garnalen', 8, 20, 'maindish', 'Er is geen informatie over dit gerecht.'),
(15, 'Oosterse stamppot', 10, 25, 'maindish', 'Er is geen informatie over dit gerecht.'),
(16, 'Zalm teriyaki', 10, 20, 'maindish', 'Er is geen informatie over dit gerecht.'),
(17, 'Boerenkool curry', 8, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(18, 'Gehaktbal', 8, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(19, 'Witlof schotel', 10, 15, 'maindish', 'Er is geen informatie over dit gerecht.'),
(20, 'Kibbeling', 8, 10, 'maindish', 'Er is geen informatie over dit gerecht.'),
(21, 'Cola', 2, 5, 'drink', 'Er is geen informatie over dit gerecht.'),
(22, 'Appelsap', 2, 5, 'drink', 'Er is geen informatie over dit gerecht.'),
(23, 'Fristi', 2, 5, 'drink', 'Er is geen informatie over dit gerecht.'),
(24, 'Water', 1, 5, 'drink', 'Er is geen informatie over dit gerecht.'),
(25, 'Chocomel', 2, 5, 'drink', 'Er is geen informatie over dit gerecht.'),
(26, 'Warme Chocolademelk', 2, 10, 'hot beverage', 'Er is geen informatie over dit gerecht.'),
(29, 'Koffie', 2, 5, 'hot beverage', 'Er is geen informatie over dit gerecht.'),
(30, 'Thee', 2, 5, 'hot beverage', 'Er is geen informatie over dit gerecht.'),
(31, 'Vanille Puddig', 3, 10, 'dessert', 'Er is geen informatie over dit gerecht.'),
(32, 'Chocolade Pudding', 3, 10, 'dessert', 'Er is geen informatie over dit gerecht.'),
(33, 'Vanille Ijs', 3, 10, 'dessert', 'Er is geen informatie over dit gerecht.'),
(34, 'Chocolade Ijs', 3, 10, 'dessert', 'Er is geen informatie over dit gerecht.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `consumptionorder`
--

CREATE TABLE `consumptionorder` (
  `consumptionorderid` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `ConsumptionNumber` int(11) NOT NULL,
  `ConsumptionStatus` enum('0','1','2','3','4','5') NOT NULL,
  `EmployeeNr` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `consumptionorder`
--

INSERT INTO `consumptionorder` (`consumptionorderid`, `OrderNumber`, `ConsumptionNumber`, `ConsumptionStatus`, `EmployeeNr`) VALUES
(1, 1, 1, '4', 2),
(2, 4, 1, '4', 2),
(3, 5, 1, '4', 2),
(4, 0, 1, '0', 0),
(7, 8, 1, '4', 2),
(8, 9, 1, '4', 2),
(9, 10, 1, '4', 2),
(10, 11, 1, '4', 2),
(11, 12, 7, '4', 2),
(12, 13, 8, '4', 2),
(13, 14, 9, '4', 2),
(14, 6, 1, '4', 2),
(15, 6, 9, '4', 2),
(16, 6, 22, '4', 2),
(17, 6, 25, '4', 2),
(18, 7, 18, '4', 2),
(19, 7, 8, '4', 2),
(20, 7, 21, '4', 2),
(21, 7, 22, '4', 2),
(22, 7, 5, '4', 2),
(23, 8, 22, '4', 2),
(24, 8, 8, '4', 2),
(25, 8, 34, '4', 2),
(26, 8, 17, '4', 2),
(27, 8, 21, '4', 2),
(144, 14, 2, '1', NULL),
(145, 15, 26, '0', NULL),
(146, 15, 29, '0', NULL),
(147, 15, 30, '0', NULL),
(148, 15, 31, '0', NULL),
(149, 15, 32, '0', NULL),
(150, 15, 33, '0', NULL),
(151, 16, 3, '0', NULL),
(152, 16, 4, '0', NULL),
(153, 16, 5, '0', NULL),
(154, 16, 1, '0', NULL),
(155, 16, 7, '0', NULL),
(156, 16, 8, '0', NULL),
(157, 16, 26, '0', NULL),
(158, 16, 29, '0', NULL),
(159, 16, 30, '0', NULL),
(160, 17, 3, '0', NULL),
(161, 17, 4, '0', NULL),
(162, 17, 5, '0', NULL),
(163, 17, 1, '0', NULL),
(164, 17, 7, '0', NULL),
(165, 17, 8, '0', NULL),
(166, 17, 26, '0', NULL),
(167, 17, 29, '0', NULL),
(168, 17, 30, '0', NULL),
(169, 17, 30, '0', NULL),
(170, 18, 1, '0', NULL),
(171, 18, 7, '0', NULL),
(172, 18, 8, '0', NULL),
(173, 18, 26, '0', NULL),
(174, 18, 29, '0', NULL),
(175, 18, 30, '0', NULL),
(176, 18, 31, '0', NULL),
(177, 18, 32, '0', NULL),
(178, 18, 33, '0', NULL),
(179, 20, 3, '0', NULL),
(180, 20, 3, '0', NULL),
(181, 20, 3, '0', NULL),
(182, 20, 4, '0', NULL),
(183, 20, 4, '0', NULL),
(184, 20, 1, '0', NULL),
(185, 20, 7, '0', NULL),
(186, 20, 8, '0', NULL),
(187, 22, 3, '0', NULL),
(188, 22, 3, '0', NULL),
(189, 22, 4, '0', NULL),
(190, 22, 4, '0', NULL),
(191, 23, 3, '0', NULL),
(192, 23, 3, '0', NULL),
(193, 23, 4, '0', NULL),
(194, 23, 4, '0', NULL),
(195, 23, 26, '0', NULL),
(196, 24, 3, '0', NULL),
(197, 24, 3, '0', NULL),
(198, 24, 4, '0', NULL),
(199, 24, 4, '0', NULL),
(200, 24, 26, '0', NULL),
(201, 25, 3, '0', NULL),
(202, 25, 3, '0', NULL),
(203, 25, 4, '0', NULL),
(204, 25, 4, '0', NULL),
(205, 25, 5, '0', NULL),
(206, 25, 5, '0', NULL),
(207, 25, 1, '0', NULL),
(208, 25, 1, '0', NULL),
(209, 25, 7, '0', NULL),
(210, 25, 7, '0', NULL),
(211, 25, 8, '0', NULL),
(212, 25, 8, '0', NULL),
(213, 26, 4, '0', NULL),
(214, 26, 4, '0', NULL),
(215, 26, 5, '0', NULL),
(216, 26, 5, '0', NULL),
(217, 27, 7, '0', NULL),
(218, 27, 7, '0', NULL),
(219, 27, 8, '0', NULL),
(220, 27, 8, '0', NULL),
(221, 27, 21, '0', NULL),
(222, 27, 22, '0', NULL),
(223, 27, 23, '0', NULL),
(224, 27, 26, '0', NULL),
(225, 27, 26, '0', NULL),
(226, 27, 29, '0', NULL),
(227, 27, 29, '0', NULL),
(228, 27, 30, '0', NULL),
(229, 27, 30, '0', NULL),
(230, 27, 31, '0', NULL),
(231, 27, 32, '0', NULL),
(232, 27, 33, '0', NULL),
(233, 28, 26, '0', NULL),
(234, 28, 29, '0', NULL),
(235, 28, 30, '0', NULL),
(236, 28, 31, '0', NULL),
(237, 28, 32, '0', NULL),
(238, 28, 33, '0', NULL),
(239, 29, 26, '0', NULL),
(240, 29, 29, '0', NULL),
(241, 29, 30, '0', NULL),
(242, 29, 31, '0', NULL),
(243, 29, 32, '0', NULL),
(244, 29, 33, '0', NULL),
(245, 35, 26, '0', NULL),
(246, 35, 29, '0', NULL),
(247, 41, 1, '0', NULL),
(248, 41, 7, '0', NULL),
(249, 41, 8, '0', NULL),
(250, 41, 21, '0', NULL),
(251, 41, 22, '0', NULL),
(252, 41, 23, '0', NULL),
(253, 41, 26, '0', NULL),
(254, 41, 26, '0', NULL),
(255, 41, 29, '0', NULL),
(256, 41, 29, '0', NULL),
(257, 41, 29, '0', NULL),
(258, 41, 30, '0', NULL),
(259, 45, 30, '0', NULL),
(260, 45, 30, '0', NULL),
(261, 48, 26, '0', NULL),
(262, 48, 26, '0', NULL),
(263, 48, 26, '0', NULL),
(264, 48, 29, '0', NULL),
(265, 48, 29, '0', NULL),
(266, 48, 29, '0', NULL),
(267, 48, 29, '0', NULL),
(268, 48, 30, '0', NULL),
(269, 48, 30, '0', NULL),
(270, 48, 30, '0', NULL),
(271, 48, 30, '0', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `consumption_product`
--

CREATE TABLE `consumption_product` (
  `Description` varchar(256) NOT NULL,
  `Amount` int(10) NOT NULL,
  `ConsumptionNumber` int(11) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `date`
--

CREATE TABLE `date` (
  `ID` int(11) NOT NULL,
  `Daytime` enum('ochtend','middag','avond') NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `date`
--

INSERT INTO `date` (`ID`, `Daytime`, `Date`) VALUES
(1, 'ochtend', '2016-06-09'),
(2, 'middag', '2016-06-09');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `employee`
--

CREATE TABLE `employee` (
  `EmployeeNr` smallint(6) NOT NULL,
  `EmployeeName` varchar(30) NOT NULL,
  `EmployeeLastname` varchar(30) NOT NULL,
  `AccountType` enum('keuken','bediening','manager','planner') NOT NULL,
  `Password` varchar(15) NOT NULL,
  `ContractUren` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `employee`
--

INSERT INTO `employee` (`EmployeeNr`, `EmployeeName`, `EmployeeLastname`, `AccountType`, `Password`, `ContractUren`) VALUES
(1, 'Erik', 'Koolen', 'keuken', '1234', 38),
(2, 'Damijan', 'Khebal', 'bediening', '1234', 38),
(3, 'Matthijs', 'Wilhelmus', 'keuken', '1234', 38),
(4, 'Nick', 'Burggraaff', 'keuken', '1234', 38);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceNumber` int(11) NOT NULL,
  `TotalCost` double NOT NULL,
  `TimePaid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `invoice`
--

INSERT INTO `invoice` (`InvoiceNumber`, `TotalCost`, `TimePaid`) VALUES
(1, 43, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `location`
--

INSERT INTO `location` (`id`, `location`) VALUES
(1, 'koeling 1'),
(2, 'koeling 2'),
(3, 'magazijn-vak 1'),
(4, 'magazijn-vak2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `logging`
--

CREATE TABLE `logging` (
  `ProductID` int(4) NOT NULL,
  `Date` datetime NOT NULL,
  `Description` varchar(32) NOT NULL,
  `Gebruiker` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `logging`
--

INSERT INTO `logging` (`ProductID`, `Date`, `Description`, `Gebruiker`) VALUES
(1, '2016-06-20 13:30:16', 'INSERT', 'root@localhost'),
(2, '2016-06-20 13:30:16', 'INSERT', 'root@localhost'),
(4, '2016-06-17 10:40:00', 'INSERT', 'root@localhost'),
(100, '2016-06-19 16:08:06', 'INSERT', 'root@localhost'),
(101, '2016-06-20 12:46:02', 'INSERT', 'root@localhost'),
(102, '2016-06-20 12:52:24', 'INSERT', 'root@localhost'),
(103, '2016-06-20 12:52:27', 'INSERT', 'root@localhost'),
(104, '2016-06-20 12:52:34', 'INSERT', 'root@localhost');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order`
--

CREATE TABLE `order` (
  `OrderNumber` int(11) NOT NULL,
  `TimeOrdered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusNumber` int(1) NOT NULL DEFAULT '0',
  `TableNumber` int(11) NOT NULL,
  `InvoiceNumber` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `order`
--

INSERT INTO `order` (`OrderNumber`, `TimeOrdered`, `StatusNumber`, `TableNumber`, `InvoiceNumber`) VALUES
(1, '2016-06-01 17:26:36', 0, 1, 0),
(4, '2016-06-01 17:56:09', 0, 1, 0),
(5, '2016-06-01 17:56:16', 0, 1, 0),
(6, '2016-06-01 19:34:43', 1, 10, 0),
(7, '2016-06-02 09:16:55', 6, 12, 1),
(8, '2016-06-02 09:17:43', 6, 12, 1),
(9, '2016-06-03 17:53:36', 1, 1, 0),
(10, '2016-06-08 08:13:21', 1, 1, 0),
(11, '2016-06-08 08:13:59', 1, 1, 0),
(12, '2016-06-08 08:13:59', 1, 1, 0),
(13, '2016-06-08 08:13:59', 1, 1, 0),
(14, '2016-06-08 08:13:59', 1, 1, 0),
(15, '2016-06-20 08:21:30', 1, 1, NULL),
(16, '2016-06-20 08:28:12', 1, 3, 1),
(17, '2016-06-20 08:28:29', 1, 3, 1),
(18, '2016-06-20 08:32:37', 1, 1, 1),
(19, '2016-06-20 10:16:32', 1, 1, 1),
(20, '2016-06-20 10:18:24', 1, 1, 1),
(21, '2016-06-20 10:19:28', 1, 1, 1),
(22, '2016-06-20 10:25:58', 1, 1, 1),
(23, '2016-06-20 10:26:09', 1, 1, 1),
(24, '2016-06-20 10:26:32', 1, 1, 1),
(25, '2016-06-20 10:38:59', 1, 1, 1),
(26, '2016-06-20 10:41:03', 1, 1, 1),
(27, '2016-06-20 10:41:39', 1, 1, 1),
(28, '2016-06-20 10:41:58', 1, 1, 1),
(29, '2016-06-20 10:42:38', 1, 1, 1),
(30, '2016-06-20 11:10:11', 1, 1, 1),
(31, '2016-06-20 11:13:32', 1, 1, 1),
(32, '2016-06-20 11:14:20', 1, 1, 1),
(33, '2016-06-20 11:17:17', 1, 1, 1),
(34, '2016-06-20 11:18:25', 1, 1, 1),
(35, '2016-06-20 11:20:11', 1, 1, 1),
(36, '2016-06-20 11:20:37', 1, 1, 1),
(37, '2016-06-20 11:20:45', 1, 1, 1),
(38, '2016-06-20 11:20:54', 1, 1, 1),
(39, '2016-06-20 11:22:28', 1, 1, 1),
(40, '2016-06-20 11:22:36', 1, 1, 1),
(41, '2016-06-20 11:30:07', 1, 1, 1),
(42, '2016-06-20 11:32:47', 1, 1, 1),
(43, '2016-06-20 11:36:21', 1, 1, 1),
(44, '2016-06-20 11:37:00', 1, 1, 1),
(45, '2016-06-20 11:52:45', 1, 1, 1),
(46, '2016-06-20 11:53:03', 1, 1, 1),
(47, '2016-06-20 11:54:30', 1, 1, 1),
(48, '2016-06-20 11:55:51', 1, 1, 1),
(49, '2016-06-20 11:56:01', 1, 1, 1),
(50, '2016-06-20 11:58:10', 1, 1, 1),
(51, '2016-06-20 11:59:45', 1, 1, 1),
(52, '2016-06-20 12:00:50', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `performanceoverview`
--

CREATE TABLE `performanceoverview` (
  `EmployeeNr` smallint(6) NOT NULL,
  `OrderNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `min_amount` int(5) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `type_id`, `order_number`, `min_amount`, `description`, `status_id`) VALUES
(2, 1, 2, 2, '2', 2),
(101, 1, 1, 60, 'Hallo!', 2);

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `LoggingTrigger` AFTER INSERT ON `product` FOR EACH ROW INSERT INTO logging VALUES (New.id, NOW(), "INSERT", CURRENT_USER)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `productview`
--
CREATE TABLE `productview` (
`name` varchar(50)
,`description` text
,`id` int(11)
,`min_amount` int(5)
,`amount` int(5)
);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_storage`
--

CREATE TABLE `product_storage` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `amount` int(5) NOT NULL,
  `exp_date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product_storage`
--

INSERT INTO `product_storage` (`id`, `location_id`, `amount`, `exp_date`, `product_id`) VALUES
(1, 2, 0, '2016-05-06', 1),
(3, 2, 0, '2016-11-23', 1),
(4, 3, 0, '2015-12-23', 1),
(5, 1, 0, '2016-05-25', 1),
(6, 1, 0, '2016-05-25', 1),
(7, 1, 0, '2016-05-29', 1),
(8, 1, 0, '2016-06-07', 1),
(9, 1, 0, '2016-06-07', 1),
(10, 3, 0, '2016-06-07', 1),
(11, 2, 0, '2016-06-08', 1),
(12, 1, 0, '2016-06-07', 1),
(13, 3, 0, '2016-06-07', 1),
(14, 1, 0, '2016-06-20', 1),
(15, 1, 200, '2016-06-20', 1),
(16, 1, 1, '2016-06-20', 1),
(17, 1, 0, '2016-06-20', 1),
(18, 1, 0, '2016-06-20', 3),
(19, 1, 0, '2016-06-20', 3),
(20, 1, 2000, '2016-06-20', 100),
(25, 1, 200, '2016-06-20', 4),
(28, 1, 200, '2016-06-20', 2),
(29, 1, 6, '2016-06-20', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schedule`
--

CREATE TABLE `schedule` (
  `EmployeeNr` smallint(6) NOT NULL,
  `ID` int(11) NOT NULL,
  `AttendanceCheck` enum('afwezig','aanwezig') NOT NULL DEFAULT 'afwezig'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `schedule`
--

INSERT INTO `schedule` (`EmployeeNr`, `ID`, `AttendanceCheck`) VALUES
(1, 1, 'afwezig'),
(2, 2, 'afwezig'),
(3, 2, 'afwezig');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'NIET LEVERBAAR'),
(2, 'NIET OP VOORRAAD'),
(3, 'NIET LEVERBAAR');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table`
--

CREATE TABLE `table` (
  `TableNumber` int(2) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `Pay` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `table`
--

INSERT INTO `table` (`TableNumber`, `CustomerName`, `Pay`) VALUES
(1, '', 0),
(2, '', 0),
(3, '', 0),
(4, '', 0),
(5, '', 0),
(6, 'Hendrik Berend de 7e', 0),
(7, 'Hendrik Berend de 6e', 0),
(8, '', 0),
(9, '', 0),
(10, '', 0),
(11, '', 0),
(12, 'Hertog Jannetje', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `type`
--

INSERT INTO `type` (`id`, `brand_id`, `category_id`, `name`) VALUES
(1, 1, 1, 'blauw');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `write_off`
--

CREATE TABLE `write_off` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `amount` decimal(11,0) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `write_off`
--

INSERT INTO `write_off` (`id`, `product_id`, `storage_id`, `amount`, `reason`, `date`) VALUES
(1, 2, 6, '100', 'Gewoon een foutje kill', '2016-06-08 00:00:00'),
(2, 1, 1, '5', 'Gevallen', '2016-06-20 00:49:12'),
(3, 1, 5, '5', 'Oeps, gevallen', '2016-06-20 00:49:35'),
(4, 1, 3, '12', 'Kut', '2016-06-20 00:50:01'),
(5, 1, 9, '99', 'Tyfte er gewoon uit, godverdomme\n', '2016-06-20 00:52:31'),
(6, 1, 11, '20', 'test', '2016-06-20 11:13:45'),
(7, 1, 17, '60', 'Hoi', '2016-06-20 13:33:50'),
(8, 2, 28, '20', 'Stinkt naar pis', '2016-06-20 13:36:19'),
(9, 2, 29, '3', 'test', '2016-06-20 14:02:32'),
(10, 2, 29, '3', 'test', '2016-06-20 13:36:19');

-- --------------------------------------------------------

--
-- Structuur voor de view `brandtypeproduct`
--
DROP TABLE IF EXISTS `brandtypeproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `brandtypeproduct`  AS  select `brand`.`name` AS `name`,`brand`.`id` AS `b_id`,`type`.`name` AS `type`,`type`.`id` AS `t_id`,`product`.`description` AS `description`,`product`.`id` AS `id` from ((`brand` join `type`) join `product`) ;

-- --------------------------------------------------------

--
-- Structuur voor de view `productview`
--
DROP TABLE IF EXISTS `productview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productview`  AS  select `brand`.`name` AS `name`,`product`.`description` AS `description`,`product`.`id` AS `id`,`product`.`min_amount` AS `min_amount`,`product_storage`.`amount` AS `amount` from (((`product` join `product_storage`) join `brand`) join `type`) ;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `consumption`
--
ALTER TABLE `consumption`
  ADD PRIMARY KEY (`ConsumptionNumber`);

--
-- Indexen voor tabel `consumptionorder`
--
ALTER TABLE `consumptionorder`
  ADD PRIMARY KEY (`consumptionorderid`);

--
-- Indexen voor tabel `consumption_product`
--
ALTER TABLE `consumption_product`
  ADD KEY `ConsumptionNumber` (`ConsumptionNumber`),
  ADD KEY `productID` (`productID`);

--
-- Indexen voor tabel `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeNr`);

--
-- Indexen voor tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceNumber`);

--
-- Indexen voor tabel `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `logging`
--
ALTER TABLE `logging`
  ADD PRIMARY KEY (`ProductID`,`Date`,`Description`);

--
-- Indexen voor tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderNumber`);

--
-- Indexen voor tabel `performanceoverview`
--
ALTER TABLE `performanceoverview`
  ADD PRIMARY KEY (`EmployeeNr`,`OrderNumber`),
  ADD KEY `EmployeeNr` (`EmployeeNr`),
  ADD KEY `BestellingID` (`OrderNumber`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexen voor tabel `product_storage`
--
ALTER TABLE `product_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`product_id`);

--
-- Indexen voor tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`EmployeeNr`,`ID`),
  ADD KEY `EmployeeNr` (`EmployeeNr`),
  ADD KEY `ID` (`ID`);

--
-- Indexen voor tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`TableNumber`);

--
-- Indexen voor tabel `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `write_off`
--
ALTER TABLE `write_off`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `consumption`
--
ALTER TABLE `consumption`
  MODIFY `ConsumptionNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT voor een tabel `consumptionorder`
--
ALTER TABLE `consumptionorder`
  MODIFY `consumptionorderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT voor een tabel `date`
--
ALTER TABLE `date`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeNr` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `InvoiceNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `order`
--
ALTER TABLE `order`
  MODIFY `OrderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT voor een tabel `product_storage`
--
ALTER TABLE `product_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT voor een tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `write_off`
--
ALTER TABLE `write_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `performanceoverview`
--
ALTER TABLE `performanceoverview`
  ADD CONSTRAINT `performanceoverview_ibfk_1` FOREIGN KEY (`EmployeeNr`) REFERENCES `employee` (`EmployeeNr`) ON UPDATE CASCADE,
  ADD CONSTRAINT `performanceoverview_ibfk_2` FOREIGN KEY (`OrderNumber`) REFERENCES `order` (`OrderNumber`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Beperkingen voor tabel `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_4` FOREIGN KEY (`EmployeeNr`) REFERENCES `employee` (`EmployeeNr`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_5` FOREIGN KEY (`ID`) REFERENCES `date` (`ID`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `type_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
