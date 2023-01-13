-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 09:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `complain_box`
--

CREATE TABLE `complain_box` (
  `complain_id` int(11) NOT NULL,
  `form_id` varchar(30) NOT NULL,
  `to_id` varchar(30) NOT NULL,
  `complain_and_replay_text` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_box`
--

INSERT INTO `complain_box` (`complain_id`, `form_id`, `to_id`, `complain_and_replay_text`, `time`) VALUES
(117, '100001', '100000', 'Joy Bangla', '2023-01-13 13:54:16'),
(118, '100000', '100001', 'Hakuna Matata', '2023-01-13 13:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Bangladesh'),
(2, 'India'),
(3, 'Pakistan'),
(4, 'Srilanka'),
(5, 'Vhutan'),
(6, 'Nepal'),
(7, 'Mayanmar');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(20) NOT NULL,
  `m_from` varchar(50) NOT NULL,
  `m_to` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `m_from`, `m_to`, `message`, `time`) VALUES
(1, 'raju@gmail.com', 'three@gmail.com', 'hello', '2023-01-13 18:14:02'),
(2, 'three@gmail.com', 'raju@gmail.com', 'how are you', '2023-01-13 18:22:02'),
(3, 'raju@gmail.com', 'three@gmail.com', 'ok', '2023-01-13 14:22:03'),
(20, 'tahmid2514@student.nstu.edu.bd', 'raju@gmail.com', 'after session set 3', '0000-00-00 00:00:00'),
(21, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'hi', '0000-00-00 00:00:00'),
(22, 'raju@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'message from raju to tahmid', '0000-00-00 00:00:00'),
(23, 'tahmid2514@student.nstu.edu.bd', 'raju@gmail.com', 'From tahmid to raju', '0000-00-00 00:00:00'),
(24, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'huuuuuukdbfdkjbvkjfs bksfkksjbn', '0000-00-00 00:00:00'),
(25, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'hello tahmid', '0000-00-00 00:00:00'),
(26, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'Yes three', '0000-00-00 00:00:00'),
(27, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'what is your problem..?', '0000-00-00 00:00:00'),
(28, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'Can you give me the books..?', '0000-00-00 00:00:00'),
(29, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'Why do you need that..?', '0000-00-00 00:00:00'),
(30, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'I really want to read the book.', '0000-00-00 00:00:00'),
(31, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'ohiub', '0000-00-00 00:00:00'),
(32, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'kjb', '0000-00-00 00:00:00'),
(33, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'new ', '0000-00-00 00:00:00'),
(34, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'latest', '0000-00-00 00:00:00'),
(35, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'ultra latest', '0000-00-00 00:00:00'),
(36, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', ' i am three\r\n', '0000-00-00 00:00:00'),
(37, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'i am 14', '0000-00-00 00:00:00'),
(38, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'ok lets see', '0000-00-00 00:00:00'),
(39, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'okk i will see', '0000-00-00 00:00:00'),
(40, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'lkbkbbk', '0000-00-00 00:00:00'),
(41, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'gfxxtrxt', '0000-00-00 00:00:00'),
(42, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'lnbiubiv', '0000-00-00 00:00:00'),
(43, 'tahmid2514@student.nstu.edu.bd', 'three@gmail.com', 'i am a new message', '0000-00-00 00:00:00'),
(44, 'raju@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'kire Tahmid..?', '0000-00-00 00:00:00'),
(45, 'tahmid2514@student.nstu.edu.bd', 'raju@gmail.com', 'Ha raju bol..', '0000-00-00 00:00:00'),
(46, 'three@gmail.com', 'tahmid2514@student.nstu.edu.bd', 'm f raju to tahmid', '0000-00-00 00:00:00'),
(47, 'four@gmail.com', 'three@gmail.com', 'Hello three..?', '0000-00-00 00:00:00'),
(48, 'three@gmail.com', 'four@gmail.com', 'Yes four tell me', '0000-00-00 00:00:00'),
(49, 'four@gmail.com', 'raju@gmail.com', 'Hello raju', '0000-00-00 00:00:00'),
(50, 'raju@gmail.com', 'four@gmail.com', 'hello four', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_name` varchar(20) NOT NULL,
  `author_name` varchar(20) NOT NULL,
  `edition` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `img_location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `book_name`, `author_name`, `edition`, `details`, `img_location`) VALUES
(10, 9, 'Travel', 'gg', '1', 'New one.', 'IMG-63a53fe5864fa4.29408804.jpg'),
(11, 9, 'a', 'a', 'a', 'a', 'IMG-63a5442110c253.11275641.jpg'),
(12, 9, 'psg', 'spg', '21', 'Game for game', 'IMG-63a5def8ca1846.90526053.jpg'),
(14, 10, 'BLWS', 'Max', '10th', 'Fresh Book', 'IMG-63a5e517982ee5.33932435.jpg'),
(18, 12, 'Travel', 'KK', '12', 'Duplicate Book.', NULL),
(21, 12, 'Misir Ali', 'Humayen Ahmed', '1st', 'Interesting Book', 'IMG-63a5e96f7e1ed7.76733537.jpg'),
(22, 9, 'New Book', 'Akash', '2nd', 'Available', 'IMG-63a69333c3cba8.76408173.jpg'),
(23, 9, 'Bangla 2nd Paper', 'Saju', '3rd', 'Available here.', 'IMG-63a69f01c43da0.46096192.jpg'),
(24, 9, 'Learn C++', 'Kamal ', '10th', 'This is a new book', 'IMG-63bda673978d20.91140439.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `request_from` varchar(30) NOT NULL,
  `request_to` int(10) NOT NULL,
  `request_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `post_id`, `request_from`, `request_to`, `request_status`) VALUES
(39, 21, 'ASH1925014M', 12, 'Confirm'),
(41, 24, 'ASH1925001M', 9, 'Declined'),
(42, 21, 'ASH1925001M', 12, 'Pending'),
(43, 22, 'ASH192503M', 9, 'Confirm'),
(44, 21, 'ASH1925004M', 12, 'Pending'),
(45, 14, 'ASH1925004M', 10, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `newPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `roll`, `email`, `newPassword`) VALUES
(9, 'ASH1925014M', 'tahmid2514@student.nstu.edu.bd', 'b0baee9d279d34fa1dfd71aadb908c3f'),
(10, 'ASH1925001M', 'raju@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f'),
(12, 'ASH192503M', 'three@gmail.com', 'b7bc2a2f5bb6d521e64c8974c143e9a0'),
(15, 'ASH1925004M', 'four@gmail.com', '79b7cdcd14db14e9cb498f1793817d69'),
(20, 'ASH1925005M', 'five@gamil.com', 'c5fe25896e49ddfe996db7508cf00534');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain_box`
--
ALTER TABLE `complain_box`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `Test` (`user_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `request_to` (`request_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain_box`
--
ALTER TABLE `complain_box`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`request_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
