-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2022 at 01:05 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programm_rainbow_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `category` varchar(100) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `thumbnail_image` varchar(191) DEFAULT NULL,
  `description` longtext,
  `is_active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `category`, `position`, `thumbnail_image`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Album One', 'Catering', 1, '210823091157_ALBUM_ONE.jpg', 'Description For Album One', 'No', '2021-08-24 05:42:16', '2021-08-24 11:12:16', '2021-08-24 11:12:16'),
(2, 'Album Two', 'Catering', 2, '210823091801_ALBUM_TWO.jpg', 'Description of Album Two', 'No', '2021-10-02 09:28:54', '2021-10-02 14:58:54', '2021-10-02 14:58:54'),
(3, 'Album One', 'Venues', 1, '210824111448_ALBUM_ONE.jpg', 'Description for Album One', 'No', '2021-10-02 09:28:50', '2021-10-02 14:58:50', '2021-10-02 14:58:50'),
(4, 'Vaishali & Avinash', 'Photography', 1, '210907030934_VAISHALI_&_AVINASH.jpg', NULL, 'No', '2021-10-02 06:19:01', '2021-10-02 11:49:01', '2021-10-02 11:49:01'),
(5, 'Pryash & Priyanka', 'Photography', 2, '210910042707_PRYASH_&_PRIYANKA.jpg', NULL, 'No', '2021-10-02 06:19:16', '2021-10-02 11:49:16', '2021-10-02 11:49:16'),
(6, 'Music', 'Music-And-Dance', 1, '210921022540_MUSIC.jpg', 'dssdsdsd', 'No', '2021-10-02 08:36:32', '2021-10-02 14:06:32', '2021-10-02 14:06:32'),
(7, 'New Album', 'Decoration', 6, '210921025311_NEW_ALBUM.jpg', 'Demo', 'No', '2021-10-02 09:29:59', '2021-10-02 14:59:59', '2021-10-02 14:59:59'),
(8, 'Avni & Siddharth', 'Photography', 1, '210929072237_AVNI_&_SIDDHARTH.jpg', NULL, 'No', '2021-10-02 06:19:29', '2021-10-02 11:49:29', '2021-10-02 11:49:29'),
(9, 'vaishali', 'Photography', 4, '210929081457_VAISHALI.jpg', NULL, 'No', '2021-10-02 06:19:24', '2021-10-02 11:49:24', '2021-10-02 11:49:24'),
(10, 'test', 'Decoration', 1, '211001120415_TEST.jpg', NULL, 'No', '2021-10-02 09:29:05', '2021-10-02 14:59:05', '2021-10-02 14:59:05'),
(11, 'Wedding Photography', 'Photography', 1, '211002125004_WEDDING_PHOTOGRAPHY.jpg', NULL, 'No', '2021-10-18 08:19:21', '2021-10-18 13:49:21', '2021-10-18 13:49:21'),
(12, 'Wedding & Pre-Wedding Films', 'Wedding-Films', 1, '220117023512_THUMBNAIL.jpg', NULL, 'Yes', '2022-01-17 09:08:16', '2022-01-17 02:38:16', NULL),
(13, 'Music And Dance', 'Music-And-Dance', 1, '211002020842_MUSIC_AND_DANCE.jpg', NULL, 'No', '2021-10-18 07:39:15', '2021-10-18 13:09:15', '2021-10-18 13:09:15'),
(14, 'Demo', 'Decoration', 5, '211005070123_THUMBNAIL.jpg', 'Demo', 'No', '2022-01-17 08:51:08', '2022-01-17 14:21:08', '2022-01-17 14:21:08'),
(15, 'invites', 'Invitation-And-Gifts', 1, '211008025908_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 02:59:40', NULL, NULL),
(16, 'Wedding', 'Photography', 1, '211008074528_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 14:15:33', '2021-10-08 07:45:33', NULL),
(17, 'Prateek & Apurva', 'Photography', 2, '211008040239_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 04:05:16', NULL, NULL),
(18, 'Anuj & Surbhi', 'Photography', 3, '211008070311_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 13:33:13', '2021-10-08 07:03:13', NULL),
(19, 'Avinash & Vaishali', 'Photography', 4, '211008074739_THUMBNAIL.JPG', NULL, 'Yes', '2021-10-08 14:17:41', '2021-10-08 07:47:41', NULL),
(20, 'Avni & Siddharth', 'Photography', 5, '211008070436_THUMBNAIL.JPG', NULL, 'Yes', '2021-10-08 13:34:38', '2021-10-08 07:04:38', NULL),
(21, 'Venue & Rooms', 'Venues', 1, '211008061929_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 06:19:58', NULL, NULL),
(22, 'Neha & Vaibhav', 'Photography', 5, '211008065537_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-08 06:56:26', NULL, NULL),
(23, 'Anusha & Rahul', 'Photography', 6, '211008070540_THUMBNAIL.jpg', NULL, 'No', '2022-03-09 10:56:46', '2022-03-09 16:26:46', '2022-03-09 16:26:46'),
(24, 'Kuljeet Wedding', 'Photography', 7, '211008073828_THUMBNAIL.jpg', NULL, 'No', '2022-03-09 10:56:19', '2022-03-09 16:26:19', '2022-03-09 16:26:19'),
(25, 'Mansi Wedding', 'Photography', 8, '211008074001_THUMBNAIL.jpg', NULL, 'No', '2022-03-09 10:56:32', '2022-03-09 16:26:32', '2022-03-09 16:26:32'),
(26, 'Prashun & Nivedita', 'Photography', 9, '211008074150_THUMBNAIL.jpg', NULL, 'No', '2022-03-09 10:56:11', '2022-03-09 16:26:11', '2022-03-09 16:26:11'),
(27, 'Catering & Designs', 'Catering', 1, '220117021547_THUMBNAIL.jpg', NULL, 'Yes', '2022-01-17 08:45:54', '2022-01-17 02:15:54', NULL),
(28, 'Music & Dance', 'Music-And-Dance', 1, '211018014236_THUMBNAIL.jpg', NULL, 'Yes', '2021-10-18 01:44:18', NULL, NULL),
(29, 'Planning & Decorations', 'Decoration', 2, '211018014722_THUMBNAIL.jpg', NULL, 'No', '2022-04-01 11:45:32', '2022-04-01 17:15:32', NULL),
(30, 'nikita yash', 'Photography', 2, '220117070322_THUMBNAIL.jpg', NULL, 'Yes', '2022-01-17 07:04:36', NULL, NULL),
(31, 'Reception Decoration', 'Decoration', 1, '220128021736_THUMBNAIL.jpg', NULL, 'Yes', '2022-01-28 02:19:54', NULL, NULL),
(32, 'Haldi & Sangeet', 'Decoration', 3, '220128023747_THUMBNAIL.jpg', NULL, 'Yes', '2022-02-11 14:23:22', '2022-02-11 19:53:22', NULL),
(33, 'Avinash & Vaishali (Pre-Wedding)', 'Photography', 1, '220311035354_THUMBNAIL.jpg', NULL, 'Yes', '2022-03-11 03:56:00', NULL, NULL),
(34, 'Atul (Pre-Wedding)', 'Photography', 2, '220311043615_THUMBNAIL.jpg', NULL, 'Yes', '2022-03-11 04:37:42', NULL, NULL),
(35, 'Ujjwal (Pre-Wedding)', 'Photography', 3, '220311050032_THUMBNAIL.jpg', NULL, 'Yes', '2022-03-11 05:01:45', NULL, NULL),
(36, 'Kuljeet (Pre-Wedding)', 'Photography', 3, '220311052434_THUMBNAIL.jpg', NULL, 'Yes', '2022-03-11 05:26:06', NULL, NULL),
(37, 'Garima', 'Photography', 1, '220331050626_THUMBNAIL.jpg', NULL, 'Yes', '2022-03-31 05:08:20', NULL, NULL),
(38, 'Haldi Decoration', 'Decoration', 1, '220401121833_THUMBNAIL.jpg', NULL, 'Yes', '2022-04-01 12:24:01', NULL, NULL),
(39, 'Sangeet', 'Decoration', 2, '220401025114_THUMBNAIL.jpg', NULL, 'Yes', '2022-04-01 03:06:47', NULL, NULL),
(40, 'Mandap', 'Decoration', 3, '220401050516_THUMBNAIL.jpg', NULL, 'Yes', '2022-04-01 05:09:55', NULL, NULL),
(41, 'Entry Decoration', 'Decoration', 3, '220402043247_THUMBNAIL.jpg', NULL, 'Yes', '2022-04-02 04:34:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_files`
--

