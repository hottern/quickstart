-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2012 at 01:22 AM
-- Server version: 5.5.28
-- PHP Version: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guestbook-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE IF NOT EXISTS `guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL DEFAULT 'noemail@example.com',
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `user` varchar(25) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(10) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `email`, `comment`, `created`, `user`, `homepage`, `browser`, `ip`, `file`) VALUES
(9, 'hottern@mail.ru', 'dfsdf', '2012-11-30 21:47:16', 'qqqqqq', '', '', '', ''),
(10, 'hottern@mail.ru', 'dsdfsdf', '2012-11-30 21:52:43', 'fffff', 'aaaaa', '', '', ''),
(11, 'hottern@mail.ru', 'dsfsf', '2012-11-30 21:58:23', 'abc', 'http://vredniy.ru/2010/04/zend-framework-guestbook/', '', '', ''),
(12, 'hottern@mail.ru', 'dfgsg', '2012-11-30 22:21:38', 'adff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '', ''),
(13, 'hottern@mail.ru', 'cgdfgdg', '2012-11-30 22:28:46', 'adff', 'http://vredniy.ru/2010/04/zend-framework-guestbook/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '127.0.0.1', ''),
(14, 'hom@mail.ru', 'gjhgj\r\nuuuuuu\r\n', '2012-12-01 08:09:16', 'fffff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '127.0.0.1', ''),
(15, 'nfgnn@list.ru', 'Hello world! Rea', '2012-12-01 13:54:28', 'RiNat', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '127.0.0.1', ''),
(16, 'hottern@mail.ru', 'gfhfh\r\nfhgh\r\nfghfgh\r\nf\r\nghfgh\r\nf\r\nfghf\r\ngh\r\nf\r\nh\r\nf\r\nh\r\nfg\r\nhfhfghfgfg', '2012-12-01 13:56:46', 'adff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '127.0.0.1', ''),
(17, 'hottern@mail.ru', 'fgh', '2012-12-07 23:59:48', 'adff', 'http://vredniy.ru/2010/04/zend-framework-guestbook/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/17.0 Firefox/17.0', '127.0.0.1', ''),
(18, 'hottern@mail.ru', 'kjk', '2012-12-08 17:14:00', 'adff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0', '127.0.0.1', '276.jpg'),
(19, 'hottern@mail.ru', 'dcfggcg', '2012-12-08 17:21:09', 'adff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0', '127.0.0.1', '276.jpg'),
(20, 'hottern@mail.ru', 'rrtet', '2012-12-08 18:30:14', 'adff', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0', '127.0.0.1', '1316100289_2205.jpg'),
(21, 'hottern@mail.ru', '&#1083;&#1086;&#1088;&#1086;&#1083;&#1088;&#1083;&#1088;&#1083;', '2012-12-10 19:00:59', 'olga', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0', '127.0.0.1', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
