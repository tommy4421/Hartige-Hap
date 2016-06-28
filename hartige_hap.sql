-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 jun 2016 om 18:47
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
(1, 'testin'),
(2, 'testin'),
(3, 'testin'),
(4, 'testin'),
(5, 'testin'),
(6, 'testin'),
(7, 'testin'),
(8, 'testin'),
(9, 'testin'),
(10, 'testin'),
(11, 'testin'),
(12, 'testin'),
(13, 'testin'),
(14, 'testin'),
(15, 'testin'),
(16, 'testin'),
(17, 'testin'),
(18, 'testin'),
(19, 'testin'),
(20, 'testin'),
(21, 'testin'),
(22, 'testin'),
(23, 'testin');

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
(5, 'paprikas'),
(6, 'paprikas'),
(7, 'paprikas'),
(8, 'paprikas'),
(9, 'paprikas'),
(10, 'paprikas'),
(11, 'paprikas'),
(12, 'paprikas'),
(13, 'paprikas'),
(14, 'paprikas'),
(15, 'paprikas'),
(16, 'paprikas'),
(17, 'paprikas'),
(18, 'paprikas'),
(19, 'paprikas'),
(20, 'paprikas'),
(21, 'paprikas'),
(22, 'paprikas'),
(23, 'paprikas'),
(24, 'paprikas'),
(25, 'paprikas'),
(26, 'paprikas'),
(27, 'paprikas'),
(28, 'paprikas');

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
  `Info` text NOT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `consumption`
--