CREATE TABLE `image_files` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `link` longtext,
  `folder` varchar(100) DEFAULT NULL,
  `this_for` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_files`
--

INSERT INTO `image_files` (`id`, `album_id`, `image`, `link`, `folder`, `this_for`, `created_at`, `updated_at`) VALUES
(2, 2, '210823091801_ALBUM_TWO_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(3, 2, '210823091801_ALBUM_TWO_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(4, 2, '210823091801_ALBUM_TWO_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(5, 2, '210823091801_ALBUM_TWO_3.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(6, 2, '210823091801_ALBUM_TWO_4.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(7, 2, '210823091801_ALBUM_TWO_5.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(8, 2, '210823091801_ALBUM_TWO_6.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(9, 2, '210823091801_ALBUM_TWO_7.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-23 21:18:01', NULL),
(10, 2, NULL, 'https://www.youtube.com/embed/6EmPLebFEXU', NULL, 'Album Video Link', '2021-08-23 21:18:01', NULL),
(11, 3, '210824111448_ALBUM_ONE_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-24 11:14:48', NULL),
(12, 3, '210824111448_ALBUM_ONE_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-24 11:14:48', NULL),
(13, 3, '210824111448_ALBUM_ONE_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-24 11:14:48', NULL),
(14, 3, '210824111448_ALBUM_ONE_3.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-24 11:14:48', NULL),
(15, 3, '210824111448_ALBUM_ONE_4.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-08-24 11:14:48', NULL),
(16, 4, '210907030934_VAISHALI_&_AVINASH_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-07 03:09:34', NULL),
(17, 4, '210907030934_VAISHALI_&_AVINASH_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-07 03:09:34', NULL),
(18, 4, '210907030934_VAISHALI_&_AVINASH_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-07 03:09:34', NULL),
(19, 4, '210907030934_VAISHALI_&_AVINASH_3.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-07 03:09:34', NULL),
(20, 5, '210910042707_PRYASH_&_PRIYANKA_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-10 16:27:07', NULL),
(21, 5, '210910042707_PRYASH_&_PRIYANKA_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-10 16:27:07', NULL),
(22, 5, '210910042707_PRYASH_&_PRIYANKA_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-10 16:27:07', NULL),
(23, 5, '210910042707_PRYASH_&_PRIYANKA_3.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-10 16:27:07', NULL),
(24, 5, '210910042707_PRYASH_&_PRIYANKA_4.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-10 16:27:07', NULL),
(25, 5, NULL, 'https://www.youtube.com/watch?v=b2Uij_GIRes&ab_channel=NetflixIndia', NULL, 'Album Video Link', '2021-09-10 16:27:07', NULL),
(26, 5, NULL, 'https://www.youtube.com/watch?v=VVhBpSrF4zw&ab_channel=5ocial', NULL, 'Album Video Link', '2021-09-10 16:27:07', NULL),
(27, 6, '210921022540_MUSIC_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:25:40', NULL),
(28, 6, '210921022540_MUSIC_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:25:40', NULL),
(29, 6, '210921022540_MUSIC_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:25:40', NULL),
(30, 3, NULL, 'https://www.youtube.com/embed/6EmPLebFEXU', NULL, 'Album Video Link', '2021-09-21 14:34:17', NULL),
(31, 7, '210921025311_NEW_ALBUM_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:53:11', NULL),
(32, 7, '210921025311_NEW_ALBUM_1.png', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:53:11', NULL),
(33, 7, '210921025311_NEW_ALBUM_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-21 14:53:11', NULL),
(36, 7, NULL, 'https://www.youtube.com/embed/3SsK-cxlj_w', NULL, 'Album Video Link', '2021-09-21 14:54:44', NULL),
(37, 7, NULL, 'https://www.youtube.com/embed/Otm9IyXQTww', NULL, 'Album Video Link', '2021-09-21 14:54:44', NULL),
(38, 7, NULL, 'https://youtu.be/BHACKCNDMW8', NULL, 'Album Video Link', '2021-09-21 14:54:44', NULL),
(42, 8, '210929072238_AVNI_&_SIDDHARTH_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-29 19:22:38', NULL),
(43, 9, '210929081457_VAISHALI_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-29 20:14:57', NULL),
(44, 9, '210929081457_VAISHALI_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-29 20:14:57', NULL),
(45, 9, '210929081457_VAISHALI_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-09-29 20:14:57', NULL),
(46, 10, '211001120415_TEST_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-01 12:04:15', NULL),
(47, 10, '211001120415_TEST_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-01 12:04:15', NULL),
(48, 10, '211001120415_TEST_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-01 12:04:15', NULL),
(50, 11, '211002125004_WEDDING_PHOTOGRAPHY_0.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-02 12:50:04', NULL),
(51, 11, '211002125004_WEDDING_PHOTOGRAPHY_1.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-02 12:50:04', NULL),
(52, 11, '211002125004_WEDDING_PHOTOGRAPHY_2.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-02 12:50:04', NULL),
(53, 11, '211002125004_WEDDING_PHOTOGRAPHY_3.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-02 12:50:04', NULL),
(54, 11, '211002125004_WEDDING_PHOTOGRAPHY_4.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-02 12:50:04', NULL),
(85, 14, '211004040938_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-04 16:10:50', NULL),
(90, 14, '6211211004061159_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-04 18:12:01', NULL),
(91, 14, '8802211004061159_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-04 18:12:01', NULL),
(102, 14, NULL, 'https://www.youtube.com/embed/6EmPLebFEXU', NULL, 'Album Video Link', '2021-10-05 19:01:25', NULL),
(103, 15, '8326211008025924_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 14:59:40', NULL),
(104, 15, '4742211008025924_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 14:59:40', NULL),
(105, 15, '3927211008025924_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 14:59:40', NULL),
(106, 15, '1725211008025924_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 14:59:40', NULL),
(107, 15, '5618211008025924_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 14:59:40', NULL),
(119, 16, '4918211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(120, 16, '4434211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(121, 16, '8546211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(122, 16, '1258211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(123, 16, '2918211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(124, 16, '5104211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(125, 16, '1586211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(126, 16, '6680211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(127, 16, '7306211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(128, 16, '2580211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(129, 16, '2136211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(130, 16, '8281211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(131, 16, '5336211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(132, 16, '8916211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(133, 16, '4455211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(134, 16, '6657211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(135, 16, '2816211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(136, 16, '4718211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(137, 16, '1164211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(138, 16, '9160211008035644_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 15:56:47', NULL),
(139, 17, '8761211008040507_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(140, 17, '3598211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(141, 17, '5516211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(142, 17, '1084211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(143, 17, '1104211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(144, 17, '3680211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(145, 17, '8799211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(146, 17, '4406211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(147, 17, '4891211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(148, 17, '4607211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(149, 17, '4929211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(150, 17, '6201211008040507_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(151, 17, '8020211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(152, 17, '7410211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(153, 17, '7739211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(154, 17, '4989211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(155, 17, '9325211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(156, 17, '2603211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(157, 17, '5424211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(158, 17, '3935211008040507_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:05:16', NULL),
(159, 18, '7751211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(160, 18, '3659211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(161, 18, '5458211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(162, 18, '9965211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(163, 18, '6301211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(164, 18, '4735211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(165, 18, '7294211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(166, 18, '3865211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(167, 18, '4661211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(168, 18, '5632211008042056_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(169, 18, '6300211008042056_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(170, 18, '5660211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(171, 18, '9046211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(172, 18, '1479211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(173, 18, '4454211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(174, 18, '8551211008042056_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(175, 18, '6965211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(176, 18, '3129211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(177, 18, '1120211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(178, 18, '2496211008042056_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 16:21:10', NULL),
(179, 19, '5264211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(180, 19, '6703211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(181, 19, '8246211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(182, 19, '7278211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(183, 19, '9146211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(184, 19, '4453211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(185, 19, '8455211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(186, 19, '1718211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(187, 19, '1619211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(188, 19, '4999211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(189, 19, '8023211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(190, 19, '6066211008050813_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(191, 19, '3278211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(192, 19, '4959211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(193, 19, '1349211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(194, 19, '4370211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(195, 19, '2459211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(196, 19, '3849211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(197, 19, '2714211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(198, 19, '9427211008050813_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:08:21', NULL),
(199, 20, '8450211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(200, 20, '2609211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(201, 20, '9689211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(202, 20, '3338211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(203, 20, '4847211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(204, 20, '8741211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(205, 20, '3497211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(206, 20, '5780211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(207, 20, '9572211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(208, 20, '2500211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(209, 20, '3308211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(210, 20, '3179211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(211, 20, '1683211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(212, 20, '9909211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(213, 20, '9383211008054102_image.JPG', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(214, 20, '8012211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(215, 20, '2733211008054102_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 17:41:12', NULL),
(216, 21, '9525211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(217, 21, '2651211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(218, 21, '6678211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(219, 21, '1217211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(220, 21, '5679211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(221, 21, '7127211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(222, 21, '2813211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(223, 21, '7791211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(224, 21, '7282211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(225, 21, '8542211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(226, 21, '7987211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(227, 21, '5916211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(228, 21, '9277211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(229, 21, '2323211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(230, 21, '5562211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(231, 21, '1084211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(232, 21, '7218211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(233, 21, '7982211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(234, 21, '7295211008061949_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:19:58', NULL),
(235, 22, '6526211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(236, 22, '5642211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(237, 22, '9385211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(238, 22, '5539211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(239, 22, '6519211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(240, 22, '5920211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(241, 22, '9488211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(242, 22, '6090211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(243, 22, '6787211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(244, 22, '2613211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(245, 22, '3469211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(246, 22, '4009211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(247, 22, '8800211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(248, 22, '6629211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(249, 22, '9452211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(250, 22, '9305211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(251, 22, '2745211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(252, 22, '2800211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(253, 22, '2053211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(254, 22, '1976211008065622_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 18:56:26', NULL),
(255, 23, '1935211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(256, 23, '9555211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(257, 23, '1497211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(258, 23, '6345211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(259, 23, '7556211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(260, 23, '6934211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(261, 23, '7078211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(262, 23, '7182211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(263, 23, '5002211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(264, 23, '2916211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(265, 23, '2441211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(266, 23, '7671211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(267, 23, '1633211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(268, 23, '7159211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(269, 23, '2836211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(270, 23, '4192211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(271, 23, '3740211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(272, 23, '9167211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(273, 23, '1623211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(274, 23, '3153211008070100_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:01:09', NULL),
(275, 24, '5303211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(276, 24, '6682211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(277, 24, '8517211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(278, 24, '9169211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(279, 24, '6415211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(280, 24, '1990211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(281, 24, '7829211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(282, 24, '4587211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(283, 24, '2044211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(284, 24, '6085211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(285, 24, '9607211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(286, 24, '3447211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(287, 24, '3462211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(288, 24, '4820211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(289, 24, '8701211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(290, 24, '2379211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(291, 24, '2600211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(292, 24, '1876211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(293, 24, '4192211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(294, 24, '6669211008073903_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:39:09', NULL),
(295, 25, '5467211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(296, 25, '3545211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(297, 25, '7773211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(298, 25, '9274211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(299, 25, '1660211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(300, 25, '3762211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(301, 25, '3229211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(302, 25, '6714211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(303, 25, '5502211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(304, 25, '6888211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(305, 25, '2834211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(306, 25, '3036211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(307, 25, '7522211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(308, 25, '7785211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(309, 25, '3744211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(310, 25, '5665211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(311, 25, '4678211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(312, 25, '8696211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(313, 25, '5566211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(314, 25, '4830211008074029_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:40:32', NULL),
(315, 26, '6748211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(316, 26, '4774211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(317, 26, '6652211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(318, 26, '7466211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(319, 26, '2462211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(320, 26, '6647211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(321, 26, '8661211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(322, 26, '1092211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(323, 26, '4956211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(324, 26, '4874211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(325, 26, '7405211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(326, 26, '4802211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(327, 26, '2409211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(328, 26, '5983211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(329, 26, '9799211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(330, 26, '2229211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(331, 26, '8003211008074233_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-08 19:42:45', NULL),
(347, 28, '8422211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(348, 28, '1819211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(349, 28, '8686211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(350, 28, '3428211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(351, 28, '7927211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(352, 28, '9889211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(353, 28, '9468211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(354, 28, '6628211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(355, 28, '7817211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(356, 28, '5152211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(357, 28, '5106211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(358, 28, '9003211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(359, 28, '6469211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(360, 28, '6205211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(361, 28, '1519211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(362, 28, '6152211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(363, 28, '9484211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(364, 28, '1000211018014345_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:44:18', NULL),
(366, 29, '8681211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(367, 29, '7512211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(368, 29, '8618211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(369, 29, '7474211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(370, 29, '6313211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(371, 29, '2529211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(372, 29, '4219211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(373, 29, '8144211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(374, 29, '5521211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(375, 29, '4883211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(376, 29, '3157211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(377, 29, '1209211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(378, 29, '2073211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(379, 29, '5902211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(380, 29, '6789211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(381, 29, '3377211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(382, 29, '3142211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(383, 29, '1311211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(384, 29, '9797211018014850_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2021-10-18 13:48:57', NULL),
(385, 27, '1870220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(386, 27, '3800220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(387, 27, '9647220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(388, 27, '7204220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(389, 27, '6750220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(390, 27, '6671220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(391, 27, '7848220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(392, 27, '2050220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(393, 27, '3942220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(394, 27, '2693220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(395, 27, '1801220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(396, 27, '2915220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(397, 27, '8505220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(398, 27, '6112220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(399, 27, '1562220117021049_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 14:10:59', NULL),
(400, 12, NULL, 'https://youtu.be/8eXs4nIE1tg', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(401, 12, NULL, 'https://youtu.be/GrcR8iNAGJk', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(402, 12, NULL, 'https://youtu.be/6CZU3h8O77k', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(403, 12, NULL, 'https://youtu.be/lHql8OW_uQM\\', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(404, 12, NULL, 'https://youtu.be/LPVh17aPTnk', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(405, 12, NULL, 'https://youtu.be/9VinrswrIXo', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(406, 12, NULL, 'https://youtu.be/lXMmcuIfogk', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(407, 12, NULL, 'https://youtu.be/EX_os3nhe60', NULL, 'Album Video Link', '2022-01-17 14:38:16', NULL),
(408, 12, NULL, 'https://youtu.be/brhLdtdSgNw', NULL, 'Album Video Link', '2022-01-17 14:38:17', NULL),
(409, 12, NULL, 'https://youtu.be/8EdwM69Zy9U', NULL, 'Album Video Link', '2022-01-17 14:38:17', NULL),
(410, 30, '6535220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(411, 30, '4563220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(412, 30, '9847220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(413, 30, '4958220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(414, 30, '2250220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(415, 30, '9915220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(416, 30, '3734220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(417, 30, '7960220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(418, 30, '2020220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(419, 30, '8121220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(420, 30, '3445220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(421, 30, '6863220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(422, 30, '4243220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(423, 30, '6385220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(424, 30, '9514220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(425, 30, '4398220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(426, 30, '3804220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(427, 30, '9185220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(428, 30, '7258220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(429, 30, '6815220117070429_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-17 19:04:36', NULL),
(430, 31, '2410220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(431, 31, '2285220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(432, 31, '7648220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(433, 31, '1910220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(434, 31, '3916220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(435, 31, '6250220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(436, 31, '2806220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(437, 31, '8005220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(438, 31, '2216220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(439, 31, '7341220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(440, 31, '5053220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(441, 31, '1374220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(442, 31, '9800220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(443, 31, '1491220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(444, 31, '8925220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(445, 31, '3212220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(446, 31, '3779220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(447, 31, '5399220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(448, 31, '6439220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(449, 31, '4674220128021936_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:19:54', NULL),
(450, 32, '9509220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(451, 32, '3633220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(452, 32, '2971220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(453, 32, '9316220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(454, 32, '8943220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(455, 32, '3779220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(456, 32, '5236220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(457, 32, '8065220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(458, 32, '4471220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(459, 32, '5175220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(460, 32, '8413220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(461, 32, '7212220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(462, 32, '8668220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(463, 32, '4085220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(464, 32, '6090220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(465, 32, '6716220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(466, 32, '2567220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(467, 32, '1179220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(468, 32, '8933220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(469, 32, '7367220128023905_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-01-28 14:39:17', NULL),
(470, 33, '8420220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:00', NULL),
(471, 33, '9727220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:00', NULL),
(472, 33, '9444220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(473, 33, '9607220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(474, 33, '9303220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(475, 33, '9579220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(476, 33, '5744220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(477, 33, '7676220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(478, 33, '5383220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(479, 33, '4334220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(480, 33, '5409220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(481, 33, '3347220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(482, 33, '1057220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(483, 33, '8963220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(484, 33, '1784220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(485, 33, '4777220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(486, 33, '1448220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(487, 33, '8707220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(488, 33, '9452220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(489, 33, '9354220311035543_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 15:56:01', NULL),
(490, 34, '7600220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(491, 34, '9209220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(492, 34, '6233220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(493, 34, '5264220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(494, 34, '3554220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(495, 34, '3792220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(496, 34, '3653220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(497, 34, '8351220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(498, 34, '6602220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(499, 34, '9776220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(500, 34, '8773220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(501, 34, '5088220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(502, 34, '3326220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(503, 34, '9797220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(504, 34, '3388220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(505, 34, '4292220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(506, 34, '9399220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(507, 34, '8638220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(508, 34, '1123220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(509, 34, '6702220311043733_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 16:37:42', NULL),
(510, 35, '3902220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(511, 35, '7608220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(512, 35, '7419220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(513, 35, '7383220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(514, 35, '2181220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(515, 35, '6708220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(516, 35, '7349220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(517, 35, '4096220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(518, 35, '7427220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(519, 35, '2334220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL);
INSERT INTO `image_files` (`id`, `album_id`, `image`, `link`, `folder`, `this_for`, `created_at`, `updated_at`) VALUES
(520, 35, '3768220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(521, 35, '1121220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(522, 35, '9141220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(523, 35, '8058220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(524, 35, '7629220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(525, 35, '2620220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(526, 35, '6640220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(527, 35, '2882220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(528, 35, '6136220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(529, 35, '8024220311050134_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:01:45', NULL),
(530, 36, '3239220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(531, 36, '1574220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(532, 36, '6832220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(533, 36, '5112220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(534, 36, '3331220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(535, 36, '2429220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(536, 36, '5426220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(537, 36, '7985220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(538, 36, '7233220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(539, 36, '2359220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(540, 36, '7600220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(541, 36, '4804220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(542, 36, '1488220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(543, 36, '9473220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(544, 36, '6772220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(545, 36, '3731220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(546, 36, '5979220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(547, 36, '2745220311052554_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-11 17:26:06', NULL),
(548, 37, '8573220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(549, 37, '9159220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(550, 37, '6848220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(551, 37, '3569220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(552, 37, '1958220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(553, 37, '9843220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(554, 37, '3608220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(555, 37, '9694220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(556, 37, '4839220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(557, 37, '6859220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(558, 37, '4132220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(559, 37, '9775220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(560, 37, '6564220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(561, 37, '3654220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(562, 37, '2718220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(563, 37, '4273220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(564, 37, '4423220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(565, 37, '9853220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(566, 37, '6772220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(567, 37, '1606220331050812_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-03-31 17:08:20', NULL),
(568, 38, '1192220401122353_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:01', NULL),
(569, 38, '3698220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(570, 38, '2661220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(571, 38, '7651220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(572, 38, '1713220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(573, 38, '4077220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(574, 38, '3560220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(575, 38, '8393220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(576, 38, '9960220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(577, 38, '5903220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(578, 38, '8640220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(579, 38, '7825220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(580, 38, '7313220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(581, 38, '9444220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(582, 38, '3758220401122354_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 12:24:02', NULL),
(583, 39, '6855220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(584, 39, '5200220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(585, 39, '4017220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(586, 39, '7694220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(587, 39, '6265220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(588, 39, '7187220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(589, 39, '7865220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(590, 39, '1686220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(591, 39, '8628220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(592, 39, '3247220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(593, 39, '7309220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(594, 39, '5582220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(595, 39, '9279220401030643_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 15:06:47', NULL),
(596, 40, '9414220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(597, 40, '6054220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(598, 40, '1845220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(599, 40, '4524220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(600, 40, '3862220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(601, 40, '2251220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(602, 40, '7902220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(603, 40, '9307220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(604, 40, '2395220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(605, 40, '6734220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(606, 40, '7004220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(607, 40, '6511220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(608, 40, '4382220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(609, 40, '5665220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(610, 40, '8658220401050908_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-01 17:09:55', NULL),
(611, 41, '8350220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(612, 41, '6852220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(613, 41, '1670220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(614, 41, '2513220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(615, 41, '1395220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(616, 41, '1789220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(617, 41, '4478220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(618, 41, '2511220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(619, 41, '9532220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(620, 41, '7936220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(621, 41, '9580220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(622, 41, '9566220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(623, 41, '2226220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL),
(624, 41, '7745220402042016_image.jpg', NULL, 'albums/gallery_image', 'Album Image', '2022-04-02 16:34:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_01_06_052525_create_table_deals', 1),
(10, '2021_01_06_052603_create_table_labels', 1),
(11, '2021_01_06_052649_create_table_customers', 1),
(12, '2021_01_06_054121_create_table_service_master', 1),
(13, '2021_01_06_054151_create_table_extra_service_master', 1),
(14, '2021_01_06_054331_create_table_service_packages_master', 1),
(15, '2021_01_06_054410_create_table_service_billing_packages', 1),
(16, '2021_01_06_054456_create_table_cor_service_master', 1),
(17, '2021_01_06_054530_create_table_cor_billing_packages', 1),
(18, '2021_01_06_054652_create_table_proposal', 1),
(19, '2021_01_06_054716_create_table_proposal_services', 1),
(20, '2021_01_06_054749_create_table_proposal_extra_services', 1),
(21, '2021_01_06_054842_create_table_proposal_service_pakages', 1),
(22, '2021_01_06_054909_create_table_proposal_billing_pakages', 1),
(23, '2021_01_06_054948_create_table_proposal_cor_services', 1),
(24, '2021_01_06_055051_create_table_proposal_cor_billing_packages', 1),
(25, '2021_01_06_055229_create_table_billings', 1),
(26, '2021_01_06_055308_create_table_billings_billing_packages', 1),
(27, '2021_01_06_055353_create_table_billings_cor_billing_packages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `req_barat`
--

CREATE TABLE `req_barat` (
  `bid` bigint(20) NOT NULL,
  `req_id` int(20) DEFAULT NULL,
  `barat_dhumal` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_dhumal_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_dhol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_dhol_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_saja` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_saja_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_fire_crack` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_fire_crack_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_vinatge_car` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_vinatge_car_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_car` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_car_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_ghodi` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_ghodi_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_car_decoration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_car_decoration_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_samdhi_mala` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_samdhi_mala_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_paper_confit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barat_paper_confit_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_barat`
