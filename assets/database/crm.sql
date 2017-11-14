-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 14, 2017 at 08:24 PM
-- Server version: 5.7.17
-- PHP Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street_number`, `street_name`, `city`, `zipcode`, `contact_id`) VALUES
(1, '34', 'rue gabriel peri', 'houilles', '78800', 1),
(2, '2', 'rue republique', 'paris', '75001', 2),
(3, '3', 'rue gabriel peri', 'houilles', '78800', 1),
(4, '1', 'rue republique', 'paris', '75004', 2),
(5, '1', 'rue gabriel peri', 'houilles', '78800', 1),
(6, '1', 'rue republique', 'paris', '75007', 2),
(7, '1', 'rue gabriel peri', 'houilles', '78800', 4),
(8, '1', 'rue republique', 'paris', '75001', 3),
(9, '2', 'sdfksdfj', 'cciosdkfj', '78888', 8),
(10, '2', 'sdfksdfj', 'cciosdkfj', '78888', 8),
(11, '9898', 'KJH', 'jhkh', '89888', 8),
(12, '87', 'fzojijfze', 'sdf', '75009', 1),
(13, '1', 'rue de lisbonne', 'Cabriès', '13480', 10);

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `user_id`, `lastName`, `firstName`) VALUES
(1, 'emielie@gmail.com', 1, 'dupont1', 'emilie1'),
(2, 'emielie2@gmail.com', 1, 'dupont2', 'emilie2'),
(3, 'emielie3@gmail.com', 1, 'dupont3', 'emilie3'),
(4, 'emielie4@gmail.com', 3, 'dupont', 'emilie4'),
(5, 'newnew@gmail.com', 1, 'new contact', 'new firstname'),
(6, 'zfefz@gmail.com', NULL, 'test3', 'test5'),
(7, 'benjamin@gmail.com', NULL, 'Bravo', 'Benjamin'),
(8, 'ezfzef@gmail.com', 4, 'benjamin', 'fzezfe'),
(9, 'benjamin@gmail.com', 4, 'sulyznser', 'benjamin'),
(10, 'anglais@test.com', 4, 'Anglais', 'Prof2'),
(11, 'fzeezzefez', 5, 'test', 'tstprénom');

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'test', 'test', 'test@test.com', 'test@test.com', 1, NULL, '$2y$13$PrmW9Oov1yIiyRIMaewnLuLkqJDBLfA46UUHsCMUiBziO.ri/AMNe', '2017-11-14 17:31:30', NULL, NULL, 'a:0:{}'),
(3, 'test2', 'test2', 'test2@test.com', 'test2@test.com', 1, NULL, '$2y$13$PrmW9Oov1yIiyRIMaewnLuLkqJDBLfA46UUHsCMUiBziO.ri/AMNe', '2017-11-14 11:53:55', NULL, NULL, 'a:0:{}'),
(4, 'marie', 'marie', 'marie@test.com', 'marie@test.com', 1, NULL, '$2y$13$0eJIUjov0R4J3C9zvPXmxeHnNJHWg29nWo0jNxSv3YLgy8VMemnZm', '2017-11-14 19:52:15', NULL, NULL, 'N;'),
(5, 'test333', 'test333', 'test1@test.com', 'test1@test.com', 1, NULL, '$2y$13$XuBACH9SDYSf4ZweNQL1SOsyEosiXttKeWSUW8iuOXrx4OlyIWYfK', '2017-11-14 20:17:14', NULL, NULL, 'N;');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
