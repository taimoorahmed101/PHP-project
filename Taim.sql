-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 03:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`booking_id`, `first_name`, `last_name`, `date`, `time`, `message`, `phone`, `user_id`) VALUES
(1, 'Ali', 'Ahmed', '10/17/2023', '1:00am', 'ddfdddddddd', 923328829805, 13),
(2, 'Ali', 'Ahmed', '10/17/2023', '1:00am', 'ddfdddddddd', 923328829805, 13);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_description` text NOT NULL,
  `prod_price` float NOT NULL,
  `prod_image` varchar(200) NOT NULL,
  `prod_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_description`, `prod_price`, `prod_image`, `prod_type`) VALUES
(1, 'Espresso', 'Espresso is a concentrated coffee brewed by forcing hot water through finely-ground coffee beans. It has a strong, bold flavor and is the base for many other coffee drinks, such as lattes, cappuccinos, and Americanos.', 56.99, 'menu-1.jpg', 'Arabica'),
(2, 'Americano', 'An Americano is made by diluting a shot of espresso with hot water, resulting in a milder coffee with a flavor similar to drip coffee.\r\n', 34.89, 'menu-2.jpg', 'Robusta'),
(3, 'Latte', 'A latte is a coffee made with a shot of espresso and a larger amount of steamed milk, topped with a small amount of milk foam. It\'s a creamy and mild coffee option.', 12.34, 'menu-3.jpg', 'Excelsa'),
(4, 'Macchiato', 'A macchiato is an espresso \"stained\" or \"marked\" with a small amount of frothy milk. It can be either a caramel macchiato (with caramel syrup) or a traditional macchiato (with just a dollop of frothy milk).', 45.78, 'menu-4.jpg', 'Liberica'),
(5, 'Mocha', 'A mocha combines espresso, steamed milk, and chocolate (usually cocoa or chocolate syrup) to create a rich, slightly sweet coffee beverage.', 56.78, 'menu-1.jpg', 'Robusta'),
(6, 'Turkish Coffee', 'Turkish coffee is made by finely grinding coffee beans and simmering them in water with sugar (optional) and cardamom. It\'s typically served unfiltered in a small cup, and the grounds settle at the bottom.', 78.98, 'menu-2.jpg', 'Robusta'),
(7, 'French Press', 'French press coffee is made by steeping coarsely-ground coffee beans in hot water and then pressing the grounds out with a plunger. It results in a full-bodied and rich coffee.', 16.89, 'menu-3.jpg', 'Arabica'),
(8, 'Drip Coffee', 'Drip coffee, also known as filter coffee, is made by passing hot water through ground coffee in a drip coffee maker. It\'s one of the most common methods of making coffee.', 12.78, 'menu-4.jpg', 'Liberica'),
(9, 'Cold Brew', 'Cold brew coffee is made by steeping coarsely-ground coffee beans in cold water for an extended period (usually 12-24 hours). It results in a smooth, low-acid, and highly caffeinated coffee that\'s served cold.', 12.45, 'menu-1.jpg', 'Arabica'),
(10, 'Espresso Con Panna', 'This coffee consists of a shot of espresso topped with a dollop of whipped cream, adding a creamy and slightly sweet element to the strong coffee.\r\n', 67.98, 'menu-1.jpg', 'Excelsa'),
(11, 'Ristretto', 'Ristretto is a very short shot of espresso made with less water, resulting in a highly concentrated and intense coffee flavor.', 52.99, 'menu-3.jpg', 'Excelsa'),
(12, 'Affogato', 'An affogato is a simple dessert made by pouring a shot of hot espresso over a scoop of vanilla ice cream, creating a delightful combination of hot and cold.', 98.99, 'menu-2.jpg', 'Excelsa');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(12, 'MK1', 'MK1@gmail.com', '$2y$10$.Cv3LcfNJZqDrwJRt3gDYuykvySWGPzWiRzer.cjfSQ/gJFOj3jJi', '2023-10-10 12:17:58'),
(13, 'Ali', 'Ali@gmail.com', '$2y$10$RuDGQAyURD6Y3FfZM7s80O.X81ltmxe66XetoU75RB7qkA1jt1FQq', '2023-10-17 11:16:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

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
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
