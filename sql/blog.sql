-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 04:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'travel', 'travel-2020-07-28-5f202127d0e97.jpg', '2020-07-28 06:59:25', '2020-07-28 06:59:25'),
(2, 'Tour', 'tour', 'tour-2020-07-28-5f20215756f1b.jpg', '2020-07-28 07:00:09', '2020-07-28 07:00:09'),
(3, 'Destination', 'destination', 'destination-2020-07-28-5f202186140ae.jpg', '2020-07-28 07:00:57', '2020-07-28 07:00:57'),
(4, 'Drinks', 'drinks', 'drinks-2020-07-28-5f2021b227013.jpg', '2020-07-28 07:01:41', '2020-07-28 07:01:41'),
(5, 'Foods', 'foods', 'foods-2020-07-28-5f2021d675a1d.jpg', '2020-07-28 07:02:18', '2020-07-28 07:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 3, 5, NULL, NULL),
(5, 3, 4, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 5, 4, NULL, NULL),
(10, 6, 5, NULL, NULL),
(11, 6, 4, NULL, NULL),
(12, 7, 5, NULL, NULL),
(13, 7, 4, NULL, NULL),
(14, 8, 5, NULL, NULL),
(15, 8, 4, NULL, NULL),
(16, 9, 3, NULL, NULL),
(17, 9, 2, NULL, NULL),
(18, 9, 1, NULL, NULL),
(19, 10, 2, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 11, 5, NULL, NULL),
(22, 11, 4, NULL, NULL),
(23, 12, 5, NULL, NULL),
(24, 12, 4, NULL, NULL),
(25, 13, 5, NULL, NULL),
(26, 13, 4, NULL, NULL),
(27, 14, 5, NULL, NULL),
(28, 14, 4, NULL, NULL),
(29, 15, 5, NULL, NULL),
(30, 16, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'this is delicious food', '2020-07-28 07:24:52', '2020-07-28 07:24:52'),
(2, 10, 1, 'this is nice place', '2020-07-28 07:25:23', '2020-07-28 07:25:23'),
(3, 5, 1, 'this is nice place', '2020-07-28 07:43:56', '2020-07-28 07:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"46994834-36f5-4b66-a6eb-97ec80cdf5fd\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"35a6f26e-00b3-4ee9-b559-f3b7a491e6e5\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943080, 1595943080),
(2, 'default', '{\"uuid\":\"738b89fb-c20c-46d8-abba-d2b96bd96116\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7f6a46dc-fda9-45f3-9d70-d767abea1f5f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943156, 1595943156),
(3, 'default', '{\"uuid\":\"f91e2945-2ce5-4915-a224-5cac227ce22e\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0dd348a2-3d82-4af7-8f8d-de319b5e551e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943236, 1595943236),
(4, 'default', '{\"uuid\":\"4d3cb464-7ca0-4eed-83a4-64774051df4a\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"54411f62-8924-48ac-89a5-997bf4a85462\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943316, 1595943316),
(5, 'default', '{\"uuid\":\"2518eeba-20c0-4924-b77c-3948ae0b09c2\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2cb7abe9-db8e-4a34-8af1-77b0e0e9e466\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943392, 1595943392),
(6, 'default', '{\"uuid\":\"8bbc42c1-9b34-48c9-b609-9de46fdb4eca\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"da7b6f95-e6d0-49a9-b8a5-38d5ede58895\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943465, 1595943465),
(7, 'default', '{\"uuid\":\"e54caa7d-d880-4377-b3e6-326d4c0a30ab\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0db459ee-251d-4724-b11c-29b28bf686db\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943551, 1595943551),
(8, 'default', '{\"uuid\":\"67fa1453-dab5-4a89-add3-85961201f4f3\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"24fd5956-482e-4e5e-becc-cdd5f44e6a81\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943562, 1595943562),
(9, 'default', '{\"uuid\":\"45e57bdb-ff8c-4286-8b27-e54a9a1c1ba4\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c9b6c064-6a95-439f-a1c6-d9b43309469f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943573, 1595943573),
(10, 'default', '{\"uuid\":\"bf3a4da4-cfb9-4d84-8380-4030b0316a6b\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7e656fb0-6f62-4613-8b35-5a55ff0d33eb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943584, 1595943584),
(11, 'default', '{\"uuid\":\"2e5f81af-8fe1-45bd-9b2e-8930756bbaa2\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2be50c2b-061a-49bb-a9ba-9a64bf40a499\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943593, 1595943593),
(12, 'default', '{\"uuid\":\"493b1534-b730-4653-a18b-71ded2c89819\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"372afaee-c974-487a-a055-628cbb3dfb1a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1595943603, 1595943603);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_19_122032_create_roles_table', 1),
(5, '2020_07_19_171507_create_tags_table', 1),
(6, '2020_07_19_174341_create_categories_table', 1),
(7, '2020_07_20_022014_create_posts_table', 1),
(8, '2020_07_20_022249_create_category_post_table', 1),
(9, '2020_07_20_022322_create_post_tag_table', 1),
(10, '2020_07_20_130906_create_subscribers_table', 1),
(11, '2020_07_21_110249_create_post_user_table', 1),
(12, '2020_07_22_063524_create_comments_table', 1),
(13, '2020_07_23_075505_create_jobs_table', 1),
(14, '2020_07_24_044738_create_socials_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 'It is a long established fact a reader be distracted', 'it-is-a-long-established-fact-a-reader-be-distracted', 'it-is-a-long-established-fact-a-reader-be-distracted-2020-07-28-5f202259f32fe.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>\r\n<p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>', 0, 1, 1, '2020-07-28 07:04:27', '2020-07-28 07:04:27'),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore,', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-praesentium-nam-quas-inventore', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-praesentium-nam-quas-inventore-2020-07-28-5f202372093df.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.</p>\r\n<p>Sint ab voluptates itaque, ipsum porro qui obcaecati cumque quas sit vel. Voluptatum provident id quis quo. Eveniet maiores perferendis officia veniam est laborum, expedita fuga doloribus natus repellendus dolorem ab similique sint eius cupiditate necessitatibus, magni nesciunt ex eos.</p>\r\n<p>Quis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem. Commodi, sequi.</p>\r\n<div class=\"row mb-5 mt-5\">&nbsp;</div>', 0, 1, 1, '2020-07-28 07:09:08', '2020-07-28 07:09:08'),
(3, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 'there-are-many-variations-of-passages-of-lorem-ipsum-available-but-the-majority-have-suffered-alteration-in-some-form', 'there-are-many-variations-of-passages-of-lorem-ipsum-available-but-the-majority-have-suffered-alteration-in-some-form-2020-07-28-5f2023d5b8474.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 0, 1, 1, '2020-07-28 07:10:47', '2020-07-28 07:10:47'),
(4, 1, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-is-reproduced-below-for-those-interested', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-is-reproduced-below-for-those-interested-2020-07-28-5f20245dbc3c4.jpg', '<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"file:///C:/Users/Laily%20Akter/Downloads/whitney-wright-TgQkxQc-t_U-unsplash.jpg\" alt=\"\" /></p>', 0, 1, 1, '2020-07-28 07:13:04', '2020-07-28 07:13:04'),
(5, 1, 'I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', 'i-must-explain-to-you-how-all-this-mistaken-idea-of-denouncing-pleasure-and-praising-pain-was-born-and-i-will-give-you-a-complete-account-of-the-system', 'i-must-explain-to-you-how-all-this-mistaken-idea-of-denouncing-pleasure-and-praising-pain-was-born-and-i-will-give-you-a-complete-account-of-the-system-2020-07-28-5f2024b7460e6.jpg', '<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 0, 1, 1, '2020-07-28 07:14:33', '2020-07-28 07:14:33'),
(6, 1, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text-it-has-roots-in-a-piece-of-classical-latin-literature-from-45-bc-making-it-over-2000-years-old', 'contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text-it-has-roots-in-a-piece-of-classical-latin-literature-from-45-bc-making-it-over-2000-years-old-2020-07-28-5f2024f60dbea.jpg', '<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 0, 1, 1, '2020-07-28 07:15:35', '2020-07-28 07:15:35'),
(7, 1, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias', 'at-vero-eos-et-accusamus-et-iusto-odio-dignissimos-ducimus-qui-blanditiis-praesentium-voluptatum-deleniti-atque-corrupti-quos-dolores-et-quas-molestias', 'at-vero-eos-et-accusamus-et-iusto-odio-dignissimos-ducimus-qui-blanditiis-praesentium-voluptatum-deleniti-atque-corrupti-quos-dolores-et-quas-molestias-2020-07-28-5f202541c2560.jpg', '<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>', 0, 1, 1, '2020-07-28 07:16:52', '2020-07-28 07:16:52'),
(8, 1, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interest', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-is-reproduced-below-for-those-interest', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-is-reproduced-below-for-those-interest-2020-07-28-5f202588e22f3.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, 1, '2020-07-28 07:18:02', '2020-07-28 07:23:31'),
(9, 1, 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 'here-are-many-variations-of-passages-of-lorem-ipsum-available-but-the-majority-have-suffered-alteration-in-some-form', 'here-are-many-variations-of-passages-of-lorem-ipsum-available-but-the-majority-have-suffered-alteration-in-some-form-2020-07-28-5f2025e890257.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 0, 1, 1, '2020-07-28 07:19:39', '2020-07-28 07:19:39'),
(10, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted-by-the-readable-content-of-a-page-when-looking-at-its-layout', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted-by-the-readable-content-of-a-page-when-looking-at-its-layout-2020-07-28-5f2026449bb00.jpg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 1, 1, 1, '2020-07-28 07:21:10', '2020-07-28 07:25:11'),
(11, 3, 'From its medieval origins to the digital era, learn everything there is to know about the ubiquitous lorem ipsum passage.', 'from-its-medieval-origins-to-the-digital-era-learn-everything-there-is-to-know-about-the-ubiquitous-lorem-ipsum-passage', 'from-its-medieval-origins-to-the-digital-era-learn-everything-there-is-to-know-about-the-ubiquitous-lorem-ipsum-passage-2020-07-28-5f2028a57c625.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, 1, 1, '2020-07-28 07:31:19', '2020-07-28 07:39:11'),
(12, 3, 'Creation timelines for the standard lorem ipsum passage vary, with some citing the 15th century and others the 20th.', 'creation-timelines-for-the-standard-lorem-ipsum-passage-vary-with-some-citing-the-15th-century-and-others-the-20th', 'creation-timelines-for-the-standard-lorem-ipsum-passage-vary-with-some-citing-the-15th-century-and-others-the-20th-2020-07-28-5f2028f1f1698.jpg', '<h3 class=\"f5 cl-orange mb16\">HISTORY, PURPOSE AND USAGE</h3>\r\n<p class=\"f4 cl-white mt0 mb16\"><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p>\r\n<blockquote class=\"page-section__blockquote\">&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</blockquote>\r\n<p class=\"f4 cl-white mv16\">The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without&nbsp;<a title=\"Controversy in the Design World\" href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p>\r\n<p class=\"f4 cl-white mv16\">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a title=\"Lorem Ipsum Generator\" href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>', 0, 1, 1, '2020-07-28 07:32:36', '2020-07-28 07:39:22'),
(13, 3, 'Some claim lorem ipsum threatens to promote design over content, while others defend its value in the process of planning.', 'some-claim-lorem-ipsum-threatens-to-promote-design-over-content-while-others-defend-its-value-in-the-process-of-planning', 'some-claim-lorem-ipsum-threatens-to-promote-design-over-content-while-others-defend-its-value-in-the-process-of-planning-2020-07-28-5f2029415122b.jpg', '<h3 class=\"f5 cl-orange mb16\">REMIXING A CLASSIC</h3>\r\n<p class=\"f4 cl-white mv16\">So how did the classical Latin become so incoherent? According to McClintock, a 15th century typesetter likely scrambled part of Cicero\'s&nbsp;<em>De Finibus</em>&nbsp;in order to provide placeholder text to mockup various fonts for a type specimen book.</p>\r\n<p class=\"f4 cl-white mv16\">It\'s difficult to find examples of&nbsp;<em>lorem ipsum</em>&nbsp;in use before Letraset made it popular as a dummy text in the 1960s, although McClintock says he remembers coming across the&nbsp;<em>lorem ipsum</em>&nbsp;passage in a book of old metal type samples. So far he hasn\'t relocated where he once saw the passage, but the popularity of Cicero in the 15th century supports the theory that the filler text has been used for centuries.</p>\r\n<p class=\"f4 cl-white mv16\">And anyways, as&nbsp;<a title=\"Straight Dope &ndash; What Does the Filler Text Lorem Ipsum Mean?\" href=\"https://www.straightdope.com/columns/read/2290/what-does-the-filler-text-lorem-ipsum-mean/\" target=\"_blank\" rel=\"noopener\">Cecil Adams reasoned</a>, &ldquo;[Do you really] think graphic arts supply houses were hiring classics scholars in the 1960s?&rdquo; Perhaps. But it seems reasonable to imagine that there was a version in use far before the age of Letraset.</p>\r\n<p class=\"f4 cl-white mv16\">McClintock&nbsp;<a title=\"About Lorem Ipsum\" href=\"http://www.loremipsum.de/about_lorem_ipsum.html\" target=\"_blank\" rel=\"noopener\">wrote</a>&nbsp;to&nbsp;<em>Before &amp; After</em>&nbsp;to explain his discovery;</p>\r\n<blockquote class=\"page-section__blockquote\">&ldquo;What I find remarkable is that this text has been the industry\'s standard dummy text ever since some printer in the 1500s took a galley of type and scrambled it to make a type specimen book; it has survived not only four centuries of letter-by-letter resetting but even the leap into electronic typesetting, essentially unchanged except for an occasional \'ing\' or \'y\' thrown in. It\'s ironic that when the then-understood Latin was scrambled, it became as incomprehensible as Greek; the phrase \'it\'s Greek to me\' and \'<a title=\"Wikipedia &ndash; Greeking\" href=\"https://en.wikipedia.org/wiki/Greeking\" target=\"_blank\" rel=\"noopener\">greeking</a>\' have common semantic roots!&rdquo; (The editors published his letter in a correction headlined &ldquo;Lorem Oopsum&rdquo;).</blockquote>\r\n<p class=\"f4 cl-white mv16\">As an&nbsp;<a title=\"Deep Advantage &ndash; Lorem Ipsum\" href=\"https://www.deepadvantage.com/blog/lorem-ipsum/\" target=\"_blank\" rel=\"noopener\">alternative theory</a>, (and because Latin scholars do this sort of thing) someone tracked down a 1914 Latin edition of&nbsp;<em>De Finibus</em>&nbsp;which challenges McClintock\'s 15th century claims and suggests that the dawn of&nbsp;<em>lorem ipsum</em>&nbsp;was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase &ldquo;dolorem ipsum&rdquo; (sorrow in itself). Thus, the truncated phrase leaves one page dangling with &ldquo;do-&rdquo;, while another begins with the now ubiquitous &ldquo;lorem ipsum&rdquo;.</p>\r\n<p class=\"f4 cl-white mt16 mb0\">Whether a medieval typesetter chose to garble a well-known (but non-Biblical&mdash;that would have been sacrilegious) text, or whether a quirk in the 1914 Loeb Edition inspired a graphic designer, it\'s admittedly an odd way for Cicero to sail into the 21st century.</p>', 0, 1, 1, '2020-07-28 07:33:55', '2020-07-28 07:39:33'),
(14, 3, 'Generally, lorem ipsum is best suited to keeping templates from looking bare or minimizing the distractions of draft copy.', 'generally-lorem-ipsum-is-best-suited-to-keeping-templates-from-looking-bare-or-minimizing-the-distractions-of-draft-copy', 'generally-lorem-ipsum-is-best-suited-to-keeping-templates-from-looking-bare-or-minimizing-the-distractions-of-draft-copy-2020-07-28-5f202991a3273.jpg', '<section id=\"usage-and-examples\" class=\"page-section g\">\r\n<div class=\"gr\">\r\n<figure class=\"page-section__image g12-xs g3-md\">\r\n<figcaption>\r\n<h4 class=\"page-section__caption f5 cl-gray-1\">&nbsp;</h4>\r\n</figcaption>\r\n</figure>\r\n<div class=\"page-section__block g12-xs g9-md g6-xl\">\r\n<h3 class=\"f5 cl-orange mb16\">DIGITAL IPSUM</h3>\r\n<p class=\"f4 cl-white mv16\">The decade that brought us&nbsp;<em>Star Trek</em>&nbsp;and&nbsp;<em>Doctor Who</em>&nbsp;also resurrected Cicero&mdash;or at least what used to be Cicero&mdash;in an attempt to make the days before computerized design a little less painstaking.</p>\r\n<p class=\"f4 cl-white mv16\">The French lettering company&nbsp;<a title=\"Wikipedia &ndash; Letraset\" href=\"https://en.wikipedia.org/wiki/Letraset\" target=\"_blank\" rel=\"noopener\">Letraset</a>&nbsp;manufactured a set of dry-transfer sheets which included the&nbsp;<em>lorem ipsum</em>&nbsp;filler text in a variety of fonts, sizes, and layouts. These sheets of lettering could be rubbed on anywhere and were quickly adopted by graphic artists, printers, architects, and advertisers for their professional look and ease of use.</p>\r\n<p class=\"f4 cl-white mv16\">Aldus Corporation, which later merged with Adobe Systems, ushered&nbsp;<em>lorem ipsum</em>&nbsp;into the information age with its desktop publishing software&nbsp;<a title=\"Aldus PageMaker Software on Wikipedia\" href=\"https://en.wikipedia.org/wiki/Adobe_PageMaker\" target=\"_blank\" rel=\"noopener\">Aldus PageMaker</a>. The program came bundled with&nbsp;<em>lorem ipsum</em>&nbsp;dummy text for laying out page content, and other word processors like Microsoft Word followed suit. More recently the growth of web design has helped proliferate lorem ipsum across the internet as a placeholder for future text&mdash;and in some cases&nbsp;<a title=\"Lorem Oopsum: Instances of Dummy Text that went Live\" href=\"http://loremoopsum.tumblr.com/\" target=\"_blank\" rel=\"noopener\">the final content</a>&nbsp;(this is why we proofread, kids).</p>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"controversy\" class=\"page-section g\">\r\n<div class=\"gr\">\r\n<div class=\"page-section__header g12-xs g9-xl\">\r\n<h2 class=\"f1 cl-gray-1\"><a href=\"https://loremipsum.io/#controversy\">Controversy in the Design World</a></h2>\r\n<p class=\"f1 cl-white m0\">Some claim&nbsp;<em>lorem ipsum</em>&nbsp;threatens to promote design over content, while others defend its value in the process of planning.</p>\r\n</div>\r\n</div>\r\n<div class=\"gr\">\r\n<figure class=\"page-section__image g12-xs g3-md\"><img src=\"https://loremipsum.io/assets/images/lorem-ipsum-star-wars.jpg\" alt=\"Star Wars lorem ipsum\" />\r\n<figcaption>\r\n<div class=\"page-section__squiggle\">&nbsp;</div>\r\n<h4 class=\"page-section__caption f5 cl-gray-1\">STAR WARS LOREM IPSUM</h4>\r\n</figcaption>\r\n</figure>\r\n<div class=\"page-section__block g12-xs g9-md g6-xl\">\r\n<h3 class=\"f5 cl-orange mb16\">DESIGN OR (DIS)CONTENT</h3>\r\n<p class=\"f4 cl-white mv16\">Among design professionals, there\'s a bit of controversy surrounding the filler text. Controversy, as in&nbsp;<a title=\"Death to Lorem Ipsum\" href=\"https://www.lukew.com/ff/entry.asp?927\" target=\"_blank\" rel=\"noopener\">Death to Lorem Ipsum</a>.</p>\r\n<p class=\"f4 cl-white mv16\">The strength of&nbsp;<em>lorem ipsum</em>&nbsp;is its weakness: it doesn\'t communicate. To some, designing a website around placeholder text is unacceptable, akin to sewing a custom suit without taking measurements.&nbsp;<a title=\"Adaptive Path &ndash; Death to Lorem Ipsum &amp; Other Adventures in Content\" href=\"http://adaptivepath.org/ideas/death-to-lorem-ipsum-other-adventures-in-content/\" target=\"_blank\" rel=\"noopener\">Kristina Halvorson</a>&nbsp;notes:</p>\r\n<blockquote class=\"page-section__blockquote\">&ldquo;I&rsquo;ve heard the argument that &ldquo;lorem ipsum&rdquo; is effective in wireframing or design because it helps people focus on the actual layout, or color scheme, or whatever. What kills me here is that we&rsquo;re talking about creating a user experience that will (whether we like it or not) be DRIVEN by words. The entire structure of the page or app flow is FOR THE WORDS.&rdquo;</blockquote>\r\n<p class=\"f4 cl-white mv16\"><em>Lorem ipsum</em>&nbsp;is so ubiquitous because it is so versatile. Select how many paragraphs you want, copy, paste, and break the lines wherever it is convenient. Real copy doesn\'t work that way.</p>\r\n<p class=\"f4 cl-white mv16\">As front-end developer&nbsp;<a title=\"Smashing Magazine &ndash; Lorem Ipsum is Killing Your Designs\" href=\"https://www.smashingmagazine.com/2010/01/lorem-ipsum-killing-designs/\" target=\"_blank\" rel=\"noopener\">Kyle Fiedler put it</a>:</p>\r\n<blockquote class=\"page-section__blockquote\">&ldquo;When you are designing with Lorem Ipsum, you diminish the importance of the copy by lowering it to the same level as any other visual element. The text simply becomes another supporting role, serving to make other aspects more aesthetic. Instead of your design enhancing the meaning of the content, your content is enhancing your design.&rdquo;</blockquote>\r\n<p class=\"f4 cl-white mv16\">But despite zealous cries for the demise of&nbsp;<em>lorem ipsum</em>, others, such as&nbsp;<a title=\"Karen McGrane &ndash; In Defense of Lorem Ipsum\" href=\"https://karenmcgrane.com/2010/01/10/in-defense-of-lorem-ipsum/\" target=\"_blank\" rel=\"noopener\">Karen McGrane</a>, offer appeals for moderation:</p>\r\n<blockquote class=\"page-section__blockquote\">&ldquo;Lorem Ipsum doesn&rsquo;t exist because people think the content is meaningless window dressing, only there to be decorated by designers who can&rsquo;t be bothered to read. Lorem Ipsum exists because words are powerful. If you fill up your page with draft copy about your client&rsquo;s business, they will read it. They will comment on it. They will be inexorably drawn to it. Presented the wrong way, draft copy can send your design review off the rails.&rdquo;</blockquote>\r\n<p class=\"f4 cl-white mv16\">And that&rsquo;s why a 15th century typesetter might have scrambled a passage of Cicero; he wanted people to focus on his fonts, to imagine their own content on the pages. He wanted people to see, and to get them to see he had to keep them from reading.</p>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"when-to-use-lorem-ipsum\" class=\"page-section g\">\r\n<div class=\"gr\">&nbsp;</div>\r\n</section>', 0, 1, 1, '2020-07-28 07:35:16', '2020-07-28 07:39:44'),
(15, 3, 'Coming full circle, the internet\'s remixing of the now infamous lorem ipsum passage has officially elevated it to pop culture status.', 'coming-full-circle-the-internets-remixing-of-the-now-infamous-lorem-ipsum-passage-has-officially-elevated-it-to-pop-culture-status', 'coming-full-circle-the-internets-remixing-of-the-now-infamous-lorem-ipsum-passage-has-officially-elevated-it-to-pop-culture-status-2020-07-28-5f2029deda687.jpg', '<h3 class=\"f5 cl-orange mb16\">FORM OVER FUNCTION</h3>\r\n<p class=\"f4 cl-white mv16\">So when is it okay to use&nbsp;<em>lorem ipsum</em>? First,&nbsp;<em>lorem ipsum</em>&nbsp;works well for staging. It\'s like the props in a furniture store&mdash;filler text makes it look like someone is home. The same Wordpress template might eventually be home to a fitness blog, a photography website, or the online journal of a cupcake fanatic.&nbsp;<em>Lorem ipsum</em>&nbsp;helps them imagine what the lived-in website might look like.</p>\r\n<p class=\"f4 cl-white mv16\">Second, use&nbsp;<em>lorem ipsum</em>&nbsp;if you think the placeholder text will be too distracting. For specific projects, collaboration between copywriters and designers may be best, however, like Karen McGrane said, draft copy has a way of turning any meeting about layout decisions into a discussion about word choice. So don\'t be afraid to use&nbsp;<em>lorem ipsum</em>&nbsp;to keep everyone focused.</p>\r\n<p class=\"f4 cl-white mv16\">One word of caution: make sure your client knows that&nbsp;<em>lorem ipsum</em>&nbsp;is filler text. You don\'t want them wondering why you filled their website with a foreign language, and you certainly don\'t want anyone prematurely publishing it.</p>', 0, 1, 1, '2020-07-28 07:36:32', '2020-07-28 07:39:53'),
(16, 3, 'Below are the original Latin passages from which Lorem Ipsum was derived, paired with their 1914 translations by H. Rackham.', 'below-are-the-original-latin-passages-from-which-lorem-ipsum-was-derived-paired-with-their-1914-translations-by-h-rackham', 'below-are-the-original-latin-passages-from-which-lorem-ipsum-was-derived-paired-with-their-1914-translations-by-h-rackham-2020-07-28-5f202a270fe04.jpg', '<h3 class=\"f5 cl-orange mb16\">BECAUSE IT\'S THE INTERNET</h3>\r\n<p class=\"f4 cl-white mv16\">There was&nbsp;<a title=\"AIGA &ndash; The Chipotle Lorem Ipsum Bag\" href=\"http://designenvy.aiga.org/the-chipotle-lorem-ipsum-bag/\" target=\"_blank\" rel=\"noopener\">that time</a>&nbsp;artists at Sequence opted to hand-Sharpie the&nbsp;<em>lorem ipsum</em>&nbsp;passage on a line of paper bags they designed for Chipotle&mdash;the result being a mixture of avant-garde, inside joke, and Sharpie-stained tables. Those with an eye for detail may have caught a tribute to the classic text in an episode of&nbsp;<a title=\"AMC\'s Mad Men\" href=\"http://www.amc.com/shows/mad-men\" target=\"_blank\" rel=\"noopener\">Mad Men</a>&nbsp;(S6E1 around 1:18:55 for anyone that didn\'t). And here is a&nbsp;<em>lorem ipsum</em>&nbsp;<a title=\"Little Running Bear &ndash; Lorem Ipsum for Ever\" href=\"http://littlerunningbear.com/465/lorem-ipsum-for-ever/\" target=\"_blank\" rel=\"noopener\">tattoo</a>.</p>\r\n<p class=\"f4 cl-white mv16\">Of course, we\'d be remiss not to include the veritable cadre of&nbsp;<em>lorem ipsum</em>&nbsp;knock offs featuring:</p>\r\n<ul class=\"\">\r\n<li class=\"\">\r\n<p class=\"f4 cl-white mv8\"><a title=\"Bacon Ipsum\" href=\"https://baconipsum.com/\" target=\"_blank\" rel=\"noopener\">Bacon Ipsum</a>&nbsp;&ndash; Served all day. &ldquo;Bacon ipsum dolor amet chicken turducken spare ribs.&rdquo;</p>\r\n</li>\r\n<li class=\"\">\r\n<p class=\"f4 cl-white mv8\"><a title=\"Hipster Ipsum\" href=\"https://hipsum.co/\" target=\"_blank\" rel=\"noopener\">Hipster Ipsum</a>&nbsp;&ndash; In case you\'re in need of a &ldquo;shoreditch direct trade four dollar toast copper mug.&rdquo;</p>\r\n</li>\r\n<li class=\"\">\r\n<p class=\"f4 cl-white mv8\"><a title=\"Corporate Ipsum\" href=\"http://www.cipsum.com/\" target=\"_blank\" rel=\"noopener\">Corporate Ipsum</a>&nbsp;&ndash; &ldquo;Leveraging agile frameworks to provide a robust synopsis&rdquo; from eight to five.</p>\r\n</li>\r\n<li class=\"\">\r\n<p class=\"f4 cl-white mv8\"><a title=\"Legal Ipsum\" href=\"http://legalipsum.com/\" target=\"_blank\" rel=\"noopener\">Legal Ipsum</a>&nbsp;&ndash; Fully unlicensed legalese for those times you don\'t want to pay $400/hr.</p>\r\n</li>\r\n</ul>\r\n<p class=\"f4 cl-white mv16\">Not to mention,&nbsp;<a title=\"Cupcake Ipsum\" href=\"http://www.cupcakeipsum.com/\" target=\"_blank\" rel=\"noopener\">Cupcake Ipsum</a>,&nbsp;<a title=\"Bob Ross Ipsum\" href=\"http://www.bobrosslipsum.com/\" target=\"_blank\" rel=\"noopener\">Bob Ross Ipsum</a>&nbsp;(&ldquo;happy little clouds&rdquo;), and the furry&nbsp;<a title=\"Cat Ipsum\" href=\"http://www.catipsum.com/\" target=\"_blank\" rel=\"noopener\">Cat Ipsum</a>. And in case that\'s not enough, check out our very own&nbsp;<a title=\"Ultimate List of Lorem Ipsum Generators\" href=\"https://loremipsum.io/ultimate-list-of-lorem-ipsum-generators/\" target=\"_blank\" rel=\"noopener\">Ultimate List of Lorem Ipsum Generators</a>.</p>\r\n<p class=\"f4 cl-white mv16\">So there you have it.&nbsp;<em>Lorem ipsum</em>: the nonsense words unable to fully escape meaning.</p>', 1, 1, 1, '2020-07-28 07:37:45', '2020-07-28 07:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 6, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 3, 6, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 3, 1, NULL, NULL),
(11, 4, 6, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 4, 2, NULL, NULL),
(14, 4, 1, NULL, NULL),
(15, 5, 6, NULL, NULL),
(16, 5, 3, NULL, NULL),
(17, 5, 1, NULL, NULL),
(18, 6, 6, NULL, NULL),
(19, 6, 3, NULL, NULL),
(20, 6, 2, NULL, NULL),
(21, 6, 1, NULL, NULL),
(22, 7, 8, NULL, NULL),
(23, 7, 7, NULL, NULL),
(24, 7, 6, NULL, NULL),
(25, 7, 5, NULL, NULL),
(26, 7, 3, NULL, NULL),
(27, 7, 2, NULL, NULL),
(28, 7, 1, NULL, NULL),
(29, 8, 8, NULL, NULL),
(30, 8, 7, NULL, NULL),
(31, 8, 6, NULL, NULL),
(32, 8, 5, NULL, NULL),
(33, 8, 3, NULL, NULL),
(34, 8, 2, NULL, NULL),
(35, 8, 1, NULL, NULL),
(36, 9, 8, NULL, NULL),
(37, 9, 5, NULL, NULL),
(38, 9, 4, NULL, NULL),
(39, 9, 3, NULL, NULL),
(40, 9, 1, NULL, NULL),
(41, 10, 1, NULL, NULL),
(42, 11, 8, NULL, NULL),
(43, 11, 6, NULL, NULL),
(44, 11, 5, NULL, NULL),
(45, 11, 4, NULL, NULL),
(46, 11, 3, NULL, NULL),
(47, 11, 2, NULL, NULL),
(48, 11, 1, NULL, NULL),
(49, 12, 8, NULL, NULL),
(50, 12, 7, NULL, NULL),
(51, 12, 6, NULL, NULL),
(52, 12, 5, NULL, NULL),
(53, 12, 4, NULL, NULL),
(54, 12, 3, NULL, NULL),
(55, 12, 2, NULL, NULL),
(56, 12, 1, NULL, NULL),
(57, 13, 8, NULL, NULL),
(58, 13, 7, NULL, NULL),
(59, 13, 6, NULL, NULL),
(60, 13, 5, NULL, NULL),
(61, 13, 3, NULL, NULL),
(62, 13, 2, NULL, NULL),
(63, 13, 1, NULL, NULL),
(64, 14, 8, NULL, NULL),
(65, 14, 7, NULL, NULL),
(66, 14, 6, NULL, NULL),
(67, 14, 5, NULL, NULL),
(68, 14, 4, NULL, NULL),
(69, 14, 3, NULL, NULL),
(70, 14, 2, NULL, NULL),
(71, 14, 1, NULL, NULL),
(72, 15, 8, NULL, NULL),
(73, 15, 7, NULL, NULL),
(74, 15, 5, NULL, NULL),
(75, 15, 4, NULL, NULL),
(76, 15, 3, NULL, NULL),
(77, 15, 2, NULL, NULL),
(78, 15, 1, NULL, NULL),
(79, 16, 8, NULL, NULL),
(80, 16, 7, NULL, NULL),
(81, 16, 5, NULL, NULL),
(82, 16, 4, NULL, NULL),
(83, 16, 3, NULL, NULL),
(84, 16, 2, NULL, NULL),
(85, 16, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 9, 1, NULL, NULL),
(4, 10, 1, NULL, NULL),
(5, 8, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 16, 1, NULL, NULL),
(8, 15, 1, NULL, NULL),
(9, 13, 1, NULL, NULL),
(10, 2, 1, NULL, NULL),
(11, 4, 1, NULL, NULL),
(12, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 3, '51471476', 'github', '2020-07-28 07:26:57', '2020-07-28 07:26:57'),
(2, 4, '110515701627362537931', 'google', '2020-07-28 07:40:54', '2020-07-28 07:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'lailyakter138@gmail.com', '2020-07-28 07:40:31', '2020-07-28 07:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dish', 'dish', '2020-07-28 06:55:14', '2020-07-28 06:55:14'),
(2, 'Menu', 'menu', '2020-07-28 06:55:31', '2020-07-28 06:55:31'),
(3, 'Food', 'food', '2020-07-28 06:55:40', '2020-07-28 06:55:40'),
(4, 'Sweet', 'sweet', '2020-07-28 06:55:53', '2020-07-28 06:55:53'),
(5, 'Tasty', 'tasty', '2020-07-28 06:56:06', '2020-07-28 06:56:06'),
(6, 'Drinks', 'drinks', '2020-07-28 06:56:23', '2020-07-28 06:56:23'),
(7, 'Desserts', 'desserts', '2020-07-28 06:56:36', '2020-07-28 06:56:36'),
(8, 'Delicious', 'delicious', '2020-07-28 06:56:58', '2020-07-28 06:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `name`, `email`, `password`, `image`, `about`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'MD. Admin', 'laiyakter138@gmail.com', '$2y$10$FWaQnbIY3Lty6MqWn1alKOIk.Rp4uHzK0ZOP6fpaf.FF/arx9CQZu', 'md-admin-2020-07-28-5f2026997dba1.jpg', NULL, NULL, NULL, '2020-07-27 13:24:07', '2020-07-28 07:22:37'),
(2, 2, 'author', 'MD. Author', 'author@blog.com', '$2y$10$mDGkNqNkihuQDTvI1tqwnuDXijuqeqa7N/mfHKmDQEncKAnI8ZXqe', 'default.png', NULL, NULL, NULL, '2020-07-08 13:24:10', NULL),
(3, 2, NULL, 'Laily Akter', 'lailyakter138@gmail.com', NULL, 'laily-akter-2020-07-28-5f20282e070c6.jpg', NULL, '2020-07-28 07:28:24', 'Hag1wsIOsZWACfzsBUv0KCVyoKgilEdbeR4dvBQY4g8jYgQNjuDwLfvcn0R3', '2020-07-28 07:26:57', '2020-07-28 07:29:21'),
(4, 2, NULL, 'laily akter', 'akterlaily213@gmail.com', NULL, 'default.png', NULL, '2020-07-28 07:41:28', 'CTj45psOdNLTFhFMUpSRSNRxG1ndRQX5KuT8o7C3lQB505dIgzacl3dpJZcR', '2020-07-28 07:40:54', '2020-07-28 07:41:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
