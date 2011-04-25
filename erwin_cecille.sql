-- EFDD

-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2011 at 02:58 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erwin_cecille`
--

-- --------------------------------------------------------

--
-- Table structure for table `fs_groups`
--

CREATE TABLE IF NOT EXISTS `fs_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fs_groups`
--

INSERT INTO `fs_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `fs_meta`
--

CREATE TABLE IF NOT EXISTS `fs_meta` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `fb_id` varchar(100) DEFAULT NULL,
  `fb_oauth_token` varchar(255) NOT NULL,
  `twitter_id` varchar(255) NOT NULL,
  `twitter_username` varchar(255) NOT NULL,
  `twitter_oauth_token` varchar(255) NOT NULL,
  `twitter_oauth_token_secret` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fs_meta`
--

INSERT INTO `fs_meta` (`id`, `user_id`, `fullname`, `avatar`, `fb_id`, `fb_oauth_token`, `twitter_id`, `twitter_username`, `twitter_oauth_token`, `twitter_oauth_token_secret`) VALUES
(1, 1, 'Erwin Handoko', 'http://graph.facebook.com/1033747475/picture', NULL, '', '26401725', 'bhasunjaya', '26401725-w6GQhS6ovCVyMhJhXmQwNcPaZyteA2BeaBgWdqQ40', 'SxY92oQlv8EjLsdfGDo7FZ0NJKfQ2mWCxtBvP5CJw');

-- --------------------------------------------------------

--
-- Table structure for table `fs_users`
--

CREATE TABLE IF NOT EXISTS `fs_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL,
  `ip_address` char(16) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fs_users`
--

INSERT INTO `fs_users` (`id`, `group_id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `remember_code`, `created_on`, `last_login`, `active`) VALUES
(1, 2, '127.0.0.1', 'Erwin Handoko', '3a26904feab778d43ef04558ef88061135cc642c', NULL, 'bhasunjaya@yahoo.com', NULL, NULL, NULL, 1303669313, 1303669313, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
