-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Feb 27, 2023 alle 18:03
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olimpiadivisentin`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `tClassifica`
--

CREATE TABLE `tClassifica` (
  `idPartecipante` int(11) NOT NULL,
  `idGara` int(11) NOT NULL,
  `punteggio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tClassifica`
--

INSERT INTO `tClassifica` (`idPartecipante`, `idGara`, `punteggio`) VALUES
(24, 22, 869),
(24, 28, 979),
(27, 26, 368),
(32, 23, 408),
(35, 30, 477),
(43, 29, 896),
(46, 23, 246),
(46, 28, 359),
(47, 28, 84),
(57, 26, 816),
(62, 22, 713),
(66, 22, 663),
(67, 26, 939),
(84, 25, 237),
(109, 27, 771),
(120, 24, 476),
(122, 21, 574),
(124, 30, 901),
(136, 29, 408),
(136, 30, 822),
(137, 28, 417),
(146, 26, 636),
(151, 24, 654),
(154, 24, 256),
(162, 24, 680),
(169, 30, 889),
(171, 29, 478),
(172, 22, 2),
(198, 30, 21),
(199, 25, 166),
(205, 29, 899),
(232, 26, 464),
(234, 27, 872),
(235, 27, 663),
(236, 30, 913),
(243, 29, 892),
(251, 25, 147),
(253, 27, 572),
(259, 26, 797),
(262, 22, 240),
(266, 24, 661),
(269, 24, 349),
(272, 21, 756),
(272, 24, 378),
(273, 25, 316),
(281, 24, 908),
(299, 26, 953),
(299, 29, 986),
(300, 24, 331),
(304, 28, 776),
(305, 27, 282),
(308, 30, 142),
(309, 29, 510),
(310, 29, 974),
(316, 22, 599),
(334, 27, 546),
(341, 23, 986),
(355, 25, 811),
(362, 26, 220),
(363, 26, 851),
(369, 23, 204),
(369, 24, 392),
(373, 24, 185),
(376, 24, 169),
(392, 26, 719),
(394, 28, 251),
(398, 21, 566),
(398, 23, 193),
(398, 25, 499),
(399, 27, 342),
(412, 25, 236),
(418, 30, 867),
(431, 23, 972),
(439, 23, 257),
(443, 27, 122),
(444, 22, 524),
(446, 21, 222),
(451, 25, 253),
(458, 26, 644),
(481, 23, 250),
(488, 26, 886),
(506, 29, 859),
(512, 27, 749),
(521, 27, 220),
(535, 21, 554),
(545, 25, 879),
(575, 29, 287),
(589, 24, 634),
(591, 26, 693),
(594, 22, 764),
(622, 23, 981),
(628, 23, 177),
(656, 27, 504),
(657, 24, 661),
(657, 28, 200),
(667, 25, 73),
(668, 21, 297),
(668, 23, 561),
(669, 24, 901),
(678, 21, 259);

-- --------------------------------------------------------

--
-- Struttura della tabella `tFase`
--

CREATE TABLE `tFase` (
  `id` int(11) NOT NULL,
  `nomeFase` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tFase`
--

INSERT INTO `tFase` (`id`, `nomeFase`) VALUES
(1, 'Scolastica'),
(2, 'Regionale'),
(3, 'Nazionale'),
(4, 'Internazionale');

-- --------------------------------------------------------

--
-- Struttura della tabella `tGara`
--