INSERT INTO `consumption` (`ConsumptionNumber`, `ConsumptionName`, `ConsumptionPrice`, `ConsumptionTime`, `ConsumptionType`, `Info`, `in_stock`) VALUES
(1, 'Bacon and Eggs', 2, 15, 'maindish', 'Gebakken eieren en spek geserveerd met geroosterd brood.\r\n\r\nIngrediënten:\r\nverse eieren\r\nbacon\r\ngeroosterd brood', 1),
(2, 'Salade', 2, 10, 'salad', 'Een niçoise salade werd oorspronkelijk in Zuid-Frankrijk voor vissers die terugkeerden van zee gemaakt. Een smakelijke en gezonde salade. \r\n\r\nIngrediënten:\r\nRode wijnazijn\r\nOlijfolie\r\nzout en versgemalen zwarte peper\r\nGedroogde rozemarijn\r\nGekookte eieren', 1),
(3, 'Tomatensoep', 2, 10, 'appetizer', 'Met zoete rode paprika''s en passata maakt u een mooie, rode soep die verfijnd is. Gegarneerd met creme fraiche en geserveerd met warm pestobrood.\n\nIngredienten:\n\nstokbrood\nel pesto\nel olijfolie, extra vergine\nui, grofgesneden\nteentje knoflook, fijngesneden\nrode paprika , zonder zaden en grofgesneden\ngroentebouillon, bij voorkeur zelfgemaakte\npassata\nfijngehakte verse tijm \ngemalen kaneel\nsuiker\npeper en zout', 1),
(4, 'Kippensoep', 2, 10, 'appetizer', 'Bevat pasta, stukjes kip en een waaier aan beetgare groenten. \r\n\r\n\r\nIngrediënten:\r\n\r\nspaghetti of linguine\r\nworteltje, overlangs doorgesneden en in dunne plakjes gesneden\r\nbleekselderij, in dunne plakjes gesneden\r\nkleine broccoliroosjes\r\nmaïs, uitgelekt\r\nfijngehakte verse peterselie\r\nverse tijmblaadjes\r\nKippenbouillon', 1),
(5, 'Pompoensoep', 2, 10, 'appetizer', 'De soep wordt gekruid met kerriepoeder, piment en gember. Serveer met vers knapperig brood.\r\n\r\nIngrediënten:\r\n\r\nin blokjes gesneden pompoen\r\nzure appel, in blokjes gesneden\r\nfijngehakte ui\r\nknoflook, fijn gesneden\r\nolijfolie\r\nbouillon\r\npompoenpitten\r\nroom\r\nzout en peper\r\nkerriepoeder\r\ngemalen piment\r\ngemalen gember\r\nbalsamico\r\nsoja saus', 1),
(6, 'Gevulde eieren', 3, 10, 'appetizer', 'Klassiek recept.\r\n\r\nIngrediënten:\r\neieren\r\npaprikapoeder\r\nmayonaise\r\nmosterdpoeder of fijne mosterd', 1),
(7, 'Pita broodje met gegrilde kaas', 5, 20, 'maindish', 'Vegetarisch broodje met gegrilde halloumi kaas en aubergine en een pittige saus\r\n\r\nIngrediënten:\r\npitabroodjes\r\nhalloumi kaas (AH of jumbo)\r\naubergine\r\nsla\r\npeper en zout\r\nGriekse yoghurt\r\nharissa', 1),
(8, 'Wrap met kip', 6, 20, 'maindish', 'Goed gevulde wraps met stukjes gegaarde pikante kip en avocado\r\n\r\nIngrediënten:\r\nwrap\r\nkipfilets\r\nHandje sla\r\navocado\r\nzure room\r\ntomaatjes\r\nrode ui\r\nknoflook\r\npaprikapoeder\r\nketchup\r\npeper en zout\r\nchilipoeder', 1),
(9, 'Vis met panko en tomaat', 8, 20, 'maindish', 'Vis uit de oven met een knapperig korstje en zoete geroosterde tomaatjes\r\n\r\nIngrediënten:\r\nschelvis\r\ntomaatjes (aan tak)\r\npanko (japans broodkruim)\r\nblaadjes verse basilicum\r\ncitroensap\r\npeper en zout\r\nolie\r\n', 1),
(10, 'Lasagne bolognese', 8, 25, 'maindish', 'Heerlijke zelfgemaakte lasagne met laagjes gehaktsaus en bechamelsaus.\r\n\r\nIngrediënten:\r\ngehakt\r\nbechamelsaus \r\nlasagnevellen (vers)\r\ntomatenblokjes\r\nui\r\nknoflook\r\nwortel\r\ntomatenpuree\r\npaprika\r\npeper en zout\r\ntijm\r\noregano\r\ngeraspte kaas\r\nmozzarella', 1),
(11, 'Sate', 6, 15, 'maindish', 'Een heerlijke Aziatische marinade en saus voor kip en rundvlees.\r\n\r\nIngrediënten: \r\nrode ui, fijngehakt\r\nknoflooktenen, fijngehakt\r\ncitroengras\r\nsojasaus\r\narachideolie (pindaolie)\r\ngemalen kurkuma\r\nbruine suiker\r\ngemalen komijn\r\ngemalen gember\r\nkipfilet, platgeslagen\r\n', 1),
(12, 'Friet', 3, 10, 'maindish', 'Puntzakje met friet', 1),
(13, 'Biefstuk', 10, 15, 'maindish', 'De krachtige smaak van gorgonzola komt extra goed tot zijn recht in deze saus gecombineerd met biefstuk\r\n\r\nIngrediënten:\r\nbiefstuk\r\ngorgonzola\r\nslagroom\r\nmelk\r\nbloem', 1),
(14, 'Noedels met garnalen', 8, 20, 'maindish', 'Oosters gerecht met garnalen en paprika uit de wok en lekkere noedels\r\n\r\nIngrediënten:\r\n\r\nnoedels\r\ngarnalen\r\nbosuitjes\r\nteriyaki saus\r\nrood pepertje\r\neetlepel wokolie\r\nrode paprika\r\nshi take\r\nknoflook\r\nsesamzaadjes', 1),
(15, 'Oosterse stamppot', 10, 25, 'maindish', 'Zin in iets anders? Probeer eens deze lekkere stamppot met kokosmelk, paksoi en cashewnoten\r\n\r\nIngrediënten:\r\naardappels (kruimig)\r\npaksoi\r\nuitjes\r\nrode peper\r\nknoflook\r\nkokosmelk\r\nkastanjechampignons\r\ntaugé\r\nteriyakisaus\r\ncashewnoten', 1),
(16, 'Zalm teriyaki', 10, 20, 'maindish', 'Zalm in een licht zoete Oosterse saus bereid in de oven, lekker met noedels of roerbakgroenten\r\n\r\nIngrediënten:\r\nsojasaus\r\ndonkere basterdsuiker\r\nknoflook\r\nmaizena\r\nsesamolie\r\nsesamzaadjes\r\nbosui', 1),
(17, 'Boerenkool curry', 8, 15, 'maindish', 'Makkelijke vegetarische curry met kikkererwten, boerenkool en cashewnoten\r\n\r\nIngrediënten:\r\nboerenkool, fijngesneden\r\nkikkererwten\r\nkorma currypasta\r\nkokosmelk\r\ncashewnoten\r\nrode ui', 1),
(18, 'Gehaktbal', 8, 15, 'maindish', 'Gehaktballetjes in tomatensaus met mozzarella en basilicum uit de oven, lekker bij de pasta of wat brood\r\n\r\nIngrediënten:\r\ngehakt\r\nei\r\npaneermeel\r\ntomatenblokjes uit pak of blik\r\ncherrytomaatjes\r\nmozzarella balletjes\r\nVerse basiliucm', 1),
(19, 'Witlof schotel', 10, 15, 'maindish', 'Lekkere winterse kost: romige aardappelpuree met bieslook met witlof rolletjes met ham en kaas\r\n\r\nIngrediënten:\r\nwitlof\r\nham\r\nkruimige aardappels\r\nverse bieslook\r\ncreme fraiche\r\nmelk\r\nkaas', 1),
(20, 'Kibbeling', 8, 10, 'maindish', 'Deze gefrituurde vis snack van kabeljauw maak je makkelijk zelf met dit recept voor het beslag\r\n\r\nIngrediënten:\r\nkabeljauw\r\nbloem\r\nei\r\nmelk\r\ncitroensap\r\nverse dille\r\n', 1),
(21, 'Cola', 2, 5, 'drink', 'Glas Coca Cola', 1),
(22, 'Appelsap', 2, 5, 'drink', 'Glas verse appelsap', 1),
(23, 'Fristi', 2, 5, 'drink', 'Glas Fristi', 1),
(24, 'Water', 1, 5, 'drink', 'Glas water', 1),
(25, 'Chocomel', 2, 5, 'drink', 'Glas Chocomel', 1),
(26, 'Warme Chocolademelk', 2, 10, 'hot beverage', 'Warme chocolademelk met slagroom', 1),
(29, 'Koffie', 2, 5, 'hot beverage', 'Kopje verse koffie\r\n', 1),
(30, 'Thee', 2, 5, 'hot beverage', 'Kopje verse thee\r\n', 1),
(31, 'Vanille pudding', 3, 10, 'dessert', 'Schaal met vanille pudding\r\n', 1),
(32, 'Chocolade pudding', 3, 10, 'dessert', 'Schaal met chocolade pudding', 1),
(33, 'Vanille ijs', 3, 10, 'dessert', 'Schaal met vanille ijs (3 bolletjes)', 1),
(34, 'Chocolade ijs', 3, 10, 'dessert', 'Schaal met chocolade ijs (3 bolletjes).', 1);

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
(144, 14, 2, '1', 2),
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
(179, 20, 3, '3', 2),
(180, 20, 3, '3', 2),
(181, 20, 3, '3', 2),
(182, 20, 4, '3', 2),
(183, 20, 4, '3', 2),
(184, 20, 1, '3', 2),
(185, 20, 7, '3', 2),
(186, 20, 8, '3', 2),
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
(271, 48, 30, '0', NULL),
(272, 61, 3, '0', NULL),
(273, 61, 4, '0', NULL),
(274, 61, 5, '0', NULL),
(275, 61, 1, '0', NULL),
(276, 61, 7, '0', NULL),
(277, 61, 8, '0', NULL),
(278, 67, 29, '0', NULL),
(279, 67, 30, '0', NULL),
(280, 70, 29, '0', NULL),
(281, 70, 30, '0', NULL),
(282, 71, 29, '0', NULL),
(283, 71, 30, '0', NULL),
(284, 21, 25, '4', 2),
(285, 20, 25, '3', 2),
(286, 21, 4, '4', 2),
(287, 72, 4, '0', NULL),
(288, 72, 4, '0', NULL),
(289, 72, 4, '0', NULL),
(290, 72, 4, '0', NULL),
(291, 72, 7, '0', NULL),
(292, 72, 7, '0', NULL),
(293, 72, 7, '0', NULL),
(294, 72, 7, '0', NULL),
(295, 74, 4, '0', NULL),
(296, 74, 11, '0', NULL),
(297, 74, 11, '0', NULL),
(298, 74, 21, '0', NULL),
(299, 74, 21, '0', NULL),
(300, 74, 22, '0', NULL),
(301, 74, 26, '0', NULL),
(302, 74, 33, '0', NULL),
(303, 75, 13, '0', NULL),
(304, 75, 13, '0', NULL),
(305, 75, 13, '0', NULL),
(306, 75, 13, '0', NULL),
(307, 75, 13, '0', NULL),
(308, 75, 32, '0', NULL),
(309, 75, 32, '0', NULL),
(310, 75, 32, '0', NULL),
(311, 75, 32, '0', NULL),
(312, 75, 32, '0', NULL),
(313, 75, 32, '0', NULL),
(314, 76, 1, '0', NULL),
(315, 77, 3, '0', NULL),
(316, 77, 3, '0', NULL),
(317, 77, 3, '0', NULL),
(318, 77, 3, '0', NULL),
(319, 77, 3, '0', NULL),
(320, 77, 4, '0', NULL),
(321, 77, 4, '0', NULL),
(322, 77, 4, '0', NULL),
(323, 77, 4, '0', NULL),
(324, 77, 4, '0', NULL),
(325, 77, 5, '0', NULL),
(326, 77, 5, '0', NULL),
(327, 77, 5, '0', NULL),
(328, 77, 5, '0', NULL),
(329, 77, 5, '0', NULL),
(330, 77, 6, '0', NULL),
(331, 77, 6, '0', NULL),
(332, 77, 6, '0', NULL),
(333, 77, 6, '0', NULL),
(334, 77, 6, '0', NULL),
(335, 78, 3, '0', NULL),
(336, 78, 3, '0', NULL),
(337, 78, 3, '0', NULL),
(338, 78, 3, '0', NULL),
(339, 78, 3, '0', NULL),
(340, 78, 4, '0', NULL),
(341, 78, 4, '0', NULL),
(342, 78, 4, '0', NULL),
(343, 78, 4, '0', NULL),
(344, 78, 4, '0', NULL),
(345, 78, 5, '0', NULL),
(346, 78, 5, '0', NULL),
(347, 78, 5, '0', NULL),
(348, 78, 5, '0', NULL),
(349, 78, 5, '0', NULL),
(350, 78, 6, '0', NULL),
(351, 78, 6, '0', NULL),
(352, 78, 6, '0', NULL),
(353, 78, 6, '0', NULL),
(354, 78, 6, '0', NULL),
(355, 79, 26, '0', NULL),
(356, 79, 30, '0', NULL),
(357, 84, 3, '0', NULL),
(358, 84, 2, '0', NULL),
(359, 84, 2, '0', NULL),
(360, 84, 30, '0', NULL),
(361, 84, 30, '0', NULL),
(362, 85, 26, '0', NULL),
(363, 85, 26, '0', NULL),
(364, 85, 29, '0', NULL),
(365, 85, 29, '0', NULL),
(366, 85, 30, '0', NULL),
(367, 86, 21, '0', NULL),
(368, 86, 31, '0', NULL),
(369, 86, 32, '0', NULL),
(370, 86, 33, '0', NULL),
(371, 87, 3, '0', NULL),
(372, 87, 21, '0', NULL),
(373, 87, 31, '0', NULL),
(374, 87, 32, '0', NULL),
(375, 87, 33, '0', NULL),
(376, 88, 21, '0', NULL),
(377, 89, 22, '0', NULL),
(378, 89, 23, '0', NULL),
(379, 89, 31, '0', NULL),
(380, 89, 32, '0', NULL),
(381, 89, 33, '0', NULL),
(382, 90, 31, '0', NULL),
(383, 90, 31, '0', NULL),
(384, 90, 31, '0', NULL),
(385, 90, 31, '0', NULL),
(386, 90, 31, '0', NULL),
(387, 91, 5, '0', NULL),
(388, 91, 16, '0', NULL),
(389, 91, 22, '0', NULL),
(390, 91, 33, '0', NULL),
(391, 92, 15, '0', NULL),
(392, 92, 15, '0', NULL),
(393, 92, 16, '0', NULL),
(394, 92, 26, '0', NULL),
(395, 92, 29, '0', NULL),
(396, 92, 30, '0', NULL),
(397, 92, 30, '0', NULL),
(398, 92, 30, '0', NULL),
(399, 93, 33, '0', NULL),
(400, 94, 32, '0', NULL),
(401, 94, 32, '0', NULL),
(402, 94, 33, '0', NULL),
(403, 94, 33, '0', NULL),
(404, 94, 33, '0', NULL),
(405, 95, 33, '0', NULL),
(406, 96, 29, '0', NULL),
(407, 97, 29, '0', NULL),
(408, 97, 30, '0', NULL),
(409, 97, 30, '0', NULL),
(410, 97, 30, '0', NULL);

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

