-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2020 at 06:36 AM
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
-- Database: `subject_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE `ages` (
  `subject` varchar(100) NOT NULL,
  `labels` varchar(1000) DEFAULT NULL,
  `values` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ages`
--

INSERT INTO `ages` (`subject`, `labels`, `values`) VALUES
('chemistry', '[35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 82, 83, 84, 85, 97]', '[1, 1, 1, 3, 1, 3, 2, 4, 2, 5, 3, 2, 5, 6, 3, 8, 3, 8, 3, 10, 2, 7, 7, 5, 4, 6, 5, 4, 6, 6, 4, 1, 6, 4, 7, 5, 2, 4, 3, 2, 4, 3, 2, 3, 2, 1, 2, 1, 1, 1]'),
('computer_science_acm', '[35, 37, 38, 39, 41, 43, 44, 45, 46]', '[1, 1, 1, 1, 1, 3, 1, 2, 3]'),
('computer_science_turing', '[34, 36, 37, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 61, 62, 63, 64, 65, 66, 68, 69, 70, 71, 72, 74, 75, 77]', '[1, 1, 1, 1, 4, 1, 3, 1, 1, 1, 1, 2, 4, 1, 4, 4, 2, 1, 5, 4, 2, 3, 2, 2, 2, 2, 1, 1, 1, 3, 3, 2, 2, 2, 1]'),
('economic_sciences', '[47, 51, 53, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 81, 82, 84, 89, 90]', '[1, 1, 1, 3, 4, 1, 3, 1, 2, 6, 4, 6, 4, 2, 3, 7, 4, 2, 4, 3, 1, 2, 3, 3, 2, 4, 2, 1, 1, 1, 1, 1]'),
('mathematics_abel', '[28, 31, 32, 34, 37, 38, 63, 66, 67, 72, 77, 78, 79, 80, 82, 85, 87, 90]', '[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 2, 1, 1]'),
('mathematics_fields', '[28, 29, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]', '[1, 3, 5, 4, 3, 4, 6, 5, 7, 7, 8, 7]'),
('mathematics_nevanlinna', '[27, 34, 35, 36, 37, 38, 39, 40]', '[1, 1, 1, 2, 2, 1, 1, 1]'),
('medicine', '[32, 33, 34, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 79, 80, 81, 82, 83, 85, 87]', '[1, 1, 1, 1, 1, 4, 3, 3, 1, 3, 3, 4, 8, 6, 6, 9, 6, 5, 7, 8, 7, 9, 6, 9, 4, 2, 5, 9, 9, 9, 8, 4, 4, 2, 7, 1, 9, 4, 3, 2, 2, 5, 3, 4, 1, 1, 1, 2, 1, 3, 2]'),
('physics', '[25, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 84, 85, 87, 88, 96]', '[1, 4, 1, 1, 1, 4, 2, 5, 3, 2, 5, 1, 9, 4, 6, 5, 6, 6, 5, 8, 5, 3, 3, 8, 7, 5, 7, 3, 2, 8, 7, 5, 2, 5, 7, 4, 2, 2, 7, 1, 1, 3, 5, 3, 2, 1, 4, 4, 1, 2, 2, 2, 1, 3, 3, 2, 1, 1]');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `subject` varchar(100) NOT NULL,
  `country_legend` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`subject`, `country_legend`) VALUES
