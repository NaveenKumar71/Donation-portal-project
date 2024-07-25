-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 08:26 AM
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
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothe`
--

CREATE TABLE `clothe` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `clothe_type` varchar(100) NOT NULL,
  `preferred_date` varchar(100) NOT NULL,
  `preferred_time` varchar(100) NOT NULL,
  `preferred_address` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothe`
--

INSERT INTO `clothe` (`name`, `email`, `phone`, `clothe_type`, `preferred_date`, `preferred_time`, `preferred_address`, `message`) VALUES
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 'clothes', '2024-05-08', '10', 'trichy,samayapuram', 'srtert'),
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 'clothes', '', '10 am', 'trichy,samayapuram', 'good '),
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 'clothes', '2024-05-08', '10 am', 'trichy,samayapuram', 'helooo'),
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 'other', '2024-05-15', '10 am', 'trichy,samayapuram', 'iam giving clothe');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `food_type` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `preferred_time` time(2) NOT NULL,
  `preferred_address` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `preferred_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`name`, `email`, `phone`, `food_type`, `quantity`, `preferred_time`, `preferred_address`, `message`, `preferred_date`) VALUES
('lokesh', 'lokesh@gmail.com', '9955664477', 'uncooked', 55, '00:00:01.00', 'trichy,samayapuram', 'near by  bridge', '2024-06-01'),
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '9965019566', 'cooked', 50, '00:00:02.00', 'trichy,no.1 tolgate', 'near by shanmuga medical.', '2024-06-04'),
('G.selva vignesh', 'bknaveen712005@gmail.com', '9965019566', 'cooked', 50, '00:00:02.00', 'trichy,palur', 'spread love', '2024-06-01'),
('paramaguru', 'paramaguru2004@gmail.com', '9943238482', 'uncooked', 10, '00:00:12.00', 'samyapuram', 'im willing', '2024-06-01'),
('paramaguru', 'paramaguru2004@gmail.com', '9943238482', 'cooked', 50, '00:00:12.00', 'samyapuram', 'uyuhuhg', '2024-05-09'),
('shiva guru', 'shiva@gmail.com', '9874563211', 'cooked', 50, '10:15:00.00', '', '', '2024-05-30'),
('shiva guru', 'shiva@gmail.com', '9874563211', 'cooked', 50, '10:15:00.00', 'trichy,no.1 tolgate', 'hiii', '2024-05-30'),
('shiva guru', 'shiva@gmail.com', '9874563211', 'cooked', 50, '10:30:00.00', 'trichy,no.1 tolgate', 'hii', '2024-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `footwear`
--

CREATE TABLE `footwear` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `footwear_type` varchar(100) NOT NULL,
  `size` varchar(10) NOT NULL,
  `preferred_date` varchar(100) NOT NULL,
  `preferred_time` varchar(100) NOT NULL,
  `preferred_address` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footwear`
--

INSERT INTO `footwear` (`name`, `email`, `phone`, `footwear_type`, `size`, `preferred_date`, `preferred_time`, `preferred_address`, `message`) VALUES
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', '', '8', '2024-05-09', '10 am', 'trichy,samayapuram', 'foot'),
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 'sandals', '8', '2024-05-09', '10 am', 'trichy,samayapuram', 'foot');

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

CREATE TABLE `fund` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `donation_amount` int(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `acknowledgement` varchar(100) NOT NULL,
  `preferred_date` varchar(100) NOT NULL,
  `preferred_time` varchar(100) NOT NULL,
  `preferred_address` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`name`, `email`, `phone`, `donation_amount`, `payment_method`, `acknowledgement`, `preferred_date`, `preferred_time`, `preferred_address`, `message`) VALUES
('B.NAVEEN KUMAR', 'bknaveen712005@gmail.com', '2147483647', 50000, 'debit_card', 'phone', '2024-05-14', '10 am', 'trichy,samayapuram', 'fund');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