--
-- Gegevens worden geëxporteerd voor tabel `consumption_product`
--

INSERT INTO `consumption_product` (`Description`, `Amount`, `ConsumptionNumber`, `productID`) VALUES
('Gram', 800, 3, 106),
('Gram', 5, 3, 107),
('Liter', 0, 3, 108),
('Gram', 10, 3, 109),
('Gram', 5, 3, 111),
('Gram', 10, 3, 112),
('Gram', 200, 3, 113),
('Gram', 1, 3, 114),
('Gram', 3, 3, 115),
('Gram', 30, 3, 117),
('Peper', 10, 3, 118),
('Gram', 400, 4, 119),
('Gram', 100, 4, 120),
('Gram', 50, 4, 121),
('Gram', 50, 4, 122),
('Gram', 50, 4, 123),
('Gram', 5, 4, 124),
('Gram', 10, 4, 125),
('Gram', 50, 4, 126),
('Gram', 200, 5, 127),
('Gram', 50, 5, 128),
('Gram', 20, 5, 129),
('Gram', 25, 5, 130),
('Gram', 0, 5, 132),
('Gram', 25, 5, 133),
('Gram', 5, 5, 134),
('Gram', 10, 5, 135),
('Gram', 5, 5, 136),
('Gram', 5, 5, 137),
('Gram', 5, 5, 138),
('Gram', 5, 5, 139),
('Gram', 25, 5, 140),
('Gram', 250, 1, 141),
('Gram', 250, 1, 142),
('Gram', 300, 1, 143),
('Gram', 300, 7, 143),
('Gram', 100, 7, 145),
('Gram', 50, 7, 146),
('Gram', 150, 7, 147),
('Gram', 100, 7, 148),
('Gram', 10, 7, 149),
('Gram', 250, 8, 150),
('Gram', 150, 8, 151),
('Gram', 5, 8, 152),
('Gram', 50, 8, 153),
('Gram', 5, 8, 154),
('Gram', 25, 8, 155),
('Gram', 5, 8, 156),
('Gram', 300, 9, 157),
('Gram', 50, 9, 158),
('Gram', 20, 9, 159),
('Gram', 5, 9, 160),
('Liter', 0, 9, 161),
('Liter', 0, 9, 162),
('Gram', 200, 10, 163),
('Gram', 25, 10, 164),
('Gram', 25, 10, 165),
('Gram', 5, 10, 166),
('Gram', 50, 10, 167),
('Gram', 300, 11, 168),
('Gram', 20, 11, 169),
('Gram', 15, 11, 170),
('Liter', 0, 11, 171),
('Gram', 50, 11, 172),
('Gram', 50, 11, 173),
('Gram', 200, 14, 174),
('Gram', 50, 14, 175),
('Gram', 25, 14, 176),
('Liter', 0, 14, 177),
('Gram', 10, 14, 178),
('Gram', 150, 15, 180),
('Gram', 10, 15, 181),
('Liter', 0, 15, 182),
('Gram', 20, 15, 183),
('Gram', 10, 15, 184),
('Gram', 25, 15, 185),
('Gram', 15, 15, 186),
('Gram', 5, 16, 187),
('Gram', 50, 16, 189),
('Liter', 0, 16, 190),
('Gram', 10, 16, 191),
('Gram', 10, 16, 192),
('Gram', 150, 17, 193),
('Gram', 50, 17, 194),
('Gram', 100, 17, 195),
('Gram', 50, 18, 196),
('Gram', 50, 18, 197),
('Gram', 200, 19, 198),
('Gram', 80, 19, 199),
('Gram', 20, 19, 200),
('Gram', 15, 20, 201),
('Liter', 0, 20, 202),
('Gram', 20, 20, 203),
('Liter', 0, 21, 204),
('Liter', 0, 22, 205),
('Liter', 0, 23, 206),
('Liter', 0, 24, 207),
('Gram', 100, 2, 141),
('Gram', 50, 2, 142);

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
(2, 'middag', '2016-06-09'),
(3, 'ochtend', '2016-06-20'),
(4, 'ochtend', '2016-06-21'),
(5, 'ochtend', '2016-06-22'),
(6, 'ochtend', '2016-06-23'),
(7, 'ochtend', '2016-06-24'),
(8, 'ochtend', '2016-06-25'),
(9, 'ochtend', '2016-06-26'),
(10, 'ochtend', '2016-06-27'),
(11, 'middag', '2016-06-24'),
(12, 'middag', '2016-06-23'),
(13, 'middag', '2016-06-22'),
(14, 'ochtend', '2016-06-28'),
(15, 'avond', '2016-06-21'),
(16, 'ochtend', '2016-06-29'),
(17, 'ochtend', '2016-06-30'),
(18, 'ochtend', '2016-07-01'),
(19, 'ochtend', '2016-07-02'),
(20, 'ochtend', '2016-07-03'),
(21, 'ochtend', '2016-07-04'),
(22, 'ochtend', '2016-07-05'),
(23, 'middag', '2016-07-06');

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
(4, 'Nick', 'Burggraaff', 'keuken', '1234', 38),
(5, 'Erik', 'Koolen', 'planner', '4321', 38),
(6, 'Matthijs', 'Wilhelmus', 'bediening', '1234', 38);

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
(0, 10, '2016-06-20 16:58:23'),
(1, 29, '2016-06-20 16:58:23'),
(2, 10, '2016-06-20 16:58:23');

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
(104, '2016-06-20 12:52:34', 'INSERT', 'root@localhost'),
(105, '2016-06-21 11:30:43', 'INSERT', 'root@localhost'),
(106, '2016-06-21 11:39:45', 'INSERT', 'root@localhost'),
(106, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(107, '2016-06-21 12:36:50', 'INSERT', 'root@localhost'),
(107, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(108, '2016-06-21 12:41:58', 'INSERT', 'root@localhost'),
(108, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(109, '2016-06-21 12:43:01', 'INSERT', 'root@localhost'),
(110, '2016-06-21 13:31:18', 'INSERT', 'root@localhost'),
(111, '2016-06-21 15:08:53', 'INSERT', 'root@localhost'),
(111, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(112, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(113, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(114, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(115, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(116, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(117, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(118, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(119, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(120, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(121, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(122, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(123, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(124, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(125, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(126, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(127, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(128, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(129, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(130, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(132, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(133, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(134, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(135, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(136, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(137, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(138, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(139, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(140, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(141, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(142, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(143, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(144, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(145, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(146, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(147, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(148, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(149, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(150, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(151, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(152, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(153, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(154, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(155, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(156, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(157, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(158, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(159, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(160, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(161, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(162, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(163, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(164, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(165, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(166, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(167, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(168, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(169, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(170, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(171, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(172, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(173, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(174, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(175, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(176, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(177, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(178, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(180, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(181, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(182, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(183, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(184, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(185, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(186, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(187, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(188, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(189, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(190, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(191, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(192, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(193, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(194, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(195, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(196, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(197, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(198, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(199, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(200, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(201, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(202, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(203, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(204, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(205, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(206, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(207, '2016-06-21 15:10:32', 'INSERT', 'root@localhost'),
(208, '2016-06-21 15:11:38', 'INSERT', 'root@localhost'),
(209, '2016-06-21 15:53:15', 'INSERT', 'root@localhost'),
(210, '2016-06-21 16:04:59', 'INSERT', 'root@localhost'),
(211, '2016-06-21 16:05:19', 'INSERT', 'root@localhost'),
(212, '2016-06-21 16:10:35', 'INSERT', 'root@localhost');

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
(1, '2016-06-01 17:26:36', 4, 2, 0),
(4, '2016-06-01 17:56:09', 1, 2, 0),
(5, '2016-06-01 17:56:16', 0, 2, 0),
(6, '2016-06-01 19:34:43', 1, 10, 0),
(7, '2016-06-02 09:16:55', 5, 12, 1),
(8, '2016-06-02 09:17:43', 5, 12, 1),
(9, '2016-06-03 17:53:36', 1, 2, 0),
(10, '2016-06-08 08:13:21', 1, 2, 0),
(11, '2016-06-08 08:13:59', 1, 2, 0),
(12, '2016-06-08 08:13:59', 1, 2, 0),
(13, '2016-06-08 08:13:59', 1, 2, 0),
(14, '2016-06-08 08:13:59', 1, 2, 0),
(15, '2016-06-20 08:21:30', 1, 2, 1),
(16, '2016-06-20 08:28:12', 1, 3, 1),
(17, '2016-06-20 08:28:29', 1, 3, 1),
(18, '2016-06-20 08:32:37', 1, 2, 1),
(19, '2016-06-20 10:16:32', 1, 2, 1),
(20, '2016-06-20 10:18:24', 4, 20, 1),
(21, '2016-06-20 10:19:28', 4, 20, 1),
(22, '2016-06-20 10:25:58', 1, 2, 1),
(23, '2016-06-20 10:26:09', 1, 2, 1),
(24, '2016-06-20 10:26:32', 1, 2, 1),
(25, '2016-06-20 10:38:59', 1, 2, 1),
(26, '2016-06-20 10:41:03', 1, 2, 1),
(27, '2016-06-20 10:41:39', 1, 2, 1),
(28, '2016-06-20 10:41:58', 1, 2, 1),
(29, '2016-06-20 10:42:38', 1, 2, 1),
(30, '2016-06-20 11:10:11', 1, 2, 1),
(31, '2016-06-20 11:13:32', 1, 2, 1),
(32, '2016-06-20 11:14:20', 1, 2, 1),
(33, '2016-06-20 11:17:17', 1, 2, 1),
(34, '2016-06-20 11:18:25', 1, 2, 1),
(35, '2016-06-20 11:20:11', 1, 2, 1),
(36, '2016-06-20 11:20:37', 1, 2, 1),
(37, '2016-06-20 11:20:45', 1, 2, 1),
(38, '2016-06-20 11:20:54', 1, 2, 1),
(39, '2016-06-20 11:22:28', 1, 2, 1),
(40, '2016-06-20 11:22:36', 1, 2, 1),
(41, '2016-06-20 11:30:07', 1, 2, 1),
(42, '2016-06-20 11:32:47', 1, 2, 1),
(43, '2016-06-20 11:36:21', 1, 2, 1),
(44, '2016-06-20 11:37:00', 1, 2, 1),
(45, '2016-06-20 11:52:45', 1, 2, 1),
(46, '2016-06-20 11:53:03', 1, 2, 1),
(47, '2016-06-20 11:54:30', 1, 2, 1),
(48, '2016-06-20 11:55:51', 1, 2, 1),
(49, '2016-06-20 11:56:01', 1, 2, 1),
(50, '2016-06-20 11:58:10', 1, 2, 1),
(51, '2016-06-20 11:59:45', 1, 2, 1),
(52, '2016-06-20 12:00:50', 1, 2, 1),
(53, '2016-06-20 12:15:07', 1, 2, 1),
(54, '2016-06-20 12:19:19', 1, 2, 1),
(55, '2016-06-20 12:20:48', 1, 2, 1),
(56, '2016-06-20 12:21:36', 1, 2, 1),
(57, '2016-06-20 12:27:23', 1, 2, 1),
(58, '2016-06-20 12:28:47', 1, 2, 1),
(59, '2016-06-20 12:29:44', 1, 2, 1),
(60, '2016-06-20 13:27:17', 1, 2, 1),
(61, '2016-06-20 14:11:40', 1, 2, 1),
(62, '2016-06-20 14:15:19', 1, 2, 1),
(63, '2016-06-20 14:16:07', 1, 2, 1),
(64, '2016-06-20 14:16:16', 1, 2, 1),
(65, '2016-06-20 14:16:56', 1, 2, 1),
(66, '2016-06-20 14:18:00', 1, 2, 1),
(67, '2016-06-20 14:18:17', 1, 2, 1),
(68, '2016-06-20 14:18:44', 1, 2, 1),
(69, '2016-06-20 14:19:29', 1, 2, 1),
(70, '2016-06-20 14:20:19', 1, 2, 1),
(71, '2016-06-20 14:22:43', 1, 2, 1),
(72, '2016-06-21 13:15:58', 1, 1, 1),
(73, '2016-06-21 13:16:42', 1, 1, 1),
(74, '2016-06-21 13:21:21', 1, 1, 1),
(75, '2016-06-21 13:22:04', 1, 1, 1),
(76, '2016-06-21 13:48:28', 1, 1, 1),
(77, '2016-06-21 14:14:34', 1, 1, 1),
(78, '2016-06-21 14:14:34', 1, 1, 1),
(79, '2016-06-21 14:18:32', 1, 1, 1),
(80, '2016-06-21 14:31:32', 1, 1, 1),
(81, '2016-06-21 14:31:41', 1, 1, 1),
(82, '2016-06-21 14:33:07', 1, 1, 1),
(83, '2016-06-21 14:33:10', 1, 1, 1),
(84, '2016-06-21 14:47:08', 1, 1, 1),
(85, '2016-06-21 14:47:32', 3, 1, 1),
(86, '2016-06-21 14:56:23', 1, 1, 1),
(87, '2016-06-21 15:03:58', 1, 1, 1),
(88, '2016-06-21 15:05:15', 1, 1, 1),
(89, '2016-06-21 15:11:23', 1, 1, 1),
(90, '2016-06-21 15:17:54', 1, 1, 1),
(91, '2016-06-21 16:38:22', 1, 1, 1),
(92, '2016-06-21 17:53:39', 1, 1, 1),
(93, '2016-06-24 09:30:35', 1, 1, 1),
(94, '2016-06-24 21:41:05', 1, 1, 1),
(95, '2016-06-28 16:40:28', 1, 1, 1),
(96, '2016-06-28 16:42:12', 1, 1, 1),
(97, '2016-06-28 16:43:12', 1, 1, 1);

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
(106, 1, 0, 10, 'stokbrood', 2),
(107, 1, 0, 5, 'el pesto', 2),
(108, 1, 0, 5, 'olijfolie', 2),
(111, 1, 0, 5, 'knoflook', 2),
(112, 1, 0, 5, 'groentebouillon', 2),
(113, 1, 0, 5, 'rode paprika', 2),
(114, 1, 0, 5, 'passata', 2),
(115, 1, 0, 5, 'tijm ', 2),
(116, 1, 0, 5, 'gemalen kaneel', 2),
(117, 1, 0, 10, 'suiker', 2),
(118, 1, 0, 20, 'peper', 2),
(119, 1, 0, 10, 'spaghetti', 2),
(120, 1, 0, 10, 'wortels', 2),
(121, 1, 0, 10, 'Bleekselderij', 2),
(122, 1, 0, 5, 'Broccoli', 2),
(123, 1, 0, 5, 'maïs', 2),
(124, 1, 0, 10, 'peterselie', 2),
(125, 1, 0, 5, 'tijmblaadjes', 2),
(126, 1, 0, 5, 'Kippenbouillon', 2),
(127, 1, 0, 5, 'pompoen', 2),
(128, 1, 0, 10, 'Appel', 2),
(129, 1, 0, 10, 'ui', 2),
(130, 1, 0, 10, 'knoflook', 2),
(132, 1, 0, 15, 'bouillon', 2),
(133, 1, 0, 30, 'zout', 2),
(134, 1, 0, 50, 'pompoenpitten', 2),
(135, 1, 0, 5, 'room', 2),
(136, 1, 0, 5, 'kerriepoeder', 2),
(137, 1, 0, 10, 'piment', 2),
(138, 1, 0, 10, 'gember', 2),
(139, 1, 0, 10, 'balsamico', 2),
(140, 1, 0, 10, 'soja saus\r\n', 2),
(141, 1, 0, 50, 'eieren', 2),
(142, 1, 0, 50, 'bacon', 2),
(143, 1, 0, 100, 'brood', 2),
(144, 1, 0, 20, 'pitabroodjes', 2),
(145, 1, 0, 100, 'kaas', 2),
(146, 1, 0, 10, 'aubergine', 2),
(147, 1, 0, 100, 'sla', 2),
(148, 1, 0, 10, 'Griekse yoghurt', 2),
(149, 1, 0, 10, 'harissa', 2),
(150, 1, 0, 10, 'wrap', 2),
(151, 1, 0, 10, 'kipfilets', 2),
(152, 1, 0, 10, 'avocado', 2),
(153, 1, 0, 10, 'tomaat', 2),
(154, 1, 0, 10, 'paprikapoeder', 2),
(155, 1, 0, 20, 'ketchup', 2),
(156, 1, 0, 10, 'chilipoeder', 2),
(157, 1, 0, 10, 'schelvis', 2),
(158, 1, 0, 15, 'tomaat', 2),
(159, 1, 0, 10, 'panko', 2),
(160, 1, 0, 10, 'basilicum', 2),
(161, 1, 0, 10, 'citroensap', 2),
(162, 1, 0, 10, 'olie', 2),
(163, 1, 0, 10, 'gehakt', 2),
(164, 1, 0, 10, 'bechamelsaus ', 2),
(165, 1, 0, 5, 'lasagnevellen', 2),
(166, 1, 0, 5, 'oregano', 2),
(167, 1, 0, 10, 'mozzarella', 2),
(168, 1, 0, 5, 'biefstuk', 2),
(169, 1, 0, 5, 'gorgonzola', 2),
(170, 1, 0, 5, 'slagroom', 2),
(171, 1, 0, 10, 'melk', 2),
(172, 1, 0, 50, 'bloem', 2),
(173, 1, 0, 30, 'boter\r\n', 2),
(174, 1, 0, 10, 'garnalen', 2),
(175, 1, 0, 10, 'bosuitjes', 2),
(176, 1, 0, 10, 'teriyaki saus', 2),
(177, 1, 0, 10, 'wokolie', 2),
(178, 1, 0, 10, 'shi take', 2),
(180, 1, 0, 30, 'aardappels', 2),
(181, 1, 0, 10, 'paksoi', 2),
(182, 1, 0, 30, 'kokosmelk', 2),
(183, 1, 0, 10, 'kastanjechampignons', 2),
(184, 1, 0, 10, 'taugé', 2),
(185, 1, 0, 20, 'teriyakisaus', 2),
(186, 1, 0, 20, 'cashewnoten', 2),
(187, 1, 0, 50, 'basterdsuiker', 2),
(188, 1, 0, 0, 'water', 2),
(189, 1, 0, 10, 'maizena', 2),
(190, 1, 0, 5, 'sesamolie', 2),
(191, 1, 0, 10, 'sesamzaadjes', 2),
(192, 1, 0, 10, 'bosui', 2),
(193, 1, 0, 10, 'boerenkool', 2),
(194, 1, 0, 10, 'kikkererwten', 2),
(195, 1, 0, 5, 'currypasta', 2),
(196, 1, 0, 5, 'paneermeel', 2),
(197, 1, 0, 10, 'cherrytomaatjes', 2),
(198, 1, 0, 10, 'witlof', 2),
(199, 1, 0, 10, 'ham', 2),
(200, 1, 0, 10, 'creme fraiche', 2),
(201, 1, 0, 10, 'kabeljauw', 2),
(202, 1, 0, 10, 'citroensap', 2),
(203, 1, 0, 10, 'dille', 2),
(204, 1, 0, 20, 'Cola', 2),
(205, 1, 0, 10, 'Appelsap', 2),
(206, 1, 0, 10, 'Fristi', 2),
(207, 1, 0, 10, 'Chocomel', 2),
(208, 12, -1, 1, 'Dikke bak', 1),
(209, 13, -1, 2, 'Rotte bananen knijpen', 2),
(210, 14, -1, 12, 'lfmsdklfmsdklm', 1),
(212, 16, -1, 12, 'Mooie auto', 9);

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
  `exp_date` date NOT NULL DEFAULT '2016-06-21',
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product_storage`
--

INSERT INTO `product_storage` (`id`, `location_id`, `amount`, `exp_date`, `product_id`) VALUES
(1, 2, 1000, '2016-06-21', 106),
(3, 2, 0, '2016-06-21', 1),
(4, 3, 0, '2016-06-21', 1),
(5, 1, 0, '2016-06-21', 1),
(6, 1, 0, '2016-06-21', 1),
(7, 1, 0, '2016-06-21', 1),
(8, 1, 0, '2016-06-21', 1),
(9, 1, 0, '2016-06-21', 1),
(10, 3, 0, '2016-06-21', 1),
(11, 2, 0, '2016-06-21', 1),
(12, 1, 0, '2016-06-21', 1),
(13, 3, 0, '2016-06-21', 1),
(14, 1, 0, '2016-06-21', 1),
(15, 1, 200, '2016-06-21', 1),
(16, 1, 1, '2016-06-21', 1),
(17, 1, 0, '2016-06-21', 1),
(18, 1, 0, '2016-06-21', 3),
(19, 1, 0, '2016-06-21', 3),
(25, 1, 200, '2016-06-21', 4),
(49, 1, 1836, '2016-06-21', 119),
(50, 2, 1352, '2016-06-21', 120),
(51, 1, 1510, '2016-06-21', 121),
(52, 1, 1321, '2016-06-21', 122),
(53, 2, 1261, '2016-06-21', 123),
(54, 2, 1929, '2016-06-21', 124),
(55, 1, 1361, '2016-06-21', 125),
(56, 2, 1852, '2016-06-21', 126),
(57, 2, 1171, '2016-06-21', 127),
(58, 2, 1469, '2016-06-21', 128),
(59, 2, 1425, '2016-06-21', 129),
(60, 2, 1809, '2016-06-21', 130),
(61, 1, 1281, '2016-06-21', 131),
(62, 2, 1724, '2016-06-21', 132),
(63, 1, 1707, '2016-06-21', 133),
(64, 2, 1661, '2016-06-21', 134),
(65, 2, 1519, '2016-06-21', 135),
(66, 2, 1044, '2016-06-21', 136),
(67, 2, 1149, '2016-06-21', 137),
(68, 2, 1244, '2016-06-21', 138),
(69, 1, 1347, '2016-06-21', 139),
(70, 2, 1076, '2016-06-21', 140),
(71, 1, 500, '2016-06-21', 141),
(72, 1, 500, '2016-06-21', 142),
(73, 1, 1776, '2016-06-21', 143),
(74, 2, 1355, '2016-06-21', 144),
(75, 1, 1689, '2016-06-21', 145),
(76, 1, 1495, '2016-06-21', 146),
(77, 2, 1683, '2016-06-21', 147),
(78, 2, 1253, '2016-06-21', 148),
(79, 2, 1308, '2016-06-21', 149),
(80, 1, 1519, '2016-06-21', 150),
(81, 2, 1528, '2016-06-21', 151),
(82, 2, 1918, '2016-06-21', 152),
(83, 2, 1591, '2016-06-21', 153),
(84, 1, 1029, '2016-06-21', 154),
(85, 1, 1729, '2016-06-21', 155),
(86, 1, 1500, '2016-06-21', 156),
(87, 2, 1333, '2016-06-21', 157),
(88, 2, 1464, '2016-06-21', 158),
(89, 2, 1695, '2016-06-21', 159),
(90, 1, 1288, '2016-06-21', 160),
(91, 1, 1711, '2016-06-21', 161),
(92, 1, 1019, '2016-06-21', 162),
(93, 1, 1478, '2016-06-21', 163),
(94, 1, 1589, '2016-06-21', 164),
(95, 1, 1732, '2016-06-21', 165),
(96, 1, 1304, '2016-06-21', 166),
(97, 1, 1757, '2016-06-21', 167),
(98, 1, 1511, '2016-06-21', 168),
(99, 1, 1018, '2016-06-21', 169),
(100, 2, 1678, '2016-06-21', 170),
(101, 2, 1435, '2016-06-21', 171),
(102, 1, 1405, '2016-06-21', 172),
(103, 1, 1882, '2016-06-21', 173),
(104, 1, 1420, '2016-06-21', 174),
(105, 2, 1515, '2016-06-21', 175),
(106, 1, 1064, '2016-06-21', 176),
(107, 2, 1855, '2016-06-21', 177),
(108, 2, 1154, '2016-06-21', 178),
(109, 2, 1832, '2016-06-21', 179),
(110, 1, 1457, '2016-06-21', 180),
(111, 1, 1407, '2016-06-21', 181),
(112, 1, 1726, '2016-06-21', 182),
(113, 2, 1289, '2016-06-21', 183),
(114, 2, 1366, '2016-06-21', 184),
(115, 1, 1216, '2016-06-21', 185),
(116, 1, 1052, '2016-06-21', 186),
(117, 2, 1317, '2016-06-21', 187),
(118, 1, 1380, '2016-06-21', 188),
(119, 2, 1532, '2016-06-21', 189),
(120, 1, 1469, '2016-06-21', 190),
(121, 2, 1024, '2016-06-21', 191),
(122, 1, 1606, '2016-06-21', 192),
(123, 1, 1453, '2016-06-21', 193),
(124, 2, 1249, '2016-06-21', 194),
(125, 1, 1276, '2016-06-21', 195),
(126, 1, 1636, '2016-06-21', 196),
(127, 1, 1625, '2016-06-21', 197),
(128, 2, 1748, '2016-06-21', 198),
(129, 1, 1288, '2016-06-21', 199),
(130, 1, 1180, '2016-06-21', 200),
(131, 1, 1686, '2016-06-21', 201),
(132, 2, 1244, '2016-06-21', 202),
(133, 2, 1468, '2016-06-21', 203),
(134, 1, 1789, '2016-06-21', 204),
(135, 2, 1918, '2016-06-21', 205),
(136, 2, 1728, '2016-06-21', 206),
(137, 1, 1346, '2016-06-21', 207),
(138, 1, 1318, '2016-06-21', 208),
(139, 2, 1220, '2016-06-21', 209);

--
-- Triggers `product_storage`
--
DELIMITER $$
CREATE TRIGGER `CheckLowStock` BEFORE UPDATE ON `product_storage` FOR EACH ROW UPDATE
  `consumption`,
  `product_storage`,
  `consumption_product`
SET
  in_stock = 0
WHERE
  NEW.amount < consumption_product.amount && 
  consumption_product.productID = product_storage.product_id && 
  consumption.ConsumptionNumber = consumption_product.ConsumptionNumber
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `CheckSufficientStock` AFTER UPDATE ON `product_storage` FOR EACH ROW UPDATE
  `consumption`,
  `product_storage`,
  `consumption_product`
SET
  in_stock = 1
WHERE
  NEW.amount > consumption_product.amount && 
  consumption_product.productID = product_storage.product_id && 
  consumption.ConsumptionNumber = consumption_product.ConsumptionNumber
$$
DELIMITER ;

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
(1, 3, 'afwezig'),
(1, 4, 'afwezig'),
(1, 5, 'afwezig'),
(1, 6, 'afwezig'),
(1, 7, 'afwezig'),
(1, 8, 'afwezig'),
(1, 9, 'afwezig'),
(1, 10, 'afwezig'),
(1, 11, 'afwezig'),
(1, 12, 'afwezig'),
(1, 13, 'afwezig'),
(1, 14, 'afwezig'),
(1, 16, 'afwezig'),
(1, 17, 'afwezig'),
(1, 18, 'afwezig'),
(1, 19, 'afwezig'),
(1, 20, 'afwezig'),
(1, 21, 'afwezig'),
(1, 22, 'afwezig'),
(1, 23, 'afwezig'),
(2, 2, 'afwezig'),
(3, 2, 'afwezig'),
(3, 15, 'afwezig');

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
(2, 'NIET LEVERBAAR'),
(9, 'NIET LEVERBAAR');

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
(1, '', 1),
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
(12, 'Hertog Jannetje', 0),
(20, '', 0);

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
(1, 1, 1, 's63sdmfskfmsd'),
(2, 7, 12, 's63sdmfskfmsd'),
(3, 8, 13, 's63sdmfskfmsd'),
(4, 9, 14, 's63sdmfskfmsd'),
(5, 10, 15, 's63sdmfskfmsd'),
(6, 11, 16, 's63sdmfskfmsd'),
(7, 14, 19, 's63sdmfskfmsd'),
(8, 15, 20, 's63sdmfskfmsd'),
(9, 16, 21, 's63sdmfskfmsd'),
(10, 17, 22, 's63sdmfskfmsd'),
(11, 18, 23, 's63sdmfskfmsd'),
(12, 19, 24, 's63sdmfskfmsd'),
(13, 20, 25, 's63sdmfskfmsd'),
(14, 21, 26, 's63sdmfskfmsd'),
(15, 22, 27, 's63sdmfskfmsd'),
(16, 23, 28, 's63sdmfskfmsd');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT '0',
  `password` varchar(255) DEFAULT '0',
  `name` varchar(50) DEFAULT '0',
  `function` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `function`) VALUES
(1, 'bob@mawoo.nl', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'Bob van der Valk', 'Developer'),
(2, 'ray@email.com', '666', 'Bediening', 'Bediening'),
(3, 'info@hartig.nl', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'Hartige Hap', 'Eigenaar');

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
(10, 2, 29, '3', 'test', '2016-06-20 13:36:19'),
(11, 2, 29, '1', 'test', '2016-06-20 14:17:14'),
(12, 2, 29, '1', 'test', '2016-06-20 14:17:42'),
(13, 2, 29, '1', 'test', '2016-06-20 14:19:21'),
(14, 2, 29, '1', 'test', '2016-06-20 14:25:02'),
(15, 2, 29, '5', 'oi mate', '2016-06-20 14:27:22');

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
  ADD PRIMARY KEY (`consumptionorderid`),
  ADD KEY `ConsumptionNumber` (`ConsumptionNumber`),
  ADD KEY `EmployeeNr` (`EmployeeNr`),
  ADD KEY `OrderNumber` (`OrderNumber`);

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
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `TableNumber` (`TableNumber`),
  ADD KEY `InvoiceNumber` (`InvoiceNumber`);

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
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `consumption`
--
ALTER TABLE `consumption`
  MODIFY `ConsumptionNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT voor een tabel `consumptionorder`
--
ALTER TABLE `consumptionorder`
  MODIFY `consumptionorderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT voor een tabel `date`
--
ALTER TABLE `date`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT voor een tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeNr` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `InvoiceNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `order`
--
ALTER TABLE `order`
  MODIFY `OrderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT voor een tabel `product_storage`
--
ALTER TABLE `product_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT voor een tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT voor een tabel `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `write_off`
--
ALTER TABLE `write_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `consumptionorder`
--
ALTER TABLE `consumptionorder`
  ADD CONSTRAINT `ConsumptionOrderConsumptionNrFK` FOREIGN KEY (`ConsumptionNumber`) REFERENCES `consumption` (`ConsumptionNumber`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ConsumptionOrderEmployeeNrFK` FOREIGN KEY (`EmployeeNr`) REFERENCES `employee` (`EmployeeNr`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ConsumptionOrderNrFK` FOREIGN KEY (`OrderNumber`) REFERENCES `order` (`OrderNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `OrderInvoiceNrFK` FOREIGN KEY (`InvoiceNumber`) REFERENCES `invoice` (`InvoiceNumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `OrderTableFK` FOREIGN KEY (`TableNumber`) REFERENCES `table` (`TableNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
