-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 10:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add cart item', 8, 'add_cartitem'),
(30, 'Can change cart item', 8, 'change_cartitem'),
(31, 'Can delete cart item', 8, 'delete_cartitem'),
(32, 'Can view cart item', 8, 'view_cartitem'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add quantity', 10, 'add_quantity'),
(38, 'Can change quantity', 10, 'change_quantity'),
(39, 'Can delete quantity', 10, 'delete_quantity'),
(40, 'Can view quantity', 10, 'view_quantity'),
(41, 'Can add size', 11, 'add_size'),
(42, 'Can change size', 11, 'change_size'),
(43, 'Can delete size', 11, 'delete_size'),
(44, 'Can view size', 11, 'view_size'),
(45, 'Can add product', 12, 'add_product'),
(46, 'Can change product', 12, 'change_product'),
(47, 'Can delete product', 12, 'delete_product'),
(48, 'Can view product', 12, 'view_product'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add ordered product', 14, 'add_orderedproduct'),
(54, 'Can change ordered product', 14, 'change_orderedproduct'),
(55, 'Can delete ordered product', 14, 'delete_orderedproduct'),
(56, 'Can view ordered product', 14, 'view_orderedproduct'),
(57, 'Can add address', 15, 'add_address'),
(58, 'Can change address', 15, 'change_address'),
(59, 'Can delete address', 15, 'delete_address'),
(60, 'Can view address', 15, 'view_address');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$o3GTxxOu8BcgPWsFRBjmIN$WPXDY9nvSjaZ8D9zhtNdXXR+CJiXxKm8aWZP97WByQ4=', '2023-08-21 10:31:10.297344', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-08-08 10:33:31.899030'),
(2, 'pbkdf2_sha256$600000$WGEddXyR2fBF9stY9GNWUM$qmTrdDq6hZecxr7vyi4UDOTWs9PglLdS3MIvOnt4tTk=', '2023-08-08 16:06:06.284902', 0, 'raihan11', '', '', '', 1, 1, '2023-08-08 16:04:41.000000'),
(3, 'pbkdf2_sha256$600000$iRu2o5mvHrdlJxLsq1dh71$7UUA+7P9O8h2uqeqsjfqCfeFYGJIw3rPnU0i3cYUyQ4=', '2023-08-14 11:48:32.200940', 0, 'jyoti', 'Jyoti', 'Kumari', 'jyoti@gmail.com', 0, 1, '2023-08-08 16:53:07.203070'),
(4, 'pbkdf2_sha256$600000$GgSPGJzlTvggCp2nh0efd1$78vh+bkakc7/o7CTD/v699GH1cX6Zvjf/TE59OdwtgA=', '2023-08-21 16:30:10.797622', 0, 'avhi', 'Avhisekh', 'Chow', 'avhi@gmail.com', 0, 1, '2023-08-08 17:07:02.707171'),
(5, 'pbkdf2_sha256$600000$JdXlyiSSAPtmuu5kzFqXFQ$AqbI4nwm/jWGO9FkXDMEi2EJQTXe6lgm9ILST5tjW6o=', '2023-08-08 18:36:00.419417', 0, 'punu', 'Purnendu', 'Sarkar', 'punu@nunu.com', 0, 1, '2023-08-08 18:30:22.700758');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 45),
(2, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `core_address`
--

CREATE TABLE `core_address` (
  `id` bigint(20) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_address`
--

INSERT INTO `core_address` (`id`, `phone1`, `phone2`, `address`, `country`, `state`, `city`, `postal`, `address_type`, `user_id`) VALUES
(3, '7583948750', '9734801350', 'Basirhat, North 24 PGS, West Bengal, India', 'India', 'West Bengal', 'Basirhat', '743412', 'Home', 1),
(6, '7583948750', '9734801350', 'Basirhat, North 24 PGS, West Bengal, India', 'India', 'West Bengal', 'Basirhat', '743412', 'Home', 4),
(7, '8754986521', '875654216532', 'Kolkata, North 24 PGS, West Bengal, India', 'India', 'West Bengal', 'Kolkata', '700012', 'Office', 4),
(9, '7583948750', '4589652145', 'Basirhat', 'India', 'West BEngal', 'Basirhat', '743412', 'Home', 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_cart`
--

CREATE TABLE `core_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cart`
--

INSERT INTO `core_cart` (`id`, `user_id`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_cartitem`
--

CREATE TABLE `core_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_order`
--

CREATE TABLE `core_order` (
  `id` bigint(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_amount` double NOT NULL,
  `order_address_id` bigint(20) DEFAULT NULL,
  `razorpay_order_id` varchar(250) DEFAULT NULL,
  `razorpay_payment_id` varchar(250) DEFAULT NULL,
  `razorpay_payment_signeture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_order`
--

INSERT INTO `core_order` (`id`, `payment_status`, `user_id`, `order_amount`, `order_address_id`, `razorpay_order_id`, `razorpay_payment_id`, `razorpay_payment_signeture`) VALUES
(55, '', 4, 0, NULL, 'order_MSmklCALai5bIl', NULL, NULL),
(56, '', 4, 0, NULL, 'order_MSmmHRbH83ect2', NULL, NULL),
(57, 'paid', 4, 1000, NULL, 'order_MSmoxyi9MDTMSu', NULL, NULL),
(58, 'paid', 4, 750, NULL, 'order_MSn9Gb37fAzXKq', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_orderedproduct`
--

CREATE TABLE `core_orderedproduct` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_orderedproduct`
--

INSERT INTO `core_orderedproduct` (`id`, `quantity`, `order_id`, `product_id`, `order_date`, `user_id`) VALUES
(27, 5, 57, 11, '2023-08-21', 4),
(28, 3, 58, 14, '2023-08-21', 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-08 16:04:42.842890', '2', 'raihan11', 1, '[{\"added\": {}}]', 4, 1),
(2, '2023-08-08 16:05:45.405805', '2', 'raihan11', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]', 4, 1),
(3, '2023-08-08 16:48:30.619291', '15', 'Oils', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-08-10 05:20:46.658670', '15', 'Oils', 3, '', 9, 1),
(5, '2023-08-13 18:09:05.742360', '1', 'Order object (1)', 1, '[{\"added\": {}}]', 13, 1),
(6, '2023-08-13 18:10:12.792004', '1', 'OrderedProduct object (1)', 1, '[{\"added\": {}}]', 14, 1),
(7, '2023-08-13 18:17:11.277977', '2', 'OrderedProduct object (2)', 1, '[{\"added\": {}}]', 14, 1),
(8, '2023-08-13 18:17:45.095824', '2', 'Order object (2)', 1, '[{\"added\": {}}]', 13, 1),
(9, '2023-08-13 18:18:07.709881', '3', 'OrderedProduct object (3)', 1, '[{\"added\": {}}]', 14, 1),
(10, '2023-08-13 18:18:28.220768', '4', 'OrderedProduct object (4)', 1, '[{\"added\": {}}]', 14, 1),
(11, '2023-08-21 05:58:39.952034', '20', 'OrderedProduct object (20)', 3, '', 14, 1),
(12, '2023-08-21 05:58:39.958039', '19', 'OrderedProduct object (19)', 3, '', 14, 1),
(13, '2023-08-21 05:58:39.967039', '18', 'OrderedProduct object (18)', 3, '', 14, 1),
(14, '2023-08-21 05:58:39.987063', '17', 'OrderedProduct object (17)', 3, '', 14, 1),
(15, '2023-08-21 05:58:40.168090', '16', 'OrderedProduct object (16)', 3, '', 14, 1),
(16, '2023-08-21 05:58:40.185094', '15', 'OrderedProduct object (15)', 3, '', 14, 1),
(17, '2023-08-21 05:58:40.198119', '14', 'OrderedProduct object (14)', 3, '', 14, 1),
(18, '2023-08-21 05:58:40.218100', '13', 'OrderedProduct object (13)', 3, '', 14, 1),
(19, '2023-08-21 05:58:40.230105', '12', 'OrderedProduct object (12)', 3, '', 14, 1),
(20, '2023-08-21 05:58:40.237105', '11', 'OrderedProduct object (11)', 3, '', 14, 1),
(21, '2023-08-21 05:58:40.253136', '10', 'OrderedProduct object (10)', 3, '', 14, 1),
(22, '2023-08-21 05:58:40.260113', '9', 'OrderedProduct object (9)', 3, '', 14, 1),
(23, '2023-08-21 05:58:40.277139', '8', 'OrderedProduct object (8)', 3, '', 14, 1),
(24, '2023-08-21 05:58:40.286118', '7', 'OrderedProduct object (7)', 3, '', 14, 1),
(25, '2023-08-21 05:58:40.295122', '6', 'OrderedProduct object (6)', 3, '', 14, 1),
(26, '2023-08-21 05:58:40.303139', '5', 'OrderedProduct object (5)', 3, '', 14, 1),
(27, '2023-08-21 05:58:40.310138', '4', 'OrderedProduct object (4)', 3, '', 14, 1),
(28, '2023-08-21 05:58:40.316127', '3', 'OrderedProduct object (3)', 3, '', 14, 1),
(29, '2023-08-21 05:58:40.320126', '2', 'OrderedProduct object (2)', 3, '', 14, 1),
(30, '2023-08-21 05:58:40.329128', '1', 'OrderedProduct object (1)', 3, '', 14, 1),
(31, '2023-08-21 05:58:51.629129', '15', 'Order object (15)', 3, '', 13, 1),
(32, '2023-08-21 05:58:51.635129', '14', 'Order object (14)', 3, '', 13, 1),
(33, '2023-08-21 05:58:51.643131', '13', 'Order object (13)', 3, '', 13, 1),
(34, '2023-08-21 05:58:51.648132', '12', 'Order object (12)', 3, '', 13, 1),
(35, '2023-08-21 05:58:51.655134', '11', 'Order object (11)', 3, '', 13, 1),
(36, '2023-08-21 05:58:51.664163', '10', 'Order object (10)', 3, '', 13, 1),
(37, '2023-08-21 05:58:51.668138', '9', 'Order object (9)', 3, '', 13, 1),
(38, '2023-08-21 05:58:51.684170', '8', 'Order object (8)', 3, '', 13, 1),
(39, '2023-08-21 05:58:51.694155', '7', 'Order object (7)', 3, '', 13, 1),
(40, '2023-08-21 05:58:51.703167', '6', 'Order object (6)', 3, '', 13, 1),
(41, '2023-08-21 05:58:51.714146', '5', 'Order object (5)', 3, '', 13, 1),
(42, '2023-08-21 05:58:51.726169', '4', 'Order object (4)', 3, '', 13, 1),
(43, '2023-08-21 05:58:51.735153', '3', 'Order object (3)', 3, '', 13, 1),
(44, '2023-08-21 05:58:51.746156', '2', 'Order object (2)', 3, '', 13, 1),
(45, '2023-08-21 05:58:51.755152', '1', 'Order object (1)', 3, '', 13, 1),
(46, '2023-08-21 10:32:43.629471', '22', 'Order object (22)', 3, '', 13, 1),
(47, '2023-08-21 10:32:43.632474', '21', 'Order object (21)', 3, '', 13, 1),
(48, '2023-08-21 10:32:43.634472', '20', 'Order object (20)', 3, '', 13, 1),
(49, '2023-08-21 10:32:43.637474', '19', 'Order object (19)', 3, '', 13, 1),
(50, '2023-08-21 10:32:43.639474', '18', 'Order object (18)', 3, '', 13, 1),
(51, '2023-08-21 10:32:43.644477', '17', 'Order object (17)', 3, '', 13, 1),
(52, '2023-08-21 10:32:43.646477', '16', 'Order object (16)', 3, '', 13, 1),
(53, '2023-08-21 10:45:30.094505', '28', 'Order object (28)', 3, '', 13, 1),
(54, '2023-08-21 10:45:30.098508', '27', 'Order object (27)', 3, '', 13, 1),
(55, '2023-08-21 10:45:30.102507', '26', 'Order object (26)', 3, '', 13, 1),
(56, '2023-08-21 10:45:30.105507', '25', 'Order object (25)', 3, '', 13, 1),
(57, '2023-08-21 10:45:30.107507', '24', 'Order object (24)', 3, '', 13, 1),
(58, '2023-08-21 10:45:30.110508', '23', 'Order object (23)', 3, '', 13, 1),
(59, '2023-08-21 11:20:03.760011', '39', 'Order object (39)', 3, '', 13, 1),
(60, '2023-08-21 11:20:03.763009', '38', 'Order object (38)', 3, '', 13, 1),
(61, '2023-08-21 11:20:03.767011', '37', 'Order object (37)', 3, '', 13, 1),
(62, '2023-08-21 11:20:03.772012', '36', 'Order object (36)', 3, '', 13, 1),
(63, '2023-08-21 11:20:03.774013', '35', 'Order object (35)', 3, '', 13, 1),
(64, '2023-08-21 11:20:03.777013', '34', 'Order object (34)', 3, '', 13, 1),
(65, '2023-08-21 11:20:03.779013', '33', 'Order object (33)', 3, '', 13, 1),
(66, '2023-08-21 11:20:03.782015', '32', 'Order object (32)', 3, '', 13, 1),
(67, '2023-08-21 11:20:03.786022', '31', 'Order object (31)', 3, '', 13, 1),
(68, '2023-08-21 11:20:03.790017', '30', 'Order object (30)', 3, '', 13, 1),
(69, '2023-08-21 11:20:03.792017', '29', 'Order object (29)', 3, '', 13, 1),
(70, '2023-08-21 11:24:55.271808', '44', 'Order object (44)', 3, '', 13, 1),
(71, '2023-08-21 11:24:55.275794', '43', 'Order object (43)', 3, '', 13, 1),
(72, '2023-08-21 11:24:55.277794', '42', 'Order object (42)', 3, '', 13, 1),
(73, '2023-08-21 11:24:55.280796', '41', 'Order object (41)', 3, '', 13, 1),
(74, '2023-08-21 11:24:55.282796', '40', 'Order object (40)', 3, '', 13, 1),
(75, '2023-08-21 12:35:48.862369', '54', 'Order object (54)', 3, '', 13, 1),
(76, '2023-08-21 12:35:48.866414', '53', 'Order object (53)', 3, '', 13, 1),
(77, '2023-08-21 12:35:48.871371', '52', 'Order object (52)', 3, '', 13, 1),
(78, '2023-08-21 12:35:48.874371', '51', 'Order object (51)', 3, '', 13, 1),
(79, '2023-08-21 12:35:48.877372', '50', 'Order object (50)', 3, '', 13, 1),
(80, '2023-08-21 12:35:48.880371', '49', 'Order object (49)', 3, '', 13, 1),
(81, '2023-08-21 12:35:48.883374', '48', 'Order object (48)', 3, '', 13, 1),
(82, '2023-08-21 12:35:48.888375', '47', 'Order object (47)', 3, '', 13, 1),
(83, '2023-08-21 12:35:48.890375', '46', 'Order object (46)', 3, '', 13, 1),
(84, '2023-08-21 12:35:48.893377', '45', 'Order object (45)', 3, '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(15, 'core', 'address'),
(7, 'core', 'cart'),
(8, 'core', 'cartitem'),
(13, 'core', 'order'),
(14, 'core', 'orderedproduct'),
(9, 'product', 'category'),
(12, 'product', 'product'),
(10, 'product', 'quantity'),
(11, 'product', 'size'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-08 10:31:28.798338'),
(2, 'auth', '0001_initial', '2023-08-08 10:31:29.251493'),
(3, 'admin', '0001_initial', '2023-08-08 10:31:29.392119'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-08 10:31:29.407750'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-08 10:31:29.438999'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-08 10:31:29.517131'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-08 10:31:29.579660'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-08 10:31:29.610885'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-08 10:31:29.626512'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-08 10:31:29.673392'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-08 10:31:29.673392'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-08 10:31:29.689016'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-08 10:31:29.720273'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-08 10:31:29.751520'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-08 10:31:29.782773'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-08 10:31:29.798398'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-08 10:31:29.814026'),
(18, 'product', '0001_initial', '2023-08-08 10:31:30.064040'),
(19, 'core', '0001_initial', '2023-08-08 10:31:30.251555'),
(20, 'sessions', '0001_initial', '2023-08-08 10:31:30.282807'),
(21, 'core', '0002_cart_is_paid', '2023-08-08 11:23:56.083730'),
(22, 'core', '0003_remove_cart_is_paid', '2023-08-08 18:12:11.578304'),
(23, 'core', '0004_order_orderedproduct_order_products_order_user', '2023-08-10 12:50:20.450930'),
(24, 'core', '0005_address', '2023-08-10 17:30:24.915856'),
(25, 'core', '0006_order_amount', '2023-08-13 18:22:40.668486'),
(26, 'core', '0007_rename_amount_order_order_amount_order_order_address', '2023-08-14 11:33:19.245270'),
(27, 'core', '0008_orderedproduct_order_date', '2023-08-15 06:15:45.205787'),
(28, 'core', '0009_orderedproduct_user', '2023-08-21 06:01:06.953135'),
(29, 'core', '0010_order_razorpay_order_id_order_razorpay_payment_id_and_more', '2023-08-21 08:11:40.086095');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6q52khzj7fjpk5qqtal4x200arfgf730', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qVVxZ:t-f7KAqbPR52pAmi-cS_ViJJc8TaUXeMrp0xUyq9Zq8', '2023-08-28 11:42:09.197143'),
('c0cngps630t89vqjd3s1ywb97n6kxb3l', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qVnVY:tq6bGF-CpVBnbfVBzvTGMeIJVap1JsekZpw8uBKwieo', '2023-08-29 06:26:24.761121'),
('cl61yz6nw768r4ecm9fiq9tfywf22uz0', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qY2Bi:YgBpe5gxsXN2_-c-f30VTYgb7DfKTkzTpNiGzKqEQ50', '2023-09-04 10:31:10.303348'),
('e4yc77ayb3902phgmwv9ixl2jvg6s0y7', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qY0RI:R2S10NECMzee982mOkbzpvHxuOyVk8-RRpLHN3pFxXw', '2023-09-04 08:39:08.607214'),
('f7rjmljbcvhel0c1xujhf3wo1rtpmgjo', '.eJxVjDsOwyAQBe9CHSF-xpAyvc-AdlkITiKQjF1FuXtsyUXSvpl5bxZgW0vYelrCTOzKDLv8bgjxmeoB6AH13nhsdV1m5IfCT9r51Ci9bqf7d1Cgl71G6wSNINGbZLOyErRwUeMwoAeI2UXlhMg-GzJSKW1FiiOJvfDoFRL7fAHmsDf2:1qY7n8:SiIit7NsMfpzCFXlLo-ZFXcb-ogfpovvnP-gav2uSH8', '2023-09-04 16:30:10.847635'),
('s2rkfs32t3axjuv13cyo6jo2mp52nn1d', '.eJxVjEEOwiAQRe_C2hBaGMO4dO8ZyDAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDlNRFWXX63SLxU-oO0oPqvWludZmnqHdFH7TrW0vyuh7u30GhXr41RMOcGKO3A6J4zlHADGD4zCDeinMWgVjIZ8HRjpiISARsQmcgq_cHBbs4zg:1qVW3k:X7Oy6LoHS_kcfEbWKLR-wmj0bMmz_uw1j3w-WIfpW9Y', '2023-08-28 11:48:32.205975'),
('wy6lvdhripl7twxedjvudiqo7zatimkw', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qTPzV:jLtlM2MII1gkdIbipFF_qFRRBwl32mufZZfThJGVYBw', '2023-08-22 16:55:29.275312'),
('yvm5dk7xoue7atwuahpt53urf86gz91o', '.eJxVjMEOwiAQRP-FsyEtbGHx6L3fQHaBStVAUtqT8d9tkx70OPPezFt42tbst5YWP0dxFb24_HZM4ZnKAeKDyr3KUMu6zCwPRZ60ybHG9Lqd7t9Bppb3tdIQCJ1CYxCYwA0Tsp16iwAEE5IeQmcGEy1r2HNIruuxU-wQUKskPl_AIzbS:1qVFGF:bw0OXdrQWI472HRt3tvKl-YnUE1p9qPoXC8_14NcFI0', '2023-08-27 17:52:19.263165');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_desc` longtext NOT NULL,
  `category_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `category_slug`, `category_image`, `category_desc`, `category_created_at`) VALUES
(1, 'Fresh Fruits', 'fresh-fruits', 'Category_Images/colorful-fruits-tasty-fresh-ripe-juicy-white-desk.jpg', 'Fruit is the sweet, fleshy, edible part of a plant. It generally contains seeds. Fruits are usually eaten raw, although some varieties can be cooked. They come in a wide variety of colours, shapes and flavours.', '2023-08-06'),
(2, 'Fresh Vegetables', 'fresh-vegetables', 'Category_Images/basket-full-vegetables.jpg', 'Check the characteristic signs of freshness such as bright, lively color in the vegetable and look to see if the vegetable is crisp and free of soft spots. Vegetables are at their peak during their harvest season, this is also when vegetables are the most affordable to purchase.', '2023-08-06'),
(3, 'Dry Fruits', 'dry-fruits', 'Category_Images/nuts-walnut-peanuts-almond-seeds_gmDdW45.jpg', 'Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.', '2023-08-06'),
(4, 'Fresh Berries', 'fresh-berries', 'Category_Images/fresh-forest-berries-white_tDaCoPN.jpg', 'A berry is a small, pulpy, and often edible fruit. Typically, berries are juicy, rounded, brightly colored, sweet, sour or tart, and do not have a stone or pit, although many pips or seeds may be present.', '2023-08-06'),
(5, 'Fresh Fishes', 'fresh-fishes', 'Category_Images/raw-fish-market_9fJMgx0.jpg', 'Fresh fish should have a mild scent and moist flesh, and appear freshly cut. Don\'t purchase fish that has a strong, fishy odor. Whole fish should have bright, bulging eyes and bright red or pink gills.', '2023-08-06'),
(6, 'Fresh Meats', 'fresh-meats', 'Category_Images/raw-meat_V6RdO5m.jpg', 'meat, the flesh or other edible parts of animals (usually domesticated cattle, swine, and sheep) used for food, including not only the muscles and fat but also the tendons and ligaments.', '2023-08-06'),
(7, 'Fast Foods', 'fast-foods', 'Category_Images/1215912_331_RsHttm4.jpg', 'In the short term, fast food impacts blood sugar and blood pressure, increases inflammation, and may mean an individual does not eat enough necessary nutrients. In the long term, a diet rich in fast food could lead to issues with digestion, immunity, inflammation, heart health, obesity, and more.', '2023-08-06'),
(8, 'Butter and Eggs', 'butter-and-eggs', 'Category_Images/three-fresh-organic-raw-eggs-isolated-white-surface_v1QlEsI.jpg', 'Butter and eggs is a perennial plant. It produces flowers and seeds and can also spread by sending up new shoots from spreading roots. Root fragments can also produce new plants. This plant has the ability to adapt to various site conditions.', '2023-08-06'),
(9, 'Ocean Foods', 'ocean-foods', 'Category_Images/top-view-assortment-seafood-with-tomatoes_tUKsCsJ.jpg', 'The ocean is an important source of food and other resources. Since well before recorded history, humans have used the sea as a source of food. While only 5% of the protein consumed by world populations comes from the sea, it is still an important contribution to the diet of millions of the world\'s inhabitants.', '2023-08-06'),
(10, 'Oatmeals', 'oatmeals', 'Category_Images/raw-barley-grain-wooden-background_Za3YJrf.jpg', 'Oatmeal is a preparation of oats that have been de-husked, steamed, and flattened, or a coarse flour of hulled oat grains (groats) that have either been milled (ground), rolled, or steel-cut. Ground oats are also called white oats. Steel-cut oats are known as coarse oatmeal, Irish oatmeal, or pinhead oats.', '2023-08-06'),
(11, 'Gym Suppliments', 'gym-suppliments', 'Category_Images/8429130_KQPn1Bn.jpg', 'Workout supplements such as caffeine and creatine may be used to enhance exercise performance for high-intensity, strenuous physical activity, such as training to run a marathon or power lifting.', '2023-08-06'),
(12, 'Fruit Jucies', 'fruit-jucies', 'Category_Images/glass-fresh-fruit-juice_9PFise6.jpg', 'Fruit juice is 100% pure juice made from the flesh of fresh fruit or from whole fruit, depending on the type used. It is not permitted to add sugars, sweeteners, preservatives, flavourings or colourings to fruit juice.', '2023-08-06'),
(13, 'Fresh Milks', 'fresh-milks', 'Category_Images/3886419_11411_GjJesez.jpg', 'Milk is the liquid produced by the mammary glands of mammals, including humans. Breast milk is the preferred food for infants, as it is well-tolerated while their digestive tracts develop and mature. Dairy milk may be introduced at later ages if tolerated well.', '2023-08-06'),
(14, 'Masalas', 'masalas', 'Category_Images/organised-filled-spice-jars_kYVhnjS.jpg', 'Masala simply means a mixture of spices and is a popular word in India often used to describe different savory dishes.', '2023-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_short_desc` varchar(250) NOT NULL,
  `product_long_desc` longtext NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_created_at` date NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_sell_count` bigint(20) NOT NULL,
  `Quantity_id` bigint(20) NOT NULL,
  `Size_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `product_name`, `product_short_desc`, `product_long_desc`, `product_image`, `product_price`, `product_created_at`, `product_id`, `product_sell_count`, `Quantity_id`, `Size_id`, `category_id`) VALUES
(1, 'Apple', 'Apple is good for health. Eat at least one apple daily.', 'The apple is one of the pome (fleshy) fruits. Apples at harvest vary widely in size, shape, colour, and acidity, but most are fairly round and some shade of red or yellow. The thousands of varieties fall into three broad classes: cider, cooking, and dessert varieties.', 'Product_images/product-8_kJeP54V.jpg', 80, '2023-08-07', 'Apple_FBn0MLsMt1', 100, 1, 4, 1),
(2, 'Banana', 'Banana is good for health. Eat daily one banana. is gives us strength.', 'A banana is a curved, yellow fruit with a thick skin and soft sweet flesh. If you eat a banana every day for breakfast, your roommate might nickname you \"the monkey.\" A banana is a tropical fruit that\'s quite popular all over the world. It grows in bunches on a banana tree.', 'Product_images/product-2.jpg', 5, '2023-08-07', 'Banana_yDmpptHHYe', 0, 5, 4, 1),
(3, 'Guava', 'Guava is very helpfull for our health. Eat daily one Guava to protect yourself from sickness.', 'The fruits are round to pear-shaped and measure up to 7.6 cm in diameter; their pulp contains many small hard seeds (more abundant in wild forms than in cultivated varieties). The fruit has a yellow skin and white, yellow, or pink flesh.', 'Product_images/product-3.jpg', 60, '2023-08-07', 'Guava_zptYFMyGed', 0, 1, 4, 1),
(4, 'Mango', 'Mango is very helpfull for our body. but if you have sugar then avoid it. Because it\'s increase your sugar level.', 'A mango is a sweet tropical fruit, and it\'s also the name of the trees on which the fruit grows. Ripe mangoes are juicy, fleshy, and delicious. Like peaches and plums, mangoes have an inedible pit at the center. Unlike these other fruits, the skin of a mango is very tough and also inedible.', 'Product_images/product-6.jpg', 150, '2023-08-07', 'Mango_G2ssixUkbl', 75, 1, 4, 1),
(5, 'Water Melon', 'Weter melon is very helpfull for our bodies in summer time. it\'s control our body hidration.', 'Watermelon is grown in favorable climates from tropical to temperate regions worldwide for its large edible fruit, which is a berry with a hard rind and no internal divisions, and is botanically called a pepo. The sweet, juicy flesh is usually deep red to pink, with many black seeds, although seedless varieties exist.', 'Product_images/product-7.jpg', 70, '2023-08-07', 'Water Melon_zhGk5CY3rK', 0, 5, 4, 1),
(6, 'Aubergine', 'Aubergine it\'s bengali meaning is (begun). it\'s a very healthy veg.', 'The fruit is a rounded fleshy berry, 2 to 35 cm long. The skin of the fruit is smooth and shiny, and the flesh is full of small seeds. Fruit colour is commonly purple, but can also be white, green, or black. Read the scientific profile for aubergine.', 'Product_images/nina-luong-DtaCnsYlzSM-unsplash.jpg', 50, '2023-08-07', 'Aubergine_CZwwuJAHaB', 0, 1, 4, 2),
(7, 'Carrot', 'Carrot is on of the popular testy vegetable', 'carrot, (Daucus carota), herbaceous, generally biennial plant of the Apiaceae family that produces an edible taproot. Among common varieties root shapes range from globular to long, with lower ends blunt to pointed. Besides the orange-coloured roots, white-, yellow-, and purple-fleshed varieties are known.', 'Product_images/pexels-mali-maeder-143133.jpg', 70, '2023-08-07', 'Carrot_yZ4n5rjV9d', 0, 1, 4, 2),
(8, 'Potato', 'Potato is the most popular vegetable in india. withoud potato their are no item cook in india.', 'Potato fruits are a succulent but inedible spherical, yellow-green berry, up to 4cm across. Underground, the edible root forms a tuber that can be a range of colours, sizes and shapes, depending on the cultivated variety (cultivar).', 'Product_images/pexels-pixabay-144248.jpg', 40, '2023-08-07', 'Potato_Fgcglo2FBK', 0, 1, 4, 2),
(9, 'Tommato', 'Tomatto also a great vegetable in the whole vegetable kingdome.', 'They are usually red, scarlet, or yellow, though green and purple varieties do exist, and they vary in shape from almost spherical to oval and elongate to pear-shaped. Each fruit contains at least two cells of small seeds surrounded by jellylike pulp.', 'Product_images/pexels-photomix-company-96616.jpg', 120, '2023-08-07', 'Tommato_oPHBdtRp3W', 46, 1, 4, 2),
(10, 'Onions', 'Onion is a most popular cooking ingridients. Well cooks use onions to increase item\'s test.', 'An onion is a round vegetable with a light brown skin. It has many white layers on its inside which have a strong, sharp smell and taste. Finely chop the onion, and add it to the pan with the garlic. Remove the outer layers of the onions before you chop them.', 'Product_images/pexels-mart-production-7889980.jpg', 90, '2023-08-07', 'Onions_Ftj9J6OqZO', 25, 1, 4, 2),
(11, 'Tilapia', 'Tilapia is most favourite indian Fish. it\'s awasome test increase it\'s popularity. it available on the market for the whole year.', 'Tilapia are a hardy, fast growing fish, that can live up to ten years and reach ten pounds in weight. Tilapia are shaped like a sunfish or crappie and are easily identifiable by the interrupted lateral line characteristic of the Chiclid family of fishes.', 'Product_images/tilapia.png', 200, '2023-08-07', 'Tilapia_bYy7pDVRC2', 0, 1, 4, 5),
(12, 'Salmon', 'Salmon is the one of the best choice ever fish in market. it available for the whole year.', 'Salmons have sleek, streamlined bodies that typically change color throughout their lifetimes. While in freshwater, Atlantic salmon are brown and spotted. When they migrate to the ocean, they turn silvery. Atlantic salmon are the largest salmon species, typically growing to just under four feet in length.', 'Product_images/pexels-valeria-boltneva-1683545.jpg', 350, '2023-08-07', 'Salmon_Zdjj7JJIrq', 50, 1, 4, 5),
(13, 'Cat Fish', 'Catfishes are available only in the rainy seasons.', 'Most catfish have a cylindrical body with a flattened ventral to allow for benthic feeding (Bruton, 1996). Catfish are so-named because of their whisker-like barbels, which are located on the nose, each side of the mouth, and on the chin. Most catfish possess leading spines in their dorsal and pectoral fins.', 'Product_images/56bWhiteCatfishJuv2compressed.jpg', 600, '2023-08-07', 'Cat Fish_ZxTqt8cevO', 0, 1, 4, 5),
(14, 'Crab', 'Crab\'s are very delicious fish. its vailable for the whole year in the market.', 'A crab is a sea creature with a flat round body covered by a shell, and five pairs of legs with large claws on the front pair. Crabs usually move sideways.', 'Product_images/pexels-david-abbram-3640451.jpg', 250, '2023-08-07', 'Crab_YHtPAk64wp', 0, 1, 4, 5),
(15, 'Prawn', 'Prawns are very delicious fish. it\'s available for the whole year in the market', 'Prawns vary in colour from a dark red to an orange-red or pink; juveniles are sometimes green or brown. Running horizontally across their head are several white lines. They have a smooth, glossy body with an abdomen divided into several segments, the first and fifth bearing a distinctive white spot.', 'Product_images/pexels-markus-winkler-3903587.jpg', 600, '2023-08-07', 'Prawn_QhclKjaT7T', 0, 1, 4, 5),
(16, 'Beef', 'Beef is a high protin, calory based meat. it\'s available for the whole year in the market', 'beef, flesh of mature cattle, as distinguished from veal, the flesh of calves. The best beef is obtained from early maturing, special beef breeds. High-quality beef has firm, velvety, fine-grained lean, bright red in colour and well-marbled. The fat is smooth, creamy white, and well distributed.', 'Product_images/pexels-mali-maeder-65175.jpg', 250, '2023-08-07', 'Beef_Yc7M9zE0Mh', 0, 1, 4, 6),
(17, 'Lamb', 'Lamb meat contains high colestrol, calory and protin. it\'s available for the whole year in the market', 'Lamb is a type of red meat that comes from young sheep. Not only is it a rich source of high-quality protein, but it is also an outstanding source of many vitamins and minerals, including iron, zinc, and vitamin B12. Because of this, regular consumption of lamb may promote muscle growth, maintenance, and performance.', 'Product_images/pexels-lukas-618775.jpg', 200, '2023-08-07', 'Lamb_p95d5i5cGi', 0, 1, 4, 6),
(18, 'Chicken', 'Chicken doesn\'t contain that much calory, colestrol protin. so it\'s very good for our health. it\'s also available for the whole year.', 'Chicken meat contains about two to three times as much polyunsaturated fat as most types of red meat when measured as weight percentage. Chicken generally includes low fat in the meat itself (castrated roosters excluded). The fat is highly concentrated on the skin.', 'Product_images/pexels-lukas-616354.jpg', 250, '2023-08-07', 'Chicken_XuAnDttGc9', 0, 1, 4, 6),
(19, 'Burger', 'Burger available for the whole year.', 'A hamburger, or simply burger, is a sandwich consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.', 'Product_images/pexels-sebastian-coman-photography-3504876.jpg', 30, '2023-08-07', 'Burger_5z2mz0nSPV', 10, 5, 3, 7),
(20, 'Pizza', 'Pizza available for the whole year.', 'pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperatureand served hot.', 'Product_images/pexels-kristina-paukshtite-1146760.jpg', 150, '2023-08-07', 'Pizza_N35CC08LEz', 0, 5, 2, 7),
(21, 'Patties', 'Patty is available for the whole year.', 'A patty or burger (in British English) is a flattened, usually round, serving of ground meat and/or legumes, grains, vegetables, or meat alternatives. Patties are found in multiple cuisines throughout the world. Patty. A ground beef hamburger patty.', 'Product_images/pexels-horizon-content-4392635.jpg', 70, '2023-08-07', 'Patties_oUKhNMZ6c1', 0, 5, 2, 7),
(22, 'Momos', 'Momos are available for the whole year.', 'Momo is a type of steamed filled dumpling originating in Tibet or Nepal. It is also popular in neighbouring Bhutan and India. Momo is usually served with a sauce known as achar influenced by the spices and herbs used within many South Asian cuisines.', 'Product_images/pexels-bishop-tamrakar-3926123.jpg', 10, '2023-08-07', 'Momos_tZLfY0gTT0', 5, 5, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_quantity`
--

CREATE TABLE `product_quantity` (
  `id` bigint(20) NOT NULL,
  `quantity_name` varchar(100) NOT NULL,
  `quantity_desc` varchar(250) NOT NULL,
  `quantity_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_quantity`
--

INSERT INTO `product_quantity` (`id`, `quantity_name`, `quantity_desc`, `quantity_created_at`) VALUES
(1, 'KG', 'Kilo Gram', '2023-08-06'),
(2, 'gram', 'Gram', '2023-08-06'),
(3, 'liter', 'Liter', '2023-08-06'),
(4, 'ml', 'Mili Liter', '2023-08-06'),
(5, 'Pices', 'Per Pices', '2023-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) NOT NULL,
  `size_name` varchar(100) NOT NULL,
  `size_name_desc` varchar(250) NOT NULL,
  `size_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `size_name`, `size_name_desc`, `size_created_at`) VALUES
(1, 'Large', 'Large', '2023-08-06'),
(2, 'Medium', 'Medium', '2023-08-06'),
(3, 'Small', 'Small', '2023-08-06'),
(4, 'None', 'None', '2023-08-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `core_address`
--
ALTER TABLE `core_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_address_user_id_7681a39c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_cart`
--
ALTER TABLE `core_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_cartitem_cart_id_5256d769_fk_core_cart_id` (`cart_id`),
  ADD KEY `core_cartitem_product_id_2640c4a2_fk_product_product_id` (`product_id`);

--
-- Indexes for table `core_order`
--
ALTER TABLE `core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_user_id_b03bbffd_fk_auth_user_id` (`user_id`),
  ADD KEY `core_order_order_address_id_7cdf985c_fk_core_address_id` (`order_address_id`);

--
-- Indexes for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_orderedproduct_order_id_663776f6_fk_core_order_id` (`order_id`),
  ADD KEY `core_orderedproduct_product_id_4d33e6be_fk_product_product_id` (`product_id`),
  ADD KEY `core_orderedproduct_user_id_b694a318_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `product_category_category_slug_c6ea3b42` (`category_slug`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `product_product_Quantity_id_85a0c354_fk_product_quantity_id` (`Quantity_id`),
  ADD KEY `product_product_Size_id_94cefd74_fk_product_size_id` (`Size_id`),
  ADD KEY `product_product_category_id_0c725779_fk_product_category_id` (`category_id`);

--
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quantity_name` (`quantity_name`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `size_name` (`size_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_address`
--
ALTER TABLE `core_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_cart`
--
ALTER TABLE `core_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `core_order`
--
ALTER TABLE `core_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_quantity`
--
ALTER TABLE `product_quantity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_address`
--
ALTER TABLE `core_address`
  ADD CONSTRAINT `core_address_user_id_7681a39c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_cart`
--
ALTER TABLE `core_cart`
  ADD CONSTRAINT `core_cart_user_id_2ebeb843_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  ADD CONSTRAINT `core_cartitem_cart_id_5256d769_fk_core_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `core_cart` (`id`),
  ADD CONSTRAINT `core_cartitem_product_id_2640c4a2_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`);

--
-- Constraints for table `core_order`
--
ALTER TABLE `core_order`
  ADD CONSTRAINT `core_order_order_address_id_7cdf985c_fk_core_address_id` FOREIGN KEY (`order_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_order_user_id_b03bbffd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  ADD CONSTRAINT `core_orderedproduct_order_id_663776f6_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_orderedproduct_product_id_4d33e6be_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  ADD CONSTRAINT `core_orderedproduct_user_id_b694a318_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product_product`
--
ALTER TABLE `product_product`
  ADD CONSTRAINT `product_product_Quantity_id_85a0c354_fk_product_quantity_id` FOREIGN KEY (`Quantity_id`) REFERENCES `product_quantity` (`id`),
  ADD CONSTRAINT `product_product_Size_id_94cefd74_fk_product_size_id` FOREIGN KEY (`Size_id`) REFERENCES `product_size` (`id`),
  ADD CONSTRAINT `product_product_category_id_0c725779_fk_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
