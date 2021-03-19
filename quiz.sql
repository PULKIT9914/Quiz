-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2021 at 07:10 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `easy`
--

CREATE TABLE IF NOT EXISTS `easy` (
  `id` varchar(10) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `op1` varchar(20) NOT NULL,
  `op2` varchar(20) NOT NULL,
  `op3` varchar(20) NOT NULL,
  `op4` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easy`
--

INSERT INTO `easy` (`id`, `ques`, `op1`, `op2`, `op3`, `op4`) VALUES
('e1', ' What is the largest big cat in the world?', 'Panther', 'Lion', 'Tiger', 'PersianCat'),
('e2', 'How many legs does an octopus have?', 'Seven', 'Nine', 'Twelve', 'Eight'),
('e3', 'Is a dolphin a mammal?', 'Yes', 'No', 'May be', 'May not'),
('e4', 'What is a group of lions called?', 'Asquad', 'Apride', 'Agang', 'Acord'),
('e5', 'What are baby goats called?', 'Guts', 'Cubs', 'Kids', 'Pets');

-- --------------------------------------------------------

--
-- Table structure for table `hard`
--

CREATE TABLE IF NOT EXISTS `hard` (
  `id` varchar(10) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `op1` varchar(20) NOT NULL,
  `op2` varchar(20) NOT NULL,
  `op3` varchar(20) NOT NULL,
  `op4` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hard`
--

INSERT INTO `hard` (`id`, `ques`, `op1`, `op2`, `op3`, `op4`) VALUES
('h1', 'Which body of the water was called "mare nostrum" by the Romans? The Mediterranean Sea', 'TheMediterraneanSea', 'TheAntarcticSea', 'ThePacificOcean', 'TheAtlanticOcean'),
('h2', 'Who was the first actor ever to receive $1 million for a role? ', 'DannisRitche', 'WilliamHolden', 'TomCruise', 'Rock'),
('h3', 'What part of a sailboat does the tiller move?', 'TheCliff', 'TheDashboard', 'TheRudder', 'TheMainsail'),
('h4', ' What''s Postman Pat''s surname?', 'Kitty', 'Tommy', 'Jack', 'Clifton'),
('h5', ' What colour is in 75 per cent of national flags?', 'Red', 'Green', 'White', 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `medium`
--

CREATE TABLE IF NOT EXISTS `medium` (
  `id` varchar(10) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `op1` varchar(20) NOT NULL,
  `op2` varchar(20) NOT NULL,
  `op3` varchar(20) NOT NULL,
  `op4` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medium`
--

INSERT INTO `medium` (`id`, `ques`, `op1`, `op2`, `op3`, `op4`) VALUES
('m1', ' What is the name of the biggest technology company in South Korea?', 'Sony', 'Samsung', 'HP', 'Lenovo'),
('m2', 'What is the capital of Portugal?', 'Beijing', 'Washington', 'Lisbon', 'SaintPetersburg'),
('m3', ' How many breaths does the human body take daily?', '10,000daily', '24,000daily', '12,000daily', '20,000daily'),
('m4', 'What is the world’s smallest bird?', 'BeeHummingbird', 'Sparrow', 'TinTin', 'Flamingo'),
('m5', ' What is the doll, Barbie’s, full name?', 'Leisha', 'BarbaraMillicentRo', 'Anabella', 'PrincessLia');

-- --------------------------------------------------------

--
-- Table structure for table `re`
--

CREATE TABLE IF NOT EXISTS `re` (
  `answer` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `re`
--

INSERT INTO `re` (`answer`) VALUES
('Tiger'),
('Eight'),
('Yes'),
('Apride'),
('Kids');

-- --------------------------------------------------------

--
-- Table structure for table `rh`
--

CREATE TABLE IF NOT EXISTS `rh` (
  `answer` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rh`
--

INSERT INTO `rh` (`answer`) VALUES
('TheMediterraneanSea'),
('WilliamHolden'),
('TheRudder'),
('Clifton'),
('Red');

-- --------------------------------------------------------

--
-- Table structure for table `rm`
--

CREATE TABLE IF NOT EXISTS `rm` (
  `answer` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rm`
--

INSERT INTO `rm` (`answer`) VALUES
('Samsung'),
('Lisbon'),
('20,000daily'),
('BeeHummingbird'),
('BarbaraMillicentRo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
