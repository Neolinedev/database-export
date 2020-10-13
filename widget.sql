-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2020 at 08:27 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `widget`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(36) NOT NULL,
  `komen` varchar(120) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `cek` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`nama`, `email`, `komen`, `waktu`, `cek`) VALUES
('Stranger0', 'dasdsa', 'Websitenya bagus', '2020-06-26, 12:04 pm', 'cek'),
('Stranger1', 'apoy@gmail.com', 'Bagaimana cara bergabung dengan komunitas ini?', '2020-06-26, 12:05 pm', 'cek'),
('Kakashi', 'kakashi@gmail.com', 'Saya udah ngirim kontak ya!', '2020-06-26, 12:06 pm', 'cek'),
('Greg Nwok', 'greg@gmail.com', 'Test', '2020-06-26, 12:06 pm', 'cek'),
('Mylove', 'mylove@gmail.com', 'Halooo', '2020-06-26, 12:07 pm', 'cek'),
('Sugeng', 'sugeng@gmail.com', 'Dia masih teman kita!', '2020-06-26, 20:16 pm', 'cek');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
