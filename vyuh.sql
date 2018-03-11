-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2018 at 03:26 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vyuh`
--

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE `hint` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `hint` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('LOGIN','LOGOUT','LEVELUP','LOGIN_FAILED','SIGNUP','PROFILE_VIEW','PROFILE_UPDATE','PLAY_GAME','INPUT_ANSWER','LEVEL_UP') NOT NULL,
  `details` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `current_level` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `type`, `details`, `date`, `current_level`, `ip`) VALUES
(1, 16, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(2, 17, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(3, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(4, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(5, 0, 'LOGIN_FAILED', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(6, 0, 'LOGIN_FAILED', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(7, 0, 'LOGIN_FAILED', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(8, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(9, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(10, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(11, 0, 'LOGOUT', '', '2010-01-25 18:30:00', 0, '127.0.0.1'),
(12, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(13, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(14, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(15, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(16, 27, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(17, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(18, 28, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(19, 28, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(20, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(21, 29, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(22, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(23, 29, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(24, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(25, 30, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(26, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(27, 31, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(28, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(29, 32, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(30, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(31, 33, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(32, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(33, 34, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(34, 34, 'PROFILE_VIEW', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(35, 34, 'PROFILE_UPDATE', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(36, 34, 'PROFILE_VIEW', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(37, 34, 'PROFILE_VIEW', '{\"id\":\"34\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400998585\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"ejfkehegefjnejhj\",\"semester\":\"2\",\"city\":\"rgrgrrhrhrhfgr\",\"level\":\"0\",\"last_login\":\"2018-03-05 23:48:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2012-01-05 18:30:00', 0, '127.0.0.1'),
(38, 34, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400998585\",\"semester\":\"3\",\"branch\":\"ejfkehegefjnejhj\",\"college\":\"\",\"city\":\"rgrgrrhrhrhfgr\",\"profile_picture\":null}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(39, 34, 'PROFILE_VIEW', '{\"id\":\"34\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400998585\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"ejfkehegefjnejhj\",\"semester\":\"3\",\"city\":\"rgrgrrhrhrhfgr\",\"level\":\"0\",\"last_login\":\"2018-03-06 00:02:46\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(40, 34, 'PROFILE_UPDATE', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(41, 34, 'PROFILE_UPDATE', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(42, 34, 'PROFILE_UPDATE', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(43, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(44, 34, 'INPUT_ANSWER', '\'\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(45, 34, 'INPUT_ANSWER', '\'efe\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(46, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(47, 34, 'INPUT_ANSWER', '\'\'\\\'\' OR 1=1;\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(48, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(49, 34, 'INPUT_ANSWER', '\'\" or \"\"=\"\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(50, 34, 'INPUT_ANSWER', '\" or \"\"=\"', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(51, 34, 'INPUT_ANSWER', '\'\" or \"\"=\"\'', '2001-06-25 18:30:00', 0, '127.0.0.1'),
(52, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(53, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(54, 34, 'INPUT_ANSWER', '\'1\'', '2001-07-25 18:30:00', 0, '127.0.0.1'),
(55, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(56, 34, 'INPUT_ANSWER', '\'1\'', '2001-09-01 18:30:00', 0, '127.0.0.1'),
(57, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(58, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(59, 34, 'INPUT_ANSWER', '\'1\'', '2001-10-26 18:30:00', 0, '127.0.0.1'),
(60, 34, 'INPUT_ANSWER', '\'1\'', '2001-10-30 18:30:00', 0, '127.0.0.1'),
(61, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(62, 34, 'INPUT_ANSWER', '\'1\'', '2001-11-29 18:30:00', 0, '127.0.0.1'),
(63, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(64, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(65, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(66, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(67, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(68, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(69, 34, 'PROFILE_VIEW', '{\"id\":\"34\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400998585\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"ejfkehegefjnejhj\",\"semester\":\"3\",\"city\":\"rgrgrrhrhrhfgr\",\"level\":\"0\",\"last_login\":\"2018-03-06 00:02:46\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(70, 34, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400998585\",\"semester\":\"3\",\"branch\":\"ejfkehegefjnejhj\",\"college\":\"\",\"city\":\"rgrgrrhrhrhfgrfffffffffff\",\"profile_picture\":null}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(71, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(72, 34, 'INPUT_ANSWER', '\'dd\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(73, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(74, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(75, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(76, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(77, 34, 'LEVEL_UP', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(78, 34, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(79, 34, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(80, 34, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(81, 34, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(82, 34, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(83, 34, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(84, 0, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(85, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(86, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(87, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(88, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(89, 34, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(90, 0, 'LOGIN_FAILED', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(91, 34, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(92, 34, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(93, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(94, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(95, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(96, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(97, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(98, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(99, 34, 'INPUT_ANSWER', '\'hgygygu\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(100, 34, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(101, 34, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(102, 34, 'LEVEL_UP', '\'1\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(103, 34, 'PLAY_GAME', '{\"level_no\":\"4\",\"question\":\"question 4\"}', '0000-00-00 00:00:00', 3, '127.0.0.1'),
(104, 34, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(105, 35, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(106, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"\",\"semester\":\"0\",\"city\":\"\",\"level\":\"0\",\"last_login\":\"2018-03-06 04:50:27\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"https:\\/\\/scontent.xx.fbcdn.net\\/v\\/t1.0-1\\/p50x50\\/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(107, 35, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400336625\",\"semester\":\"0\",\"branch\":\"15858\",\"college\":\"\",\"city\":\"yuyutdyrdgrshrshsrr\",\"profile_picture\":null}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(108, 35, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(109, 35, 'INPUT_ANSWER', '\'fbfnf\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(110, 35, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(111, 35, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(112, 35, 'LEVEL_UP', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(113, 35, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(114, 35, 'INPUT_ANSWER', '\'dvdg\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(115, 35, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(116, 35, 'INPUT_ANSWER', '\'2\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(117, 35, 'LEVEL_UP', '\'2\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(118, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(119, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(120, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(121, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(122, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(123, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(124, 35, 'INPUT_ANSWER', '\'ee\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(125, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(126, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(127, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(128, 0, 'LOGIN_FAILED', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(129, 35, 'LOGIN', '', '2011-11-03 18:30:00', 0, '127.0.0.1'),
(130, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(131, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(132, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(133, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(134, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(135, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(136, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(137, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(138, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(139, 35, 'PROFILE_VIEW', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(140, 35, 'PROFILE_VIEW', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(141, 35, 'PROFILE_VIEW', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(142, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(143, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(144, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(145, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(146, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(147, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(148, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(149, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2005-09-26 18:30:00', 2, '127.0.0.1'),
(150, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(151, 35, 'PROFILE_VIEW', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(152, 35, 'PROFILE_VIEW', 'null', '2005-10-04 18:30:00', 2, '127.0.0.1'),
(153, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(154, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(155, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(156, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(157, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(158, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(159, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(160, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(161, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(162, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(163, 35, 'INPUT_ANSWER', '\'sff\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(164, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(165, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(166, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(167, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(168, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(169, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(170, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(171, 35, 'LOGIN', '', '2010-10-31 18:30:00', 0, '127.0.0.1'),
(172, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2010-11-11 18:30:00', 2, '127.0.0.1'),
(173, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(174, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(175, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(176, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(177, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(178, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(179, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(180, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(181, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(182, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(183, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(184, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(185, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(186, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 17:16:03', 2, '127.0.0.1'),
(187, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(188, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(189, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 17:51:11', 2, '127.0.0.1'),
(190, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(191, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 17:51:15', 2, '127.0.0.1'),
(192, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(193, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 17:52:11', 2, '127.0.0.1'),
(194, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 17:58:00', 2, '127.0.0.1'),
(195, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:08:23', 2, '127.0.0.1'),
(196, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(197, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(198, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(199, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(200, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(201, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(202, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(203, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(204, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:11:26', 2, '127.0.0.1'),
(205, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:11:28', 2, '127.0.0.1'),
(206, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:11:34', 2, '127.0.0.1'),
(207, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(208, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:44:26', 2, '127.0.0.1'),
(209, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(210, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(211, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 18:57:43', 2, '127.0.0.1'),
(212, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:00:57', 2, '127.0.0.1'),
(213, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:01:39', 2, '127.0.0.1'),
(214, 35, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400336625\",\"semester\":\"0\",\"branch\":\"15858\",\"college\":\"\",\"city\":\"yuyutdyrdgrshrshsrr\",\"profile_picture\":null}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(215, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:20:13', 2, '127.0.0.1'),
(216, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:20:58', 2, '127.0.0.1'),
(217, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:21:43', 2, '127.0.0.1'),
(218, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:23:15', 2, '127.0.0.1'),
(219, 35, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400336625\",\"semester\":\"0\",\"branch\":\"15858\",\"college\":\"\",\"city\":\"yuyutdyrdgrshrshsrr\",\"profile_picture\":null}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(220, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:24:11', 2, '127.0.0.1'),
(221, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:24:33', 2, '127.0.0.1'),
(222, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:26:08', 2, '127.0.0.1'),
(223, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:26:56', 2, '127.0.0.1'),
(224, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:28:14', 2, '127.0.0.1'),
(225, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:32:58', 2, '127.0.0.1'),
(226, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:34:21', 2, '127.0.0.1'),
(227, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:35:53', 2, '127.0.0.1'),
(228, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-07 19:36:36', 2, '127.0.0.1'),
(229, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(230, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-08 00:29:18', 2, '127.0.0.1'),
(231, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-08 00:29:50', 2, '127.0.0.1'),
(232, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-08 00:30:03', 2, '127.0.0.1'),
(233, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-08 00:33:04', 2, '127.0.0.1'),
(234, 35, 'PROFILE_UPDATE', '{\"name\":\"Sreenath B S\",\"mobile\":\"9400336625\",\"semester\":\"0\",\"branch\":\"15858\",\"college\":\"\",\"city\":\"yuyutdyrdgrshrshsrr\",\"profile_picture\":null}', '2006-03-12 18:30:00', 2, '127.0.0.1'),
(235, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(236, 35, 'INPUT_ANSWER', '\'3\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(237, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(238, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '2006-05-05 18:30:00', 2, '127.0.0.1'),
(239, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '2006-05-07 18:30:00', 2, '127.0.0.1'),
(240, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-08 00:37:05', 2, '127.0.0.1'),
(241, 1, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(242, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(243, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-10 07:15:53', 2, '127.0.0.1'),
(244, 35, 'PROFILE_VIEW', '{\"id\":\"35\",\"email\":\"sreenathbs97@gmail.com\",\"mobile\":\"9400336625\",\"name\":\"Sreenath B S\",\"college\":\"\",\"branch\":\"15858\",\"semester\":\"0\",\"city\":\"yuyutdyrdgrshrshsrr\",\"level\":\"2\",\"level_pass_time\":\"2018-03-07 23:11:35\",\"last_login\":\"2018-03-06 04:54:18\",\"lifeline\":\"0\",\"score\":\"0\",\"status\":\"ACTIVE\",\"profile_picture\":\"\"}', '2018-03-10 07:20:06', 2, '127.0.0.1'),
(245, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(246, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(247, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(248, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(249, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(250, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(251, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(252, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(253, 0, 'LOGIN_FAILED', '', '2004-01-17 18:30:00', 0, '127.0.0.1'),
(254, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '::1'),
(255, 35, 'LOGIN', '', '2004-04-20 18:30:00', 0, '127.0.0.1'),
(256, 35, 'LOGOUT', '', '2004-04-25 18:30:00', 0, '127.0.0.1'),
(257, 35, 'LOGIN', '', '2004-07-31 18:30:00', 0, '127.0.0.1'),
(258, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(259, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(260, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(261, 35, 'PROFILE_UPDATE', '{\"college\":null}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(262, 35, 'PROFILE_UPDATE', '{\"college\":\"dff\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(263, 35, 'PROFILE_UPDATE', '{\"college\":\"dff\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(264, 35, 'PROFILE_UPDATE', '{\"college\":\"dgdg\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(265, 35, 'PROFILE_UPDATE', '{\"college\":\"evdgdg\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(266, 35, 'PROFILE_UPDATE', '{\"college\":\"ffvbfg\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(267, 35, 'PROFILE_UPDATE', '{\"college\":\"dfedg\"}', '2018-03-10 12:22:35', 2, '127.0.0.1'),
(268, 35, 'PROFILE_UPDATE', '{\"college\":\"jhjkh\"}', '2018-03-10 12:25:37', 2, '127.0.0.1'),
(269, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(270, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(271, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(272, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(273, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(274, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(275, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(276, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(277, 35, 'INPUT_ANSWER', '\'3e\'', '2006-04-18 18:30:00', 2, '127.0.0.1'),
(278, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(279, 35, 'PLAY_GAME', 'null', '2006-05-20 18:30:00', 2, '127.0.0.1'),
(280, 35, 'PLAY_GAME', 'null', '2006-05-22 18:30:00', 2, '127.0.0.1'),
(281, 35, 'PLAY_GAME', 'null', '2006-05-30 18:30:00', 2, '127.0.0.1'),
(282, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(283, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(284, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(285, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(286, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(287, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(288, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(289, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(290, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(291, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(292, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(293, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(294, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(295, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(296, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(297, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(298, 35, 'PLAY_GAME', 'null', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(299, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(300, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(301, 35, 'INPUT_ANSWER', '\'tfutfu\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(302, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(303, 35, 'INPUT_ANSWER', '\'hiehfiu\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(304, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(305, 35, 'INPUT_ANSWER', '\'efhiuehfiuh\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(306, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(307, 35, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(308, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(309, 35, 'INPUT_ANSWER', '\'feegeg\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(310, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(311, 35, 'INPUT_ANSWER', '\'efkheiufieufhy\'', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(312, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(313, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(314, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(315, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '0000-00-00 00:00:00', 2, '127.0.0.1'),
(316, 35, 'PLAY_GAME', '{\"level_no\":\"3\",\"question\":\"question 3\"}', '2003-11-24 18:30:00', 2, '127.0.0.1'),
(317, 35, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(318, 36, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(319, 36, 'PROFILE_UPDATE', '{\"college\":\"Gecb\"}', '2018-03-10 21:45:23', 0, '127.0.0.1'),
(320, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(321, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(322, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(323, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(324, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(325, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(326, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(327, 36, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(328, 37, 'SIGNUP', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(329, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(330, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(331, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(332, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(333, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(334, 37, 'PROFILE_UPDATE', '{\"college\":\"sfef\"}', '2018-03-10 22:35:20', 0, '127.0.0.1'),
(335, 37, 'PLAY_GAME', '{\"level_no\":\"1\",\"question\":\"question 1\"}', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(336, 37, 'INPUT_ANSWER', '\'1\'', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(337, 37, 'LEVEL_UP', '\'1\'', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(338, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(339, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(340, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(341, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(342, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(343, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(344, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(345, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(346, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(347, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(348, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(349, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(350, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(351, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(352, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(353, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(354, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(355, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(356, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(357, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(358, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(359, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(360, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1');
INSERT INTO `history` (`id`, `user_id`, `type`, `details`, `date`, `current_level`, `ip`) VALUES
(361, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(362, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(363, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(364, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(365, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(366, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(367, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(368, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(369, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(370, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(371, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(372, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(373, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(374, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(375, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(376, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(377, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(378, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(379, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(380, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(381, 37, 'LOGOUT', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(382, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(383, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(384, 37, 'LOGIN', '', '0000-00-00 00:00:00', 0, '127.0.0.1'),
(385, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(386, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(387, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1'),
(388, 37, 'PLAY_GAME', '{\"level_no\":\"2\",\"question\":\"question 2\"}', '0000-00-00 00:00:00', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `type` enum('IMAGE','TEXT','AUDIO','VIDEO') NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level_no`, `question`, `answer`, `active`, `type`, `date`) VALUES
(1, 1, 'question 1', '1', 1, 'TEXT', '2018-03-04 12:45:24'),
(2, 2, 'question 2', '2', 1, 'TEXT', '2018-03-04 12:45:42'),
(3, 3, 'question 3', '2', 1, 'TEXT', '2018-03-04 12:45:43'),
(4, 4, 'question 4', '2', 1, 'TEXT', '2018-03-04 12:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `proximity`
--

CREATE TABLE `proximity` (
  `id` int(11) NOT NULL,
  `level_no` int(11) NOT NULL,
  `answer` varchar(64) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proximity`
--

INSERT INTO `proximity` (`id`, `level_no`, `answer`, `percentage`) VALUES
(1, 1, 'answer1', 100),
(2, 1, 'answer3', 80),
(3, 1, 'answer2', 90),
(4, 1, 'answer4', 70),
(5, 1, 'answer5', 60),
(6, 1, 'answer6', 50),
(7, 1, 'answer7', 40),
(8, 1, 'answer8', 30),
(9, 1, 'answer9', 20),
(10, 1, 'answer10', 10),
(11, 2, 'answer1', 100),
(12, 2, 'answer2', 90),
(13, 2, 'answer3', 80),
(14, 2, 'answer4', 70),
(15, 2, 'answer5', 60),
(16, 2, 'answer6', 50),
(17, 2, 'answer7', 40),
(18, 2, 'answer8', 30),
(19, 2, 'answer9', 20),
(20, 2, 'answer10', 10),
(21, 3, 'answer1', 100),
(22, 3, 'answer2', 90),
(23, 3, 'answer3', 80),
(24, 3, 'answer4', 70),
(25, 3, 'answer5', 60),
(26, 3, 'answer6', 50),
(27, 3, 'answer7', 40),
(28, 3, 'answer8', 30),
(29, 3, 'answer9', 20),
(30, 3, 'answer10', 10),
(31, 4, 'answer1', 100),
(32, 4, 'answer2', 90),
(33, 4, 'answer3', 80),
(34, 4, 'answer4', 70),
(35, 4, 'answer5', 60),
(36, 4, 'answer6', 50),
(37, 4, 'answer7', 40),
(38, 4, 'answer8', 30),
(39, 4, 'answer9', 20),
(40, 4, 'answer10', 10),
(41, 5, 'answer1', 100),
(42, 5, 'answer2', 90),
(43, 5, 'answer3', 80),
(44, 5, 'answer4', 70),
(45, 5, 'answer5', 60),
(46, 5, 'answer6', 50),
(47, 5, 'answer7', 40),
(48, 5, 'answer8', 30),
(49, 5, 'answer9', 20),
(50, 5, 'answer10', 10),
(51, 6, 'answer1', 100),
(52, 6, 'answer2', 90),
(53, 6, 'answer3', 80),
(54, 6, 'answer4', 70),
(55, 6, 'answer5', 60),
(56, 6, 'answer6', 50),
(57, 6, 'answer7', 40),
(58, 6, 'answer8', 30),
(59, 6, 'answer9', 20),
(60, 6, 'answer10', 10),
(61, 7, 'answer1', 100),
(62, 7, 'answer2', 90),
(63, 7, 'answer3', 80),
(64, 7, 'answer4', 70),
(65, 7, 'answer5', 60),
(66, 7, 'answer6', 50),
(67, 7, 'answer7', 40),
(68, 7, 'answer8', 30),
(69, 7, 'answer9', 20),
(70, 7, 'answer10', 10),
(71, 8, 'answer1', 100),
(72, 8, 'answer2', 90),
(73, 8, 'answer3', 80),
(74, 8, 'answer4', 70),
(75, 8, 'answer5', 60),
(76, 8, 'answer6', 50),
(77, 8, 'answer7', 40),
(78, 8, 'answer8', 30),
(79, 8, 'answer9', 20),
(80, 8, 'answer10', 10),
(81, 9, 'answer1', 100),
(82, 9, 'answer2', 90),
(83, 9, 'answer3', 80),
(84, 9, 'answer4', 70),
(85, 9, 'answer5', 60),
(86, 9, 'answer6', 50),
(87, 9, 'answer7', 40),
(88, 9, 'answer8', 30),
(89, 9, 'answer9', 20),
(90, 9, 'answer10', 10),
(91, 10, 'answer1', 100),
(92, 10, 'answer2', 90),
(93, 10, 'answer3', 80),
(94, 10, 'answer4', 70),
(95, 10, 'answer5', 60),
(96, 10, 'answer6', 50),
(97, 10, 'answer7', 40),
(98, 10, 'answer8', 30),
(99, 10, 'answer9', 20),
(100, 10, 'answer10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `trials`
--

CREATE TABLE `trials` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_no` int(11) NOT NULL,
  `user_input` varchar(100) NOT NULL,
  `malicious` tinyint(4) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trials`
--

INSERT INTO `trials` (`id`, `user_id`, `level_no`, `user_input`, `malicious`, `ip`, `date`) VALUES
(1, 37, 1, '\'kjfkjefhl\'', 0, '127.0.0.1', '2018-03-11 04:38:37'),
(2, 37, 1, '\'efhoieufhoi\'', 1, '127.0.0.1', '2018-03-11 05:39:38'),
(3, 37, 1, '\'efbjejfo\'', 1, '127.0.0.1', '2018-03-11 05:39:52'),
(4, 37, 1, '\'1\'', 1, '127.0.0.1', '2018-03-11 05:40:01'),
(5, 37, 1, '\'ejfejfoi\'', 1, '127.0.0.1', '2018-03-11 05:40:31'),
(6, 37, 1, '\'grg\'', 1, '127.0.0.1', '2018-03-11 05:41:06'),
(7, 37, 1, '\'grg\'', 0, '127.0.0.1', '2018-03-11 05:41:36'),
(8, 37, 1, '\'grg\'', 0, '127.0.0.1', '2018-03-11 05:42:07'),
(9, 37, 1, '\'kfjherhfiuehriuhiofu\'', 0, '127.0.0.1', '2018-03-11 05:42:15'),
(10, 37, 1, '\'!iehiuf\'', 1, '127.0.0.1', '2018-03-11 05:42:20'),
(11, 37, 1, '\'`hwdhi>d;fjoue\'', 1, '127.0.0.1', '2018-03-11 05:42:25'),
(12, 37, 1, '\'erhfkiehfo\'', 0, '127.0.0.1', '2018-03-11 05:43:11'),
(13, 37, 1, '\'ehfeefe~\'', 1, '127.0.0.1', '2018-03-11 10:12:49'),
(14, 37, 1, '\'erjiejrojeto\'', 0, '127.0.0.1', '2018-03-11 10:13:26'),
(15, 37, 1, '\'bhgggjufg~hkeurhf\'', 1, '127.0.0.1', '2018-03-11 10:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `level` int(11) NOT NULL,
  `level_pass_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lifeline` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `status` enum('ACTIVE','INACTIVE','TERMINATED','SUSPECTED') NOT NULL,
  `type` enum('REGULAR','ADMIN','SUPERADMIN','MODERATOR','COORDINATOR') NOT NULL,
  `profile_picture` text NOT NULL,
  `coins` int(10) NOT NULL,
  `malicious` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `mobile`, `name`, `college`, `branch`, `semester`, `city`, `level`, `level_pass_time`, `last_login`, `lifeline`, `score`, `status`, `type`, `profile_picture`, `coins`, `malicious`) VALUES
(3, 'sreeddnathbs97@gmail.com', '9876543210', 'Jane', 'Indiana (East)', 'CSE', 4, 'Trivandrum', 0, '2018-03-11 13:34:56', '2018-03-11 13:34:56', 0, 0, 'SUSPECTED', 'MODERATOR', '', 0, 0),
(4, 'sreenaths97@gmail.com', '9876543211', 'Jane', 'Indiana (East)', 'CSE', 4, 'Trivandrum', 1, '2018-03-07 17:41:35', '2018-03-03 23:01:16', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(5, 'vftfrfr97@gmail.com', '9877777211', 'kkkk', 'Indiana (East)', 'CSE', 4, 'Trivandrum', 1, '2018-03-07 17:41:35', '2018-03-03 23:01:16', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(7, 'sreenathbs97@gmail.co', '9400918009', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 14:59:45', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(8, 'sreeharibs95@gmail.com', '9400993022', 'Sreehari B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 03:31:32', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(9, 'sreenathbs97@gmail.c', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:07:44', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(10, 'sreenathbs97@\\', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:09:58', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(11, 'sreenathbs97@gmai', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:21:15', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(12, 'sreenathbwfegtes97@gmail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:24:11', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(13, 'sreenathbsfeffffffff97@gmail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:27:34', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(14, 'sreenathbefefs97@gmail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:41:30', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(15, 'rrrrfrr', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:44:10', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(16, 'sreenathbs97@gmail.comeeeee', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 15:45:38', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(17, 'sreenathbs97fr@gmail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:07:09', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(18, 'fffgffgfg4', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:14:13', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(19, 'sreenathbs97@gmail.comrerrer', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:22:44', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(20, 'sreenathbs97@gmail.comwrwrwrwrwr', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:25:10', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(21, 'sreenathbs97@gmail.comefef', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:26:34', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(22, 'sreenathbs97@gmail.comssss', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:31:09', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(23, 'sreenathbs97@gmeffail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:36:59', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(24, 'ffffffffreenathbs97@gmail.c', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:39:10', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(25, 'sreenatddddhbs97@gmail.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:42:01', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(26, 'ffffffffffffffffffffffff', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:44:05', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(27, 'sreenathbs97@gmail.comeee', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 16:48:41', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(28, 'sreenathbs97@gmaeeeil.com', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 17:03:26', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(29, 'sreenathbs97@gmail.comefeeefekfjiehiheg', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 17:07:04', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(30, 'eeeeeeeeeeeeeeeeeeeeeeeeee', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 17:08:47', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(31, 'sreenathbs97@gmail.comeeffffffefueyfti', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 17:11:09', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(32, 'sssdjfjhjhfef', '', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 17:15:10', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(33, 'sreenathbs97@gmail.comeeeeeeeeeeeeeee', 'erefefrfnekjfke', 'Sreenath B S', '', '', 0, '', 0, '2018-03-07 17:41:35', '2018-03-05 18:06:49', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(34, 'sreenathbs97@gmail.comcc', '9400998585', 'Sreenath B S', '', 'ejfkehegefjnejhj', 0, 'rgrgrrhrhrhfgrfffffffffff', 3, '2018-03-07 17:41:35', '2018-03-05 23:20:22', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(35, 'sreenathbs97@gmail.com1', '9400336625', 'Sreenath B S', 'jhjkh', '15858', 0, 'yuyutdyrdgrshrshsrr', 2, '2018-03-11 02:14:58', '2018-03-11 02:14:58', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0),
(36, 'sreenathbs97@gmail.com2', '', 'Sreenath B S', 'Gecb', '', 0, '', 0, '2018-03-11 02:18:23', '2018-03-11 02:18:23', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 0, 0),
(37, 'sreenathbs97@gmail.com', '', 'Sreenath B S', 'sfef', '', 0, '', 1, '2018-03-11 09:13:58', '2018-03-11 09:13:58', 0, 0, 'ACTIVE', 'REGULAR', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/16174861_594392280748667_1688894220550490283_n.jpg?oh=3bae19b968bb84e9e9968347b76673e3&oe=5B0064E1', 100, 2),
(38, 'sreenathbs97@gmail.com1www', '9400336625', 'Sreenath B S', 'jhjkhwdwdw', '15858', 0, 'yuyutdyrdgrshrshsrr', 2, '2018-03-11 02:14:58', '2018-03-11 02:14:58', 0, 0, 'ACTIVE', 'REGULAR', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hint`
--
ALTER TABLE `hint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proximity`
--
ALTER TABLE `proximity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trials`
--
ALTER TABLE `trials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hint`
--
ALTER TABLE `hint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proximity`
--
ALTER TABLE `proximity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `trials`
--
ALTER TABLE `trials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