CREATE TABLE `tGara` (
  `id` int(11) NOT NULL,
  `nomeGara` varchar(128) NOT NULL,
  `data` date NOT NULL,
  `idFase` int(11) NOT NULL,
  `idSede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tGara`
--

INSERT INTO `tGara` (`id`, `nomeGara`, `data`, `idFase`, `idSede`) VALUES
(1, 'Olimpiadi Italiane di Informatica', '2023-04-01', 3, 2),
(2, 'Coding Challenge 2023', '2023-05-15', 2, 6),
(3, 'Hackathon 2023', '2023-06-10', 1, 9),
(4, 'Code Jam 2023', '2023-07-22', 1, 7),
(5, 'Olimpiadi Internazionali di Informatica', '2023-09-09', 4, 3),
(6, 'Challenge of the Coders', '2023-10-11', 2, 8),
(7, 'Coders Cup', '2023-11-18', 3, 5),
(8, 'CodeFest 2023', '2023-12-16', 1, 10),
(9, 'Algorithms and Data Structures Competition', '2024-01-21', 2, 4),
(10, 'ACM International Collegiate Programming Contest', '2024-02-24', 1, 1),
(21, 'Olimpiadi di informatica 2020', '2020-07-20', 1, 6),
(22, 'Gara regionale di programmazione 2019', '2019-03-15', 2, 4),
(23, 'Campionato italiano di coding 2018', '2018-06-02', 3, 7),
(24, 'Concorso nazionale di algoritmi 2017', '2017-04-10', 2, 8),
(25, 'Olimpiadi di informatica 2016', '2016-09-12', 1, 3),
(26, 'Gara regionale di programmazione 2015', '2015-02-25', 2, 5),
(27, 'Campionato italiano di coding 2014', '2014-07-01', 3, 6),
(28, 'Concorso nazionale di algoritmi 2013', '2013-03-18', 3, 4),
(29, 'Olimpiadi di informatica 2012', '2012-09-10', 4, 7),
(30, 'Gara regionale di programmazione 2011', '2011-02-22', 2, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `tIstituto`
--

CREATE TABLE `tIstituto` (
  `id` int(11) NOT NULL,
  `nomeIstituto` varchar(64) NOT NULL,
  `idRegione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tIstituto`
--

INSERT INTO `tIstituto` (`id`, `nomeIstituto`, `idRegione`) VALUES
(11, 'Liceo Scientifico \"A. Volta\"', 1),
(12, 'Istituto Tecnico Industriale Statale \"G. Marconi\"', 1),
(13, 'Istituto Tecnico Commerciale Statale \"G. Oberdan\"', 2),
(14, 'Liceo Classico Statale \"E. Fermi\"', 2),
(15, 'Istituto Tecnico Agrario Statale \"G. Garibaldi\"', 3),
(16, 'Liceo Scientifico Statale \"A. Einstein\"', 3),
(17, 'Istituto Tecnico Aeronautico Statale \"L. Einaudi\"', 4),
(18, 'Istituto Tecnico Nautico Statale \"C. Colombo\"', 4),
(19, 'Istituto Tecnico per Geometri \"A. Manzoni\"', 5),
(20, 'Liceo Artistico Statale \"B. Palma\"', 5),
(21, 'École Internationale de Genève', 6),
(22, 'American School of Milan', 7),
(23, 'Deutsche Schule Mailand', 7),
(24, 'Lycée Français de Milan', 7),
(25, 'Colegio de San Francisco de Paula', 8),
(26, 'Deutsche Schule Rom', 9),
(27, 'Lycée Chateaubriand Rome', 9),
(28, 'American Overseas School of Rome', 9),
(29, 'Colegio de San Agustin', 10),
(30, 'German School of Manila', 11),
(31, 'Lycée Français de Manille', 11),
(32, 'American School of Manila', 11),
(33, 'Colegio San Pablo', 12),
(34, 'Deutsche Schule Madrid', 13),
(35, 'Lycée Français de Madrid', 13),
(36, 'American School of Madrid', 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `tNazionalita`
--

CREATE TABLE `tNazionalita` (
  `id` int(11) NOT NULL,
  `nomeNazionalita` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tNazionalita`
--

INSERT INTO `tNazionalita` (`id`, `nomeNazionalita`) VALUES
(1, 'Italia'),
(2, 'Francia'),
(3, 'Germania'),
(4, 'Spagna'),
(5, 'Regno Unito'),
(6, 'Stati Uniti'),
(7, 'Canada'),
(8, 'Brasile'),
(9, 'Cina'),
(10, 'Giappone');

-- --------------------------------------------------------

--
-- Struttura della tabella `tPartecipante`
--

CREATE TABLE `tPartecipante` (
  `id` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `cognome` varchar(64) NOT NULL,
  `dataNascita` date NOT NULL,
  `idIstituto` int(11) NOT NULL,
  `idSquadra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tPartecipante`
--

INSERT INTO `tPartecipante` (`id`, `nome`, `cognome`, `dataNascita`, `idIstituto`, `idSquadra`) VALUES
(24, 'Nome12', 'Cognome12', '1903-02-27', 11, NULL),
(25, 'Nome18', 'Cognome18', '1843-02-27', 11, NULL),
(26, 'Nome2', 'Cognome2', '2003-02-27', 11, NULL),
(27, 'Nome8', 'Cognome8', '1943-02-27', 11, NULL),
(28, 'Nome24', 'Cognome24', '1783-02-27', 11, NULL),
(29, 'Nome14', 'Cognome14', '1883-02-27', 11, NULL),
(30, 'Nome20', 'Cognome20', '1823-02-27', 11, NULL),
(31, 'Nome4', 'Cognome4', '1983-02-27', 11, NULL),
(32, 'Nome10', 'Cognome10', '1923-02-27', 11, NULL),
(33, 'Nome26', 'Cognome26', '1763-02-27', 11, NULL),
(34, 'Nome16', 'Cognome16', '1863-02-27', 11, NULL),
(35, 'Nome6', 'Cognome6', '1963-02-27', 11, NULL),
(36, 'Nome22', 'Cognome22', '1803-02-27', 11, NULL),
(37, 'Nome21', 'Cognome21', '1813-02-27', 11, 2),
(38, 'Nome11', 'Cognome11', '1913-02-27', 11, 2),
(39, 'Nome1', 'Cognome1', '2013-02-27', 11, 2),
(40, 'Nome23', 'Cognome23', '1793-02-27', 11, 4),
(41, 'Nome13', 'Cognome13', '1893-02-27', 11, 4),
(42, 'Nome3', 'Cognome3', '1993-02-27', 11, 4),
(43, 'Nome25', 'Cognome25', '1773-02-27', 11, 6),
(44, 'Nome15', 'Cognome15', '1873-02-27', 11, 6),
(45, 'Nome5', 'Cognome5', '1973-02-27', 11, 6),
(46, 'Nome7', 'Cognome7', '1953-02-27', 11, 8),
(47, 'Nome17', 'Cognome17', '1853-02-27', 11, 8),
(48, 'Nome19', 'Cognome19', '1833-02-27', 11, 10),
(49, 'Nome9', 'Cognome9', '1933-02-27', 11, 10),
(50, 'Nome8', 'Cognome8', '1943-02-27', 12, NULL),
(51, 'Nome24', 'Cognome24', '1783-02-27', 12, NULL),
(52, 'Nome14', 'Cognome14', '1883-02-27', 12, NULL),
(53, 'Nome20', 'Cognome20', '1823-02-27', 12, NULL),
(54, 'Nome4', 'Cognome4', '1983-02-27', 12, NULL),
(55, 'Nome26', 'Cognome26', '1763-02-27', 12, NULL),
(56, 'Nome10', 'Cognome10', '1923-02-27', 12, NULL),
(57, 'Nome16', 'Cognome16', '1863-02-27', 12, NULL),
(58, 'Nome6', 'Cognome6', '1963-02-27', 12, NULL),
(59, 'Nome22', 'Cognome22', '1803-02-27', 12, NULL),
(60, 'Nome12', 'Cognome12', '1903-02-27', 12, NULL),
(61, 'Nome18', 'Cognome18', '1843-02-27', 12, NULL),
(62, 'Nome2', 'Cognome2', '2003-02-27', 12, NULL),
(63, 'Nome21', 'Cognome21', '1813-02-27', 12, 2),
(64, 'Nome11', 'Cognome11', '1913-02-27', 12, 2),
(65, 'Nome1', 'Cognome1', '2013-02-27', 12, 2),
(66, 'Nome3', 'Cognome3', '1993-02-27', 12, 4),
(67, 'Nome23', 'Cognome23', '1793-02-27', 12, 4),
(68, 'Nome13', 'Cognome13', '1893-02-27', 12, 4),
(69, 'Nome25', 'Cognome25', '1773-02-27', 12, 6),
(70, 'Nome15', 'Cognome15', '1873-02-27', 12, 6),
(71, 'Nome5', 'Cognome5', '1973-02-27', 12, 6),
(72, 'Nome17', 'Cognome17', '1853-02-27', 12, 8),
(73, 'Nome7', 'Cognome7', '1953-02-27', 12, 8),
(74, 'Nome19', 'Cognome19', '1833-02-27', 12, 10),
(75, 'Nome9', 'Cognome9', '1933-02-27', 12, 10),
(76, 'Nome12', 'Cognome12', '1903-02-27', 13, NULL),
(77, 'Nome18', 'Cognome18', '1843-02-27', 13, NULL),
(78, 'Nome2', 'Cognome2', '2003-02-27', 13, NULL),
(79, 'Nome8', 'Cognome8', '1943-02-27', 13, NULL),
(80, 'Nome24', 'Cognome24', '1783-02-27', 13, NULL),
(81, 'Nome14', 'Cognome14', '1883-02-27', 13, NULL),
(82, 'Nome20', 'Cognome20', '1823-02-27', 13, NULL),
(83, 'Nome4', 'Cognome4', '1983-02-27', 13, NULL),
(84, 'Nome10', 'Cognome10', '1923-02-27', 13, NULL),
(85, 'Nome26', 'Cognome26', '1763-02-27', 13, NULL),
(86, 'Nome16', 'Cognome16', '1863-02-27', 13, NULL),
(87, 'Nome22', 'Cognome22', '1803-02-27', 13, NULL),
(88, 'Nome6', 'Cognome6', '1963-02-27', 13, NULL),
(89, 'Nome1', 'Cognome1', '2013-02-27', 13, 2),
(90, 'Nome21', 'Cognome21', '1813-02-27', 13, 2),
(91, 'Nome11', 'Cognome11', '1913-02-27', 13, 2),
(92, 'Nome23', 'Cognome23', '1793-02-27', 13, 4),
(93, 'Nome13', 'Cognome13', '1893-02-27', 13, 4),
(94, 'Nome3', 'Cognome3', '1993-02-27', 13, 4),
(95, 'Nome25', 'Cognome25', '1773-02-27', 13, 6),
(96, 'Nome15', 'Cognome15', '1873-02-27', 13, 6),
(97, 'Nome5', 'Cognome5', '1973-02-27', 13, 6),
(98, 'Nome17', 'Cognome17', '1853-02-27', 13, 8),
(99, 'Nome7', 'Cognome7', '1953-02-27', 13, 8),
(100, 'Nome19', 'Cognome19', '1833-02-27', 13, 10),
(101, 'Nome9', 'Cognome9', '1933-02-27', 13, 10),
(102, 'Nome26', 'Cognome26', '1763-02-27', 14, NULL),
(103, 'Nome10', 'Cognome10', '1923-02-27', 14, NULL),
(104, 'Nome16', 'Cognome16', '1863-02-27', 14, NULL),
(105, 'Nome6', 'Cognome6', '1963-02-27', 14, NULL),
(106, 'Nome22', 'Cognome22', '1803-02-27', 14, NULL),
(107, 'Nome12', 'Cognome12', '1903-02-27', 14, NULL),
(108, 'Nome18', 'Cognome18', '1843-02-27', 14, NULL),
(109, 'Nome2', 'Cognome2', '2003-02-27', 14, NULL),
(110, 'Nome8', 'Cognome8', '1943-02-27', 14, NULL),
(111, 'Nome24', 'Cognome24', '1783-02-27', 14, NULL),
(112, 'Nome14', 'Cognome14', '1883-02-27', 14, NULL),
(113, 'Nome20', 'Cognome20', '1823-02-27', 14, NULL),
(114, 'Nome4', 'Cognome4', '1983-02-27', 14, NULL),
(115, 'Nome21', 'Cognome21', '1813-02-27', 14, 2),
(116, 'Nome11', 'Cognome11', '1913-02-27', 14, 2),
(117, 'Nome1', 'Cognome1', '2013-02-27', 14, 2),
(118, 'Nome23', 'Cognome23', '1793-02-27', 14, 4),
(119, 'Nome13', 'Cognome13', '1893-02-27', 14, 4),
(120, 'Nome3', 'Cognome3', '1993-02-27', 14, 4),
(121, 'Nome15', 'Cognome15', '1873-02-27', 14, 6),
(122, 'Nome5', 'Cognome5', '1973-02-27', 14, 6),
(123, 'Nome25', 'Cognome25', '1773-02-27', 14, 6),
(124, 'Nome17', 'Cognome17', '1853-02-27', 14, 8),
(125, 'Nome7', 'Cognome7', '1953-02-27', 14, 8),
(126, 'Nome19', 'Cognome19', '1833-02-27', 14, 10),
(127, 'Nome9', 'Cognome9', '1933-02-27', 14, 10),
(128, 'Nome12', 'Cognome12', '1903-02-27', 15, NULL),
(129, 'Nome18', 'Cognome18', '1843-02-27', 15, NULL),
(130, 'Nome2', 'Cognome2', '2003-02-27', 15, NULL),
(131, 'Nome8', 'Cognome8', '1943-02-27', 15, NULL),
(132, 'Nome24', 'Cognome24', '1783-02-27', 15, NULL),
(133, 'Nome14', 'Cognome14', '1883-02-27', 15, NULL),
(134, 'Nome20', 'Cognome20', '1823-02-27', 15, NULL),
(135, 'Nome4', 'Cognome4', '1983-02-27', 15, NULL),
(136, 'Nome10', 'Cognome10', '1923-02-27', 15, NULL),
(137, 'Nome26', 'Cognome26', '1763-02-27', 15, NULL),
(138, 'Nome16', 'Cognome16', '1863-02-27', 15, NULL),
(139, 'Nome22', 'Cognome22', '1803-02-27', 15, NULL),
(140, 'Nome6', 'Cognome6', '1963-02-27', 15, NULL),
(141, 'Nome1', 'Cognome1', '2013-02-27', 15, 2),
(142, 'Nome21', 'Cognome21', '1813-02-27', 15, 2),
(143, 'Nome11', 'Cognome11', '1913-02-27', 15, 2),
(144, 'Nome23', 'Cognome23', '1793-02-27', 15, 4),
(145, 'Nome13', 'Cognome13', '1893-02-27', 15, 4),
(146, 'Nome3', 'Cognome3', '1993-02-27', 15, 4),
(147, 'Nome25', 'Cognome25', '1773-02-27', 15, 6),
(148, 'Nome15', 'Cognome15', '1873-02-27', 15, 6),
(149, 'Nome5', 'Cognome5', '1973-02-27', 15, 6),
(150, 'Nome17', 'Cognome17', '1853-02-27', 15, 8),
(151, 'Nome7', 'Cognome7', '1953-02-27', 15, 8),
(152, 'Nome19', 'Cognome19', '1833-02-27', 15, 10),
(153, 'Nome9', 'Cognome9', '1933-02-27', 15, 10),
(154, 'Nome14', 'Cognome14', '1883-02-27', 16, NULL),
(155, 'Nome20', 'Cognome20', '1823-02-27', 16, NULL),
(156, 'Nome4', 'Cognome4', '1983-02-27', 16, NULL),
(157, 'Nome26', 'Cognome26', '1763-02-27', 16, NULL),
(158, 'Nome10', 'Cognome10', '1923-02-27', 16, NULL),
(159, 'Nome16', 'Cognome16', '1863-02-27', 16, NULL),
(160, 'Nome6', 'Cognome6', '1963-02-27', 16, NULL),
(161, 'Nome22', 'Cognome22', '1803-02-27', 16, NULL),
(162, 'Nome12', 'Cognome12', '1903-02-27', 16, NULL),
(163, 'Nome18', 'Cognome18', '1843-02-27', 16, NULL),
(164, 'Nome2', 'Cognome2', '2003-02-27', 16, NULL),
(165, 'Nome8', 'Cognome8', '1943-02-27', 16, NULL),
(166, 'Nome24', 'Cognome24', '1783-02-27', 16, NULL),
(167, 'Nome21', 'Cognome21', '1813-02-27', 16, 2),
(168, 'Nome11', 'Cognome11', '1913-02-27', 16, 2),
(169, 'Nome1', 'Cognome1', '2013-02-27', 16, 2),
(170, 'Nome23', 'Cognome23', '1793-02-27', 16, 4),
(171, 'Nome13', 'Cognome13', '1893-02-27', 16, 4),
(172, 'Nome3', 'Cognome3', '1993-02-27', 16, 4),
(173, 'Nome25', 'Cognome25', '1773-02-27', 16, 6),
(174, 'Nome15', 'Cognome15', '1873-02-27', 16, 6),
(175, 'Nome5', 'Cognome5', '1973-02-27', 16, 6),
(176, 'Nome17', 'Cognome17', '1853-02-27', 16, 8),
(177, 'Nome7', 'Cognome7', '1953-02-27', 16, 8),
(178, 'Nome9', 'Cognome9', '1933-02-27', 16, 10),
(179, 'Nome19', 'Cognome19', '1833-02-27', 16, 10),
(180, 'Nome8', 'Cognome8', '1943-02-27', 17, NULL),
(181, 'Nome24', 'Cognome24', '1783-02-27', 17, NULL),
(182, 'Nome14', 'Cognome14', '1883-02-27', 17, NULL),
(183, 'Nome20', 'Cognome20', '1823-02-27', 17, NULL),
(184, 'Nome4', 'Cognome4', '1983-02-27', 17, NULL),
(185, 'Nome10', 'Cognome10', '1923-02-27', 17, NULL),
(186, 'Nome26', 'Cognome26', '1763-02-27', 17, NULL),
(187, 'Nome16', 'Cognome16', '1863-02-27', 17, NULL),
(188, 'Nome6', 'Cognome6', '1963-02-27', 17, NULL),
(189, 'Nome22', 'Cognome22', '1803-02-27', 17, NULL),
(190, 'Nome12', 'Cognome12', '1903-02-27', 17, NULL),
(191, 'Nome18', 'Cognome18', '1843-02-27', 17, NULL),
(192, 'Nome2', 'Cognome2', '2003-02-27', 17, NULL),
(193, 'Nome21', 'Cognome21', '1813-02-27', 17, 2),
(194, 'Nome11', 'Cognome11', '1913-02-27', 17, 2),
(195, 'Nome1', 'Cognome1', '2013-02-27', 17, 2),
(196, 'Nome13', 'Cognome13', '1893-02-27', 17, 4),
(197, 'Nome3', 'Cognome3', '1993-02-27', 17, 4),
(198, 'Nome23', 'Cognome23', '1793-02-27', 17, 4),
(199, 'Nome25', 'Cognome25', '1773-02-27', 17, 6),
(200, 'Nome15', 'Cognome15', '1873-02-27', 17, 6),
(201, 'Nome5', 'Cognome5', '1973-02-27', 17, 6),
(202, 'Nome17', 'Cognome17', '1853-02-27', 17, 8),
(203, 'Nome7', 'Cognome7', '1953-02-27', 17, 8),
(204, 'Nome19', 'Cognome19', '1833-02-27', 17, 10),
(205, 'Nome9', 'Cognome9', '1933-02-27', 17, 10),
(206, 'Nome14', 'Cognome14', '1883-02-27', 18, NULL),
(207, 'Nome20', 'Cognome20', '1823-02-27', 18, NULL),
(208, 'Nome4', 'Cognome4', '1983-02-27', 18, NULL),
(209, 'Nome26', 'Cognome26', '1763-02-27', 18, NULL),
(210, 'Nome10', 'Cognome10', '1923-02-27', 18, NULL),
(211, 'Nome16', 'Cognome16', '1863-02-27', 18, NULL),
(212, 'Nome6', 'Cognome6', '1963-02-27', 18, NULL),
(213, 'Nome22', 'Cognome22', '1803-02-27', 18, NULL),
(214, 'Nome12', 'Cognome12', '1903-02-27', 18, NULL),
(215, 'Nome18', 'Cognome18', '1843-02-27', 18, NULL),
(216, 'Nome2', 'Cognome2', '2003-02-27', 18, NULL),
(217, 'Nome8', 'Cognome8', '1943-02-27', 18, NULL),
(218, 'Nome24', 'Cognome24', '1783-02-27', 18, NULL),
(219, 'Nome21', 'Cognome21', '1813-02-27', 18, 2),
(220, 'Nome11', 'Cognome11', '1913-02-27', 18, 2),
(221, 'Nome1', 'Cognome1', '2013-02-27', 18, 2),
(222, 'Nome3', 'Cognome3', '1993-02-27', 18, 4),
(223, 'Nome23', 'Cognome23', '1793-02-27', 18, 4),
(224, 'Nome13', 'Cognome13', '1893-02-27', 18, 4),
(225, 'Nome25', 'Cognome25', '1773-02-27', 18, 6),
(226, 'Nome15', 'Cognome15', '1873-02-27', 18, 6),
(227, 'Nome5', 'Cognome5', '1973-02-27', 18, 6),
(228, 'Nome17', 'Cognome17', '1853-02-27', 18, 8),
(229, 'Nome7', 'Cognome7', '1953-02-27', 18, 8),
(230, 'Nome19', 'Cognome19', '1833-02-27', 18, 10),
(231, 'Nome9', 'Cognome9', '1933-02-27', 18, 10),
(232, 'Nome8', 'Cognome8', '1943-02-27', 19, NULL),
(233, 'Nome24', 'Cognome24', '1783-02-27', 19, NULL),
(234, 'Nome14', 'Cognome14', '1883-02-27', 19, NULL),
(235, 'Nome20', 'Cognome20', '1823-02-27', 19, NULL),
(236, 'Nome4', 'Cognome4', '1983-02-27', 19, NULL),
(237, 'Nome10', 'Cognome10', '1923-02-27', 19, NULL),
(238, 'Nome26', 'Cognome26', '1763-02-27', 19, NULL),
(239, 'Nome16', 'Cognome16', '1863-02-27', 19, NULL),
(240, 'Nome6', 'Cognome6', '1963-02-27', 19, NULL),
(241, 'Nome22', 'Cognome22', '1803-02-27', 19, NULL),
(242, 'Nome12', 'Cognome12', '1903-02-27', 19, NULL),
(243, 'Nome18', 'Cognome18', '1843-02-27', 19, NULL),
(244, 'Nome2', 'Cognome2', '2003-02-27', 19, NULL),
(245, 'Nome21', 'Cognome21', '1813-02-27', 19, 2),
(246, 'Nome11', 'Cognome11', '1913-02-27', 19, 2),
(247, 'Nome1', 'Cognome1', '2013-02-27', 19, 2),
(248, 'Nome3', 'Cognome3', '1993-02-27', 19, 4),
(249, 'Nome23', 'Cognome23', '1793-02-27', 19, 4),
(250, 'Nome13', 'Cognome13', '1893-02-27', 19, 4),
(251, 'Nome25', 'Cognome25', '1773-02-27', 19, 6),
(252, 'Nome15', 'Cognome15', '1873-02-27', 19, 6),
(253, 'Nome5', 'Cognome5', '1973-02-27', 19, 6),
(254, 'Nome17', 'Cognome17', '1853-02-27', 19, 8),
(255, 'Nome7', 'Cognome7', '1953-02-27', 19, 8),
(256, 'Nome19', 'Cognome19', '1833-02-27', 19, 10),
(257, 'Nome9', 'Cognome9', '1933-02-27', 19, 10),
(258, 'Nome16', 'Cognome16', '1863-02-27', 20, NULL),
(259, 'Nome6', 'Cognome6', '1963-02-27', 20, NULL),
(260, 'Nome22', 'Cognome22', '1803-02-27', 20, NULL),
(261, 'Nome12', 'Cognome12', '1903-02-27', 20, NULL),
(262, 'Nome18', 'Cognome18', '1843-02-27', 20, NULL),
(263, 'Nome2', 'Cognome2', '2003-02-27', 20, NULL),
(264, 'Nome8', 'Cognome8', '1943-02-27', 20, NULL),
(265, 'Nome24', 'Cognome24', '1783-02-27', 20, NULL),
(266, 'Nome14', 'Cognome14', '1883-02-27', 20, NULL),
(267, 'Nome20', 'Cognome20', '1823-02-27', 20, NULL),
(268, 'Nome4', 'Cognome4', '1983-02-27', 20, NULL),
(269, 'Nome26', 'Cognome26', '1763-02-27', 20, NULL),
(270, 'Nome10', 'Cognome10', '1923-02-27', 20, NULL),
(271, 'Nome21', 'Cognome21', '1813-02-27', 20, 2),
(272, 'Nome11', 'Cognome11', '1913-02-27', 20, 2),
(273, 'Nome1', 'Cognome1', '2013-02-27', 20, 2),
(274, 'Nome23', 'Cognome23', '1793-02-27', 20, 4),
(275, 'Nome13', 'Cognome13', '1893-02-27', 20, 4),
(276, 'Nome3', 'Cognome3', '1993-02-27', 20, 4),
(277, 'Nome5', 'Cognome5', '1973-02-27', 20, 6),
(278, 'Nome25', 'Cognome25', '1773-02-27', 20, 6),
(279, 'Nome15', 'Cognome15', '1873-02-27', 20, 6),
(280, 'Nome17', 'Cognome17', '1853-02-27', 20, 8),
(281, 'Nome7', 'Cognome7', '1953-02-27', 20, 8),
(282, 'Nome19', 'Cognome19', '1833-02-27', 20, 10),
(283, 'Nome9', 'Cognome9', '1933-02-27', 20, 10),
(284, 'Nome12', 'Cognome12', '1903-02-27', 21, NULL),
(285, 'Nome18', 'Cognome18', '1843-02-27', 21, NULL),
(286, 'Nome2', 'Cognome2', '2003-02-27', 21, NULL),
(287, 'Nome8', 'Cognome8', '1943-02-27', 21, NULL),
(288, 'Nome24', 'Cognome24', '1783-02-27', 21, NULL),
(289, 'Nome14', 'Cognome14', '1883-02-27', 21, NULL),
(290, 'Nome20', 'Cognome20', '1823-02-27', 21, NULL),
(291, 'Nome4', 'Cognome4', '1983-02-27', 21, NULL),
(292, 'Nome10', 'Cognome10', '1923-02-27', 21, NULL),
(293, 'Nome26', 'Cognome26', '1763-02-27', 21, NULL),
(294, 'Nome16', 'Cognome16', '1863-02-27', 21, NULL),
(295, 'Nome22', 'Cognome22', '1803-02-27', 21, NULL),
(296, 'Nome6', 'Cognome6', '1963-02-27', 21, NULL),
(297, 'Nome21', 'Cognome21', '1813-02-27', 21, 2),
(298, 'Nome11', 'Cognome11', '1913-02-27', 21, 2),
(299, 'Nome1', 'Cognome1', '2013-02-27', 21, 2),
(300, 'Nome23', 'Cognome23', '1793-02-27', 21, 4),
(301, 'Nome13', 'Cognome13', '1893-02-27', 21, 4),
(302, 'Nome3', 'Cognome3', '1993-02-27', 21, 4),
(303, 'Nome25', 'Cognome25', '1773-02-27', 21, 6),
(304, 'Nome15', 'Cognome15', '1873-02-27', 21, 6),
(305, 'Nome5', 'Cognome5', '1973-02-27', 21, 6),
(306, 'Nome7', 'Cognome7', '1953-02-27', 21, 8),
(307, 'Nome17', 'Cognome17', '1853-02-27', 21, 8),
(308, 'Nome19', 'Cognome19', '1833-02-27', 21, 10),
(309, 'Nome9', 'Cognome9', '1933-02-27', 21, 10),
(310, 'Nome26', 'Cognome26', '1763-02-27', 22, NULL),
(311, 'Nome10', 'Cognome10', '1923-02-27', 22, NULL),
(312, 'Nome16', 'Cognome16', '1863-02-27', 22, NULL),
(313, 'Nome6', 'Cognome6', '1963-02-27', 22, NULL),
(314, 'Nome22', 'Cognome22', '1803-02-27', 22, NULL),
(315, 'Nome12', 'Cognome12', '1903-02-27', 22, NULL),
(316, 'Nome18', 'Cognome18', '1843-02-27', 22, NULL),
(317, 'Nome2', 'Cognome2', '2003-02-27', 22, NULL),
(318, 'Nome8', 'Cognome8', '1943-02-27', 22, NULL),
(319, 'Nome24', 'Cognome24', '1783-02-27', 22, NULL),
(320, 'Nome14', 'Cognome14', '1883-02-27', 22, NULL),
(321, 'Nome20', 'Cognome20', '1823-02-27', 22, NULL),
(322, 'Nome4', 'Cognome4', '1983-02-27', 22, NULL),
(323, 'Nome21', 'Cognome21', '1813-02-27', 22, 2),
(324, 'Nome11', 'Cognome11', '1913-02-27', 22, 2),
(325, 'Nome1', 'Cognome1', '2013-02-27', 22, 2),
(326, 'Nome23', 'Cognome23', '1793-02-27', 22, 4),
(327, 'Nome13', 'Cognome13', '1893-02-27', 22, 4),
(328, 'Nome3', 'Cognome3', '1993-02-27', 22, 4),
(329, 'Nome15', 'Cognome15', '1873-02-27', 22, 6),
(330, 'Nome5', 'Cognome5', '1973-02-27', 22, 6),
(331, 'Nome25', 'Cognome25', '1773-02-27', 22, 6),
(332, 'Nome17', 'Cognome17', '1853-02-27', 22, 8),
(333, 'Nome7', 'Cognome7', '1953-02-27', 22, 8),
(334, 'Nome19', 'Cognome19', '1833-02-27', 22, 10),
(335, 'Nome9', 'Cognome9', '1933-02-27', 22, 10),
(336, 'Nome20', 'Cognome20', '1823-02-27', 23, NULL),
(337, 'Nome4', 'Cognome4', '1983-02-27', 23, NULL),
(338, 'Nome26', 'Cognome26', '1763-02-27', 23, NULL),
(339, 'Nome10', 'Cognome10', '1923-02-27', 23, NULL),
(340, 'Nome16', 'Cognome16', '1863-02-27', 23, NULL),
(341, 'Nome6', 'Cognome6', '1963-02-27', 23, NULL),
(342, 'Nome22', 'Cognome22', '1803-02-27', 23, NULL),
(343, 'Nome12', 'Cognome12', '1903-02-27', 23, NULL),
(344, 'Nome18', 'Cognome18', '1843-02-27', 23, NULL),
(345, 'Nome2', 'Cognome2', '2003-02-27', 23, NULL),
(346, 'Nome8', 'Cognome8', '1943-02-27', 23, NULL),
(347, 'Nome24', 'Cognome24', '1783-02-27', 23, NULL),
(348, 'Nome14', 'Cognome14', '1883-02-27', 23, NULL),
(349, 'Nome21', 'Cognome21', '1813-02-27', 23, 2),
(350, 'Nome11', 'Cognome11', '1913-02-27', 23, 2),
(351, 'Nome1', 'Cognome1', '2013-02-27', 23, 2),
(352, 'Nome23', 'Cognome23', '1793-02-27', 23, 4),
(353, 'Nome13', 'Cognome13', '1893-02-27', 23, 4),
(354, 'Nome3', 'Cognome3', '1993-02-27', 23, 4),
(355, 'Nome15', 'Cognome15', '1873-02-27', 23, 6),
(356, 'Nome5', 'Cognome5', '1973-02-27', 23, 6),
(357, 'Nome25', 'Cognome25', '1773-02-27', 23, 6),
(358, 'Nome17', 'Cognome17', '1853-02-27', 23, 8),
(359, 'Nome7', 'Cognome7', '1953-02-27', 23, 8),
(360, 'Nome19', 'Cognome19', '1833-02-27', 23, 10),
(361, 'Nome9', 'Cognome9', '1933-02-27', 23, 10),
(362, 'Nome8', 'Cognome8', '1943-02-27', 24, NULL),
(363, 'Nome24', 'Cognome24', '1783-02-27', 24, NULL),
(364, 'Nome14', 'Cognome14', '1883-02-27', 24, NULL),
(365, 'Nome20', 'Cognome20', '1823-02-27', 24, NULL),
(366, 'Nome4', 'Cognome4', '1983-02-27', 24, NULL),
(367, 'Nome10', 'Cognome10', '1923-02-27', 24, NULL),
(368, 'Nome26', 'Cognome26', '1763-02-27', 24, NULL),
(369, 'Nome16', 'Cognome16', '1863-02-27', 24, NULL),
(370, 'Nome6', 'Cognome6', '1963-02-27', 24, NULL),
(371, 'Nome22', 'Cognome22', '1803-02-27', 24, NULL),
(372, 'Nome12', 'Cognome12', '1903-02-27', 24, NULL),
(373, 'Nome18', 'Cognome18', '1843-02-27', 24, NULL),
(374, 'Nome2', 'Cognome2', '2003-02-27', 24, NULL),
(375, 'Nome21', 'Cognome21', '1813-02-27', 24, 2),
(376, 'Nome11', 'Cognome11', '1913-02-27', 24, 2),
(377, 'Nome1', 'Cognome1', '2013-02-27', 24, 2),
(378, 'Nome13', 'Cognome13', '1893-02-27', 24, 4),
(379, 'Nome3', 'Cognome3', '1993-02-27', 24, 4),
(380, 'Nome23', 'Cognome23', '1793-02-27', 24, 4),
(381, 'Nome25', 'Cognome25', '1773-02-27', 24, 6),
(382, 'Nome15', 'Cognome15', '1873-02-27', 24, 6),
(383, 'Nome5', 'Cognome5', '1973-02-27', 24, 6),
(384, 'Nome17', 'Cognome17', '1853-02-27', 24, 8),
(385, 'Nome7', 'Cognome7', '1953-02-27', 24, 8),
(386, 'Nome19', 'Cognome19', '1833-02-27', 24, 10),
(387, 'Nome9', 'Cognome9', '1933-02-27', 24, 10),
(388, 'Nome20', 'Cognome20', '1823-02-27', 25, NULL),
(389, 'Nome4', 'Cognome4', '1983-02-27', 25, NULL),
(390, 'Nome26', 'Cognome26', '1763-02-27', 25, NULL),
(391, 'Nome10', 'Cognome10', '1923-02-27', 25, NULL),
(392, 'Nome16', 'Cognome16', '1863-02-27', 25, NULL),
(393, 'Nome6', 'Cognome6', '1963-02-27', 25, NULL),
(394, 'Nome22', 'Cognome22', '1803-02-27', 25, NULL),
(395, 'Nome12', 'Cognome12', '1903-02-27', 25, NULL),
(396, 'Nome18', 'Cognome18', '1843-02-27', 25, NULL),
(397, 'Nome2', 'Cognome2', '2003-02-27', 25, NULL),
(398, 'Nome8', 'Cognome8', '1943-02-27', 25, NULL),
(399, 'Nome24', 'Cognome24', '1783-02-27', 25, NULL),
(400, 'Nome14', 'Cognome14', '1883-02-27', 25, NULL),
(401, 'Nome21', 'Cognome21', '1813-02-27', 25, 2),
(402, 'Nome11', 'Cognome11', '1913-02-27', 25, 2),
(403, 'Nome1', 'Cognome1', '2013-02-27', 25, 2),
(404, 'Nome23', 'Cognome23', '1793-02-27', 25, 4),
(405, 'Nome13', 'Cognome13', '1893-02-27', 25, 4),
(406, 'Nome3', 'Cognome3', '1993-02-27', 25, 4),
(407, 'Nome15', 'Cognome15', '1873-02-27', 25, 6),
(408, 'Nome5', 'Cognome5', '1973-02-27', 25, 6),
(409, 'Nome25', 'Cognome25', '1773-02-27', 25, 6),
(410, 'Nome17', 'Cognome17', '1853-02-27', 25, 8),
(411, 'Nome7', 'Cognome7', '1953-02-27', 25, 8),
(412, 'Nome19', 'Cognome19', '1833-02-27', 25, 10),
(413, 'Nome9', 'Cognome9', '1933-02-27', 25, 10),
(414, 'Nome14', 'Cognome14', '1883-02-27', 26, NULL),
(415, 'Nome20', 'Cognome20', '1823-02-27', 26, NULL),
(416, 'Nome4', 'Cognome4', '1983-02-27', 26, NULL),
(417, 'Nome26', 'Cognome26', '1763-02-27', 26, NULL),
(418, 'Nome10', 'Cognome10', '1923-02-27', 26, NULL),
(419, 'Nome16', 'Cognome16', '1863-02-27', 26, NULL),
(420, 'Nome6', 'Cognome6', '1963-02-27', 26, NULL),
(421, 'Nome22', 'Cognome22', '1803-02-27', 26, NULL),
(422, 'Nome12', 'Cognome12', '1903-02-27', 26, NULL),
(423, 'Nome18', 'Cognome18', '1843-02-27', 26, NULL),
(424, 'Nome2', 'Cognome2', '2003-02-27', 26, NULL),
(425, 'Nome8', 'Cognome8', '1943-02-27', 26, NULL),
(426, 'Nome24', 'Cognome24', '1783-02-27', 26, NULL),
(427, 'Nome21', 'Cognome21', '1813-02-27', 26, 2),
(428, 'Nome11', 'Cognome11', '1913-02-27', 26, 2),
(429, 'Nome1', 'Cognome1', '2013-02-27', 26, 2),
(430, 'Nome23', 'Cognome23', '1793-02-27', 26, 4),
(431, 'Nome13', 'Cognome13', '1893-02-27', 26, 4),
(432, 'Nome3', 'Cognome3', '1993-02-27', 26, 4),
(433, 'Nome25', 'Cognome25', '1773-02-27', 26, 6),
(434, 'Nome15', 'Cognome15', '1873-02-27', 26, 6),
(435, 'Nome5', 'Cognome5', '1973-02-27', 26, 6),
(436, 'Nome17', 'Cognome17', '1853-02-27', 26, 8),
(437, 'Nome7', 'Cognome7', '1953-02-27', 26, 8),
(438, 'Nome9', 'Cognome9', '1933-02-27', 26, 10),
(439, 'Nome19', 'Cognome19', '1833-02-27', 26, 10),
(440, 'Nome16', 'Cognome16', '1863-02-27', 27, NULL),
(441, 'Nome6', 'Cognome6', '1963-02-27', 27, NULL),
(442, 'Nome22', 'Cognome22', '1803-02-27', 27, NULL),
(443, 'Nome12', 'Cognome12', '1903-02-27', 27, NULL),
(444, 'Nome18', 'Cognome18', '1843-02-27', 27, NULL),
(445, 'Nome2', 'Cognome2', '2003-02-27', 27, NULL),
(446, 'Nome8', 'Cognome8', '1943-02-27', 27, NULL),
(447, 'Nome24', 'Cognome24', '1783-02-27', 27, NULL),
(448, 'Nome14', 'Cognome14', '1883-02-27', 27, NULL),
(449, 'Nome20', 'Cognome20', '1823-02-27', 27, NULL),
(450, 'Nome4', 'Cognome4', '1983-02-27', 27, NULL),
(451, 'Nome26', 'Cognome26', '1763-02-27', 27, NULL),
(452, 'Nome10', 'Cognome10', '1923-02-27', 27, NULL),
(453, 'Nome21', 'Cognome21', '1813-02-27', 27, 2),
(454, 'Nome11', 'Cognome11', '1913-02-27', 27, 2),
(455, 'Nome1', 'Cognome1', '2013-02-27', 27, 2),
(456, 'Nome23', 'Cognome23', '1793-02-27', 27, 4),
(457, 'Nome13', 'Cognome13', '1893-02-27', 27, 4),
(458, 'Nome3', 'Cognome3', '1993-02-27', 27, 4),
(459, 'Nome5', 'Cognome5', '1973-02-27', 27, 6),
(460, 'Nome25', 'Cognome25', '1773-02-27', 27, 6),
(461, 'Nome15', 'Cognome15', '1873-02-27', 27, 6),
(462, 'Nome17', 'Cognome17', '1853-02-27', 27, 8),
(463, 'Nome7', 'Cognome7', '1953-02-27', 27, 8),
(464, 'Nome19', 'Cognome19', '1833-02-27', 27, 10),
(465, 'Nome9', 'Cognome9', '1933-02-27', 27, 10),
(466, 'Nome20', 'Cognome20', '1823-02-27', 28, NULL),
(467, 'Nome4', 'Cognome4', '1983-02-27', 28, NULL),
(468, 'Nome26', 'Cognome26', '1763-02-27', 28, NULL),
(469, 'Nome10', 'Cognome10', '1923-02-27', 28, NULL),
(470, 'Nome16', 'Cognome16', '1863-02-27', 28, NULL),
(471, 'Nome6', 'Cognome6', '1963-02-27', 28, NULL),
(472, 'Nome22', 'Cognome22', '1803-02-27', 28, NULL),
(473, 'Nome12', 'Cognome12', '1903-02-27', 28, NULL),
(474, 'Nome18', 'Cognome18', '1843-02-27', 28, NULL),
(475, 'Nome2', 'Cognome2', '2003-02-27', 28, NULL),
(476, 'Nome8', 'Cognome8', '1943-02-27', 28, NULL),
(477, 'Nome24', 'Cognome24', '1783-02-27', 28, NULL),
(478, 'Nome14', 'Cognome14', '1883-02-27', 28, NULL),
(479, 'Nome21', 'Cognome21', '1813-02-27', 28, 2),
(480, 'Nome11', 'Cognome11', '1913-02-27', 28, 2),
(481, 'Nome1', 'Cognome1', '2013-02-27', 28, 2),
(482, 'Nome23', 'Cognome23', '1793-02-27', 28, 4),
(483, 'Nome13', 'Cognome13', '1893-02-27', 28, 4),
(484, 'Nome3', 'Cognome3', '1993-02-27', 28, 4),
(485, 'Nome25', 'Cognome25', '1773-02-27', 28, 6),
(486, 'Nome15', 'Cognome15', '1873-02-27', 28, 6),
(487, 'Nome5', 'Cognome5', '1973-02-27', 28, 6),
(488, 'Nome17', 'Cognome17', '1853-02-27', 28, 8),
(489, 'Nome7', 'Cognome7', '1953-02-27', 28, 8),
(490, 'Nome9', 'Cognome9', '1933-02-27', 28, 10),
(491, 'Nome19', 'Cognome19', '1833-02-27', 28, 10),
(492, 'Nome26', 'Cognome26', '1763-02-27', 29, NULL),
(493, 'Nome10', 'Cognome10', '1923-02-27', 29, NULL),
(494, 'Nome16', 'Cognome16', '1863-02-27', 29, NULL),
(495, 'Nome6', 'Cognome6', '1963-02-27', 29, NULL),
(496, 'Nome22', 'Cognome22', '1803-02-27', 29, NULL),
(497, 'Nome12', 'Cognome12', '1903-02-27', 29, NULL),
(498, 'Nome18', 'Cognome18', '1843-02-27', 29, NULL),
(499, 'Nome2', 'Cognome2', '2003-02-27', 29, NULL),
(500, 'Nome8', 'Cognome8', '1943-02-27', 29, NULL),
(501, 'Nome24', 'Cognome24', '1783-02-27', 29, NULL),
(502, 'Nome14', 'Cognome14', '1883-02-27', 29, NULL),
(503, 'Nome20', 'Cognome20', '1823-02-27', 29, NULL),
(504, 'Nome4', 'Cognome4', '1983-02-27', 29, NULL),
(505, 'Nome21', 'Cognome21', '1813-02-27', 29, 2),
(506, 'Nome11', 'Cognome11', '1913-02-27', 29, 2),
(507, 'Nome1', 'Cognome1', '2013-02-27', 29, 2),
(508, 'Nome23', 'Cognome23', '1793-02-27', 29, 4),
(509, 'Nome13', 'Cognome13', '1893-02-27', 29, 4),
(510, 'Nome3', 'Cognome3', '1993-02-27', 29, 4),
(511, 'Nome5', 'Cognome5', '1973-02-27', 29, 6),
(512, 'Nome25', 'Cognome25', '1773-02-27', 29, 6),
(513, 'Nome15', 'Cognome15', '1873-02-27', 29, 6),
(514, 'Nome17', 'Cognome17', '1853-02-27', 29, 8),
(515, 'Nome7', 'Cognome7', '1953-02-27', 29, 8),
(516, 'Nome19', 'Cognome19', '1833-02-27', 29, 10),
(517, 'Nome9', 'Cognome9', '1933-02-27', 29, 10),
(518, 'Nome18', 'Cognome18', '1843-02-27', 30, NULL),
(519, 'Nome2', 'Cognome2', '2003-02-27', 30, NULL),
(520, 'Nome8', 'Cognome8', '1943-02-27', 30, NULL),
(521, 'Nome24', 'Cognome24', '1783-02-27', 30, NULL),
(522, 'Nome14', 'Cognome14', '1883-02-27', 30, NULL),
(523, 'Nome20', 'Cognome20', '1823-02-27', 30, NULL),
(524, 'Nome4', 'Cognome4', '1983-02-27', 30, NULL),
(525, 'Nome10', 'Cognome10', '1923-02-27', 30, NULL),
(526, 'Nome26', 'Cognome26', '1763-02-27', 30, NULL),
(527, 'Nome16', 'Cognome16', '1863-02-27', 30, NULL),
(528, 'Nome6', 'Cognome6', '1963-02-27', 30, NULL),
(529, 'Nome22', 'Cognome22', '1803-02-27', 30, NULL),
(530, 'Nome12', 'Cognome12', '1903-02-27', 30, NULL),
(531, 'Nome21', 'Cognome21', '1813-02-27', 30, 2),
(532, 'Nome11', 'Cognome11', '1913-02-27', 30, 2),
(533, 'Nome1', 'Cognome1', '2013-02-27', 30, 2),
(534, 'Nome23', 'Cognome23', '1793-02-27', 30, 4),
(535, 'Nome13', 'Cognome13', '1893-02-27', 30, 4),
(536, 'Nome3', 'Cognome3', '1993-02-27', 30, 4),
(537, 'Nome25', 'Cognome25', '1773-02-27', 30, 6),
(538, 'Nome15', 'Cognome15', '1873-02-27', 30, 6),
(539, 'Nome5', 'Cognome5', '1973-02-27', 30, 6),
(540, 'Nome7', 'Cognome7', '1953-02-27', 30, 8),
(541, 'Nome17', 'Cognome17', '1853-02-27', 30, 8),
(542, 'Nome19', 'Cognome19', '1833-02-27', 30, 10),
(543, 'Nome9', 'Cognome9', '1933-02-27', 30, 10),
(544, 'Nome18', 'Cognome18', '1843-02-27', 31, NULL),
(545, 'Nome2', 'Cognome2', '2003-02-27', 31, NULL),
(546, 'Nome8', 'Cognome8', '1943-02-27', 31, NULL),
(547, 'Nome24', 'Cognome24', '1783-02-27', 31, NULL),
(548, 'Nome14', 'Cognome14', '1883-02-27', 31, NULL),
(549, 'Nome20', 'Cognome20', '1823-02-27', 31, NULL),
(550, 'Nome4', 'Cognome4', '1983-02-27', 31, NULL),
(551, 'Nome10', 'Cognome10', '1923-02-27', 31, NULL),
(552, 'Nome26', 'Cognome26', '1763-02-27', 31, NULL),
(553, 'Nome16', 'Cognome16', '1863-02-27', 31, NULL),
(554, 'Nome6', 'Cognome6', '1963-02-27', 31, NULL),
(555, 'Nome22', 'Cognome22', '1803-02-27', 31, NULL),
(556, 'Nome12', 'Cognome12', '1903-02-27', 31, NULL),
(557, 'Nome21', 'Cognome21', '1813-02-27', 31, 2),
(558, 'Nome11', 'Cognome11', '1913-02-27', 31, 2),
(559, 'Nome1', 'Cognome1', '2013-02-27', 31, 2),
(560, 'Nome13', 'Cognome13', '1893-02-27', 31, 4),
(561, 'Nome3', 'Cognome3', '1993-02-27', 31, 4),
(562, 'Nome23', 'Cognome23', '1793-02-27', 31, 4),
(563, 'Nome25', 'Cognome25', '1773-02-27', 31, 6),
(564, 'Nome15', 'Cognome15', '1873-02-27', 31, 6),
(565, 'Nome5', 'Cognome5', '1973-02-27', 31, 6),
(566, 'Nome17', 'Cognome17', '1853-02-27', 31, 8),
(567, 'Nome7', 'Cognome7', '1953-02-27', 31, 8),
(568, 'Nome19', 'Cognome19', '1833-02-27', 31, 10),
(569, 'Nome9', 'Cognome9', '1933-02-27', 31, 10),
(570, 'Nome26', 'Cognome26', '1763-02-27', 32, NULL),
(571, 'Nome10', 'Cognome10', '1923-02-27', 32, NULL),
(572, 'Nome16', 'Cognome16', '1863-02-27', 32, NULL),
(573, 'Nome6', 'Cognome6', '1963-02-27', 32, NULL),
(574, 'Nome22', 'Cognome22', '1803-02-27', 32, NULL),
(575, 'Nome12', 'Cognome12', '1903-02-27', 32, NULL),
(576, 'Nome18', 'Cognome18', '1843-02-27', 32, NULL),
(577, 'Nome2', 'Cognome2', '2003-02-27', 32, NULL),
(578, 'Nome8', 'Cognome8', '1943-02-27', 32, NULL),
(579, 'Nome24', 'Cognome24', '1783-02-27', 32, NULL),
(580, 'Nome14', 'Cognome14', '1883-02-27', 32, NULL),
(581, 'Nome20', 'Cognome20', '1823-02-27', 32, NULL),
(582, 'Nome4', 'Cognome4', '1983-02-27', 32, NULL),
(583, 'Nome21', 'Cognome21', '1813-02-27', 32, 2),
(584, 'Nome11', 'Cognome11', '1913-02-27', 32, 2),
(585, 'Nome1', 'Cognome1', '2013-02-27', 32, 2),
(586, 'Nome23', 'Cognome23', '1793-02-27', 32, 4),
(587, 'Nome13', 'Cognome13', '1893-02-27', 32, 4),
(588, 'Nome3', 'Cognome3', '1993-02-27', 32, 4),
(589, 'Nome5', 'Cognome5', '1973-02-27', 32, 6),
(590, 'Nome25', 'Cognome25', '1773-02-27', 32, 6),
(591, 'Nome15', 'Cognome15', '1873-02-27', 32, 6),
(592, 'Nome17', 'Cognome17', '1853-02-27', 32, 8),
(593, 'Nome7', 'Cognome7', '1953-02-27', 32, 8),
(594, 'Nome19', 'Cognome19', '1833-02-27', 32, 10),
(595, 'Nome9', 'Cognome9', '1933-02-27', 32, 10),
(596, 'Nome14', 'Cognome14', '1883-02-27', 33, NULL),
(597, 'Nome20', 'Cognome20', '1823-02-27', 33, NULL),
(598, 'Nome4', 'Cognome4', '1983-02-27', 33, NULL),
(599, 'Nome26', 'Cognome26', '1763-02-27', 33, NULL),
(600, 'Nome10', 'Cognome10', '1923-02-27', 33, NULL),
(601, 'Nome16', 'Cognome16', '1863-02-27', 33, NULL),
(602, 'Nome6', 'Cognome6', '1963-02-27', 33, NULL),
(603, 'Nome22', 'Cognome22', '1803-02-27', 33, NULL),
(604, 'Nome12', 'Cognome12', '1903-02-27', 33, NULL),
(605, 'Nome18', 'Cognome18', '1843-02-27', 33, NULL),
(606, 'Nome2', 'Cognome2', '2003-02-27', 33, NULL),
(607, 'Nome8', 'Cognome8', '1943-02-27', 33, NULL),
(608, 'Nome24', 'Cognome24', '1783-02-27', 33, NULL),
(609, 'Nome21', 'Cognome21', '1813-02-27', 33, 2),
(610, 'Nome11', 'Cognome11', '1913-02-27', 33, 2),
(611, 'Nome1', 'Cognome1', '2013-02-27', 33, 2),
(612, 'Nome3', 'Cognome3', '1993-02-27', 33, 4),
(613, 'Nome23', 'Cognome23', '1793-02-27', 33, 4),
(614, 'Nome13', 'Cognome13', '1893-02-27', 33, 4),
(615, 'Nome25', 'Cognome25', '1773-02-27', 33, 6),
(616, 'Nome15', 'Cognome15', '1873-02-27', 33, 6),
(617, 'Nome5', 'Cognome5', '1973-02-27', 33, 6),
(618, 'Nome17', 'Cognome17', '1853-02-27', 33, 8),
(619, 'Nome7', 'Cognome7', '1953-02-27', 33, 8),
(620, 'Nome19', 'Cognome19', '1833-02-27', 33, 10),
(621, 'Nome9', 'Cognome9', '1933-02-27', 33, 10),
(622, 'Nome18', 'Cognome18', '1843-02-27', 34, NULL),
(623, 'Nome2', 'Cognome2', '2003-02-27', 34, NULL),
(624, 'Nome8', 'Cognome8', '1943-02-27', 34, NULL),
(625, 'Nome24', 'Cognome24', '1783-02-27', 34, NULL),
(626, 'Nome14', 'Cognome14', '1883-02-27', 34, NULL),
(627, 'Nome20', 'Cognome20', '1823-02-27', 34, NULL),
(628, 'Nome4', 'Cognome4', '1983-02-27', 34, NULL),
(629, 'Nome10', 'Cognome10', '1923-02-27', 34, NULL),
(630, 'Nome26', 'Cognome26', '1763-02-27', 34, NULL),
(631, 'Nome16', 'Cognome16', '1863-02-27', 34, NULL),
(632, 'Nome6', 'Cognome6', '1963-02-27', 34, NULL),
(633, 'Nome22', 'Cognome22', '1803-02-27', 34, NULL),
(634, 'Nome12', 'Cognome12', '1903-02-27', 34, NULL),
(635, 'Nome21', 'Cognome21', '1813-02-27', 34, 2),
(636, 'Nome11', 'Cognome11', '1913-02-27', 34, 2),
(637, 'Nome1', 'Cognome1', '2013-02-27', 34, 2),
(638, 'Nome23', 'Cognome23', '1793-02-27', 34, 4),
(639, 'Nome13', 'Cognome13', '1893-02-27', 34, 4),
(640, 'Nome3', 'Cognome3', '1993-02-27', 34, 4),
(641, 'Nome25', 'Cognome25', '1773-02-27', 34, 6),
(642, 'Nome15', 'Cognome15', '1873-02-27', 34, 6),
(643, 'Nome5', 'Cognome5', '1973-02-27', 34, 6),
(644, 'Nome7', 'Cognome7', '1953-02-27', 34, 8),
(645, 'Nome17', 'Cognome17', '1853-02-27', 34, 8),
(646, 'Nome19', 'Cognome19', '1833-02-27', 34, 10),
(647, 'Nome9', 'Cognome9', '1933-02-27', 34, 10),
(648, 'Nome18', 'Cognome18', '1843-02-27', 35, NULL),
(649, 'Nome2', 'Cognome2', '2003-02-27', 35, NULL),
(650, 'Nome8', 'Cognome8', '1943-02-27', 35, NULL),
(651, 'Nome24', 'Cognome24', '1783-02-27', 35, NULL),
(652, 'Nome14', 'Cognome14', '1883-02-27', 35, NULL),
(653, 'Nome20', 'Cognome20', '1823-02-27', 35, NULL),
(654, 'Nome4', 'Cognome4', '1983-02-27', 35, NULL),
(655, 'Nome10', 'Cognome10', '1923-02-27', 35, NULL),
(656, 'Nome26', 'Cognome26', '1763-02-27', 35, NULL),
(657, 'Nome16', 'Cognome16', '1863-02-27', 35, NULL),
(658, 'Nome6', 'Cognome6', '1963-02-27', 35, NULL),
(659, 'Nome22', 'Cognome22', '1803-02-27', 35, NULL),
(660, 'Nome12', 'Cognome12', '1903-02-27', 35, NULL),
(661, 'Nome21', 'Cognome21', '1813-02-27', 35, 2),
(662, 'Nome11', 'Cognome11', '1913-02-27', 35, 2),
(663, 'Nome1', 'Cognome1', '2013-02-27', 35, 2),
(664, 'Nome13', 'Cognome13', '1893-02-27', 35, 4),
(665, 'Nome3', 'Cognome3', '1993-02-27', 35, 4),
(666, 'Nome23', 'Cognome23', '1793-02-27', 35, 4),
(667, 'Nome25', 'Cognome25', '1773-02-27', 35, 6),
(668, 'Nome15', 'Cognome15', '1873-02-27', 35, 6),
(669, 'Nome5', 'Cognome5', '1973-02-27', 35, 6),
(670, 'Nome17', 'Cognome17', '1853-02-27', 35, 8),
(671, 'Nome7', 'Cognome7', '1953-02-27', 35, 8),
(672, 'Nome19', 'Cognome19', '1833-02-27', 35, 10),
(673, 'Nome9', 'Cognome9', '1933-02-27', 35, 10),
(674, 'Nome20', 'Cognome20', '1823-02-27', 36, NULL),
(675, 'Nome4', 'Cognome4', '1983-02-27', 36, NULL),
(676, 'Nome26', 'Cognome26', '1763-02-27', 36, NULL),
(677, 'Nome10', 'Cognome10', '1923-02-27', 36, NULL),
(678, 'Nome16', 'Cognome16', '1863-02-27', 36, NULL),
(679, 'Nome6', 'Cognome6', '1963-02-27', 36, NULL),
(680, 'Nome22', 'Cognome22', '1803-02-27', 36, NULL),
(681, 'Nome12', 'Cognome12', '1903-02-27', 36, NULL),
(682, 'Nome18', 'Cognome18', '1843-02-27', 36, NULL),
(683, 'Nome2', 'Cognome2', '2003-02-27', 36, NULL),
(684, 'Nome8', 'Cognome8', '1943-02-27', 36, NULL),
(685, 'Nome24', 'Cognome24', '1783-02-27', 36, NULL),
(686, 'Nome14', 'Cognome14', '1883-02-27', 36, NULL),
(687, 'Nome21', 'Cognome21', '1813-02-27', 36, 2),
(688, 'Nome11', 'Cognome11', '1913-02-27', 36, 2),
(689, 'Nome1', 'Cognome1', '2013-02-27', 36, 2),
(690, 'Nome23', 'Cognome23', '1793-02-27', 36, 4),
(691, 'Nome13', 'Cognome13', '1893-02-27', 36, 4),
(692, 'Nome3', 'Cognome3', '1993-02-27', 36, 4),
(693, 'Nome25', 'Cognome25', '1773-02-27', 36, 6),
(694, 'Nome15', 'Cognome15', '1873-02-27', 36, 6),
(695, 'Nome5', 'Cognome5', '1973-02-27', 36, 6),
(696, 'Nome17', 'Cognome17', '1853-02-27', 36, 8),
(697, 'Nome7', 'Cognome7', '1953-02-27', 36, 8),
(698, 'Nome9', 'Cognome9', '1933-02-27', 36, 10),
(699, 'Nome19', 'Cognome19', '1833-02-27', 36, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `tRegione`
--

CREATE TABLE `tRegione` (
  `id` int(11) NOT NULL,
  `nomeRegione` varchar(32) NOT NULL,
  `idNazionalita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tRegione`
--

INSERT INTO `tRegione` (`id`, `nomeRegione`, `idNazionalita`) VALUES
(1, 'Abruzzo', 1),
(2, 'Basilicata', 1),
(3, 'Calabria', 1),
(4, 'Campania', 1),
(5, 'Emilia-Romagna', 1),
(6, 'Friuli-Venezia Giulia', 1),
(7, 'Lazio', 1),
(8, 'Liguria', 1),
(9, 'Lombardia', 1),
(10, 'Marche', 1),
(11, 'Baden-Württemberg', 2),
(12, 'Baviera', 2),
(13, 'Berlino', 2),
(14, 'Brandeburgo', 2),
(15, 'Brema', 2),
(16, 'Amburgo', 2),
(17, 'Assia', 2),
(18, 'Meclemburgo-Pomerania Anteriore', 2),
(19, 'Bassa Sassonia', 2),
(20, 'Renania Settentrionale-Vestfalia', 2),
(21, 'Zurigo', 3),
(22, 'Ginevra', 3),
(23, 'Berna', 3),
(24, 'Vallese', 3),
(25, 'Vaud', 3),
(26, 'Neuchâtel', 3),
(27, 'Friburgo', 3),
(28, 'Ticino', 3),
(29, 'San Gallo', 3),
(30, 'Lucerna', 3),
(31, 'New York', 4),
(32, 'California', 4),
(33, 'Texas', 4),
(34, 'Florida', 4),
(35, 'Illinois', 4),
(36, 'Pennsylvania', 4),
(37, 'Ohio', 4),
(38, 'Georgia', 4),
(39, 'North Carolina', 4),
(40, 'Michigan', 4),
(41, 'Andalusia', 5),
(42, 'Aragón', 5),
(43, 'Asturias', 5),
(44, 'Baleari', 5),
(45, 'Canarie', 5),
(46, 'Cantabria', 5),
(47, 'Castiglia e León', 5),
(48, 'Castiglia-La Mancia', 5),
(49, 'Catalogna', 5),
(50, 'Estremadura', 5),
(51, 'Alta Austria', 6),
(52, 'Bassa Austria', 6),
(53, 'Burgenland', 6),
(54, 'Carinzia', 6),
(55, 'Salisburghese', 6),
(56, 'Stiria', 6),
(57, 'Tirolo', 6),
(58, 'Vorarlberg', 6),
(59, 'Vienna', 6),
(60, 'Alberta', 7),
(61, 'British Columbia', 7),
(62, 'Manitoba', 7),
(63, 'New Brunswick', 7),
(64, 'Terranova e Labrador', 7),
(65, 'Nova Scotia', 7),
(66, 'Ontario', 7),
(67, 'Prince Edward Island', 7),
(68, 'Quebec', 7),
(69, 'Saskatchewan', 7),
(70, 'Bavšica', 8),
(71, 'Gorenjska', 8),
(72, 'Goriška', 8),
(73, 'Jugovzhodna Slovenija', 8),
(74, 'Koroška', 8),
(75, 'Notranjsko-kraška', 8),
(76, 'Obalno-kraška', 8),
(77, 'Osrednjeslovenska', 8),
(78, 'Podravska', 8),
(79, 'Pomurska', 8),
(80, 'Anhui', 9),
(81, 'Fujian', 9),
(82, 'Gansu', 9),
(83, 'Guangdong', 9),
(84, 'Guizhou', 9),
(85, 'Hokkaido', 10),
(86, 'Tohoku', 10),
(87, 'Kanto', 10),
(88, 'Chubu', 10),
(89, 'Kinki', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `tSede`
--

CREATE TABLE `tSede` (
  `id` int(11) NOT NULL,
  `nomeSede` varchar(64) NOT NULL,
  `idRegione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tSede`
--

INSERT INTO `tSede` (`id`, `nomeSede`, `idRegione`) VALUES
(1, 'Scuola Media Statale', 1),
(2, 'Liceo Classico', 2),
(3, 'Istituto Tecnico Industriale', 3),
(4, 'Scuola Superiore di Studi Universitari e di Perfezionamento', 4),
(5, 'Istituto d\'Arte', 5),
(6, 'Liceo Scientifico', 6),
(7, 'Istituto Alberghiero', 7),
(8, 'Istituto Tecnico Commerciale', 8),
(9, 'Istituto Professionale per i Servizi Sociali', 9),
(10, 'Istituto Tecnico Agrario', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `tSquadra`
--

CREATE TABLE `tSquadra` (
  `id` int(11) NOT NULL,
  `nomeSquadra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tSquadra`
--

INSERT INTO `tSquadra` (`id`, `nomeSquadra`) VALUES
(1, 'Juventus'),
(2, 'Milan'),
(3, 'Inter'),
(4, 'Roma'),
(5, 'Napoli'),
(6, 'Lazio'),
(7, 'Atalanta'),
(8, 'Fiorentina'),
(9, 'Sampdoria'),
(10, 'Torino'),
(11, 'Bologna'),
(12, 'Cagliari'),
(13, 'Udinese'),
(14, 'Genoa'),
(15, 'Parma'),
(16, 'Empoli'),
(17, 'Sassuolo'),
(18, 'Venezia'),
(19, 'Spezia'),
(20, 'Verona'),
(21, 'Real Madrid'),
(22, 'Barcelona'),
(23, 'Bayern Monaco'),
(24, 'Manchester United'),
(25, 'Manchester City'),
(26, 'Chelsea'),
(27, 'Liverpool'),
(28, 'Paris Saint-Germain'),
(29, 'Olympique de Marseille'),
(30, 'Olympique Lyonnais'),
(31, 'Borussia Dortmund'),
(32, 'RB Leipzig'),
(33, 'Benfica'),
(34, 'Porto'),
(35, 'Ajax'),
(36, 'PSV Eindhoven'),
(37, 'Feyenoord'),
(38, 'Bruges'),
(39, 'Anderlecht'),
(40, 'Galatasaray'),
(41, 'Fenerbahçe'),
(42, 'Besiktas'),
(43, 'CSKA Moscow'),
(44, 'Spartak Moscow'),
(45, 'Zenit St. Petersburg'),
(46, 'Shakhtar Donetsk'),
(47, 'Dinamo Kiev'),
(48, 'Rosenborg'),
(49, 'Celtic'),
(50, 'Rangers'),
(51, 'Boca Juniors'),
(52, 'River Plate'),
(53, 'Flamengo'),
(54, 'Santos'),
(55, 'Corinthians'),
(56, 'Palmeiras'),
(57, 'Nacional (Uruguay)'),
(58, 'Peñarol'),
(59, 'Independiente del Valle'),
(60, 'Emelec'),
(61, 'Universidad Católica (Cile)'),
(62, 'Colo-Colo'),
(63, 'Alianza Lima'),
(64, 'Sporting Cristal'),
(65, 'Caracas FC'),
(66, 'Deportivo Táchira'),
(67, 'The Strongest'),
(68, 'Bolívar'),
(69, 'Cerro Porteño'),
(70, 'Olimpia Asunción'),
(71, 'Nacional (Paraguay)'),
(72, 'Guaraní'),
(73, 'Melbourne Victory'),
(74, 'Sydney FC'),
(75, 'Perth Glory'),
(76, 'Ulsan Hyundai'),
(77, 'Jeonbuk Hyundai Motors'),
(78, 'FC Tokyo'),
(79, 'Yokohama F. Marinos'),
(80, 'Kashima Antlers'),
(81, 'Al-Ahli (Saudi Arabia)'),
(82, 'Al-Hilal'),
(83, 'Al-Nassr'),
(84, 'Al-Sadd');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tClassifica`
--
ALTER TABLE `tClassifica`
  ADD PRIMARY KEY (`idPartecipante`,`idGara`),
  ADD KEY `fk_classifica_gara` (`idGara`);

--
-- Indici per le tabelle `tFase`
--
ALTER TABLE `tFase`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tGara`
--
ALTER TABLE `tGara`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_gara` (`idFase`),
  ADD KEY `fk_sede_gara` (`idSede`);

--
-- Indici per le tabelle `tIstituto`
--
ALTER TABLE `tIstituto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_regione_istituti` (`idRegione`);

--
-- Indici per le tabelle `tNazionalita`
--
ALTER TABLE `tNazionalita`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tPartecipante`
--
ALTER TABLE `tPartecipante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_squadra_atleta` (`idSquadra`),
  ADD KEY `fk_regione_atleta` (`idIstituto`);

--
-- Indici per le tabelle `tRegione`
--
ALTER TABLE `tRegione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nazionalita_regioni` (`idNazionalita`);

--
-- Indici per le tabelle `tSede`
--
ALTER TABLE `tSede`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_regione_sedi` (`idRegione`);

--
-- Indici per le tabelle `tSquadra`
--
ALTER TABLE `tSquadra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tFase`
--
ALTER TABLE `tFase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `tGara`
--
ALTER TABLE `tGara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT per la tabella `tIstituto`
--
ALTER TABLE `tIstituto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `tNazionalita`
--
ALTER TABLE `tNazionalita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `tPartecipante`
--
ALTER TABLE `tPartecipante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT per la tabella `tRegione`
--
ALTER TABLE `tRegione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT per la tabella `tSede`
--
ALTER TABLE `tSede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1796;

--
-- AUTO_INCREMENT per la tabella `tSquadra`
--
ALTER TABLE `tSquadra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `tClassifica`
--
ALTER TABLE `tClassifica`
  ADD CONSTRAINT `fk_classifica_atleta` FOREIGN KEY (`idPartecipante`) REFERENCES `tpartecipante` (`id`),
  ADD CONSTRAINT `fk_classifica_gara` FOREIGN KEY (`idGara`) REFERENCES `tgara` (`id`);

--
-- Limiti per la tabella `tGara`
--
ALTER TABLE `tGara`
  ADD CONSTRAINT `fk_sede_gara` FOREIGN KEY (`idSede`) REFERENCES `tsede` (`id`),
  ADD CONSTRAINT `fk_tipo_gara` FOREIGN KEY (`idFase`) REFERENCES `tfase` (`id`);

--
-- Limiti per la tabella `tIstituto`
--
ALTER TABLE `tIstituto`
  ADD CONSTRAINT `fk_regione_istituti` FOREIGN KEY (`idRegione`) REFERENCES `tregione` (`id`);

--
-- Limiti per la tabella `tPartecipante`
--
ALTER TABLE `tPartecipante`
  ADD CONSTRAINT `fk_istituto_atleta` FOREIGN KEY (`idIstituto`) REFERENCES `tistituto` (`id`),
  ADD CONSTRAINT `fk_squadra_atleta` FOREIGN KEY (`idSquadra`) REFERENCES `tsquadra` (`id`);

--
-- Limiti per la tabella `tRegione`
--
ALTER TABLE `tRegione`
  ADD CONSTRAINT `fk_nazionalita_regioni` FOREIGN KEY (`idNazionalita`) REFERENCES `tnazionalita` (`id`);

--
-- Limiti per la tabella `tSede`
--
ALTER TABLE `tSede`
  ADD CONSTRAINT `fk_regione_sedi` FOREIGN KEY (`idRegione`) REFERENCES `tregione` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