--

INSERT INTO `req_barat` (`bid`, `req_id`, `barat_dhumal`, `barat_dhumal_detail`, `barat_dhol`, `barat_dhol_detail`, `barat_saja`, `barat_saja_detail`, `barat_fire_crack`, `barat_fire_crack_detail`, `barat_vinatge_car`, `barat_vinatge_car_detail`, `barat_car`, `barat_car_detail`, `barat_ghodi`, `barat_ghodi_detail`, `barat_car_decoration`, `barat_car_decoration_detail`, `barat_samdhi_mala`, `barat_samdhi_mala_detail`, `barat_paper_confit`, `barat_paper_confit_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', NULL, NULL, NULL, 'YES', '25', 'YES', NULL, 'YES', NULL, 'NO', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(10, 10, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, NULL, NULL, 'NO', NULL),
(11, 11, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, 'not finalised', NULL, NULL, 'YES', NULL, NULL, NULL, NULL, 'what Vintage Cars are there??', NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 'May I know what is this??');

-- --------------------------------------------------------

--
-- Table structure for table `req_cocktail`
--

CREATE TABLE `req_cocktail` (
  `cid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `pool_theme` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_theme_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_dj_sound` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_dj_sound_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_liquor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_liquor_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_dhol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_dhol_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_bar_tenders` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_bar_tenders_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_bar_set` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_bar_set_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_russian` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_russian_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_jugglers` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pool_jugglers_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_cocktail`
--

INSERT INTO `req_cocktail` (`cid`, `req_id`, `pool_theme`, `pool_theme_detail`, `pool_dj_sound`, `pool_dj_sound_detail`, `pool_liquor`, `pool_liquor_detail`, `pool_dhol`, `pool_dhol_detail`, `pool_bar_tenders`, `pool_bar_tenders_detail`, `pool_bar_set`, `pool_bar_set_detail`, `pool_russian`, `pool_russian_detail`, `pool_jugglers`, `pool_jugglers_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `req_deocration`
--

CREATE TABLE `req_deocration` (
  `did` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `mehandi_setup` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_setup_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hadli_setup` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hadli_setup_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_stage` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_stage_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reception_stage` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reception_stage_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_venue` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_venue_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bride_man_decoration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bride_man_decoration_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groom_man_decoration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groom_man_decoration_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_cou_setup` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_cou_setup_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_lounge` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_lounge_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sajan_kot` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sajan_kot_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfie_booth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfie_booth_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_deocration`
--

INSERT INTO `req_deocration` (`did`, `req_id`, `mehandi_setup`, `mehandi_setup_detail`, `hadli_setup`, `hadli_setup_detail`, `sangeet_stage`, `sangeet_stage_detail`, `reception_stage`, `reception_stage_detail`, `entry_venue`, `entry_venue_detail`, `bride_man_decoration`, `bride_man_decoration_detail`, `groom_man_decoration`, `groom_man_decoration_detail`, `food_cou_setup`, `food_cou_setup_detail`, `vip_lounge`, `vip_lounge_detail`, `sajan_kot`, `sajan_kot_detail`, `selfie_booth`, `selfie_booth_detail`) VALUES
(1, 1, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL),
(2, 2, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, 'YES', 'Outdoor', 'YES', 'Outdoor', 'YES', 'outdoor', 'YES', 'outdoor', 'YES', NULL, 'YES', 'outdoor', NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', '50 heads', 'YES', NULL),
(4, 4, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, NULL, NULL, 'NO', NULL, 'YES', NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, NULL, 'Don\'t know what it is', 'YES', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, NULL, 'Don\'t know what it is', 'YES', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, NULL, 'Don\'t know what it is', 'YES', NULL),
(8, 8, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(9, 9, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(10, 10, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL),
(11, 11, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, 'what is this??', 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `req_haldi`
--

CREATE TABLE `req_haldi` (
  `hid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `flower_shower` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flower_shower_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hadli_dhol_boy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hadli_dhol_boy_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_props` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_props_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_entry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_entry_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_bomb` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_bomb_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_sound_dj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_sound_dj_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_colors` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haldi_colors_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_haldi`
--

INSERT INTO `req_haldi` (`hid`, `req_id`, `flower_shower`, `flower_shower_detail`, `hadli_dhol_boy`, `hadli_dhol_boy_detail`, `haldi_props`, `haldi_props_detail`, `haldi_entry`, `haldi_entry_detail`, `color_bomb`, `color_bomb_detail`, `haldi_sound_dj`, `haldi_sound_dj_detail`, `haldi_colors`, `haldi_colors_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL),
(4, 4, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL),
(5, 5, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(6, 6, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(7, 7, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(10, 10, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, NULL, NULL, 'NO', NULL, 'NO', NULL),
(11, 11, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(12, 12, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `req_mehandi`
--

CREATE TABLE `req_mehandi` (
  `mid` bigint(20) NOT NULL,
  `req_id` bigint(20) NOT NULL,
  `mehandi_artist` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_mehandi_artist` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_dhol_boy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_dhol_boy_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nail_tattoo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_nail_tattoo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_entertainment` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_entertainment_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_sound_dj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mehandi_sound_dj_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_mehandi`
--

INSERT INTO `req_mehandi` (`mid`, `req_id`, `mehandi_artist`, `detail_mehandi_artist`, `mehandi_dhol_boy`, `mehandi_dhol_boy_detail`, `nail_tattoo`, `detail_nail_tattoo`, `mehandi_entertainment`, `mehandi_entertainment_detail`, `mehandi_sound_dj`, `mehandi_sound_dj_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', '20', 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL),
(10, 10, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(11, 11, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, 'havent decided yet', NULL, 'not yet', 'NO', NULL, NULL, 'Not decided yet', NULL, 'Required, not finalised');

-- --------------------------------------------------------

--
-- Table structure for table `req_other`
--

CREATE TABLE `req_other` (
  `oid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `other_makeup_artist` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_makeup_artist_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_caters` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_caters_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_photography` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_photography_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_cloth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_cloth_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_car_service` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_car_service_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_sanitization` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_sanitization_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_help` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_help_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_other`
--

INSERT INTO `req_other` (`oid`, `req_id`, `other_makeup_artist`, `other_makeup_artist_detail`, `other_caters`, `other_caters_detail`, `other_photography`, `other_photography_detail`, `other_cloth`, `other_cloth_detail`, `other_car_service`, `other_car_service_detail`, `other_sanitization`, `other_sanitization_detail`, `other_help`, `other_help_detail`) VALUES
(1, 1, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(11, 11, 'YES', 'For groom', 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'kindly elaborate', NULL, NULL, 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `req_phere`
--

CREATE TABLE `req_phere` (
  `pid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `phere_havan_kund` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_havan_kund_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_pandit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_pandit_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_phol_chadar` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_phol_chadar_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_sehnai_vadak` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_sehnai_vadak_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_sound` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_sound_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_makeup` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phere_makeup_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_phere`
--

INSERT INTO `req_phere` (`pid`, `req_id`, `phere_havan_kund`, `phere_havan_kund_detail`, `phere_pandit`, `phere_pandit_detail`, `phere_phol_chadar`, `phere_phol_chadar_detail`, `phere_sehnai_vadak`, `phere_sehnai_vadak_detail`, `phere_sound`, `phere_sound_detail`, `phere_makeup`, `phere_makeup_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL),
(5, 5, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL),
(6, 6, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL),
(7, 7, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL),
(12, 12, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, 'YES', 'please suggest some');

-- --------------------------------------------------------

--
-- Table structure for table `req_recepetion`
--

CREATE TABLE `req_recepetion` (
  `rid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `rec_bg_entry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_bg_entry_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_dj_sound` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_dj_sound_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_light` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_light_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_varmala` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_varmala_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_ins_group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_ins_group_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_rot_stage` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_rot_stage_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_paper_blaster` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_paper_blaster_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_cold_pyro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_cold_pyro_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_cake` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_cake_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_recepetion`
--

INSERT INTO `req_recepetion` (`rid`, `req_id`, `rec_bg_entry`, `rec_bg_entry_detail`, `rec_dj_sound`, `rec_dj_sound_detail`, `rec_light`, `rec_light_detail`, `rec_varmala`, `rec_varmala_detail`, `rec_ins_group`, `rec_ins_group_detail`, `rec_rot_stage`, `rec_rot_stage_detail`, `rec_paper_blaster`, `rec_paper_blaster_detail`, `rec_cold_pyro`, `rec_cold_pyro_detail`, `rec_cake`, `rec_cake_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', NULL, NULL, NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 'YES', NULL, 'YES', 'shehnai or orchestra', 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL),
(11, 11, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL),
(12, 12, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 'YES', 'Required in Sangeet+ Engagement');

-- --------------------------------------------------------

--
-- Table structure for table `req_sangeet`
--

CREATE TABLE `req_sangeet` (
  `sid` bigint(20) NOT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `sangeet_light` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_light_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_dj_sound` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_dj_sound_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_anchor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_anchor_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_choreography` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_choreography_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_bg_entry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_bg_entry_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_paper_blast` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_paper_blast_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_cold_pyro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_cp_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_led_wall` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_led_wall_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_back_dancer` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_back_dancer_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_co2_blast` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_co2_blast_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_fire` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_fire_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_entry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangeet_entry_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_sangeet`
--

INSERT INTO `req_sangeet` (`sid`, `req_id`, `sangeet_light`, `sangeet_light_detail`, `sangeet_dj_sound`, `sangeet_dj_sound_detail`, `sangeet_anchor`, `sangeet_anchor_detail`, `sangeet_choreography`, `sangeet_choreography_detail`, `sangeet_bg_entry`, `sangeet_bg_entry_detail`, `sangeet_paper_blast`, `sangeet_paper_blast_detail`, `sangeet_cold_pyro`, `sangeet_cp_detail`, `sangeet_led_wall`, `sangeet_led_wall_detail`, `sangeet_back_dancer`, `sangeet_back_dancer_detail`, `sangeet_co2_blast`, `sangeet_co2_blast_detail`, `sangeet_fire`, `sangeet_fire_detail`, `sangeet_entry`, `sangeet_entry_detail`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL),
(5, 5, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(6, 6, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(7, 7, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(8, 8, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(9, 9, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, NULL, NULL, NULL, NULL),
(10, 10, 'YES', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, NULL, NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
(11, 11, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL, 'NO', NULL, 'YES', NULL, 'YES', NULL, 'YES', NULL),
(12, 12, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `req_user`
--

CREATE TABLE `req_user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vanue` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wedding_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `req_user`
--

INSERT INTO `req_user` (`id`, `email`, `name`, `mobile`, `vanue`, `wedding_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Abhishek Singh', '9577865431', 'punjab', NULL, 'Yes', '2022-03-10 13:03:20', NULL),
(2, NULL, 'Purnima Kumari', '9353254491', NULL, '2022-12-10', 'Yes', '2022-03-12 17:14:08', NULL),
(3, NULL, 'Prachay', '8566989041', 'Punjab Kesari', '2022-12-03', 'Yes', '2022-04-01 12:35:09', NULL),
(4, NULL, 'Praveen', '7974168788', 'Punjab Kesari Bhavan', '2023-01-27', 'Yes', '2022-04-05 16:33:57', NULL),
(5, 'iimcparul@gmail.com', 'Parul Kaushik', '9691417707', 'Royal green durg', '2022-06-21', 'Yes', '2022-04-19 06:56:38', NULL),
(6, 'iimcparul@gmail.com', 'Parul Kaushik', '9691417707', 'Royal green durg', '2022-06-21', 'Yes', '2022-04-19 06:56:39', NULL),
(7, 'iimcparul@gmail.com', 'Parul Kaushik', '9691417707', 'Royal green durg', '2022-06-21', 'Yes', '2022-04-19 06:56:40', NULL),
(8, 'praven.reddy27@gmail.com', 'Praveen kumar Reddy', '7000518988', 'bhilai', '2022-06-17', 'Yes', '2022-04-27 09:48:36', NULL),
(9, 'praven.reddy27@gmail.com', 'Praveen kumar Reddy', '7000518988', 'bhilai', '2022-06-17', 'Yes', '2022-04-27 09:48:37', NULL),
(10, 'pranay.d21@gmail.com', 'Pranay Dubey', '8889350888', 'Salasar Dham', '2022-06-12', 'Yes', '2022-05-01 14:43:29', NULL),
(11, 'akshayj2592@gmail.com', 'Akshay Chordia', '8939740605', 'Sibbal greens, Raipur', '2022-06-15', 'Yes', '2022-05-15 05:11:30', NULL),
(12, 'SAGARAVIJEETSHUKLA@GMAIL.COM', 'Sagar Avijit Shukla', '9740771254', 'Manuas Realty', '2022-12-02', 'Yes', '2022-07-11 13:13:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `thumbnail_image` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `thumbnail_image`, `position`, `created_at`, `updated_at`, `deleted_at`, `is_active`) VALUES
(1, '210921021430_.png', 1, '2021-09-21 02:14:30', NULL, NULL, 'Yes'),
(2, '210921021444_.png', 2, '2021-09-21 02:14:44', NULL, NULL, 'Yes'),
(3, '210921024847_.png', 3, '2021-09-21 02:48:47', NULL, NULL, 'Yes'),
(4, '210921024858_.png', 4, '2021-09-21 02:48:58', NULL, NULL, 'Yes'),
(5, '220117014305_.png', 3, '2022-01-17 01:43:06', NULL, NULL, 'Yes'),
(6, '220117014350_.png', 4, '2022-01-17 01:43:50', NULL, NULL, 'Yes'),
(7, '220117014422_.png', 5, '2022-01-17 08:14:35', '2022-01-17 13:44:35', '2022-01-17 13:44:35', 'No'),
(8, '220117014445_.png', 1, '2022-01-17 01:44:45', NULL, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = User',
  `is_active` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-08-12 06:48:06', '$2y$10$7Dtr41XLmb/Ov9TaT4Y2IOWtrH2KtirouVaPpvYfEBnUEDS85cPc.', 'U0sPMAn0CcJRwCohfEFln8mULmz67Hwf2DVGWjWchXyTfkZiYj1aF2R7vvWO', 1, 'Yes', '2021-01-09 05:34:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `image_files`
--
ALTER TABLE `image_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `req_barat`
--
ALTER TABLE `req_barat`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `req_cocktail`
--
ALTER TABLE `req_cocktail`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `req_deocration`
--
ALTER TABLE `req_deocration`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `req_haldi`
--
ALTER TABLE `req_haldi`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `req_mehandi`
--
ALTER TABLE `req_mehandi`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `req_other`
--
ALTER TABLE `req_other`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `req_phere`
--
ALTER TABLE `req_phere`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `req_recepetion`
--
ALTER TABLE `req_recepetion`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `req_sangeet`
--
ALTER TABLE `req_sangeet`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `req_user`
--
ALTER TABLE `req_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_files`
--
ALTER TABLE `image_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `req_barat`
--
ALTER TABLE `req_barat`
  MODIFY `bid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_cocktail`
--
ALTER TABLE `req_cocktail`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_deocration`
--
ALTER TABLE `req_deocration`
  MODIFY `did` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_haldi`
--
ALTER TABLE `req_haldi`
  MODIFY `hid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_mehandi`
--
ALTER TABLE `req_mehandi`
  MODIFY `mid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_other`
--
ALTER TABLE `req_other`
  MODIFY `oid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_phere`
--
ALTER TABLE `req_phere`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_recepetion`
--
ALTER TABLE `req_recepetion`
  MODIFY `rid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_sangeet`
--
ALTER TABLE `req_sangeet`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `req_user`
--
ALTER TABLE `req_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
