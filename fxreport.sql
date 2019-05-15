-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2019 at 07:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fxreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `mbr_categories`
--

CREATE TABLE `mbr_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbr_categories`
--

INSERT INTO `mbr_categories` (`id`, `title`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Category title', '0', '1', '2019-05-08 12:59:12', '2019-05-09 13:06:36'),
(2, 'Hello World', '0', '1', '2019-05-08 13:02:09', '2019-05-08 13:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_country`
--

CREATE TABLE `mbr_country` (
  `country_id` int(5) NOT NULL,
  `country_name` varchar(20) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `country_status` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_country`
--

INSERT INTO `mbr_country` (`country_id`, `country_name`, `country_code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`, `country_status`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN', 'ENABLE'),
(2, 'Aland Islands', 'AX', '+358', '', '', '', 'PENDING'),
(3, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL', 'DISABLE'),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD', 'DISABLE'),
(5, 'AmericanSamoa', 'AS', '+1684', '', '', '', 'DISABLE'),
(6, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR', 'DISABLE'),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA', 'DISABLE'),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(9, 'Antarctica', 'AQ', '+672', '', '', '', 'DISABLE'),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS', 'ENABLE'),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD', 'ENABLE'),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG', 'DISABLE'),
(14, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD', 'DISABLE'),
(15, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR', 'DISABLE'),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN', 'DISABLE'),
(17, 'Bahamas', 'BS', '+1242', '', '', '', 'DISABLE'),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD', 'DISABLE'),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT', 'DISABLE'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD', 'DISABLE'),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR', 'DISABLE'),
(22, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR', 'DISABLE'),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD', 'DISABLE'),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD', 'DISABLE'),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN', 'DISABLE'),
(27, 'Bolivia, Plurination', 'BO', '+591', '', '', '', 'DISABLE'),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', '', '', 'DISABLE'),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP', 'DISABLE'),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL', 'DISABLE'),
(31, 'British Indian Ocean', 'IO', '+246', '', '', '', 'DISABLE'),
(32, 'Brunei Darussalam', 'BN', '+673', '', '', '', 'DISABLE'),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN', 'DISABLE'),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF', 'DISABLE'),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR', 'DISABLE'),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF', 'DISABLE'),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD', 'DISABLE'),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE', 'DISABLE'),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD', 'DISABLE'),
(41, 'Central African Repu', 'CF', '+236', '', '', '', 'DISABLE'),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF', 'DISABLE'),
(43, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP', 'DISABLE'),
(44, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY', 'DISABLE'),
(45, 'Christmas Island', 'CX', '+61', '', '', '', 'DISABLE'),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', '', '', 'DISABLE'),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP', 'DISABLE'),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF', 'DISABLE'),
(49, 'Congo', 'CG', '+242', '', '', '', 'DISABLE'),
(50, 'Congo, The Democrati', 'CD', '+243', '', '', '', 'DISABLE'),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD', 'DISABLE'),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC', 'DISABLE'),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK', 'DISABLE'),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC', 'DISABLE'),
(56, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR', 'DISABLE'),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK', 'DISABLE'),
(58, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK', 'DISABLE'),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF', 'DISABLE'),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP', 'DISABLE'),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD', 'DISABLE'),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP', 'DISABLE'),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD', 'DISABLE'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF', 'DISABLE'),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN', 'DISABLE'),
(67, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR', 'DISABLE'),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB', 'DISABLE'),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', '', '', 'DISABLE'),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK', 'DISABLE'),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD', 'DISABLE'),
(72, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR', 'DISABLE'),
(73, 'France', 'FR', '+33', 'Euro', '€', 'EUR', 'DISABLE'),
(74, 'French Guiana', 'GF', '+594', '', '', '', 'DISABLE'),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF', 'DISABLE'),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF', 'DISABLE'),
(77, 'Gambia', 'GM', '+220', '', '', '', 'DISABLE'),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL', 'DISABLE'),
(79, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR', 'DISABLE'),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS', 'ENABLE'),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP', 'DISABLE'),
(82, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR', 'DISABLE'),
(83, 'Greenland', 'GL', '+299', '', '', '', 'DISABLE'),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(85, 'Guadeloupe', 'GP', '+590', '', '', '', 'DISABLE'),
(86, 'Guam', 'GU', '+1671', '', '', '', 'DISABLE'),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ', 'DISABLE'),
(88, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP', 'DISABLE'),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF', 'DISABLE'),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD', 'DISABLE'),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG', 'DISABLE'),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', '', '', 'DISABLE'),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL', 'DISABLE'),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD', 'DISABLE'),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF', 'DISABLE'),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK', 'DISABLE'),
(98, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR', 'DISABLE'),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR', 'DISABLE'),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', '', '', 'DISABLE'),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD', 'DISABLE'),
(102, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR', 'DISABLE'),
(103, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP', 'DISABLE'),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS', 'DISABLE'),
(105, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR', 'DISABLE'),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD', 'DISABLE'),
(107, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY', 'DISABLE'),
(108, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP', 'DISABLE'),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD', 'DISABLE'),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT', 'DISABLE'),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES', 'DISABLE'),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD', 'DISABLE'),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', '', '', 'DISABLE'),
(114, 'Korea, Republic of S', 'KR', '+82', '', '', '', 'DISABLE'),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD', 'DISABLE'),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS', 'DISABLE'),
(117, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK', 'DISABLE'),
(118, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR', 'DISABLE'),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP', 'DISABLE'),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL', 'DISABLE'),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD', 'DISABLE'),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', '', '', 'DISABLE'),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF', 'DISABLE'),
(124, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR', 'DISABLE'),
(125, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR', 'DISABLE'),
(126, 'Macao', 'MO', '+853', '', '', '', 'DISABLE'),
(127, 'Macedonia', 'MK', '+389', '', '', '', 'DISABLE'),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA', 'DISABLE'),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK', 'DISABLE'),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR', 'DISABLE'),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR', 'DISABLE'),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(133, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR', 'DISABLE'),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD', 'DISABLE'),
(135, 'Martinique', 'MQ', '+596', '', '', '', 'DISABLE'),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO', 'DISABLE'),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR', 'DISABLE'),
(138, 'Mayotte', 'YT', '+262', '', '', '', 'DISABLE'),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN', 'DISABLE'),
(140, 'Micronesia, Federate', 'FM', '+691', '', '', '', 'DISABLE'),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL', 'DISABLE'),
(142, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR', 'DISABLE'),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT', 'DISABLE'),
(144, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR', 'DISABLE'),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD', 'DISABLE'),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN', 'DISABLE'),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK', 'DISABLE'),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD', 'DISABLE'),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD', 'DISABLE'),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR', 'DISABLE'),
(152, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR', 'DISABLE'),
(153, 'Netherlands Antilles', 'AN', '+599', '', '', '', 'DISABLE'),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF', 'DISABLE'),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD', 'DISABLE'),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO', 'DISABLE'),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN', 'ENABLE'),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD', 'DISABLE'),
(160, 'Norfolk Island', 'NF', '+672', '', '', '', 'DISABLE'),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', '', '', 'DISABLE'),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK', 'DISABLE'),
(163, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR', 'DISABLE'),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR', 'DISABLE'),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', '$', '', 'DISABLE'),
(166, 'Palestinian Territor', 'PS', '+970', '', '', '', 'DISABLE'),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB', 'DISABLE'),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK', 'DISABLE'),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG', 'DISABLE'),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN', 'DISABLE'),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP', 'DISABLE'),
(172, 'Pitcairn', 'PN', '+872', '', '', '', 'DISABLE'),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN', 'DISABLE'),
(174, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR', 'DISABLE'),
(175, 'Puerto Rico', 'PR', '+1939', '', '', '', 'DISABLE'),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR', 'DISABLE'),
(177, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON', 'DISABLE'),
(178, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB', 'DISABLE'),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF', 'DISABLE'),
(180, 'Reunion', 'RE', '+262', '', '', '', 'DISABLE'),
(181, 'Saint Barthelemy', 'BL', '+590', '', '', '', 'DISABLE'),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', '', '', 'DISABLE'),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', '', '', 'DISABLE'),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD', 'DISABLE'),
(185, 'Saint Martin', 'MF', '+590', '', '', '', 'DISABLE'),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', '', '', 'DISABLE'),
(187, 'Saint Vincent and th', 'VC', '+1784', '', '', '', 'DISABLE'),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST', 'DISABLE'),
(189, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR', 'DISABLE'),
(190, 'Sao Tome and Princip', 'ST', '+239', '', '', '', 'DISABLE'),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR', 'DISABLE'),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD', 'DISABLE'),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR', 'DISABLE'),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL', 'DISABLE'),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND', 'DISABLE'),
(197, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR', 'DISABLE'),
(198, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR', 'DISABLE'),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD', 'DISABLE'),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS', 'DISABLE'),
(201, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR', 'DISABLE'),
(202, 'South Georgia and th', 'GS', '+500', '', '', '', 'DISABLE'),
(203, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR', 'DISABLE'),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR', 'DISABLE'),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG', 'DISABLE'),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD', 'DISABLE'),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', '', '', 'DISABLE'),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL', 'DISABLE'),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK', 'DISABLE'),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF', 'DISABLE'),
(211, 'Syrian Arab Republic', 'SY', '+963', '', '', '', 'DISABLE'),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD', 'DISABLE'),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS', 'DISABLE'),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', '', '', 'DISABLE'),
(215, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB', 'DISABLE'),
(216, 'Timor-Leste', 'TL', '+670', '', '', '', 'DISABLE'),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF', 'DISABLE'),
(218, 'Tokelau', 'TK', '+690', '', '', '', 'DISABLE'),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP', 'DISABLE'),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD', 'DISABLE'),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND', 'DISABLE'),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY', 'DISABLE'),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT', 'DISABLE'),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', '', '', 'DISABLE'),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD', 'DISABLE'),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX', 'DISABLE'),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH', 'DISABLE'),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED', 'DISABLE'),
(229, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP', 'DISABLE'),
(230, 'United States', 'US', '+1', 'United States dollar', '$', 'USD', 'DISABLE'),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU', 'DISABLE'),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS', 'DISABLE'),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV', 'DISABLE'),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', '', '', 'DISABLE'),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND', 'DISABLE'),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', '', '', 'DISABLE'),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', '', '', 'DISABLE'),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF', 'DISABLE'),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER', 'DISABLE'),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW', 'DISABLE'),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP', 'DISABLE');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_menus`
--

CREATE TABLE `mbr_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'header',
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbr_menus`
--

INSERT INTO `mbr_menus` (`id`, `title`, `status`, `type`, `parent_id`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'About', '0', 'both', '', 'http://localhost/fxreport/public/About', '1', '2019-05-08 14:53:30', '2019-05-09 17:46:01'),
(5, 'Home', '0', 'both', '4', 'http://localhost/fxreport/public/Home', '1', '2019-05-09 17:06:24', '2019-05-09 17:09:14'),
(7, 'Contact', '0', 'header', '', 'http://localhost/fxreport/public/Contact', '1', '2019-05-09 17:46:15', '2019-05-09 17:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_pages`
--

CREATE TABLE `mbr_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbr_pages`
--

INSERT INTO `mbr_pages` (`id`, `title`, `description`, `user_id`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p><img src=\"http://localhost/fxreport/public/postimages/5cd2fdcb017791.68511519.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">hello dear?</p><p><br></p><p>Ok niow,</p><p>Hello <img src=\"http://localhost/fxreport/public/postimages/5cd2fde366ed13.96869323.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"blob:http://localhost/9b69112e-2b66-4995-bf03-a2c498af41fe\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', '1', '0', 0, '2019-05-08 16:31:20', '2019-05-08 17:04:42'),
(2, 'Homepage', '<p>Home page</p>', '1', '0', 0, '2019-05-08 17:04:27', '2019-05-08 17:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_posts`
--

CREATE TABLE `mbr_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category` int(10) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbr_posts`
--

INSERT INTO `mbr_posts` (`id`, `title`, `description`, `category`, `user_id`, `featured_image`, `view`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Hello Worlds kk', '<p>Testing post description, let us do something that is reasonable.</p><p><br></p><p>I am talking of the journey of the man, let us do one nonsense thing that is blah blah blah.</p><p><br></p><p>Oh oh oh!!! yes, /2x</p><p>ds</p><p><img src=\\\"%5C%22http%3A//localhost/fxreport/public/postimages/5cd41fc6259345.23141748.png%5C%22\\\" class=\\\"\\\\&quot;fr-fic fr-fic fr-dii\\\" fr-dib\\\\\\\"=\\\"\\\"></p><p><br></p>', 2, '1', '5cd41fdab46b86.75121944.png', '0', 0, '2019-05-08 11:35:02', '2019-05-09 15:23:02', 'hello-worlds-kk'),
(2, 'Hello Worlds', '<p>This is an example of a computer code <span class=\\\'\\\\\\\"fr-emoticon\\\' fr-deletable=\\\"\\\" fr-emoticon-img\\\\\\\"=\\\"\\\">&nbsp;</span>&nbsp;</p><blockquote><p>import&nbsp;sys</p><p>import&nbsp;os</p><p>import&nbsp;nmap &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;# import nmap.py module</p><p>try:</p><p>&nbsp; &nbsp; nm&nbsp;=&nbsp;nmap.PortScanner() &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;# instantiate nmap.PortScanner object</p><p>except&nbsp;nmap.PortScannerError:</p><p>&nbsp; &nbsp;&nbsp;print(&#39;Nmap not found&#39;, sys.exc_info()[0])</p><p>&nbsp; &nbsp; sys.exit(1)</p><p>except:</p><p>&nbsp; &nbsp;&nbsp;print(&quot;Unexpected error:&quot;, sys.exc_info()[0])</p><p>&nbsp; &nbsp; sys.exit(1)</p><br><br></blockquote><p><br></p>', 1, '1', '5cd2b1d2ddc7f0.16839811.png', '0', 0, '2019-05-08 11:39:15', '2019-05-09 15:22:56', 'hello-worlds'),
(3, 'Fake Offer From Connect Dentistry', '<p>esrfesrfd</p><p>d</p><p>gfd</p><p>v</p><p>xcv</p><p>df</p><p>vfdcvdc</p>', 2, '1', '5cd4171688feb5.34779874.png', '0', 0, '2019-05-09 13:03:34', '2019-05-09 15:22:43', 'fake-offer-from-connect-dentistry'),
(4, 'We Need You For The Job We Posted Days Ago', '<p>esrfesrfd</p><p>d</p><p>gfd</p><p>v</p><p>xcv</p><p><img src=\\\"http://localhost/fxreport/public/postimages/5cd41791425e14.42274542.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p>df</p><p>vfdcvdc</p>', 1, '1', '5cd4179def1cc1.36432000.png', '0', 0, '2019-05-09 13:05:50', '2019-05-09 15:23:09', 'we-need-you-for-the-job-we-posted-days-ago'),
(5, 'Fake Offer From Connect Dentistry', '<p>esrfesrfd</p><p>d</p><p>gfd</p><p>v</p><p>xcv</p><p><img src=\\\"http://localhost/fxreport/public/postimages/5cd41791425e14.42274542.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p>df</p><p>vfdcvdc</p>', 2, '1', '5cd417af993063.73111683.png', '0', 0, '2019-05-09 13:06:07', '2019-05-09 15:22:50', 'fake-offer-from-connect-dentistry');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_users`
--

CREATE TABLE `mbr_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbr_users`
--

INSERT INTO `mbr_users` (`id`, `username`, `password_`, `status`, `user_role`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mrbarnk', '$2y$12$rvOjCGfudSkZScnv5AUl4.xUlZzJRrBnNQTn0zMnZD4jX2e0KtIvq', '0', '0', 'admin@mrbarnk.com', '2019-05-08 10:53:50', '2019-05-08 10:53:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mbr_categories`
--
ALTER TABLE `mbr_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `mbr_country`
--
ALTER TABLE `mbr_country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `code` (`country_code`);

--
-- Indexes for table `mbr_menus`
--
ALTER TABLE `mbr_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_title_unique` (`title`);

--
-- Indexes for table `mbr_pages`
--
ALTER TABLE `mbr_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_posts`
--
ALTER TABLE `mbr_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_users`
--
ALTER TABLE `mbr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mbr_categories`
--
ALTER TABLE `mbr_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_country`
--
ALTER TABLE `mbr_country`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `mbr_menus`
--
ALTER TABLE `mbr_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mbr_pages`
--
ALTER TABLE `mbr_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_posts`
--
ALTER TABLE `mbr_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mbr_users`
--
ALTER TABLE `mbr_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
