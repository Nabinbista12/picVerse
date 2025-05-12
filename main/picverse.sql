-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2025 at 04:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `post_id`, `user_id`) VALUES
(1, 'Great insights! Really made me think.', 13, 1),
(2, 'Could you explain this part a bit more?', 14, 1),
(3, 'I completely agree with your point.', 16, 1),
(4, 'Nice post! Looking forward to more.', 17, 1),
(5, 'This helped me understand the concept better.', 20, 1),
(6, 'Well explained. Thanks for sharing!', 21, 1),
(7, 'I had the same question. Glad it’s answered.', 23, 1),
(8, 'Interesting perspective, never thought of it like this.', 13, 1),
(9, 'Awesome breakdown of the topic!', 16, 1),
(10, 'Not sure I follow. Can you clarify?', 14, 1),
(11, 'This saved me a lot of time, thanks!', 21, 1),
(12, 'Loved this explanation!', 20, 1),
(13, 'fdsa', 36, 1),
(16, 'fdas', 36, 1),
(18, 'fdsa', 37, 1),
(19, 'this is good can we see more', 37, 1),
(20, 'fadskjl', 37, 1),
(21, 'fdksa', 37, 1),
(22, 'hello', 37, 1),
(23, 'ball', 36, 1),
(24, 'this is a class diagrma', 37, 1),
(25, 'this is a ball', 36, 1),
(26, 'ghj', 38, 1),
(28, 'this is acomment', 40, 1),
(30, 'it is amazing', 39, 1),
(31, 'this is nice', 40, 1),
(32, 'wow', 40, 1),
(33, 'this is a ball', 40, 2),
(34, 'wow', 40, 2),
(35, 'fantastic', 40, 2),
(37, 'nice camera', 39, 2),
(38, 'this is good', 39, 1),
(41, 'wow', 40, 9);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `caption`, `image`, `user_id`) VALUES
(13, 'this is the first caption', 'Screenshot 2025-05-02 112132.png', 1),
(14, 'This is data 2', 'siberian-husky.jpeg', 1),
(16, 'This is the iamge', 'cat.jpg', 1),
(17, 'this is edited again', 'dog.jpg', 1),
(20, 'this is a test', 'background.avif', 1),
(21, 'this is caption', 'capital one.png', 1),
(23, 'Checking ', 'cat.jpg', 1),
(25, 'The cat is just beautiful', 'cats2.jpg', 1),
(33, 'cat are beautiful', 'cats2.jpg', 1),
(36, 'ndnnsnak', 'intro_ball.gif', 1),
(37, 'this is a picture and', 'main.drawio.png', 1),
(38, 'This is a good image', 'background3.jpg', 4),
(39, 'a new post and edited', 'background2.jpg', 1),
(40, 'this is the second', 'background.avif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `is_liked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT 'logo.png',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `phone_number`, `location`, `hobby`, `bio`, `profile_picture`, `password`) VALUES
(1, 'first', 'first', 'first@gmail.com', 1111111111, 'Kathmandu', 'football', 'i am the best user here in the picverse.', 'background2.jpg', '4+wShTXeUL0+ljt+ug2WW1TAqSMrCsrG1nucTtS/vbTC1E3D4AgIrMZ+/aQrKQepdQ=='),
(2, 'second', 'second', 'second@gmail.com', 1111111111, 'Kathamandu', 'games', '', 'intro_ball.gif', 'lFV8baVFA1em8oMH55+uUXyzR+xP0IxYalOYm/M6fH3HpvV0KC7yENBA7qJFS1NVS8M='),
(3, 'admin', 'admin', 'admin@gmail.com', 0, '', '', '', '', 'ogQmxNZEMadpwkJbjKaw0bZYFKwsEeVP3rXTqhe9hiDJLnc1t6PXIWavaKoK+thRwg=='),
(4, 'third', 'third', 'third@gmail.com', 0, '', '', '', 'logo.png', 'lqkF1u9T1mM5WVQFLzVewVgtrWBZVdo0DhzdV/kwJIb+yIuDFLAnWMGx+P/AE/btDQ=='),
(5, 'test', 'test', 'test@gmail.com', 0, '', '', '', '', 'FhzQnOBMTMPXsIloBeqmhDn4+z8D5JsXLqbnR8sobwIuVglqYgbBTPEY9o69ve2W'),
(6, 'rabina', 'rabina12', 'rabina12@gmail.com', 0, '', '', '', '', 'qnFCcCWC66ozeHXq8cKSjAnF986Gomextzv/+URDnVqY5hYrfl9plrEiKdv1arr2KQc5FQ=='),
(8, 'Forth forth', 'forth', 'forth@gmail.com', NULL, NULL, NULL, NULL, 'logo.png', 'Cx4uf6BeST6CMzjXVCPzTrVB2wtjU+6Ef6pQrEVFmuLTRuBFEYaOhPwEIybxruTdzQ=='),
(9, 'fifth fifth', 'fifth', 'fifth@gmail.com', NULL, NULL, NULL, NULL, 'logo.png', 'H8mUN6G88gGmDf+pUl5L4REjnmy/ThKoQ3rniEEFxw0YOOkOrnhionnGaNKMH5XFLQ==');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`user_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_id` (`post_id`),
  ADD KEY `users_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `post_like`
--
ALTER TABLE `post_like`
  ADD CONSTRAINT `posts_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