('chemistry', '[\'Argentina\', \'Austria\', \'Belgium\', \'Canada\', \'Czechoslovakia\', \'Denmark\', \'Finland\', \'France\', \'Germany\', \'Israel\', \'Italy\', \'Japan\', \'Norway\', \'Sweden\', \'Switzerland\', \'USA\', \'USSR\', \'United Kingdom\', \'the Netherlands\']'),
('computer_science_acm', '[\'France\', \'India\', \'Israel\', \'Netherlands\', \'Russia\', \'Syria\', \'USA\']'),
('computer_science_turing', '[\'Canada\', \'China\', \'Denmark\', \'France\', \'Greece\', \'Hungary\', \'India\', \'Israel\', \'Italy\', \'Latvia\', \'Norway\', \'Poland\', \'Sri Lanka\', \'Switzerland\', \'The Netherlands\', \'UK\', \'USA\', \'Venezuela\']'),
('economic_sciences', '[\'Denmark\', \'Federal Republic of Germany\', \'France\', \'Israel\', \'Norway\', \'Sweden\', \'USA\', \'USSR\', \'United Kingdom\', \'the Netherlands\']'),
('mathematics_abel', '[\'Belgium\', \'Canada\', \'France\', \'Germany\', \'Hungary\', \'India\', \'Soviet Union\', \'Sweden\', \'UK\', \'USA\']'),
('mathematics_fields', '[\'Australia\', \'Belgium\', \'Brazil\', \'Canada\', \'China\', \'Finland\', \'France\', \'Germany\', \'India\', \'Iran\', \'Israel\', \'Italy\', \'Japan\', \'New Zealand\', \'Vietnam\', \'Norway\', \'Poland\', \'South Africa\', \'Soviet Union\', \'Sweden\', \'Switzerland\', \'UK\', \'USA\']'),
('mathematics_nevanlinna', '[\'Greek\', \'Hungary\', \'India\', \'Israel\', \'Soviet Union\', \'USA\']'),
('medicine', '[\'Altenberg\', \'Argentina\', \'Australia\', \'Austria\', \'Belgium\', \'Canada\', \'China\', \'Denmark\', \'France\', \'Germany\', \'Hungary\', \'Italy\', \'Japan\', \'Norway\', \'Portugal\', \'Russia\', \'Spain\', \'Sweden\', \'Switzerland\', \'USA\', \'United Kingdom\', \'the Netherlands\']'),
('physics', '[\'Australia\', \'Austria\', \'Belgium\', \'Canada\', \'China\', \'Denmark\', \'France\', \'Germany\', \'India\', \'Ireland\', \'Italy\', \'Japan\', \'Russia\', \'Sweden\', \'Switzerland\', \'USA\', \'USSR\', \'United Kingdom\', \'the Netherlands\']');

-- --------------------------------------------------------

--
-- Table structure for table `hot_words`
--

