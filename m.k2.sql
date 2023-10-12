-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 01:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee-blend`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `booking_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_user`
--

INSERT INTO `register_user` (`user_id`, `user_name`, `user_email`, `user_password`, `register_date`) VALUES
(1, 'mustijab', 'khan@gmail.com', '$2y$10$4PvO3f2C5mr1nE2dbWvZhO.csXF0.g4Vl3z3eyvZGHVJlM4J9/GJa', '2023-09-28 13:55:28'),
(2, 'Muhammad Mustijab Khan', 'khanmustijab10@gmail.com', '$2y$10$H20jdAn3T/whZv79u1YZ6.f.FLJISNkPyP/G4dVgMjK4FoKE3MlPS', '2023-09-30 12:23:13'),
(3, 'Muhammad Mustijab Khan', 'khanmustijab10@gmail.com', '$2y$10$KWZG6sJ/shvBoH46h5e5t.8VzzihIU8W1fRisF1c9iMj17jTblD/K', '2023-10-03 11:56:28'),
(5, 'Taimoor', 'taimoor@gmail.com', '$2y$10$XYZxUxcL7aTy6i4FDOGdZ.lXA9t6DrGoemtL5x50oGJ7xJZqBGTAK', '2023-10-05 12:28:55'),
(6, 'hamza', 'hk@gmail.com', '$2y$10$iVBckQDGuRtp7/Xn9Yjw8uDKX.tnJDOZOWbtpthS8O3KHNtJHl3ge', '2023-10-05 12:36:02'),
(7, 'mustafa', 'mka@gmail.com', '$2y$10$Y2FvNM0Mb5MBdgv.hg2xcOcTgzfALTxfOZqx2Z42FNOPa1q2w6P.q', '2023-10-05 12:41:36'),
(8, 'ahmad', 'ah@gmail.com', '$2y$10$aYiq/6eR79gptiAlfM.FhuqOKcQ8qBynIyl6MKynyGlCEaXsC4LsW', '2023-10-05 12:50:49'),
(9, 'dany', 'ba@gmail.com', '$2y$10$9jwPlEu/H.uFeDd0z64pZOW9p/x3aMgbPo/of2H5UN/bFzl4qdCGq', '2023-10-05 12:56:18'),
(10, 'mustijab', 'mk@gmail.com', '$2y$10$lLtNQLwikGGizXwM.kUxr.ziqFFcEs1yt4PlyF68aNMm1K58S0Vb6', '2023-10-05 12:58:41'),
(11, 'Ikram', 'ik@gmail.com', '$2y$10$/J7JpeiTHyWH.Z53kC.fdOuNsRmPgdhdxTfruGBOiyeAoB44zUIo.', '2023-10-07 12:15:16'),
(12, 'MK1', 'MK1@gmail.com', '$2y$10$.Cv3LcfNJZqDrwJRt3gDYuykvySWGPzWiRzer.cjfSQ/gJFOj3jJi', '2023-10-10 12:17:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_table`
--
ALTER TABLE `book_table`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
