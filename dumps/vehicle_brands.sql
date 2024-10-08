-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Dez-2020 às 21:56
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `carcrm`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_brands`
--

CREATE TABLE `vehicle_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `vehicle_type_id` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_brands`
--

INSERT INTO `vehicle_brands` (`id`, `label`, `value`, `vehicle_type_id`, `created_at`, `updated_at`) VALUES
(1, 'CITROEN', 16, 2020, '2020-12-05 16:50:22', '2020-12-05 16:50:22'),
(2, 'FIAT', 25, 2020, '2020-12-05 16:50:23', '2020-12-05 16:50:23'),
(3, 'FORD', 27, 2020, '2020-12-05 16:50:26', '2020-12-05 16:50:26'),
(4, 'GM - CHEVROLET', 29, 2020, '2020-12-05 16:50:29', '2020-12-05 16:50:29'),
(5, 'HONDA', 33, 2020, '2020-12-05 16:50:33', '2020-12-05 16:50:33'),
(6, 'HYUNDAI', 34, 2020, '2020-12-05 16:50:34', '2020-12-05 16:50:34'),
(7, 'JAC', 36, 2020, '2020-12-05 16:50:35', '2020-12-05 16:50:35'),
(8, 'KIA MOTORS', 41, 2020, '2020-12-05 16:50:35', '2020-12-05 16:50:35'),
(9, 'NISSAN', 59, 2020, '2020-12-05 16:50:36', '2020-12-05 16:50:36'),
(10, 'PEUGEOT', 60, 2020, '2020-12-05 16:50:37', '2020-12-05 16:50:37'),
(11, 'RENAULT', 64, 2020, '2020-12-05 16:50:39', '2020-12-05 16:50:39'),
(12, 'TOYOTA', 73, 2020, '2020-12-05 16:50:42', '2020-12-05 16:50:42'),
(13, 'VW - VOLKSWAGEN', 75, 2020, '2020-12-05 16:50:43', '2020-12-05 16:50:43'),
(14, 'AM GEN', 1, 2020, '2020-12-05 16:50:47', '2020-12-05 16:50:47'),
(15, 'MCLAREN', 2, 2020, '2020-12-05 16:50:48', '2020-12-05 16:50:48'),
(16, 'AGRALE', 3, 2020, '2020-12-05 16:50:48', '2020-12-05 16:50:48'),
(17, 'ALFA ROMEO', 4, 2020, '2020-12-05 16:50:48', '2020-12-05 16:50:48'),
(18, 'ASIA MOTORS', 5, 2020, '2020-12-05 16:50:48', '2020-12-05 16:50:48'),
(19, 'AUDI', 6, 2020, '2020-12-05 16:50:48', '2020-12-05 16:50:48'),
(20, 'BMW', 7, 2020, '2020-12-05 16:50:50', '2020-12-05 16:50:50'),
(21, 'BRM', 8, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(22, 'BUGGY', 9, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(23, 'BUGRE', 10, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(24, 'CBT JIPE', 11, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(25, 'CHANGAN', 12, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(26, 'CHERY', 13, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(27, 'CADILLAC', 14, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(28, 'CHRYSLER', 15, 2020, '2020-12-05 16:50:53', '2020-12-05 16:50:53'),
(29, 'CROSS LANDER', 17, 2020, '2020-12-05 16:50:54', '2020-12-05 16:50:54'),
(30, 'DAEWOO', 18, 2020, '2020-12-05 16:50:54', '2020-12-05 16:50:54'),
(31, 'DAIHATSU', 19, 2020, '2020-12-05 16:50:54', '2020-12-05 16:50:54'),
(32, 'DODGE', 20, 2020, '2020-12-05 16:50:54', '2020-12-05 16:50:54'),
(33, 'EFFA', 21, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(34, 'ENGESA', 22, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(35, 'ENVEMO', 23, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(36, 'FERRARI', 24, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(37, 'FIBRAVAN', 26, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(38, 'FYBER', 28, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(39, 'GREAT WALL', 30, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(40, 'GURGEL', 31, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(41, 'HAFEI', 32, 2020, '2020-12-05 16:50:55', '2020-12-05 16:50:55'),
(42, 'ISUZU', 35, 2020, '2020-12-05 16:50:56', '2020-12-05 16:50:56'),
(43, 'JINBEI', 37, 2020, '2020-12-05 16:50:56', '2020-12-05 16:50:56'),
(44, 'JPX', 38, 2020, '2020-12-05 16:50:56', '2020-12-05 16:50:56'),
(45, 'JAGUAR', 39, 2020, '2020-12-05 16:50:56', '2020-12-05 16:50:56'),
(46, 'JEEP', 40, 2020, '2020-12-05 16:50:56', '2020-12-05 16:50:56'),
(47, 'LAMBORGHINI', 42, 2020, '2020-12-05 16:50:57', '2020-12-05 16:50:57'),
(48, 'LIFAN', 43, 2020, '2020-12-05 16:50:57', '2020-12-05 16:50:57'),
(49, 'LOBINI', 44, 2020, '2020-12-05 16:50:57', '2020-12-05 16:50:57'),
(50, 'LADA', 45, 2020, '2020-12-05 16:50:57', '2020-12-05 16:50:57'),
(51, 'LAND ROVER', 46, 2020, '2020-12-05 16:50:57', '2020-12-05 16:50:57'),
(52, 'LEXUS', 47, 2020, '2020-12-05 16:50:59', '2020-12-05 16:50:59'),
(53, 'LOTUS', 48, 2020, '2020-12-05 16:50:59', '2020-12-05 16:50:59'),
(54, 'MG', 49, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(55, 'MINI', 50, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(56, 'MAHINDRA', 51, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(57, 'MASERATI', 52, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(58, 'MATRA', 53, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(59, 'MAZDA', 54, 2020, '2020-12-05 16:51:00', '2020-12-05 16:51:00'),
(60, 'MERCEDES-BENZ', 55, 2020, '2020-12-05 16:51:01', '2020-12-05 16:51:01'),
(61, 'MERCURY', 56, 2020, '2020-12-05 16:51:06', '2020-12-05 16:51:06'),
(62, 'MITSUBISHI', 57, 2020, '2020-12-05 16:51:06', '2020-12-05 16:51:06'),
(63, 'MIURA', 58, 2020, '2020-12-05 16:51:08', '2020-12-05 16:51:08'),
(64, 'PLYMOUTH', 61, 2020, '2020-12-05 16:51:08', '2020-12-05 16:51:08'),
(65, 'PONTIAC', 62, 2020, '2020-12-05 16:51:08', '2020-12-05 16:51:08'),
(66, 'PORSCHE', 63, 2020, '2020-12-05 16:51:08', '2020-12-05 16:51:08'),
(67, 'ROVER', 65, 2020, '2020-12-05 16:51:09', '2020-12-05 16:51:09'),
(68, 'SSANGYONG', 66, 2020, '2020-12-05 16:51:09', '2020-12-05 16:51:09'),
(69, 'SAAB', 67, 2020, '2020-12-05 16:51:10', '2020-12-05 16:51:10'),
(70, 'SATURN', 68, 2020, '2020-12-05 16:51:10', '2020-12-05 16:51:10'),
(71, 'SEAT', 69, 2020, '2020-12-05 16:51:10', '2020-12-05 16:51:10'),
(72, 'SUBARU', 70, 2020, '2020-12-05 16:51:10', '2020-12-05 16:51:10'),
(73, 'SUZUKI', 71, 2020, '2020-12-05 16:51:10', '2020-12-05 16:51:10'),
(74, 'TAC', 72, 2020, '2020-12-05 16:51:11', '2020-12-05 16:51:11'),
(75, 'TROLLER', 74, 2020, '2020-12-05 16:51:11', '2020-12-05 16:51:11'),
(76, 'VOLVO', 76, 2020, '2020-12-05 16:51:11', '2020-12-05 16:51:11'),
(77, 'WAKE', 77, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(78, 'WALK', 78, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(79, 'SMART', 79, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(80, 'SHINERAY', 80, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(81, 'ASTON MARTIN', 81, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(82, 'FOTON', 82, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(83, 'RELY', 83, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(84, 'ROLLS-ROYCE', 84, 2020, '2020-12-05 16:51:13', '2020-12-05 16:51:13'),
(85, 'DKW VEMAG', 85, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(86, 'LANDWIND', 86, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(87, 'GEELY', 87, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(88, 'CHANA', 88, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(89, 'PUMA', 89, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(90, 'RAM', 90, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(91, 'INFINITI', 91, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(92, 'TESLA', 92, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(93, 'BABY', 93, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(94, 'IVECO', 94, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(95, 'ACURA', 95, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(96, 'HITECH ELETRIC', 96, 2020, '2020-12-05 16:51:14', '2020-12-05 16:51:14'),
(97, 'DUCATI', 1, 2060, '2020-12-05 16:51:35', '2020-12-05 16:51:35'),
(98, 'BUELL', 2, 2060, '2020-12-05 16:51:36', '2020-12-05 16:51:36'),
(99, 'KTM', 3, 2060, '2020-12-05 16:51:36', '2020-12-05 16:51:36'),
(100, 'KAHENA', 4, 2060, '2020-12-05 16:51:37', '2020-12-05 16:51:37'),
(101, 'FOX', 5, 2060, '2020-12-05 16:51:37', '2020-12-05 16:51:37'),
(102, 'MRX', 6, 2060, '2020-12-05 16:51:37', '2020-12-05 16:51:37'),
(103, 'YAMAHA', 7, 2060, '2020-12-05 16:51:37', '2020-12-05 16:51:37'),
(104, 'IROS', 8, 2060, '2020-12-05 16:51:38', '2020-12-05 16:51:38'),
(105, 'SUZUKI', 9, 2060, '2020-12-05 16:51:38', '2020-12-05 16:51:38'),
(106, 'TRIUMPH', 10, 2060, '2020-12-05 16:51:39', '2020-12-05 16:51:39'),
(107, 'L\'AQUILA', 11, 2060, '2020-12-05 16:51:40', '2020-12-05 16:51:40'),
(108, 'SUNDOWN', 12, 2060, '2020-12-05 16:51:40', '2020-12-05 16:51:40'),
(109, 'DAELIM', 13, 2060, '2020-12-05 16:51:40', '2020-12-05 16:51:40'),
(110, 'AMAZONAS', 14, 2060, '2020-12-05 16:51:41', '2020-12-05 16:51:41'),
(111, 'HONDA', 15, 2060, '2020-12-05 16:51:41', '2020-12-05 16:51:41'),
(112, 'HERO', 16, 2060, '2020-12-05 16:51:42', '2020-12-05 16:51:42'),
(113, 'APRILIA', 17, 2060, '2020-12-05 16:51:42', '2020-12-05 16:51:42'),
(114, 'JONNY', 18, 2060, '2020-12-05 16:51:42', '2020-12-05 16:51:42'),
(115, 'DERBI', 19, 2060, '2020-12-05 16:51:43', '2020-12-05 16:51:43'),
(116, 'ADLY', 20, 2060, '2020-12-05 16:51:43', '2020-12-05 16:51:43'),
(117, 'KAWASAKI', 21, 2060, '2020-12-05 16:51:43', '2020-12-05 16:51:43'),
(118, 'ORCA', 22, 2060, '2020-12-05 16:51:44', '2020-12-05 16:51:44'),
(119, 'DAFRA', 23, 2060, '2020-12-05 16:51:44', '2020-12-05 16:51:44'),
(120, 'JOHNNYPAG', 24, 2060, '2020-12-05 16:51:44', '2020-12-05 16:51:44'),
(121, 'PIAGGIO', 25, 2060, '2020-12-05 16:51:44', '2020-12-05 16:51:44'),
(122, 'MVK', 26, 2060, '2020-12-05 16:51:44', '2020-12-05 16:51:44'),
(123, 'REGAL RAPTOR', 27, 2060, '2020-12-05 16:51:45', '2020-12-05 16:51:45'),
(124, 'HARLEY-DAVIDSON', 28, 2060, '2020-12-05 16:51:45', '2020-12-05 16:51:45'),
(125, 'PEGASSI', 29, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(126, 'MV AGUSTA', 30, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(127, 'PEUGEOT', 31, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(128, 'ATALA', 32, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(129, 'MOTO GUZZI', 33, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(130, 'CAGIVA', 34, 2060, '2020-12-05 16:51:46', '2020-12-05 16:51:46'),
(131, 'LIFAN', 35, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(132, 'BAJAJ', 36, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(133, 'MALAGUTI', 37, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(134, 'AGRALE', 38, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(135, 'TRAXX', 39, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(136, 'HUSQVARNA', 40, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(137, 'KASINSKI', 41, 2060, '2020-12-05 16:51:47', '2020-12-05 16:51:47'),
(138, 'BIMOTA', 42, 2060, '2020-12-05 16:51:48', '2020-12-05 16:51:48'),
(139, 'LON-V', 43, 2060, '2020-12-05 16:51:48', '2020-12-05 16:51:48'),
(140, 'KIMCO', 44, 2060, '2020-12-05 16:51:48', '2020-12-05 16:51:48'),
(141, 'DAYANG', 46, 2060, '2020-12-05 16:51:48', '2020-12-05 16:51:48'),
(142, 'DAYUN', 47, 2060, '2020-12-05 16:51:48', '2020-12-05 16:51:48'),
(143, 'GREEN', 48, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(144, 'MIZA', 49, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(145, 'GAS GAS', 50, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(146, 'BRANDY', 51, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(147, 'SANYANG', 52, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(148, 'BMW', 53, 2060, '2020-12-05 16:51:49', '2020-12-05 16:51:49'),
(149, 'HUSABERG', 54, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(150, 'FYM', 55, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(151, 'LERIVO', 56, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(152, 'GARINNI', 57, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(153, 'HAOBAO', 58, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(154, 'BUENO', 59, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(155, 'JIAPENG VOLCANO', 60, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(156, 'HARTFORD', 61, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(157, 'EMME', 62, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(158, 'CALOI', 63, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(159, 'LANDUM', 64, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(160, 'MAGRÃO TRICICLOS', 65, 2060, '2020-12-05 16:51:50', '2020-12-05 16:51:50'),
(161, 'BETA', 66, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(162, 'LAVRALE', 67, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(163, 'SIAMOTO', 68, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(164, 'BENELLI', 69, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(165, 'TARGOS', 70, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(166, 'VENTO', 71, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(167, 'TIGER', 72, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(168, 'BYCRISTO', 73, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(169, 'WUYANG', 74, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(170, 'SHINERAY', 75, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(171, 'BRAVA', 76, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(172, 'BRP', 77, 2060, '2020-12-05 16:51:51', '2020-12-05 16:51:51'),
(173, 'ROYAL ENFIELD', 78, 2060, '2020-12-05 16:51:52', '2020-12-05 16:51:52'),
(174, 'RIGUETE', 79, 2060, '2020-12-05 16:51:52', '2020-12-05 16:51:52'),
(175, 'MOTORINO', 80, 2060, '2020-12-05 16:51:52', '2020-12-05 16:51:52'),
(176, 'MOTOCAR', 81, 2060, '2020-12-05 16:51:52', '2020-12-05 16:51:52'),
(177, 'INDIAN', 82, 2060, '2020-12-05 16:51:52', '2020-12-05 16:51:52'),
(178, 'HAOJUE', 83, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53'),
(179, 'BEE', 84, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53'),
(180, 'BULL', 85, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53'),
(181, 'FUSCO MOTOSEGURA', 86, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53'),
(182, 'POLARIS', 87, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53'),
(183, 'VOLTZ', 88, 2060, '2020-12-05 16:51:53', '2020-12-05 16:51:53');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `vehicle_brands`
--
ALTER TABLE `vehicle_brands`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `vehicle_brands`
--
ALTER TABLE `vehicle_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