CREATE TABLE `hot_words` (
  `subject` varchar(100) NOT NULL,
  `word_data` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hot_words`
--

INSERT INTO `hot_words` (`subject`, `word_data`) VALUES
('chemistry', '[{ value: 4, name: \'solution\' },\r\n{ value: 4, name: \'macromolecules\' },\r\n{ value: 4, name: \'three-dimensional\' },\r\n{ value: 4, name: \'elucidation\' },\r\n{ value: 4, name: \'catalytic\' },\r\n{ value: 4, name: \'dynamics\' },\r\n{ value: 4, name: \'nucleic\' },\r\n{ value: 4, name: \'acids\' },\r\n{ value: 4, name: \'energy\' },\r\n{ value: 4, name: \'sugar\' },\r\n{ value: 4, name: \'radioactive\' },\r\n{ value: 5, name: \'biological\' },\r\n{ value: 5, name: \'polymers\' },\r\n{ value: 5, name: \'reaction\' },\r\n{ value: 5, name: \'centre\' },\r\n{ value: 5, name: \'rendered\' },\r\n{ value: 6, name: \'enzymes\' },\r\n{ value: 6, name: \'molecular\' },\r\n{ value: 6, name: \'structures\' },\r\n{ value: 6, name: \'proteins\' },\r\n{ value: 7, name: \'microscopy\' },\r\n{ value: 7, name: \'protein\' },\r\n{ value: 7, name: \'molecules\' },\r\n{ value: 7, name: \'substances\' },\r\n{ value: 9, name: \'compounds\' },\r\n{ value: 9, name: \'services\' },\r\n{ value: 10, name: \'elements\' },\r\n{ value: 15, name: \'reactions\' },\r\n{ value: 16, name: \'recognition\' },\r\n{ value: 17, name: \'contributions\' },\r\n{ value: 18, name: \'structure\' },\r\n{ value: 18, name: \'organic\' },\r\n{ value: 23, name: \'synthesis\' }]'),
('computer_science_acm', '[{ value: 2, name: \'information\' },\r\n{ value: 2, name: \'internet-scale\' },\r\n{ value: 2, name: \'security\' },\r\n{ value: 2, name: \'applications\' },\r\n{ value: 2, name: \'research\' },\r\n{ value: 2, name: \'wide\' },\r\n{ value: 3, name: \'distributed\' },\r\n{ value: 3, name: \'computer\' },\r\n{ value: 4, name: \'systems\' }]'),
('computer_science_turing', '[{ value: 4, name: \'laid\' },\r\n{ value: 4, name: \'automatic\' },\r\n{ value: 4, name: \'database\' },\r\n{ value: 4, name: \'protocols\' },\r\n{ value: 4, name: \'checking\' },\r\n{ value: 4, name: \'simula\' },\r\n{ value: 4, name: \'digital\' },\r\n{ value: 4, name: \'numerical\' },\r\n{ value: 4, name: \'language\' },\r\n{ value: 4, name: \'introduced\' },\r\n{ value: 4, name: \'joint\' },\r\n{ value: 5, name: \'public-key\' },\r\n{ value: 5, name: \'networks\' },\r\n{ value: 5, name: \'software\' },\r\n{ value: 5, name: \'system\' },\r\n{ value: 6, name: \'operating\' },\r\n{ value: 6, name: \'science\' },\r\n{ value: 6, name: \'field\' },\r\n{ value: 7, name: \'seminal\' },\r\n{ value: 7, name: \'recognition\' },\r\n{ value: 7, name: \'program\' },\r\n{ value: 7, name: \'verification\' },\r\n{ value: 8, name: \'implementation\' },\r\n{ value: 8, name: \'languages\' },\r\n{ value: 8, name: \'algorithms\' },\r\n{ value: 8, name: \'cryptography\' },\r\n{ value: 9, name: \'complexity\' },\r\n{ value: 9, name: \'artificial\' },\r\n{ value: 9, name: \'intelligence\' },\r\n{ value: 16, name: \'systems\' }]'),
('economic_sciences', '[{ value: 4, name: \'poverty\' },\r\n{ value: 4, name: \'macroeconomic\' },\r\n{ value: 4, name: \'welfare\' },\r\n{ value: 4, name: \'market\' },\r\n{ value: 4, name: \'prices\' },\r\n{ value: 4, name: \'policy\' },\r\n{ value: 4, name: \'analyzing\' },\r\n{ value: 4, name: \'international\' },\r\n{ value: 5, name: \'design\' },\r\n{ value: 5, name: \'dynamic\' },\r\n{ value: 5, name: \'analyses\' },\r\n{ value: 5, name: \'asymmetric\' },\r\n{ value: 5, name: \'information\' },\r\n{ value: 5, name: \'institutional\' },\r\n{ value: 5, name: \'financial\' },\r\n{ value: 7, name: \'empirical\' },\r\n{ value: 10, name: \'markets\' }]'),
('mathematics_abel', '[{ value: 2, name: \'index\' },\r\n{ value: 2, name: \'elliptic\' },\r\n{ value: 2, name: \'complex\' },\r\n{ value: 2, name: \'algebraic\' },\r\n{ value: 2, name: \'probability\' },\r\n{ value: 2, name: \'group\' },\r\n{ value: 2, name: \'combinatorics\' },\r\n{ value: 2, name: \'lie\' },\r\n{ value: 2, name: \'role\' },\r\n{ value: 2, name: \'topology\' },\r\n{ value: 2, name: \'nonlinear\' },\r\n{ value: 2, name: \'applications\' },\r\n{ value: 3, name: \'seminal\' },\r\n{ value: 3, name: \'dynamical\' },\r\n{ value: 3, name: \'ergodic\' },\r\n{ value: 4, name: \'systems\' },\r\n{ value: 4, name: \'finite\' },\r\n{ value: 4, name: \'partial\' },\r\n{ value: 4, name: \'equations\' },\r\n{ value: 4, name: \'impact\' },\r\n{ value: 4, name: \'fundamental\' },\r\n{ value: 5, name: \'geometry\' },\r\n{ value: 5, name: \'number\' },\r\n{ value: 6, name: \'analysis\' },\r\n{ value: 6, name: \'groups\' },\r\n{ value: 7, name: \'differential\' }]'),
('mathematics_fields', '[{ value: 4, name: \'surfaces\' },\r\n{ value: 4, name: \'k-theory\' },\r\n{ value: 4, name: \'dynamical\' },\r\n{ value: 4, name: \'systems\' },\r\n{ value: 4, name: \'minimal\' },\r\n{ value: 4, name: \'spaces\' },\r\n{ value: 4, name: \'combinatorics\' },\r\n{ value: 4, name: \'operator\' },\r\n{ value: 4, name: \'classification\' },\r\n{ value: 4, name: \'finite\' },\r\n{ value: 4, name: \'geometric\' },\r\n{ value: 4, name: \'classes\' },\r\n{ value: 5, name: \'functions\' },\r\n{ value: 5, name: \'theorem\' },\r\n{ value: 5, name: \'methods\' },\r\n{ value: 5, name: \'varieties\' },\r\n{ value: 5, name: \'algebras\' },\r\n{ value: 6, name: \'structure\' },\r\n{ value: 7, name: \'solution\' },\r\n{ value: 7, name: \'partial\' },\r\n{ value: 8, name: \'complex\' },\r\n{ value: 8, name: \'topology\' },\r\n{ value: 8, name: \'groups\' },\r\n{ value: 9, name: \'number\' },\r\n{ value: 11, name: \'analysis\' },\r\n{ value: 11, name: \'equations\' },\r\n{ value: 12, name: \'conjecture\' },\r\n{ value: 13, name: \'differential\' }]'),
('mathematics_nevanlinna', '[{ value: 2, name: \'structures\' },\r\n{ value: 2, name: \'optimization\' },\r\n{ value: 2, name: \'search\' },\r\n{ value: 2, name: \'data\' },\r\n{ value: 2, name: \'profound\' },\r\n{ value: 2, name: \'development\' },\r\n{ value: 2, name: \'linear\' },\r\n{ value: 2, name: \'codes\' },\r\n{ value: 3, name: \'computational\' },\r\n{ value: 3, name: \'efficient\' },\r\n{ value: 3, name: \'approximation\' },\r\n{ value: 3, name: \'algorithmic\' },\r\n{ value: 3, name: \'analysis\' },\r\n{ value: 3, name: \'areas\' },\r\n{ value: 3, name: \'computer\' },\r\n{ value: 4, name: \'complexity\' },\r\n{ value: 4, name: \'theory\' },\r\n{ value: 5, name: \'algorithms\' }]'),
('medicine', '[{ value: 6, name: \'regulating\' },\r\n{ value: 6, name: \'immunity\' },\r\n{ value: 6, name: \'human\' },\r\n{ value: 7, name: \'immune\' },\r\n{ value: 7, name: \'enzyme\' },\r\n{ value: 7, name: \'embryonic\' },\r\n{ value: 7, name: \'metabolism\' },\r\n{ value: 7, name: \'diseases\' },\r\n{ value: 7, name: \'material\' },\r\n{ value: 8, name: \'treatment\' },\r\n{ value: 8, name: \'synthesis\' },\r\n{ value: 9, name: \'therapy\' },\r\n{ value: 9, name: \'molecular\' },\r\n{ value: 9, name: \'biological\' },\r\n{ value: 9, name: \'control\' },\r\n{ value: 9, name: \'acid\' },\r\n{ value: 10, name: \'regulation\' },\r\n{ value: 10, name: \'organization\' },\r\n{ value: 10, name: \'chemical\' },\r\n{ value: 10, name: \'nerve\' },\r\n{ value: 10, name: \'recognition\' },\r\n{ value: 11, name: \'viruses\' },\r\n{ value: 13, name: \'structure\' },\r\n{ value: 18, name: \'cells\' },\r\n{ value: 22, name: \'genetic\' },\r\n{ value: 25, name: \'cell\' }]'),
('physics', '[{ value: 6, name: \'decisive\' },\r\n{ value: 6, name: \'topological\' },\r\n{ value: 6, name: \'phase\' },\r\n{ value: 6, name: \'symmetry\' },\r\n{ value: 6, name: \'particular\' },\r\n{ value: 6, name: \'gases\' },\r\n{ value: 6, name: \'electrons\' },\r\n{ value: 6, name: \'motion\' },\r\n{ value: 7, name: \'systems\' },\r\n{ value: 7, name: \'matter\' },\r\n{ value: 7, name: \'precision\' },\r\n{ value: 7, name: \'spectroscopy\' },\r\n{ value: 7, name: \'electron\' },\r\n{ value: 7, name: \'field\' },\r\n{ value: 7, name: \'nuclei\' },\r\n{ value: 7, name: \'rendered\' },\r\n{ value: 8, name: \'light\' },\r\n{ value: 8, name: \'regarding\' },\r\n{ value: 8, name: \'interaction\' },\r\n{ value: 8, name: \'atoms\' },\r\n{ value: 8, name: \'phenomena\' },\r\n{ value: 8, name: \'weak\' },\r\n{ value: 8, name: \'magnetic\' },\r\n{ value: 9, name: \'optical\' },\r\n{ value: 9, name: \'neutrino\' },\r\n{ value: 9, name: \'cosmic\' },\r\n{ value: 10, name: \'nuclear\' },\r\n{ value: 10, name: \'recognition\' },\r\n{ value: 12, name: \'particle\' },\r\n{ value: 13, name: \'radiation\' },\r\n{ value: 16, name: \'quantum\' },\r\n{ value: 16, name: \'atomic\' },\r\n{ value: 17, name: \'particles\' },\r\n{ value: 20, name: \'structure\' }]');

-- --------------------------------------------------------

--
-- Table structure for table `introduction`
--

CREATE TABLE `introduction` (
  `subject` varchar(100) NOT NULL,
  `introduction` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `introduction`
--

INSERT INTO `introduction` (`subject`, `introduction`) VALUES
('chemistry', '<p><em>“The said interest shall be divided into five equal parts, which shall be apportioned as follows: ... one part to the person who shall have made the most important chemical discovery or improvement...”</em> (Excerpt from the will of Alfred Nobel.)</p><p>Chemistry was the most important science for Alfred Nobel’s own work. The development of his inventions as well as the industrial processes he employed were based upon chemical knowledge. Chemistry was the second prize area that Nobel mentioned in his will.</p><p>The Nobel Prize in Chemistry is awarded by The Royal Swedish Academy of Sciences, Stockholm, Sweden.</p>'),
('computer_science_acm', '<p>The ACM Prize in Computing recognizes an early to mid-career fundamental innovative contribution in computing that, through its depth, impact and broad implications, exemplifies the greatest achievements in the discipline.</p>'),
('computer_science_turing', '<p>The ACM A.M. Turing Award is an annual prize given by the Association for Computing Machinery (ACM) to \"an individual selected for contributions of a technical nature made to the computing community\". The Turing Award is recognized as the \"highest distinction in computer science\" and \"Nobel Prize of Computing\". The award is named after Alan Mathison Turing, mathematician and reader in mathematics at the University of Manchester.</p>'),
('economic_sciences', '<p>In 1968, Sveriges Riksbank (Sweden’s central bank) established the Prize in Economic Sciences in Memory of Alfred Nobel, founder of the Nobel Prize. The Prize is based on a donation received by the Nobel Foundation in 1968 from Sveriges Riksbank on the occasion of the Bank’s 300th anniversary. The first Prize in Economic Sciences was awarded to Ragnar Frisch and Jan Tinbergen in 1969.</p><p>The Prize in Economic Sciences is awarded by The Royal Swedish Academy of Sciences, Stockholm, Sweden, according to the same principles as for the Nobel Prizes that have been awarded since 1901.</p>'),
('mathematics_abel', '<p>The Abel Prize is an international prize presented by the King of Norway to one or more outstanding mathematicians. Named after Norwegian mathematician Niels Henrik Abel (1802–1829), the Abel Prize and the Fields Medal have often been described as the \"Mathematician’s Nobel Prizes\".</p>'),
('mathematics_fields', '<p>The Fields Medal is awarded every four years during the opening ceremony of the International Congress of Mathematicians (ICM). It recognizes outstanding mathematical achievement for existing work and for the promise of future achievement. Two to four medals are awarded to mathematicians who have to be of age less than forty years on January 1 of the Congress year. The Fields Medal, established in 1936 and named after the Canadian mathematician J. C. Fields, is one of the most prestigious awards in the field of mathematics and often described as the \"Nobel Prize of Mathematics\".</p>'),
('mathematics_nevanlinna', '<p>The Rolf Nevanlinna Prize is awarded, once every four years, at the International Congress of Mathematicians for outstanding contributions in Mathematical Aspects of Information Sciences. An awardee’s 40th birthday must not occur before January 1st of the year of the Congress at which the Prize is awarded. The prize was established in 1981 and named to honor the Finnish mathematician Rolf Nevanlinna.</p>'),
('medicine', '<p><em>“The said interest shall be divided into five equal parts, which shall be apportioned as follows: ... one part to the person who shall have made the most important discovery within the domain of physiology or medicine ...”</em> (Excerpt from the will of Alfred Nobel)</p><p>Alfred Nobel had an active interest in medical research. Through Karolinska Institutet, he came into contact with Swedish physiologist Jöns Johansson around 1890. Johansson worked in Nobel’s laboratory in Sevran, France during a brief period the same year. Physiology or medicine was the third prize area Nobel mentioned in his will.</p><p>The Nobel Prize in Physiology or Medicine is awarded by the Nobel Assembly at Karolinska Institutet, Stockholm, Sweden.</p>'),
('physics', '<p><em>“The said interest shall be divided into five equal parts, which shall be apportioned as follows: ... one part to the person who shall have made the most important discovery or invention within the field of physics ...”</em> (Excerpt from the will of Alfred Nobel)</p><p>Physics was the prize area which Alfred Nobel mentioned first in his will from 1895. At the end of the nineteenth century, many people considered physics as the foremost of the sciences, and perhaps Nobel saw it this way as well. His own research was also closely tied to physics.</p><p>The Nobel Prize in Physics is awarded by The Royal Swedish Academy of Sciences, Stockholm, Sweden.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`subject`),
  ADD KEY `ID` (`subject`) USING BTREE;

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`subject`),
  ADD KEY `ID` (`subject`) USING BTREE;

--
-- Indexes for table `hot_words`
--
ALTER TABLE `hot_words`
  ADD PRIMARY KEY (`subject`),
  ADD KEY `ID` (`subject`) USING BTREE;

--
-- Indexes for table `introduction`
--
ALTER TABLE `introduction`
  ADD PRIMARY KEY (`subject`),
  ADD KEY `ID` (`subject`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
