-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 28 Juillet 2017 à 16:10
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `SODEL`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Societe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cp` int(11) NOT NULL,
  `Ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tel` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Approuvé` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `Commercial`, `Societe`, `Contact`, `Adresse`, `Cp`, `Ville`, `Tel`, `Email`, `Approuvé`, `created_at`, `updated_at`) VALUES
(2, '2', 'SODEL', 'GRP Sodel', 'Auch', 32000, 'Auch', 111111111, 'joel@sodelpro.com', 'Approuved', '2017-07-19 15:51:12', '2017-07-28 10:18:27'),
(5, '4', 'Simplon', 'M. KAPPES', 'Carca', 32000, 'Auch', 697989898, 'marcofrosi@gmail.com', 'Yes', '2017-07-20 14:31:24', NULL),
(6, '4', 'Test3', 'M. Orel', 'Paris', 75000, 'Paris', 697989898, 'OrelChirot@gmail.com', 'Oui', '2017-07-20 14:32:42', NULL),
(12, '9', 'Records', 'M. Morel', 'Saint-Blancard', 32140, 'Saint-Blancard', 643033133, 'Yayaya@Yoyoyo.yoa', NULL, '2017-07-25 07:44:38', NULL),
(13, '12', 'Test 1', 'Suzanne', 'Halle', 32430, 'Cologne', 2123545489, 'creditagricole@test.fr', NULL, '2017-07-26 10:01:44', NULL),
(19, '10', 'zssodel', 'GRP Sodel', '13 rue koko', 13, 'Marseille', 13131313, 'Sodel@sodel', NULL, '2017-07-28 11:47:10', '2017-07-28 11:49:54');

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-07-18 10:17:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(110, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.188:8000/admin/logs/delete/109', 'Delete data 192.168.1.188 at Logs', 4, '2017-07-20 15:38:10', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-20 12:27:13', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-20 12:34:29', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 05:22:06', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Commercial Clients at Menu Management', 2, '2017-07-21 07:51:20', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-21 08:00:31', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:00:50', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:01:55', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 08:02:08', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-21 08:05:40', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 08:05:42', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-21 08:06:30', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:06:50', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:08:11', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:08:13', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:10:00', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:10:02', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:10:21', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:11:28', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:11:30', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:11:48', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:12:03', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 08:12:06', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 08:18:03', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 08:18:09', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Commercial Clients at Menu Management', 2, '2017-07-21 09:27:03', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Commercial Clients at Menu Management', 2, '2017-07-21 09:29:58', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Commercial Clients at Menu Management', 2, '2017-07-21 09:30:44', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-21 09:34:31', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-21 09:34:41', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-21 09:35:13', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 09:35:20', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-21 10:20:11', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Commercial Clients at Menu Management', 2, '2017-07-21 10:23:45', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/Commande17/add-save', 'Add New Data  at TestCommande', 2, '2017-07-21 12:42:46', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/Commande17/add-save', 'Add New Data  at TestCommande', 2, '2017-07-21 12:44:58', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-22 04:46:45', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-22 12:05:11', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-22 12:06:24', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-22 12:06:27', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-22 13:01:58', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-22 13:02:05', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-22 13:03:06', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Morel@Cisse.com login with IP Address 127.0.0.1', 4, '2017-07-22 13:03:29', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', NULL, '2017-07-23 05:09:34', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-23 05:09:42', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Liste des Clients at Menu Management', 2, '2017-07-23 05:32:55', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 05:52:54', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Détail at Menu Management', 2, '2017-07-23 05:53:42', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Rendez vous at Menu Management', 2, '2017-07-23 05:56:03', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Mémo at Menu Management', 2, '2017-07-23 06:01:17', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Clients at Menu Management', 2, '2017-07-23 06:02:07', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 06:02:40', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Détails Commandes at Menu Management', 2, '2017-07-23 06:03:07', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Commerciaux at Menu Management', 2, '2017-07-23 06:03:50', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Rendez vous at Menu Management', 2, '2017-07-23 06:04:19', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Stock at Menu Management', 2, '2017-07-23 06:05:24', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Produits at Menu Management', 2, '2017-07-23 06:05:59', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Tous les memos at Menu Management', 2, '2017-07-23 06:06:58', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-23 06:10:05', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-23 06:10:12', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Users at Menu Management', 2, '2017-07-23 06:11:23', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Liste des Clients at Menu Management', 2, '2017-07-23 06:11:32', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Stocks at Menu Management', 2, '2017-07-23 06:12:06', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/13', 'Delete data Produits at Menu Management', 2, '2017-07-23 06:12:46', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/18', 'Delete data Produits at Module Generator', 2, '2017-07-23 06:13:19', NULL),
(176, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'marco@marco.com login with IP Address 192.168.0.38', 2, '2017-07-23 06:25:52', NULL),
(177, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/users/add-save', 'Add New Data Admin at Users', 2, '2017-07-23 06:37:49', NULL),
(178, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 06:38:05', NULL),
(179, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/stocks', 'Try view the data :name at Stocks', 8, '2017-07-23 06:38:16', NULL),
(180, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Clients', 'Try view the data :name at Clients', 8, '2017-07-23 06:38:28', NULL),
(181, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Clients', 'Try view the data :name at Clients', 8, '2017-07-23 06:38:33', NULL),
(182, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/stocks', 'Try view the data :name at Stocks', 8, '2017-07-23 06:40:11', NULL),
(183, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Liste des Produits at Menu Management', 2, '2017-07-23 06:41:02', NULL),
(184, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/stocks', 'Try view the data :name at Stocks', 8, '2017-07-23 06:41:21', NULL),
(185, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Clients', 'Try view the data :name at Clients', 8, '2017-07-23 06:42:30', NULL),
(186, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/27', 'Update data Clients at Menu Management', 2, '2017-07-23 06:43:09', NULL),
(187, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Clients', 'Try view the data :name at Clients', 8, '2017-07-23 06:43:13', NULL),
(188, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/36', 'Delete data Clients at Menu Management', 2, '2017-07-23 06:48:17', NULL),
(189, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/5', 'Delete data Produits at Menu Management', 2, '2017-07-23 06:49:26', NULL),
(190, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/37', 'Delete data Clients. at Menu Management', 2, '2017-07-23 06:49:56', NULL),
(191, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/38', 'Delete data Commandes at Menu Management', 2, '2017-07-23 06:50:09', NULL),
(192, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/40', 'Delete data Liste des Commandes at Menu Management', 2, '2017-07-23 06:50:18', NULL),
(193, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/39', 'Delete data Détail Commande at Menu Management', 2, '2017-07-23 06:50:25', NULL),
(194, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/44', 'Delete data Liste des RDV at Menu Management', 2, '2017-07-23 06:50:39', NULL),
(195, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/43', 'Delete data Liste des Memo at Menu Management', 2, '2017-07-23 06:50:46', NULL),
(196, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/48', 'Delete data RDV at Menu Management', 2, '2017-07-23 06:50:53', NULL),
(197, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/49', 'Delete data Stocks at Menu Management', 2, '2017-07-23 06:51:00', NULL),
(198, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/46', 'Delete data memo at Menu Management', 2, '2017-07-23 06:51:06', NULL),
(199, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/41', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 06:51:13', NULL),
(200, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/42', 'Delete data Liste des Commerciaux at Menu Management', 2, '2017-07-23 06:51:19', NULL),
(201, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/45', 'Delete data Listes des Clients at Menu Management', 2, '2017-07-23 06:51:25', NULL),
(202, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/47', 'Delete data Produits at Menu Management', 2, '2017-07-23 06:51:31', NULL),
(203, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/50', 'Delete data TestCommande at Menu Management', 2, '2017-07-23 06:51:38', NULL),
(204, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/users', 'Try view the data :name at Users', 8, '2017-07-23 06:51:47', NULL),
(205, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures', 'Try view the data :name at Liste des Commandes en detail', 8, '2017-07-23 06:51:51', NULL),
(206, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV27', 'Try view the data :name at Liste des RDV', 8, '2017-07-23 06:51:53', NULL),
(207, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo26', 'Try view the data :name at Liste des Memo', 8, '2017-07-23 06:51:56', NULL),
(208, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/stocks', 'Try view the data :name at Stocks', 8, '2017-07-23 06:52:03', NULL),
(209, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/module_generator/delete/20', 'Delete data Clients. at Module Generator', 2, '2017-07-23 06:53:13', NULL),
(210, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/module_generator/delete/17', 'Delete data TestCommande at Module Generator', 2, '2017-07-23 06:53:34', NULL),
(211, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes', 'Try view the data :name at Liste des Commandes', 8, '2017-07-23 06:55:30', NULL),
(212, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures', 'Try view the data :name at Liste des Commandes en detail', 8, '2017-07-23 06:55:32', NULL),
(213, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux', 'Try view the data :name at Liste des Commerciaux', 8, '2017-07-23 06:55:34', NULL),
(214, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28', 'Try view the data :name at Commandes', 8, '2017-07-23 06:56:50', NULL),
(215, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures', 'Try view the data :name at Liste des Commandes en detail', 8, '2017-07-23 07:02:43', NULL),
(216, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 07:03:08', NULL),
(217, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 07:03:11', NULL),
(218, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 07:03:31', NULL),
(219, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'test@test.fr login with IP Address 192.168.0.48', 7, '2017-07-23 07:03:48', NULL),
(220, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV', 'Try view the data :name at RDV', 7, '2017-07-23 07:04:00', NULL),
(221, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 07:09:01', NULL),
(222, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo', 'Try view the data :name at memo', 7, '2017-07-23 07:10:48', NULL),
(223, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo', 'Try view the data :name at memo', 7, '2017-07-23 07:10:55', NULL),
(224, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo', 'Try view the data :name at memo', 7, '2017-07-23 07:15:27', NULL),
(225, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo', 'Try view the data :name at memo', 7, '2017-07-23 07:15:35', NULL),
(226, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV', 'Try view the data :name at RDV', 7, '2017-07-23 07:15:37', NULL),
(227, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/9', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:29:16', NULL),
(228, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/10', 'Delete data RDV at Menu Management', 2, '2017-07-23 07:29:20', NULL),
(229, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/14', 'Delete data Détail Commande at Menu Management', 2, '2017-07-23 07:29:23', NULL),
(230, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/16', 'Delete data Liste des Commerciaux at Menu Management', 2, '2017-07-23 07:29:27', NULL),
(231, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/17', 'Delete data Liste des Commandes at Menu Management', 2, '2017-07-23 07:29:31', NULL),
(232, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/18', 'Delete data Listes des Clients at Menu Management', 2, '2017-07-23 07:29:34', NULL),
(233, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/22', 'Delete data memo at Menu Management', 2, '2017-07-23 07:29:38', NULL),
(234, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/23', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 07:29:42', NULL),
(235, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/24', 'Delete data Liste des Memo at Menu Management', 2, '2017-07-23 07:29:45', NULL),
(236, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/25', 'Delete data Liste des RDV at Menu Management', 2, '2017-07-23 07:29:48', NULL),
(237, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/11', 'Delete data Commercial Clients at Menu Management', 2, '2017-07-23 07:29:52', NULL),
(238, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/2', 'Delete data Users at Menu Management', 2, '2017-07-23 07:29:55', NULL),
(239, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/3', 'Delete data Liste des Clients at Menu Management', 2, '2017-07-23 07:29:58', NULL),
(240, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/4', 'Delete data Stocks at Menu Management', 2, '2017-07-23 07:30:02', NULL),
(241, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/19', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:30:11', NULL),
(242, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/20', 'Delete data Détail at Menu Management', 2, '2017-07-23 07:30:14', NULL),
(243, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/21', 'Delete data Rendez vous at Menu Management', 2, '2017-07-23 07:30:19', NULL),
(244, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/26', 'Delete data Mémo at Menu Management', 2, '2017-07-23 07:30:22', NULL),
(245, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/6', 'Delete data Clients at Menu Management', 2, '2017-07-23 07:30:25', NULL),
(246, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/7', 'Delete data Produits at Menu Management', 2, '2017-07-23 07:30:29', NULL),
(247, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/8', 'Delete data Stocks at Menu Management', 2, '2017-07-23 07:30:33', NULL),
(248, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/66', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:30:37', NULL),
(249, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/67', 'Delete data memo at Menu Management', 2, '2017-07-23 07:30:41', NULL),
(250, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/68', 'Delete data RDV at Menu Management', 2, '2017-07-23 07:30:44', NULL),
(251, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/69', 'Delete data Détail Commande at Menu Management', 2, '2017-07-23 07:36:43', NULL),
(252, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/70', 'Delete data Liste des Commandes at Menu Management', 2, '2017-07-23 07:36:48', NULL),
(253, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/71', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 07:36:52', NULL),
(254, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/72', 'Delete data Liste des Commerciaux at Menu Management', 2, '2017-07-23 07:36:56', NULL),
(255, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/73', 'Delete data Liste des Memo at Menu Management', 2, '2017-07-23 07:37:00', NULL),
(256, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/74', 'Delete data Liste des RDV at Menu Management', 2, '2017-07-23 07:37:04', NULL),
(257, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/75', 'Delete data Listes des Clients at Menu Management', 2, '2017-07-23 07:37:09', NULL),
(258, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/1', 'Delete data Users at Menu Management', 2, '2017-07-23 07:37:13', NULL),
(259, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/33', 'Delete data Produits at Menu Management', 2, '2017-07-23 07:37:24', NULL),
(260, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/27', 'Delete data Clients at Menu Management', 2, '2017-07-23 07:37:28', NULL),
(261, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/30', 'Delete data Commerciaux at Menu Management', 2, '2017-07-23 07:37:32', NULL),
(262, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/31', 'Delete data Rendez vous at Menu Management', 2, '2017-07-23 07:37:36', NULL),
(263, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/28', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:37:40', NULL),
(264, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/51', 'Delete data Users at Menu Management', 2, '2017-07-23 07:37:45', NULL),
(265, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/52', 'Delete data Détail Commande at Menu Management', 2, '2017-07-23 07:37:49', NULL),
(266, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/53', 'Delete data Liste des Commandes at Menu Management', 2, '2017-07-23 07:37:53', NULL),
(267, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/54', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 07:37:58', NULL),
(268, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/55', 'Delete data Liste des Commerciaux at Menu Management', 2, '2017-07-23 07:38:02', NULL),
(269, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/56', 'Delete data Liste des Memo at Menu Management', 2, '2017-07-23 07:38:05', NULL),
(270, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/57', 'Delete data Liste des RDV at Menu Management', 2, '2017-07-23 07:38:10', NULL),
(271, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/58', 'Delete data Listes des Clients at Menu Management', 2, '2017-07-23 07:38:15', NULL),
(272, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/59', 'Delete data Clients at Menu Management', 2, '2017-07-23 07:38:19', NULL),
(273, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/60', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:38:23', NULL),
(274, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/61', 'Delete data memo at Menu Management', 2, '2017-07-23 07:38:27', NULL),
(275, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/62', 'Delete data Produits at Menu Management', 2, '2017-07-23 07:38:30', NULL),
(276, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/63', 'Delete data RDV at Menu Management', 2, '2017-07-23 07:38:37', NULL),
(277, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/64', 'Delete data Stocks at Menu Management', 2, '2017-07-23 07:38:41', NULL),
(278, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Clients at Menu Management', 2, '2017-07-23 07:46:51', NULL),
(279, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data client at Menu Management', 2, '2017-07-23 07:47:36', NULL),
(280, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV27', 'Try view the data :name at Liste des RDV', 7, '2017-07-23 07:50:23', NULL),
(281, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures', 'Try view the data :name at Liste des Commandes en detail', 7, '2017-07-23 07:50:51', NULL),
(282, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures', 'Try view the data :name at Liste des Commandes en detail', 7, '2017-07-23 07:50:55', NULL),
(283, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux', 'Try view the data :name at Liste des Commerciaux', 7, '2017-07-23 07:50:56', NULL),
(284, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo', 'Try view the data :name at memo', 7, '2017-07-23 07:50:58', NULL),
(285, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV', 'Try view the data :name at RDV', 7, '2017-07-23 07:51:04', NULL),
(286, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-23 07:51:36', NULL),
(287, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 07:51:38', NULL),
(288, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data revolution at Menu Management', 8, '2017-07-23 07:53:28', NULL),
(289, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 07:53:41', NULL),
(290, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'test@test.fr login with IP Address 192.168.0.48', 7, '2017-07-23 07:53:58', NULL),
(291, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/76', 'Delete data Clients at Menu Management', 2, '2017-07-23 07:56:29', NULL),
(292, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/77', 'Delete data Commandes at Menu Management', 2, '2017-07-23 07:56:33', NULL),
(293, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/78', 'Delete data Détail Commande at Menu Management', 2, '2017-07-23 07:56:37', NULL),
(294, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/79', 'Delete data Liste des Commandes at Menu Management', 2, '2017-07-23 07:56:40', NULL),
(295, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/80', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 07:56:43', NULL),
(296, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/81', 'Delete data Liste des Commerciaux at Menu Management', 2, '2017-07-23 07:56:47', NULL),
(297, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/82', 'Delete data Liste des Memo at Menu Management', 2, '2017-07-23 07:56:50', NULL),
(298, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/83', 'Delete data Liste des RDV at Menu Management', 2, '2017-07-23 07:56:53', NULL),
(299, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/84', 'Delete data Listes des Clients at Menu Management', 2, '2017-07-23 07:56:56', NULL),
(300, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/85', 'Delete data memo at Menu Management', 2, '2017-07-23 07:57:04', NULL),
(301, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/86', 'Delete data Produits at Menu Management', 2, '2017-07-23 07:57:07', NULL),
(302, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/87', 'Delete data RDV at Menu Management', 2, '2017-07-23 07:57:10', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(303, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/88', 'Delete data Stocks at Menu Management', 2, '2017-07-23 07:57:14', NULL),
(304, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/89', 'Delete data Users at Menu Management', 2, '2017-07-23 07:57:17', NULL),
(305, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/clients/add-save', 'Add New Data  at Clients', 7, '2017-07-23 08:11:22', NULL),
(306, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/memo/add-save', 'Add New Data  at memo', 7, '2017-07-23 08:19:18', NULL),
(307, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/RDV/add-save', 'Add New Data 1 at RDV', 7, '2017-07-23 08:27:35', NULL),
(308, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/module_generator/delete/19', 'Delete data Détail at Module Generator', 2, '2017-07-23 08:32:09', NULL),
(309, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 08:36:22', NULL),
(310, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/91', 'Delete data Clients at Menu Management', 2, '2017-07-23 08:36:39', NULL),
(311, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Produits at Menu Management', 2, '2017-07-23 08:37:08', NULL),
(312, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data dét at Menu Management', 2, '2017-07-23 08:38:20', NULL),
(313, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/102', 'Update data Détail at Menu Management', 2, '2017-07-23 08:38:44', NULL),
(314, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/92', 'Update data Commandes at Menu Management', 2, '2017-07-23 08:39:08', NULL),
(315, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/92', 'Update data Commandes at Menu Management', 2, '2017-07-23 08:39:31', NULL),
(316, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures28', 'Try view the data :name at Detail', 7, '2017-07-23 08:39:40', NULL),
(317, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures28', 'Try view the data :name at Detail', 7, '2017-07-23 08:40:46', NULL),
(318, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures28', 'Try view the data :name at Detail', 7, '2017-07-23 08:40:51', NULL),
(319, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/factures28', 'Try view the data :name at Detail', 7, '2017-07-23 08:40:56', NULL),
(320, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/98', 'Delete data Users at Menu Management', 2, '2017-07-23 08:42:41', NULL),
(321, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 08:43:06', NULL),
(322, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/92', 'Delete data Commandes at Menu Management', 2, '2017-07-23 08:43:18', NULL),
(323, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/103', 'Delete data Clients at Menu Management', 2, '2017-07-23 08:43:29', NULL),
(324, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/104', 'Delete data Commandes at Menu Management', 2, '2017-07-23 08:43:38', NULL),
(325, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/105', 'Delete data Detail at Menu Management', 2, '2017-07-23 08:43:45', NULL),
(326, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/93', 'Update data Post it at Menu Management', 2, '2017-07-23 08:44:33', NULL),
(327, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Produits at Menu Management', 2, '2017-07-23 08:45:00', NULL),
(328, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Stocks at Menu Management', 2, '2017-07-23 08:45:16', NULL),
(329, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/94', 'Delete data Produits at Menu Management', 2, '2017-07-23 08:45:33', NULL),
(330, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/96', 'Delete data Stocks at Menu Management', 2, '2017-07-23 08:45:42', NULL),
(331, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-23 08:46:37', NULL),
(332, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 08:46:43', NULL),
(333, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 08:48:20', NULL),
(334, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 08:48:22', NULL),
(335, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes/add-save', 'Add New Data 1 at Liste des Commandes', 8, '2017-07-23 08:51:19', NULL),
(336, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 08:57:37', NULL),
(337, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 08:57:40', NULL),
(338, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-23 08:57:53', NULL),
(339, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'test@test.fr login with IP Address 192.168.0.48', 7, '2017-07-23 08:57:58', NULL),
(340, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/add-save', 'Add New Data  at Commandes', 7, '2017-07-23 11:17:48', NULL),
(341, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:31:28', NULL),
(342, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:32:34', NULL),
(343, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:32:47', NULL),
(344, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:33:38', NULL),
(345, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:34:34', NULL),
(346, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/edit-save/1', 'Update data  at Commandes', 7, '2017-07-23 11:58:33', NULL),
(347, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/module_generator/delete/29', 'Delete data Détail at Module Generator', 2, '2017-07-23 12:05:24', NULL),
(348, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-23 12:27:15', NULL),
(349, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.0.48', 8, '2017-07-23 12:27:20', NULL),
(350, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux/add-save', 'Add New Data revolution at Liste des Commerciaux', 8, '2017-07-23 12:44:52', NULL),
(351, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux/add-save', 'Add New Data lerital32 at Liste des Commerciaux', 8, '2017-07-23 12:46:19', NULL),
(352, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux/delete/10', 'Delete data lerital32 at Liste des Commerciaux', 8, '2017-07-23 12:46:28', NULL),
(353, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Commerciaux/delete/9', 'Delete data revolution at Liste des Commerciaux', 8, '2017-07-23 12:46:33', NULL),
(354, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/90', 'Delete data revolution at Menu Management', 2, '2017-07-23 13:11:11', NULL),
(355, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Produits at Menu Management', 2, '2017-07-23 13:11:35', NULL),
(356, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Produits at Menu Management', 2, '2017-07-23 13:11:57', NULL),
(357, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Stocks at Menu Management', 2, '2017-07-23 13:12:11', NULL),
(358, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Commandes at Menu Management', 2, '2017-07-23 13:12:48', NULL),
(359, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Clients at Menu Management', 2, '2017-07-23 13:13:01', NULL),
(360, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Commerciaux at Menu Management', 2, '2017-07-23 13:13:19', NULL),
(361, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Mémo at Menu Management', 2, '2017-07-23 13:13:38', NULL),
(362, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Rendez vous at Menu Management', 2, '2017-07-23 13:13:51', NULL),
(363, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Add New Data Détail at Menu Management', 2, '2017-07-23 13:14:06', NULL),
(364, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/110', 'Delete data Liste des Commandes en detail at Menu Management', 2, '2017-07-23 13:15:13', NULL),
(365, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/109', 'Update data Liste des Commandes at Menu Management', 2, '2017-07-23 13:15:44', NULL),
(366, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/111', 'Update data Liste des Commerciaux at Menu Management', 2, '2017-07-23 13:16:14', NULL),
(367, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/112', 'Update data Liste des Memo at Menu Management', 2, '2017-07-23 13:16:41', NULL),
(368, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/113', 'Update data Liste des RDV at Menu Management', 2, '2017-07-23 13:17:06', NULL),
(369, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/114', 'Update data Listes des Clients at Menu Management', 2, '2017-07-23 13:17:31', NULL),
(370, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/115', 'Delete data Produits at Menu Management', 2, '2017-07-23 13:17:40', NULL),
(371, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/delete/116', 'Delete data Stocks at Menu Management', 2, '2017-07-23 13:17:47', NULL),
(372, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/statistic_builder/add-save', 'Add New Data Admin at Statistic Builder', 2, '2017-07-23 13:18:49', NULL),
(373, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/statistic_builder/edit-save/2', 'Update data Admin at Statistic Builder', 2, '2017-07-23 13:23:09', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.fr login with IP Address 127.0.0.1', 7, '2017-07-23 18:58:35', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-23 19:00:14', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marco@marco.com login with IP Address 127.0.0.1', 2, '2017-07-23 19:00:21', NULL),
(377, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.160', 7, '2017-07-24 05:28:59', NULL),
(378, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 05:29:28', NULL),
(379, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.160', 8, '2017-07-24 05:30:01', NULL),
(380, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 05:36:21', NULL),
(381, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 05:36:38', NULL),
(382, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 05:36:38', NULL),
(383, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 05:37:52', NULL),
(384, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 05:38:24', NULL),
(385, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 05:38:34', NULL),
(386, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 05:38:39', NULL),
(387, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.188', 7, '2017-07-24 05:39:11', NULL),
(388, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 05:39:46', NULL),
(389, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 05:40:54', NULL),
(390, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 05:42:24', NULL),
(391, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 05:47:56', NULL),
(392, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 05:49:51', NULL),
(393, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 05:50:07', NULL),
(394, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.170', 8, '2017-07-24 05:50:16', NULL),
(395, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 05:53:46', NULL),
(396, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 05:54:31', NULL),
(397, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 05:56:15', NULL),
(398, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 05:56:37', NULL),
(399, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 05:57:08', NULL),
(400, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.188', 8, '2017-07-24 05:57:20', NULL),
(401, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 05:59:22', NULL),
(402, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 05:59:27', NULL),
(403, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 06:02:38', NULL),
(404, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 06:02:42', NULL),
(405, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Add New Data Marcotest at Liste des Commerciaux', 8, '2017-07-24 06:03:41', NULL),
(406, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/delete/9', 'Delete data Marcotest at Liste des Commerciaux', 8, '2017-07-24 06:04:01', NULL),
(407, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/delete-image', 'Delete the image of Morel at Liste des Commerciaux', 8, '2017-07-24 06:04:08', NULL),
(408, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/edit-save/4', 'Update data Morel at Liste des Commerciaux', 8, '2017-07-24 06:04:27', NULL),
(409, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/delete-image', 'Delete the image of Morel at Liste des Commerciaux', 8, '2017-07-24 06:04:36', NULL),
(410, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/edit-save/4', 'Update data Morel at Liste des Commerciaux', 8, '2017-07-24 06:04:43', NULL),
(411, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 06:37:23', NULL),
(412, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.170', 8, '2017-07-24 06:37:46', NULL),
(413, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 06:58:08', NULL),
(414, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.160', 7, '2017-07-24 06:58:18', NULL),
(415, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 07:02:08', NULL),
(416, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 07:02:14', NULL),
(417, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 07:09:29', NULL),
(418, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 07:09:33', NULL),
(419, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 07:10:25', NULL),
(420, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 07:10:30', NULL),
(421, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 07:11:16', NULL),
(422, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/users/delete-image', 'Delete the image of Mouad at Users', 5, '2017-07-24 07:11:52', NULL),
(423, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 07:11:54', NULL),
(424, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/5', 'Update data Mouad at Users', 5, '2017-07-24 07:12:06', NULL),
(425, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/5', 'Update data Mouad at Users', 5, '2017-07-24 07:12:11', NULL),
(426, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 07:12:15', NULL),
(427, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 07:12:17', NULL),
(428, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 07:14:29', NULL),
(429, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 07:14:33', NULL),
(430, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 07:18:17', NULL),
(431, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 07:18:21', NULL),
(432, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 07:20:15', NULL),
(433, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 07:20:18', NULL),
(434, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 07:24:04', NULL),
(435, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.170', 8, '2017-07-24 07:24:19', NULL),
(436, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 07:27:11', NULL),
(437, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 07:27:16', NULL),
(438, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 07:35:51', NULL),
(439, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 07:35:55', NULL),
(440, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 07:56:57', NULL),
(441, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 07:57:01', NULL),
(442, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 07:58:00', NULL),
(443, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 07:58:04', NULL),
(444, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 07:58:49', NULL),
(445, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 07:58:53', NULL),
(446, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 08:01:25', NULL),
(447, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 08:01:31', NULL),
(448, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 08:04:17', NULL),
(449, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 08:04:24', NULL),
(450, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 08:06:27', NULL),
(451, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 08:06:31', NULL),
(452, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 08:06:57', NULL),
(453, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 08:07:00', NULL),
(454, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 08:07:36', NULL),
(455, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 08:07:42', NULL),
(456, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 08:07:48', NULL),
(457, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 08:07:51', NULL),
(458, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 08:08:13', NULL),
(459, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 08:08:16', NULL),
(460, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 08:09:37', NULL),
(461, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 08:09:43', NULL),
(462, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 08:30:50', NULL),
(463, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.160', 7, '2017-07-24 09:35:21', NULL),
(464, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/users/delete-image', 'Try delete the image of test data at Users', 7, '2017-07-24 09:36:47', NULL),
(465, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 09:36:57', NULL),
(466, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 09:37:06', NULL),
(467, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 09:37:55', NULL),
(468, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.160', 8, '2017-07-24 09:38:00', NULL),
(469, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:38:13', NULL),
(470, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 09:38:20', NULL),
(471, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/users/delete-image', 'Delete the image of test at Users', 2, '2017-07-24 09:38:32', NULL),
(472, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/7', 'Update data test at Users', 2, '2017-07-24 09:38:43', NULL),
(473, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:39:21', NULL),
(474, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 09:39:47', NULL),
(475, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 09:39:58', NULL),
(476, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 09:40:02', NULL),
(477, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:40:22', NULL),
(478, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.188', 7, '2017-07-24 09:40:30', NULL),
(479, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:43:35', NULL),
(480, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 09:43:39', NULL),
(481, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 09:49:46', NULL),
(482, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.188', 8, '2017-07-24 09:50:03', NULL),
(483, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Add New Data Stats at Menu Management', 2, '2017-07-24 09:57:58', NULL),
(484, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/statistic_builder/add-save', 'Add New Data Commercial at Statistic Builder', 2, '2017-07-24 09:58:53', NULL),
(485, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 09:58:58', NULL),
(486, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 09:59:01', NULL),
(487, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:59:16', NULL),
(488, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 09:59:21', NULL),
(489, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 09:59:35', NULL),
(490, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 09:59:47', NULL),
(491, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.188', 7, '2017-07-24 10:00:00', NULL),
(492, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 10:00:13', NULL),
(493, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 10:00:18', NULL),
(494, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:00:22', NULL),
(495, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 10:01:46', NULL),
(496, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.188', 8, '2017-07-24 10:01:46', NULL),
(497, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.170', 8, '2017-07-24 10:02:02', NULL),
(498, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:02:37', NULL),
(499, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:02:40', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(500, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:03:03', NULL),
(501, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 10:03:09', NULL),
(502, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 10:03:37', NULL),
(503, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 10:03:41', NULL),
(504, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 10:04:38', NULL),
(505, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 10:04:52', NULL),
(506, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 10:05:31', NULL),
(507, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 10:05:35', NULL),
(508, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 10:05:41', NULL),
(509, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:05:55', NULL),
(510, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Add New Data Stats at Menu Management', 2, '2017-07-24 10:06:18', NULL),
(511, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:07:37', NULL),
(512, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:07:42', NULL),
(513, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:08:10', NULL),
(514, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:09:53', NULL),
(515, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 10:09:59', NULL),
(516, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 10:10:19', NULL),
(517, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:10:23', NULL),
(518, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'Morel@Cisse.com login with IP Address 192.168.1.188', 4, '2017-07-24 10:10:51', NULL),
(519, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:13:22', NULL),
(520, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 10:13:27', NULL),
(521, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'Morel@Cisse.com logout', 4, '2017-07-24 10:13:37', NULL),
(522, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 10:20:08', NULL),
(523, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 10:20:11', NULL),
(524, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:22:48', NULL),
(525, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 10:22:51', NULL),
(526, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/delete/127', 'Delete data Stats at Menu Management', 2, '2017-07-24 10:23:06', NULL),
(527, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 10:23:45', NULL),
(528, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.160', 8, '2017-07-24 10:24:29', NULL),
(529, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:24:49', NULL),
(530, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.170', 8, '2017-07-24 10:25:20', NULL),
(531, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 10:33:17', NULL),
(532, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 10:33:28', NULL),
(533, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/commandes28/add-save', 'Add New Data  at Commandes', 7, '2017-07-24 10:38:28', NULL),
(534, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at memo', 7, '2017-07-24 10:40:45', NULL),
(535, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at memo', 7, '2017-07-24 10:41:05', NULL),
(536, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at memo', 7, '2017-07-24 10:41:12', NULL),
(537, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 11:16:57', NULL),
(538, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 11:17:00', NULL),
(539, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 11:24:41', NULL),
(540, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 11:24:44', NULL),
(541, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 11:24:57', NULL),
(542, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 11:25:02', NULL),
(543, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 11:29:39', NULL),
(544, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 11:29:55', NULL),
(545, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 11:30:51', NULL),
(546, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 11:31:17', NULL),
(547, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 11:32:03', NULL),
(548, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 11:36:18', NULL),
(549, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'marco@marco.com login with IP Address 192.168.1.160', 2, '2017-07-24 11:36:24', NULL),
(550, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 11:39:36', NULL),
(551, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 11:39:48', NULL),
(552, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/module_generator/step1/26', 'Try view the data :name at Module Generator', 7, '2017-07-24 11:40:32', NULL),
(553, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 11:40:44', NULL),
(554, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 11:41:00', NULL),
(555, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/4', 'Update data Morel at Users', 5, '2017-07-24 11:41:19', NULL),
(556, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'Morel@Cisse.com login with IP Address 192.168.1.188', 4, '2017-07-24 11:47:50', NULL),
(557, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'Morel@Cisse.com logout', 4, '2017-07-24 11:48:08', NULL),
(558, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 11:49:53', NULL),
(559, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 11:49:58', NULL),
(560, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 11:52:49', NULL),
(561, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 11:52:52', NULL),
(562, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 11:59:19', NULL),
(563, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 11:59:22', NULL),
(564, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 12:01:44', NULL),
(565, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 12:01:46', NULL),
(566, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/127', 'Update data Fiche clients at Menu Management', 5, '2017-07-24 12:02:47', NULL),
(567, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:03:12', NULL),
(568, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:03:27', NULL),
(569, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 12:04:15', NULL),
(570, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 12:04:18', NULL),
(571, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:04:44', NULL),
(572, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:05:12', NULL),
(573, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:06:03', NULL),
(574, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 12:06:07', NULL),
(575, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 12:07:49', NULL),
(576, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 12:07:53', NULL),
(577, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:08:47', NULL),
(578, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:09:02', NULL),
(579, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:10:02', NULL),
(580, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:10:20', NULL),
(581, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:13:21', NULL),
(582, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:13:36', NULL),
(583, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:14:24', NULL),
(584, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:14:42', NULL),
(585, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Add New Data devis at Menu Management', 2, '2017-07-24 12:16:18', NULL),
(586, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:16:28', NULL),
(587, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:16:42', NULL),
(588, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:17:49', NULL),
(589, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:18:11', NULL),
(590, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:19:21', NULL),
(591, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:19:35', NULL),
(592, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:20:41', NULL),
(593, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:21:01', NULL),
(594, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:22:23', NULL),
(595, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:22:35', NULL),
(596, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:22:54', NULL),
(597, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:23:08', NULL),
(598, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:27:22', NULL),
(599, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:27:41', NULL),
(600, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at Notes', 7, '2017-07-24 12:28:51', NULL),
(601, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29/add-save', 'Add New Data 10 at Fiche clients', 5, '2017-07-24 12:29:13', NULL),
(602, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:30:20', NULL),
(603, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:30:33', NULL),
(604, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:31:57', NULL),
(605, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:32:11', NULL),
(606, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at Notes', 7, '2017-07-24 12:33:05', NULL),
(607, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:36:33', NULL),
(608, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'marco@marco.com logout', 2, '2017-07-24 12:36:46', NULL),
(609, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 12:36:46', NULL),
(610, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.160', 7, '2017-07-24 12:36:56', NULL),
(611, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 12:39:05', NULL),
(612, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 12:39:17', NULL),
(613, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 12:39:20', NULL),
(614, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 12:39:34', NULL),
(615, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 12:39:38', NULL),
(616, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 12:39:42', NULL),
(617, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:40:31', NULL),
(618, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 12:40:34', NULL),
(619, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 12:41:43', NULL),
(620, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.165', 7, '2017-07-24 12:41:47', NULL),
(621, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 12:44:09', NULL),
(622, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 12:44:14', NULL),
(623, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/memo/add-save', 'Add New Data  at Notes', 7, '2017-07-24 12:46:53', NULL),
(624, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 13:04:39', NULL),
(625, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 13:04:59', NULL),
(626, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/users/delete-image', 'Delete the image of emilie at Users', 6, '2017-07-24 13:05:19', NULL),
(627, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/6', 'Update data emilie at Users', 6, '2017-07-24 13:06:51', NULL),
(628, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/6', 'Update data Emilie at Users', 6, '2017-07-24 13:07:17', NULL),
(629, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'emilie@emilie.com logout', 6, '2017-07-24 13:17:47', NULL),
(630, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'test@test.fr login with IP Address 192.168.1.170', 7, '2017-07-24 13:18:03', NULL),
(631, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'mouad@mouad.com logout', 5, '2017-07-24 13:25:39', NULL),
(632, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'admin@admin.fr login with IP Address 192.168.1.165', 8, '2017-07-24 13:25:42', NULL),
(633, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'admin@admin.fr logout', 8, '2017-07-24 13:27:24', NULL),
(634, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'mouad@mouad.com login with IP Address 192.168.1.165', 5, '2017-07-24 13:27:29', NULL),
(635, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', 'test@test.fr logout', 7, '2017-07-24 13:28:58', NULL),
(636, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', 'emilie@emilie.com login with IP Address 192.168.1.170', 6, '2017-07-24 13:29:17', NULL),
(637, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-24 18:31:36', NULL),
(638, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données: nom à: module', 2, '2017-07-24 19:33:01', NULL),
(639, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/produits/edit-save/5', 'Mettre à jour les données: nom à: module', 2, '2017-07-24 19:33:25', NULL),
(640, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données: nom à: module', 2, '2017-07-24 19:35:36', NULL),
(641, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données: nom à: module', 2, '2017-07-24 19:36:23', NULL),
(642, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-25 02:37:26', NULL),
(643, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 05:55:50', NULL),
(644, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 05:55:56', NULL),
(645, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 05:56:06', NULL),
(646, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 05:56:42', NULL),
(647, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 05:56:46', NULL),
(648, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 05:56:50', NULL),
(649, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 05:57:07', NULL),
(650, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 05:57:10', NULL),
(651, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 05:57:15', NULL),
(652, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 05:57:19', NULL),
(653, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 05:57:24', NULL),
(654, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 05:57:27', NULL),
(655, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 05:57:28', NULL),
(656, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 05:59:19', NULL),
(657, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 05:59:22', NULL),
(658, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 05:59:31', NULL),
(659, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 05:59:35', NULL),
(660, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 05:59:42', NULL),
(661, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 05:59:45', NULL),
(662, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:00:07', NULL),
(663, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:00:26', NULL),
(664, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:01:26', NULL),
(665, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:01:43', NULL),
(666, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:01:49', NULL),
(667, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:01:54', NULL),
(668, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:02:17', NULL),
(669, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:02:22', NULL),
(670, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-25 06:02:31', NULL),
(671, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:03:07', NULL),
(672, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:03:10', NULL),
(673, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/users/edit-save/7', 'Mettre à jour les données :nom à Users', 7, '2017-07-25 06:03:15', NULL),
(674, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:03:27', NULL),
(675, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:03:33', NULL),
(676, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:03:42', NULL),
(677, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:03:44', NULL),
(678, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:05:05', NULL),
(679, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:05:09', NULL),
(680, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:05:14', NULL),
(681, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:05:38', NULL),
(682, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:06:52', NULL),
(683, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:06:56', NULL),
(684, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:07:13', NULL),
(685, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:07:18', NULL),
(686, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:08:36', NULL),
(687, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:08:41', NULL),
(688, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:08:50', NULL),
(689, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:08:55', NULL),
(690, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:10:23', NULL),
(691, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:10:27', NULL),
(692, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:10:31', NULL),
(693, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:10:32', NULL),
(694, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:10:35', NULL),
(695, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 06:10:58', NULL),
(696, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29/edit-save/9', 'Mettre à jour les données :nom à Fiche clients', 5, '2017-07-25 06:12:03', NULL),
(697, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/128', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:13:22', NULL),
(698, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:13:36', NULL),
(699, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:13:41', NULL),
(700, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/128', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:13:54', NULL),
(701, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:16:21', NULL),
(702, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:16:26', NULL),
(703, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/129', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:17:47', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(704, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/130', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:18:55', NULL),
(705, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/127', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:19:24', NULL),
(706, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 06:19:51', NULL),
(707, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:20:59', NULL),
(708, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:21:03', NULL),
(709, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/130', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:22:33', NULL),
(710, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:22:45', NULL),
(711, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:22:51', NULL),
(712, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:23:12', NULL),
(713, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:23:16', NULL),
(714, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:23:19', NULL),
(715, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:23:19', NULL),
(716, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:23:24', NULL),
(717, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:23:31', NULL),
(718, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 06:23:40', NULL),
(719, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:24:07', NULL),
(720, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:24:15', NULL),
(721, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/99', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:24:35', NULL),
(722, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 06:24:38', NULL),
(723, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:25:21', NULL),
(724, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/132', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:25:24', NULL),
(725, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:25:26', NULL),
(726, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:25:45', NULL),
(727, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 4, '2017-07-25 06:25:47', NULL),
(728, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:25:51', NULL),
(729, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:26:07', NULL),
(730, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:26:32', NULL),
(731, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:26:46', NULL),
(732, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:26:51', NULL),
(733, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:27:28', NULL),
(734, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:27:36', NULL),
(735, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:27:45', NULL),
(736, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:27:48', NULL),
(737, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 06:27:57', NULL),
(738, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/127', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:28:18', NULL),
(739, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:28:19', NULL),
(740, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 5, '2017-07-25 06:28:24', NULL),
(741, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:28:28', NULL),
(742, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/132', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:28:33', NULL),
(743, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:28:47', NULL),
(744, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:28:51', NULL),
(745, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:30:23', NULL),
(746, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:30:27', NULL),
(747, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:30:30', NULL),
(748, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/132', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:30:33', NULL),
(749, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:30:36', NULL),
(750, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:30:41', NULL),
(751, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:30:44', NULL),
(752, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/134', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:30:56', NULL),
(753, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:31:08', NULL),
(754, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:32:08', NULL),
(755, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:32:13', NULL),
(756, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/134', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:32:21', NULL),
(757, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:32:38', NULL),
(758, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 06:32:45', NULL),
(759, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/134', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:32:54', NULL),
(760, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:33:00', NULL),
(761, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:33:17', NULL),
(762, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:33:31', NULL),
(763, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 06:33:38', NULL),
(764, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:33:41', NULL),
(765, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:33:52', NULL),
(766, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:33:58', NULL),
(767, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:34:03', NULL),
(768, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/134', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:34:51', NULL),
(769, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 06:35:25', NULL),
(770, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:37:55', NULL),
(771, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:37:58', NULL),
(772, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:38:14', NULL),
(773, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/2', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:38:46', NULL),
(774, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/2', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:39:13', NULL),
(775, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/2', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:39:30', NULL),
(776, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:39:46', NULL),
(777, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 4, '2017-07-25 06:39:50', NULL),
(778, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:40:13', NULL),
(779, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:40:34', NULL),
(780, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:40:40', NULL),
(781, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:40:47', NULL),
(782, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:40:51', NULL),
(783, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:40:55', NULL),
(784, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:41:18', NULL),
(785, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:41:22', NULL),
(786, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:41:41', NULL),
(787, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:42:42', NULL),
(788, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:42:45', NULL),
(789, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:42:52', NULL),
(790, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 06:42:56', NULL),
(791, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 06:43:03', NULL),
(792, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:43:07', NULL),
(793, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:43:08', NULL),
(794, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:43:11', NULL),
(795, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:43:24', NULL),
(796, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/136', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:43:36', NULL),
(797, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:43:40', NULL),
(798, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/137', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:43:45', NULL),
(799, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:43:47', NULL),
(800, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/138', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:43:54', NULL),
(801, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:43:58', NULL),
(802, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:43:59', NULL),
(803, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:44:08', NULL),
(804, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/139', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:09', NULL),
(805, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:44:11', NULL),
(806, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/140', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:18', NULL),
(807, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/141', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:24', NULL),
(808, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/142', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:34', NULL),
(809, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/143', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:41', NULL),
(810, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:44:46', NULL),
(811, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/144', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:47', NULL),
(812, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:44:50', NULL),
(813, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 06:44:51', NULL),
(814, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:44:55', NULL),
(815, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/145', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:44:56', NULL),
(816, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/146', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:45:03', NULL),
(817, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:45:06', NULL),
(818, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/147', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:45:18', NULL),
(819, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/148', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:45:27', NULL),
(820, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:45:32', NULL),
(821, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/149', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:45:35', NULL),
(822, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 2, '2017-07-25 06:45:37', NULL),
(823, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/150', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:45:42', NULL),
(824, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:45:48', NULL),
(825, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:45:52', NULL),
(826, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/136', 'Mettre à jour les données :nom à Menu Management', 4, '2017-07-25 06:46:10', NULL),
(827, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:46:24', NULL),
(828, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 06:46:28', NULL),
(829, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:46:31', NULL),
(830, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:46:34', NULL),
(831, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 06:46:41', NULL),
(832, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:46:53', NULL),
(833, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:46:58', NULL),
(834, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:47:01', NULL),
(835, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:47:05', NULL),
(836, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:47:06', NULL),
(837, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:47:09', NULL),
(838, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:47:12', NULL),
(839, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 06:47:17', NULL),
(840, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 06:47:30', NULL),
(841, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 7, '2017-07-25 06:47:46', NULL),
(842, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 06:47:51', NULL),
(843, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:05:48', NULL),
(844, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-25 07:05:54', NULL),
(845, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:05:55', NULL),
(846, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 6, '2017-07-25 07:06:00', NULL),
(847, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 2, '2017-07-25 07:06:12', NULL),
(848, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:06:19', NULL),
(849, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 6, '2017-07-25 07:06:28', NULL),
(850, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 07:06:29', NULL),
(851, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 07:06:33', NULL),
(852, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:07:28', NULL),
(853, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:07:32', NULL),
(854, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 07:07:45', NULL),
(855, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:07:51', NULL),
(856, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 07:07:58', NULL),
(857, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:08:24', NULL),
(858, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:08:27', NULL),
(859, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 07:08:40', NULL),
(860, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:08:46', NULL),
(861, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 07:08:51', NULL),
(862, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:09:28', NULL),
(863, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:09:29', NULL),
(864, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:09:32', NULL),
(865, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:09:32', NULL),
(866, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:10:56', NULL),
(867, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:11:04', NULL),
(868, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:11:06', NULL),
(869, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:11:11', NULL),
(870, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:11:45', NULL),
(871, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:12:08', NULL),
(872, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:12:34', NULL),
(873, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:12:56', NULL),
(874, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:13:13', NULL),
(875, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:13:13', NULL),
(876, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 07:13:36', NULL),
(877, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 07:13:44', NULL),
(878, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:14:12', NULL),
(879, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 07:14:37', NULL),
(880, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:14:41', NULL),
(881, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 07:15:01', NULL),
(882, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:15:05', NULL),
(883, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:15:35', NULL),
(884, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-25 07:15:36', NULL),
(885, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 07:15:46', NULL),
(886, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 07:15:56', NULL),
(887, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 07:15:56', NULL),
(888, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 07:15:58', NULL),
(889, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 16, '2017-07-25 07:15:59', NULL),
(890, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 07:16:06', NULL),
(891, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 16, '2017-07-25 07:16:08', NULL),
(892, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 07:16:20', NULL),
(893, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 07:16:38', NULL),
(894, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 16, '2017-07-25 07:16:42', NULL),
(895, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-25 07:16:49', NULL),
(896, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 07:17:00', NULL),
(897, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 07:17:44', NULL),
(898, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 07:17:51', NULL),
(899, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/131', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 07:17:59', NULL),
(900, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 4, '2017-07-25 07:18:15', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(901, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/151', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 07:18:21', NULL),
(902, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 9, '2017-07-25 07:18:24', NULL),
(903, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 07:18:42', NULL),
(904, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 15, '2017-07-25 07:18:44', NULL),
(905, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 07:18:46', NULL),
(906, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 07:18:50', NULL),
(907, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 07:18:58', NULL),
(908, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 07:19:03', NULL),
(909, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-25 07:20:26', NULL),
(910, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 07:22:26', NULL),
(911, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 07:22:33', NULL),
(912, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 15, '2017-07-25 07:25:24', NULL),
(913, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 07:25:33', NULL),
(914, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 07:31:08', NULL),
(915, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 07:34:50', NULL),
(916, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients/add', 'Essayez d\'ajouter des données à Clients', 10, '2017-07-25 07:35:02', NULL),
(917, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients/add', 'Essayez d\'ajouter des données à Clients', 11, '2017-07-25 07:35:07', NULL),
(918, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 07:35:34', NULL),
(919, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 07:35:36', NULL),
(920, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 07:35:43', NULL),
(921, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 07:35:44', NULL),
(922, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 07:37:26', NULL),
(923, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 07:37:37', NULL),
(924, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:37:43', NULL),
(925, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:39:15', NULL),
(926, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:39:22', NULL),
(927, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:39:35', NULL),
(928, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:39:42', NULL),
(929, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:40:42', NULL),
(930, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 07:40:58', NULL),
(931, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-25 07:41:26', NULL),
(932, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 9, '2017-07-25 07:41:46', NULL),
(933, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/102', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 07:41:51', NULL),
(934, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 15, '2017-07-25 07:41:57', NULL),
(935, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 07:42:01', NULL),
(936, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 4, '2017-07-25 07:42:23', NULL),
(937, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 9, '2017-07-25 07:42:31', NULL),
(938, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 07:42:41', NULL),
(939, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 07:42:45', NULL),
(940, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 07:42:49', NULL),
(941, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 07:42:52', NULL),
(942, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 07:43:27', NULL),
(943, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 9, '2017-07-25 07:44:38', NULL),
(944, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 07:44:58', NULL),
(945, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/memo26/edit-save/2', 'Mettre à jour les données :nom à Liste des Memo', 14, '2017-07-25 07:47:59', NULL),
(946, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 9, '2017-07-25 07:49:18', NULL),
(947, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 07:51:12', NULL),
(948, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 07:51:20', NULL),
(949, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/memo26/action-selected', 'Supprimer les données :nom au Liste des Memo', 14, '2017-07-25 07:52:09', NULL),
(950, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 07:55:42', NULL),
(951, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 07:57:39', NULL),
(952, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:57:44', NULL),
(953, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:58:04', NULL),
(954, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 07:58:10', NULL),
(955, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 07:58:45', NULL),
(956, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 07:58:49', NULL),
(957, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 07:59:47', NULL),
(958, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 07:59:54', NULL),
(959, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 4, '2017-07-25 08:00:18', NULL),
(960, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 08:04:06', NULL),
(961, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 08:09:26', NULL),
(962, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 08:09:37', NULL),
(963, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 08:09:40', NULL),
(964, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 08:10:17', NULL),
(965, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 08:10:21', NULL),
(966, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 08:10:59', NULL),
(967, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 08:11:05', NULL),
(968, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 08:11:29', NULL),
(969, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 08:11:58', NULL),
(970, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 08:12:01', NULL),
(971, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 15, '2017-07-25 08:12:46', NULL),
(972, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 08:12:51', NULL),
(973, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 08:19:57', NULL),
(974, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 08:20:09', NULL),
(975, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 4, '2017-07-25 08:20:11', NULL),
(976, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 08:20:16', NULL),
(977, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 08:20:46', NULL),
(978, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-25 08:20:52', NULL),
(979, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 9, '2017-07-25 08:21:35', NULL),
(980, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 4, '2017-07-25 08:21:57', NULL),
(981, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 4, '2017-07-25 08:22:38', NULL),
(982, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 10, '2017-07-25 08:23:50', NULL),
(983, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/Devis/edit-save/2', 'Mettre à jour les données :nom à Devis', 10, '2017-07-25 08:24:36', NULL),
(984, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 4, '2017-07-25 08:24:50', NULL),
(985, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 08:26:10', NULL),
(986, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 08:26:15', NULL),
(987, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 08:26:18', NULL),
(988, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 10, '2017-07-25 08:27:06', NULL),
(989, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 08:27:11', NULL),
(990, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 8, '2017-07-25 08:27:16', NULL),
(991, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 08:28:13', NULL),
(992, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-25 08:28:16', NULL),
(993, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 7, '2017-07-25 08:30:25', NULL),
(994, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 08:30:29', NULL),
(995, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 08:30:47', NULL),
(996, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 08:31:07', NULL),
(997, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 08:31:17', NULL),
(998, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 09:46:17', NULL),
(999, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 09:48:02', NULL),
(1000, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 09:48:06', NULL),
(1001, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 09:49:00', NULL),
(1002, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 15, '2017-07-25 09:53:50', NULL),
(1003, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 11, '2017-07-25 09:53:54', NULL),
(1004, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 14, '2017-07-25 09:53:56', NULL),
(1005, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 09:54:14', NULL),
(1006, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 09:54:23', NULL),
(1007, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 11, '2017-07-25 09:55:19', NULL),
(1008, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 09:55:21', NULL),
(1009, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 15, '2017-07-25 09:55:24', NULL),
(1010, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 09:55:26', NULL),
(1011, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 09:55:33', NULL),
(1012, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-25 09:56:25', NULL),
(1013, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 09:56:40', NULL),
(1014, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-25 09:56:43', NULL),
(1015, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 8, '2017-07-25 09:56:54', NULL),
(1016, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 09:56:59', NULL),
(1017, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 2, '2017-07-25 09:57:45', NULL),
(1018, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 16, '2017-07-25 09:57:51', NULL),
(1019, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-25 09:58:07', NULL),
(1020, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 09:58:19', NULL),
(1021, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 09:58:27', NULL),
(1022, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 09:58:29', NULL),
(1023, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 16, '2017-07-25 09:58:29', NULL),
(1024, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 09:58:34', NULL),
(1025, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-25 09:58:37', NULL),
(1026, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 09:58:56', NULL),
(1027, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/135', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 09:59:04', NULL),
(1028, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 14, '2017-07-25 09:59:05', NULL),
(1029, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-25 09:59:10', NULL),
(1030, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/logout', ': déconnexion', 5, '2017-07-25 10:00:26', NULL),
(1031, '192.168.1.165', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://192.168.1.160:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-25 10:00:32', NULL),
(1032, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/166', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:01:06', NULL),
(1033, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/165', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:01:18', NULL),
(1034, '192.168.1.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/clients29', 'Essayez de voir les données :nom à Fiche clients', 15, '2017-07-25 10:01:38', NULL),
(1035, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/164', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:01:39', NULL),
(1036, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/163', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:01:51', NULL),
(1037, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/162', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:01', NULL),
(1038, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/161', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:11', NULL),
(1039, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/160', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:20', NULL),
(1040, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/159', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:28', NULL),
(1041, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/158', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:40', NULL),
(1042, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/157', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:02:50', NULL),
(1043, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/155', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:03:00', NULL),
(1044, '192.168.1.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.1.160:8000/admin/menu_management/edit-save/154', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-25 10:03:12', NULL),
(1045, '37.169.43.220', 'Mozilla/5.0 (Linux; Android 7.0; NEM-L51 Build/HONORNEM-L51) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-26 05:20:12', NULL),
(1046, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-26 05:51:10', NULL),
(1047, '37.169.43.220', 'Mozilla/5.0 (Linux; Android 7.0; NEM-L51 Build/HONORNEM-L51) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 2, '2017-07-26 06:15:32', NULL),
(1048, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-26 06:29:35', NULL),
(1049, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-26 06:45:45', NULL),
(1050, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 8, '2017-07-26 06:48:36', NULL),
(1051, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-26 06:53:39', NULL),
(1052, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 5, '2017-07-26 06:53:53', NULL),
(1053, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-26 06:55:40', NULL),
(1054, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 7, '2017-07-26 06:56:43', NULL),
(1055, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-26 06:57:15', NULL),
(1056, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 12, '2017-07-26 07:50:01', NULL),
(1057, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-26 07:51:11', NULL),
(1058, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/133', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-26 07:54:40', NULL),
(1059, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/133', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-26 07:55:27', NULL),
(1060, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 14, '2017-07-26 07:56:17', NULL),
(1061, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/133', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-26 07:56:35', NULL),
(1062, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-26 07:56:46', NULL),
(1063, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/edit-save/152', 'Mettre à jour les données :nom à Menu Management', 2, '2017-07-26 08:00:58', NULL),
(1064, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/logout', ': déconnexion', 10, '2017-07-26 08:03:20', NULL),
(1065, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-26 08:03:48', NULL),
(1066, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 12, '2017-07-26 08:24:47', NULL),
(1067, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 16, '2017-07-26 08:24:57', NULL),
(1068, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 16, '2017-07-26 09:58:04', NULL),
(1069, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-26 09:58:22', NULL),
(1070, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 12, '2017-07-26 10:01:44', NULL),
(1071, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/Devis/delete/1', 'Supprimer les données :nom au Devis', 2, '2017-07-26 10:45:19', NULL),
(1072, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 12, '2017-07-26 11:08:41', NULL),
(1073, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 16, '2017-07-26 11:09:19', NULL),
(1074, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 16, '2017-07-26 12:18:51', NULL),
(1075, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-26 12:18:56', NULL),
(1076, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 2, '2017-07-26 12:20:33', NULL),
(1077, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-27 05:13:18', NULL),
(1078, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 05:14:13', NULL),
(1079, '80.12.58.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', 'http://88.124.194.223:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 06:19:39', NULL),
(1080, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 12, '2017-07-27 06:24:15', NULL),
(1081, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-27 06:29:56', NULL),
(1082, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 12, '2017-07-27 09:49:56', NULL),
(1083, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 09:58:12', NULL),
(1084, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 8, '2017-07-27 09:58:21', NULL),
(1085, '192.168.0.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 09:58:47', NULL),
(1086, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-27 10:07:22', NULL),
(1087, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 12, '2017-07-27 10:08:17', NULL),
(1088, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 2, '2017-07-27 10:08:26', NULL),
(1089, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/logout', ': déconnexion', 2, '2017-07-27 11:03:48', NULL),
(1090, '192.168.0.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://192.168.0.38:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 12, '2017-07-27 11:04:00', NULL),
(1091, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 11:56:05', NULL),
(1092, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 11:56:08', NULL),
(1093, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 11:56:28', NULL),
(1094, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 11:56:31', NULL),
(1095, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 11:57:37', NULL),
(1096, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 11:57:40', NULL),
(1097, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 7, '2017-07-27 11:59:10', NULL),
(1098, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 11:59:17', NULL),
(1099, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 7, '2017-07-27 11:59:39', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 7, '2017-07-27 12:00:16', NULL),
(1101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 7, '2017-07-27 12:01:03', NULL),
(1102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 7, '2017-07-27 12:05:06', NULL),
(1103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 7, '2017-07-27 12:05:27', NULL),
(1104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Essayez de supprimer l\'image de: nom de données à Users', 7, '2017-07-27 12:06:43', NULL),
(1105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Essayez de supprimer l\'image de: nom de données à Users', 7, '2017-07-27 12:06:58', NULL),
(1106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 7, '2017-07-27 12:10:32', NULL),
(1107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 12:10:42', NULL),
(1108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 7, '2017-07-27 12:13:18', NULL),
(1109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 7, '2017-07-27 12:13:49', NULL),
(1110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Essayez de supprimer l\'image de: nom de données à Users', 7, '2017-07-27 12:14:36', NULL),
(1111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 7, '2017-07-27 12:16:51', NULL),
(1112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/add-save', 'Ajouter de nouvelles données :nom à Notes', 7, '2017-07-27 12:17:04', NULL),
(1113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 7, '2017-07-27 12:24:19', NULL),
(1114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/edit-save/9', 'Mettre à jour les données :nom à Notes', 7, '2017-07-27 12:45:03', NULL),
(1115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 7, '2017-07-27 12:45:19', NULL),
(1116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 7, '2017-07-27 12:45:35', NULL),
(1117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 7, '2017-07-27 12:45:51', NULL),
(1118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 12:45:54', NULL),
(1119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 12:46:02', NULL),
(1120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 12:46:06', NULL),
(1121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 10, '2017-07-27 12:46:25', NULL),
(1122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 10, '2017-07-27 12:46:44', NULL),
(1123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/add-save', 'Ajouter de nouvelles données :nom à Notes', 10, '2017-07-27 12:46:59', NULL),
(1124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 12:48:03', NULL),
(1125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 12:48:14', NULL),
(1126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 7, '2017-07-27 12:48:19', NULL),
(1127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 12:48:22', NULL),
(1128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 12:48:28', NULL),
(1129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 12:48:32', NULL),
(1130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 12:49:49', NULL),
(1131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 12:49:54', NULL),
(1132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 12:49:57', NULL),
(1133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 7, '2017-07-27 12:50:01', NULL),
(1134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 7, '2017-07-27 12:50:05', NULL),
(1135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-27 12:50:18', NULL),
(1136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/edit-save/2', 'Mettre à jour les données :nom à Listes des Clients', 14, '2017-07-27 12:50:45', NULL),
(1137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients29/add-save', 'Ajouter de nouvelles données :nom à Fiche clients', 14, '2017-07-27 12:51:19', NULL),
(1138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-27 12:55:03', NULL),
(1139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 12:55:05', NULL),
(1140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 12:55:25', NULL),
(1141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 12:55:28', NULL),
(1142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 12:55:34', NULL),
(1143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 12:55:37', NULL),
(1144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 12:56:09', NULL),
(1145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 12:56:15', NULL),
(1146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/edit-save/16', 'Mettre à jour les données :nom à Liste des Commerciaux', 8, '2017-07-27 12:57:11', NULL),
(1147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/add-save', 'Ajouter de nouvelles données :nom à Liste des Commerciaux', 8, '2017-07-27 12:59:03', NULL),
(1148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/17', 'Supprimer les données :nom au Liste des Commerciaux', 8, '2017-07-27 12:59:12', NULL),
(1149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/add-save', 'Ajouter de nouvelles données :nom à Liste des RDV', 8, '2017-07-27 12:59:54', NULL),
(1150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/8', 'Supprimer les données :nom au Liste des RDV', 8, '2017-07-27 13:00:15', NULL),
(1151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo26/add-save', 'Ajouter de nouvelles données :nom à Liste des Memo', 8, '2017-07-27 13:00:36', NULL),
(1152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:00:57', NULL),
(1153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:01:04', NULL),
(1154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/118', 'Supprimer les données :nom au Menu Management', 5, '2017-07-27 13:09:15', NULL),
(1155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Ajouter de nouvelles données :nom à Menu Management', 5, '2017-07-27 13:09:27', NULL),
(1156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:09:37', NULL),
(1157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-27 13:09:42', NULL),
(1158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-27 13:09:53', NULL),
(1159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:09:56', NULL),
(1160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:10:14', NULL),
(1161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:10:18', NULL),
(1162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/produits/add-save', 'Ajouter de nouvelles données :nom à Produits', 8, '2017-07-27 13:11:00', NULL),
(1163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:11:09', NULL),
(1164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 13:11:15', NULL),
(1165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 13:11:24', NULL),
(1166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 13:11:29', NULL),
(1167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 13:11:36', NULL),
(1168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-27 13:11:39', NULL),
(1169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/produits/edit-save/6', 'Mettre à jour les données :nom à Produits', 14, '2017-07-27 13:11:53', NULL),
(1170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/produits/delete/6', 'Supprimer les données :nom au Produits', 14, '2017-07-27 13:11:57', NULL),
(1171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-27 13:12:06', NULL),
(1172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:12:10', NULL),
(1173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:19:22', NULL),
(1174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 13:19:26', NULL),
(1175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 13:19:37', NULL),
(1176, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:19:42', NULL),
(1177, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/add-save', 'Ajouter de nouvelles données :nom à Stocks', 8, '2017-07-27 13:20:09', NULL),
(1178, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/1', 'Mettre à jour les données :nom à Stocks', 8, '2017-07-27 13:20:34', NULL),
(1179, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:20:54', NULL),
(1180, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 13:20:59', NULL),
(1181, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 13:21:15', NULL),
(1182, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-27 13:21:18', NULL),
(1183, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-27 13:21:28', NULL),
(1184, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:21:31', NULL),
(1185, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:22:00', NULL),
(1186, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:22:02', NULL),
(1187, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:22:10', NULL),
(1188, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:22:13', NULL),
(1189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:22:30', NULL),
(1190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-27 13:22:33', NULL),
(1191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-27 13:22:37', NULL),
(1192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:22:39', NULL),
(1193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:22:47', NULL),
(1194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:23:01', NULL),
(1195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:23:40', NULL),
(1196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:23:47', NULL),
(1197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-27 13:24:18', NULL),
(1198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-27 13:24:23', NULL),
(1199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-27 13:24:56', NULL),
(1200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-27 13:25:06', NULL),
(1201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:41:16', NULL),
(1202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Supprime l\'image de: nom à Users', 5, '2017-07-28 05:42:24', NULL),
(1203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/10', 'Mettre à jour les données :nom à Users', 5, '2017-07-28 05:43:06', NULL),
(1204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Supprime l\'image de: nom à Users', 5, '2017-07-28 05:43:39', NULL),
(1205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/14', 'Mettre à jour les données :nom à Users', 5, '2017-07-28 05:43:51', NULL),
(1206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Supprime l\'image de: nom à Users', 5, '2017-07-28 05:44:11', NULL),
(1207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/5', 'Mettre à jour les données :nom à Users', 5, '2017-07-28 05:44:21', NULL),
(1208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:44:25', NULL),
(1209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:44:28', NULL),
(1210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:45:26', NULL),
(1211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:45:34', NULL),
(1212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:45:40', NULL),
(1213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 05:45:44', NULL),
(1214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 05:47:14', NULL),
(1215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:47:22', NULL),
(1216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/101', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 05:49:04', NULL),
(1217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 05:50:01', NULL),
(1218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:50:12', NULL),
(1219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:50:21', NULL),
(1220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients29/add-save', 'Ajouter de nouvelles données :nom à Fiche clients', 14, '2017-07-28 05:51:08', NULL),
(1221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:51:43', NULL),
(1222, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 05:51:49', NULL),
(1223, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 05:52:00', NULL),
(1224, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:52:09', NULL),
(1225, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients29/add-save', 'Ajouter de nouvelles données :nom à Fiche clients', 14, '2017-07-28 05:52:26', NULL),
(1226, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:52:52', NULL),
(1227, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:52:56', NULL),
(1228, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:53:51', NULL),
(1229, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:54:19', NULL),
(1230, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/16', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:36', NULL),
(1231, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/15', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:40', NULL),
(1232, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/19', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:44', NULL),
(1233, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/14', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:48', NULL),
(1234, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/20', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:53', NULL),
(1235, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/10', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:54:57', NULL),
(1236, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/21', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 05:55:03', NULL),
(1237, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:56:07', NULL),
(1238, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:56:09', NULL),
(1239, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:56:29', NULL),
(1240, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:56:33', NULL),
(1241, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:56:48', NULL),
(1242, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:56:54', NULL),
(1243, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:57:40', NULL),
(1244, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:57:45', NULL),
(1245, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 05:58:11', NULL),
(1246, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 05:58:13', NULL),
(1247, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 05:58:31', NULL),
(1248, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 05:58:36', NULL),
(1249, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:00:13', NULL),
(1250, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:00:16', NULL),
(1251, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 06:00:25', NULL),
(1252, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:00:33', NULL),
(1253, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:01:07', NULL),
(1254, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:01:11', NULL),
(1255, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:01:17', NULL),
(1256, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:01:22', NULL),
(1257, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 06:01:43', NULL),
(1258, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:01:46', NULL),
(1259, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:05:06', NULL),
(1260, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:05:11', NULL),
(1261, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:05:45', NULL),
(1262, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:05:48', NULL),
(1263, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:05:57', NULL),
(1264, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:06:00', NULL),
(1265, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/109', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 06:06:16', NULL),
(1266, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/117', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 06:06:33', NULL),
(1267, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:08:24', NULL),
(1268, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:08:28', NULL),
(1269, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:09:07', NULL),
(1270, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:09:10', NULL),
(1271, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/111', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 06:09:28', NULL),
(1272, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:09:32', NULL),
(1273, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:09:34', NULL),
(1274, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:10:40', NULL),
(1275, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:10:44', NULL),
(1276, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 06:11:21', NULL),
(1277, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:11:24', NULL),
(1278, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Mobile Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:14:36', NULL),
(1279, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:15:10', NULL),
(1280, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 06:27:47', NULL),
(1281, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:27:51', NULL),
(1282, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:28:19', NULL),
(1283, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:28:23', NULL),
(1284, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:28:33', NULL),
(1285, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:28:38', NULL),
(1286, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 06:28:53', NULL),
(1287, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:28:57', NULL),
(1288, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:29:27', NULL),
(1289, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 06:29:38', NULL),
(1290, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 06:29:54', NULL),
(1291, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 06:30:09', NULL),
(1292, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 06:30:15', NULL),
(1293, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 06:30:19', NULL),
(1294, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 06:30:44', NULL),
(1295, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 06:31:11', NULL),
(1296, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 06:32:18', NULL),
(1297, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 07:11:28', NULL),
(1298, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 8, '2017-07-28 07:28:13', NULL),
(1299, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 8, '2017-07-28 07:31:27', NULL),
(1300, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 07:31:30', NULL),
(1301, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 07:33:10', NULL),
(1302, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 07:33:15', NULL),
(1303, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 07:35:53', NULL),
(1304, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 07:35:58', NULL),
(1305, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/20', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 07:36:05', NULL),
(1306, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 07:36:20', NULL),
(1307, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 07:36:23', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1308, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 07:42:42', NULL),
(1309, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 07:42:56', NULL),
(1310, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 07:42:56', NULL),
(1311, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 08:00:12', NULL),
(1312, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 08:00:25', NULL),
(1313, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 08:00:29', NULL),
(1314, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 08:01:26', NULL),
(1315, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 09:46:27', NULL),
(1316, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 09:46:32', NULL),
(1317, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 09:46:35', NULL),
(1318, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 09:46:40', NULL),
(1319, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 09:46:44', NULL),
(1320, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 09:46:48', NULL),
(1321, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 09:46:51', NULL),
(1322, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 09:51:06', NULL),
(1323, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 09:52:04', NULL),
(1324, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 09:52:27', NULL),
(1325, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 09:56:16', NULL),
(1326, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 10, '2017-07-28 09:57:48', NULL),
(1327, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 10, '2017-07-28 09:58:15', NULL),
(1328, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/edit-save/5', 'Mettre à jour les données :nom à Devis', 10, '2017-07-28 09:58:35', NULL),
(1329, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 10, '2017-07-28 10:02:34', NULL),
(1330, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/add-save', 'Ajouter de nouvelles données :nom à Devis', 10, '2017-07-28 10:03:25', NULL),
(1331, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:06:57', NULL),
(1332, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:07:01', NULL),
(1333, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:07:26', NULL),
(1334, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:07:30', NULL),
(1335, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:07:38', NULL),
(1336, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:07:47', NULL),
(1337, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:08:24', NULL),
(1338, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:08:27', NULL),
(1339, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:08:36', NULL),
(1340, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:08:39', NULL),
(1341, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:08:53', NULL),
(1342, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:08:56', NULL),
(1343, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:09:02', NULL),
(1344, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:09:05', NULL),
(1345, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:09:25', NULL),
(1346, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:09:27', NULL),
(1347, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:09:33', NULL),
(1348, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:09:38', NULL),
(1349, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:10:24', NULL),
(1350, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:10:26', NULL),
(1351, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:10:37', NULL),
(1352, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:10:40', NULL),
(1353, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:10:56', NULL),
(1354, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:11:01', NULL),
(1355, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:11:11', NULL),
(1356, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:11:15', NULL),
(1357, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:11:19', NULL),
(1358, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:11:23', NULL),
(1359, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:11:38', NULL),
(1360, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:11:41', NULL),
(1361, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:12:17', NULL),
(1362, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:12:20', NULL),
(1363, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/3', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 10:12:29', NULL),
(1364, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:12:34', NULL),
(1365, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:12:49', NULL),
(1366, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:13:29', NULL),
(1367, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:13:32', NULL),
(1368, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes28/add-save', 'Ajouter de nouvelles données :nom à Commandes', 10, '2017-07-28 10:15:21', NULL),
(1369, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 10:16:15', NULL),
(1370, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:16:36', NULL),
(1371, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:16:41', NULL),
(1372, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/edit-save/25', 'Mettre à jour les données :nom à Listes des Clients', 14, '2017-07-28 10:17:59', NULL),
(1373, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/25', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 10:18:04', NULL),
(1374, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/edit-save/2', 'Mettre à jour les données :nom à Listes des Clients', 14, '2017-07-28 10:18:27', NULL),
(1375, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo26/edit-save/11', 'Mettre à jour les données :nom à Liste des Memo', 14, '2017-07-28 10:19:34', NULL),
(1376, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo26/delete/10', 'Supprimer les données :nom au Liste des Memo', 14, '2017-07-28 10:19:40', NULL),
(1377, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/produits/edit-save/1', 'Mettre à jour les données :nom à Produits', 14, '2017-07-28 10:20:02', NULL),
(1378, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:23:31', NULL),
(1379, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:23:35', NULL),
(1380, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:24:20', NULL),
(1381, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:24:25', NULL),
(1382, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:26:45', NULL),
(1383, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:26:48', NULL),
(1384, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:29:16', NULL),
(1385, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:29:22', NULL),
(1386, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/add-save', 'Ajouter de nouvelles données :nom à Stocks', 14, '2017-07-28 10:32:03', NULL),
(1387, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:32:28', NULL),
(1388, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:33:01', NULL),
(1389, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:33:19', NULL),
(1390, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:33:30', NULL),
(1391, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:33:42', NULL),
(1392, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:33:51', NULL),
(1393, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:34:00', NULL),
(1394, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:34:39', NULL),
(1395, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:34:44', NULL),
(1396, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:35:43', NULL),
(1397, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:35:46', NULL),
(1398, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:36:28', NULL),
(1399, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:36:30', NULL),
(1400, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/119', 'Mettre à jour les données :nom à Menu Management', 5, '2017-07-28 10:36:59', NULL),
(1401, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:37:05', NULL),
(1402, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:37:10', NULL),
(1403, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:37:42', NULL),
(1404, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:37:47', NULL),
(1405, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:39:55', NULL),
(1406, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:39:59', NULL),
(1407, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/add-save', 'Ajouter de nouvelles données :nom à Stocks', 14, '2017-07-28 10:40:16', NULL),
(1408, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:40:59', NULL),
(1409, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:41:02', NULL),
(1410, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:42:31', NULL),
(1411, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:42:34', NULL),
(1412, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:42:37', NULL),
(1413, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:42:40', NULL),
(1414, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:43:09', NULL),
(1415, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:43:13', NULL),
(1416, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:43:53', NULL),
(1417, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:43:56', NULL),
(1418, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/3', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:44:04', NULL),
(1419, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/2', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:44:13', NULL),
(1420, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/stocks/edit-save/1', 'Mettre à jour les données :nom à Stocks', 14, '2017-07-28 10:44:19', NULL),
(1421, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:44:33', NULL),
(1422, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:44:35', NULL),
(1423, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:44:44', NULL),
(1424, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:44:49', NULL),
(1425, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:46:45', NULL),
(1426, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:46:48', NULL),
(1427, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:46:53', NULL),
(1428, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:46:56', NULL),
(1429, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:47:27', NULL),
(1430, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:47:30', NULL),
(1431, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:47:39', NULL),
(1432, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:47:42', NULL),
(1433, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:48:04', NULL),
(1434, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:48:08', NULL),
(1435, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:48:14', NULL),
(1436, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:48:17', NULL),
(1437, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:48:29', NULL),
(1438, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:48:32', NULL),
(1439, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:49:15', NULL),
(1440, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:49:19', NULL),
(1441, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:49:22', NULL),
(1442, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:49:26', NULL),
(1443, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:49:39', NULL),
(1444, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:49:43', NULL),
(1445, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:50:07', NULL),
(1446, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:50:10', NULL),
(1447, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:50:18', NULL),
(1448, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:50:21', NULL),
(1449, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:50:47', NULL),
(1450, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:50:51', NULL),
(1451, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 10, '2017-07-28 10:51:17', NULL),
(1452, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/edit-save/8', 'Mettre à jour les données :nom à RDV', 10, '2017-07-28 10:53:04', NULL),
(1453, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/add-save', 'Ajouter de nouvelles données :nom à Notes', 10, '2017-07-28 10:53:23', NULL),
(1454, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:53:49', NULL),
(1455, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:53:52', NULL),
(1456, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:54:10', NULL),
(1457, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:54:15', NULL),
(1458, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:54:23', NULL),
(1459, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:54:29', NULL),
(1460, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:55:20', NULL),
(1461, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:55:23', NULL),
(1462, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:55:48', NULL),
(1463, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:55:51', NULL),
(1464, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:57:41', NULL),
(1465, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:57:48', NULL),
(1466, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:58:26', NULL),
(1467, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 10:58:28', NULL),
(1468, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 10:58:47', NULL),
(1469, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:59:02', NULL),
(1470, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:59:17', NULL),
(1471, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:59:20', NULL),
(1472, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 10:59:30', NULL),
(1473, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 10:59:33', NULL),
(1474, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 10:59:51', NULL),
(1475, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 10:59:54', NULL),
(1476, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/edit-save/8', 'Mettre à jour les données :nom à RDV', 10, '2017-07-28 11:01:26', NULL),
(1477, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:03:28', NULL),
(1478, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:03:32', NULL),
(1479, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:03:56', NULL),
(1480, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:03:59', NULL),
(1481, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:04:29', NULL),
(1482, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:04:35', NULL),
(1483, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:04:47', NULL),
(1484, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:04:50', NULL),
(1485, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:04:53', NULL),
(1486, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:04:56', NULL),
(1487, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:05:02', NULL),
(1488, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:05:08', NULL),
(1489, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:05:33', NULL),
(1490, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:05:38', NULL),
(1491, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:05:43', NULL),
(1492, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:05:46', NULL),
(1493, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:06:07', NULL),
(1494, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:06:13', NULL),
(1495, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/edit-save/24', 'Mettre à jour les données :nom à Clients', 10, '2017-07-28 11:06:35', NULL),
(1496, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:06:56', NULL),
(1497, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:06:59', NULL),
(1498, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/add-save', 'Ajouter de nouvelles données :nom à Liste des RDV', 14, '2017-07-28 11:08:05', NULL),
(1499, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:08:12', NULL),
(1500, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:08:18', NULL),
(1501, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:08:36', NULL),
(1502, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:08:40', NULL),
(1503, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:08:55', NULL),
(1504, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:08:58', NULL),
(1505, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:09:46', NULL),
(1506, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:09:50', NULL),
(1507, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:09:55', NULL),
(1508, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:09:57', NULL),
(1509, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:10:28', NULL),
(1510, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:10:34', NULL),
(1511, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:10:48', NULL),
(1512, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:10:51', NULL),
(1513, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:12:27', NULL),
(1514, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:12:30', NULL),
(1515, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:12:42', NULL),
(1516, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:12:47', NULL),
(1517, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:13:04', NULL),
(1518, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:13:06', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1519, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:13:46', NULL),
(1520, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:13:48', NULL),
(1521, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/add-save', 'Ajouter de nouvelles données :nom à Liste des RDV', 14, '2017-07-28 11:14:30', NULL),
(1522, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/edit-save/10', 'Mettre à jour les données :nom à Liste des RDV', 14, '2017-07-28 11:14:48', NULL),
(1523, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/10', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:15:04', NULL),
(1524, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/9', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:15:07', NULL),
(1525, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/6', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:15:11', NULL),
(1526, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/5', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:15:14', NULL),
(1527, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/4', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:15:18', NULL),
(1528, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/add-save', 'Ajouter de nouvelles données :nom à Liste des RDV', 14, '2017-07-28 11:15:41', NULL),
(1529, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:15:51', NULL),
(1530, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:15:54', NULL),
(1531, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 10, '2017-07-28 11:16:06', NULL),
(1532, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:16:13', NULL),
(1533, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:16:17', NULL),
(1534, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:17:06', NULL),
(1535, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:17:10', NULL),
(1536, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:17:20', NULL),
(1537, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:17:23', NULL),
(1538, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:17:47', NULL),
(1539, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:17:51', NULL),
(1540, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:17:57', NULL),
(1541, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:18:00', NULL),
(1542, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:20:40', NULL),
(1543, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:20:43', NULL),
(1544, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/edit-save/9', 'Mettre à jour les données :nom à Liste des RDV', 14, '2017-07-28 11:21:06', NULL),
(1545, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/edit-save/9', 'Mettre à jour les données :nom à Liste des RDV', 14, '2017-07-28 11:21:14', NULL),
(1546, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:21:23', NULL),
(1547, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:21:26', NULL),
(1548, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/add-save', 'Ajouter de nouvelles données :nom à RDV', 10, '2017-07-28 11:21:47', NULL),
(1549, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:21:52', NULL),
(1550, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:21:57', NULL),
(1551, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/add-save', 'Ajouter de nouvelles données :nom à Liste des RDV', 14, '2017-07-28 11:22:26', NULL),
(1552, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/delete/12', 'Supprimer les données :nom au Liste des RDV', 14, '2017-07-28 11:22:32', NULL),
(1553, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:22:39', NULL),
(1554, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:22:42', NULL),
(1555, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:23:58', NULL),
(1556, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:24:03', NULL),
(1557, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:25:30', NULL),
(1558, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:26:36', NULL),
(1559, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:27:57', NULL),
(1560, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:28:01', NULL),
(1561, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV27/edit-save/9', 'Mettre à jour les données :nom à Liste des RDV', 14, '2017-07-28 11:33:23', NULL),
(1562, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:34:12', NULL),
(1563, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:34:16', NULL),
(1564, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:37:51', NULL),
(1565, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:37:54', NULL),
(1566, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:39:20', NULL),
(1567, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 10, '2017-07-28 11:39:23', NULL),
(1568, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/delete/10', 'Supprimer les données :nom au RDV', 10, '2017-07-28 11:39:33', NULL),
(1569, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/add-save', 'Ajouter de nouvelles données :nom à Notes', 10, '2017-07-28 11:39:48', NULL),
(1570, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/memo/delete/13', 'Supprimer les données :nom au Notes', 10, '2017-07-28 11:39:51', NULL),
(1571, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/edit-save/11', 'Mettre à jour les données :nom à RDV', 10, '2017-07-28 11:41:06', NULL),
(1572, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Ajouter de nouvelles données :nom à Clients', 10, '2017-07-28 11:47:10', NULL),
(1573, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/edit-save/3', 'Mettre à jour les données :nom à Devis', 10, '2017-07-28 11:48:27', NULL),
(1574, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Devis/edit-save/2', 'Mettre à jour les données :nom à Devis', 10, '2017-07-28 11:48:41', NULL),
(1575, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/RDV/edit-save/11', 'Mettre à jour les données :nom à RDV', 10, '2017-07-28 11:48:58', NULL),
(1576, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 10, '2017-07-28 11:49:05', NULL),
(1577, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:49:08', NULL),
(1578, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/delete/18', 'Supprimer les données :nom au Listes des Clients', 14, '2017-07-28 11:49:24', NULL),
(1579, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/edit-save/19', 'Mettre à jour les données :nom à Listes des Clients', 14, '2017-07-28 11:49:41', NULL),
(1580, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/clients23/edit-save/19', 'Mettre à jour les données :nom à Listes des Clients', 14, '2017-07-28 11:49:54', NULL),
(1581, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/9', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:27', NULL),
(1582, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/7', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:31', NULL),
(1583, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/8', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:34', NULL),
(1584, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/6', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:37', NULL),
(1585, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/4', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:40', NULL),
(1586, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/3', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:43', NULL),
(1587, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/commandes/delete/1', 'Supprimer les données :nom au Liste des Commandes', 14, '2017-07-28 11:50:46', NULL),
(1588, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:53:59', NULL),
(1589, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:54:02', NULL),
(1590, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:54:38', NULL),
(1591, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:54:42', NULL),
(1592, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/12', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:54:50', NULL),
(1593, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/11', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:54:53', NULL),
(1594, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/9', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:54:57', NULL),
(1595, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/10', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:00', NULL),
(1596, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/6', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:03', NULL),
(1597, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/4', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:07', NULL),
(1598, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/2', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:09', NULL),
(1599, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/5', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:13', NULL),
(1600, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/factures/delete/1', 'Supprimer les données :nom au Liste des Commandes en detail', 14, '2017-07-28 11:55:16', NULL),
(1601, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 11:55:30', NULL),
(1602, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 5, '2017-07-28 11:55:33', NULL),
(1603, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 5, '2017-07-28 11:55:46', NULL),
(1604, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/login', ': connexion par adresse email avec adresse IP: ip', 14, '2017-07-28 11:55:49', NULL),
(1605, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/7', 'Supprimer les données :nom au Liste des Commerciaux', 14, '2017-07-28 11:56:12', NULL),
(1606, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/8', 'Supprimer les données :nom au Liste des Commerciaux', 14, '2017-07-28 11:56:51', NULL),
(1607, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/16', 'Supprimer les données :nom au Liste des Commerciaux', 14, '2017-07-28 11:57:40', NULL),
(1608, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/15', 'Supprimer les données :nom au Liste des Commerciaux', 14, '2017-07-28 11:57:46', NULL),
(1609, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/Commerciaux/delete/13', 'Supprimer les données :nom au Liste des Commerciaux', 14, '2017-07-28 11:57:51', NULL),
(1610, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ': déconnexion', 14, '2017-07-28 12:08:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Clients', 'Module', 'produits', 'normal', 'fa fa-users', 0, 1, 0, 2, 1, '2017-07-23 07:46:51', '2017-07-28 05:50:01'),
(2, 'Clients', 'Module', 'clients29', 'normal', 'fa fa-file-text-o', 1, 0, 0, 2, 1, '2017-07-23 07:47:36', '2017-07-25 06:39:30'),
(93, 'Post it', 'Module', 'memo', 'normal', 'fa fa-tag', 0, 1, 0, 2, 4, '2017-07-23 08:15:12', '2017-07-23 08:44:33'),
(95, 'RDV', 'Route', 'AdminRDVControllerGetIndex', 'normal', 'fa fa-calendar', 0, 1, 0, 2, 5, '2017-07-23 08:15:13', NULL),
(99, 'Détail', 'Route', 'AdminFactures28ControllerGetIndex', 'normal', 'fa fa-filter', 0, 1, 0, 1, 10, '2017-07-23 08:32:28', '2017-07-25 06:24:35'),
(100, 'Commandes', 'Module', 'commandes28', 'normal', 'fa fa-list-alt', 0, 1, 0, 2, 2, '2017-07-23 08:36:22', NULL),
(101, 'Produits', 'Module', 'produits', 'normal', 'fa fa-product-hunt', 0, 1, 0, 2, 3, '2017-07-23 08:37:08', '2017-07-28 05:49:04'),
(102, 'Détail', 'Module', 'clients', 'normal', NULL, 100, 0, 0, 2, 4, '2017-07-23 08:38:20', '2017-07-25 07:41:51'),
(106, 'Commandes', 'Module', 'commandes28', 'normal', NULL, 100, 1, 0, 2, 1, '2017-07-23 08:43:06', NULL),
(107, 'Produits', 'Module', 'produits', 'normal', NULL, 101, 1, 0, 2, 1, '2017-07-23 08:45:00', NULL),
(108, 'Stocks', 'Module', 'stocks', 'normal', NULL, 101, 1, 0, 2, 2, '2017-07-23 08:45:15', NULL),
(109, 'Liste des Commandes', 'Module', 'commandes', 'normal', 'fa fa-list-alt', 0, 1, 0, 3, 3, '2017-07-23 08:47:48', '2017-07-28 06:06:16'),
(111, 'Liste des Commerciaux', 'Module', 'Commerciaux', 'normal', 'fa fa-user', 0, 1, 0, 3, 4, '2017-07-23 08:47:48', '2017-07-28 06:09:28'),
(112, 'Liste des Memo', 'Module', 'memo26', 'normal', 'fa fa-tags', 0, 1, 0, 3, 6, '2017-07-23 08:47:48', '2017-07-23 13:16:41'),
(113, 'Liste des RDV', 'Module', 'RDV27', 'normal', 'fa fa-calendar', 0, 1, 0, 3, 5, '2017-07-23 08:47:48', '2017-07-23 13:17:06'),
(114, 'Listes des Clients', 'Route', 'AdminClients23ControllerGetIndex', 'normal', 'fa fa-group', 0, 1, 0, 3, 2, '2017-07-23 08:47:48', '2017-07-23 13:17:31'),
(117, 'Produits', 'Module', 'commandes', 'normal', 'fa fa-product-hunt', 0, 1, 0, 3, 7, '2017-07-23 13:11:35', '2017-07-28 06:06:33'),
(119, 'Stocks', 'Module', 'stocks', 'normal', NULL, 117, 1, 0, 3, 2, '2017-07-23 13:12:11', '2017-07-28 10:36:59'),
(120, 'Commandes', 'Module', 'commandes', 'normal', NULL, 109, 1, 0, 3, 1, '2017-07-23 13:12:48', NULL),
(121, 'Clients', 'Module', 'clients23', 'normal', NULL, 114, 1, 0, 3, 1, '2017-07-23 13:13:01', NULL),
(122, 'Commerciaux', 'Module', 'Commerciaux', 'normal', NULL, 111, 1, 0, 3, 1, '2017-07-23 13:13:19', NULL),
(123, 'Mémo', 'Module', 'memo26', 'normal', NULL, 112, 1, 0, 3, 1, '2017-07-23 13:13:38', NULL),
(124, 'Rendez vous', 'Module', 'RDV27', 'normal', NULL, 113, 1, 0, 3, 1, '2017-07-23 13:13:50', NULL),
(125, 'Détail', 'Module', 'factures', 'normal', NULL, 109, 1, 0, 3, 2, '2017-07-23 13:14:06', NULL),
(126, 'Stats', 'Statistic', 'statistic_builder/show/admin', 'normal', NULL, 0, 1, 1, 3, 1, '2017-07-24 09:57:57', NULL),
(127, 'Fiche Clients', 'Route', 'AdminClients29ControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 1, 0, 1, 11, '2017-07-24 11:27:09', '2017-07-25 06:28:18'),
(128, 'Devis', 'Module', 'Devis', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, NULL, '2017-07-24 12:16:18', '2017-07-25 06:13:54'),
(129, 'Produits', 'Module', 'Devis', 'normal', 'fa fa-product-hunt', 0, 1, 0, 1, NULL, '2017-07-24 19:33:01', '2017-07-25 06:17:47'),
(130, 'RDV', 'Module', NULL, 'normal', 'fa fa-calendar', 0, 1, 0, 1, NULL, '2017-07-24 19:35:35', '2017-07-25 06:22:33'),
(131, 'Fiche Client', 'Module', 'clients29', 'normal', NULL, 1, 0, 0, 2, 2, '2017-07-25 06:19:51', '2017-07-25 07:17:59'),
(132, 'Clients', 'Module', 'clients', 'normal', 'fa fa-file-text-o', 0, 1, 0, 1, NULL, '2017-07-25 06:23:40', '2017-07-25 06:30:33'),
(133, 'Ajout Client', 'URL', '/admin/clients/add', 'normal', NULL, 1, 1, 0, 2, 2, '2017-07-25 06:24:38', '2017-07-26 07:56:35'),
(134, 'Fiche Clients', 'Module', 'clients29', 'normal', 'fa fa-file-text-o', 114, 0, 0, 3, 2, '2017-07-25 06:28:24', '2017-07-25 06:34:51'),
(135, 'Fiche Clients', 'Module', 'clients29', 'normal', 'fa fa-file-text-o', 114, 0, 0, 3, 2, '2017-07-25 06:35:25', '2017-07-25 09:59:03'),
(136, 'Clients', 'Route', 'AdminClientsControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 6, '2017-07-25 06:39:21', '2017-07-25 06:46:10'),
(137, 'Commandes', 'Route', 'AdminCommandeClientControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 7, '2017-07-25 06:39:21', '2017-07-25 06:43:45'),
(138, 'Detail', 'Route', 'AdminFactures28ControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 8, '2017-07-25 06:39:22', '2017-07-25 06:43:54'),
(139, 'Devis', 'Route', 'AdminDevisControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 9, '2017-07-25 06:39:22', '2017-07-25 06:44:09'),
(140, 'Fiche clients', 'Route', 'AdminClients29ControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 10, '2017-07-25 06:39:22', '2017-07-25 06:44:18'),
(141, 'Liste des Commandes', 'Route', 'AdminCommandesControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 11, '2017-07-25 06:39:22', '2017-07-25 06:44:24'),
(142, 'Liste des Commandes en detail', 'Route', 'AdminFacturesControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 12, '2017-07-25 06:39:22', '2017-07-25 06:44:34'),
(143, 'Liste des Commerciaux', 'Route', 'AdminCommerciauxControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 13, '2017-07-25 06:39:22', '2017-07-25 06:44:41'),
(144, 'Liste des Memo', 'Route', 'AdminMemo26ControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 14, '2017-07-25 06:39:23', '2017-07-25 06:44:47'),
(145, 'Liste des RDV', 'Route', 'AdminRDV27ControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 15, '2017-07-25 06:39:23', '2017-07-25 06:44:56'),
(146, 'Listes des Clients', 'Route', 'AdminClients23ControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 16, '2017-07-25 06:39:23', '2017-07-25 06:45:03'),
(147, 'Notes', 'Route', 'AdminMemoControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 17, '2017-07-25 06:39:23', '2017-07-25 06:45:17'),
(148, 'Produits', 'Route', 'AdminProduitsControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 18, '2017-07-25 06:39:23', '2017-07-25 06:45:27'),
(149, 'Stocks', 'Route', 'AdminStocksControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 19, '2017-07-25 06:39:23', '2017-07-25 06:45:35'),
(150, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-music', 0, 0, 0, 2, 20, '2017-07-25 06:39:23', '2017-07-25 06:45:42'),
(151, 'Clients', 'Module', 'clients', 'normal', NULL, 1, 1, 0, 2, 1, '2017-07-25 06:39:49', '2017-07-25 07:18:21'),
(152, 'Nouvelle Commande', 'URL', '/admin/commandes28/add', 'normal', NULL, 100, 1, 0, 2, 2, '2017-07-25 07:31:08', '2017-07-26 08:00:58'),
(153, 'Devis', 'Module', 'Devis', 'normal', NULL, 100, 1, 0, 2, 3, '2017-07-25 07:41:26', NULL),
(154, 'Clients', 'Route', 'AdminClientsControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 8, '2017-07-25 09:57:35', '2017-07-25 10:03:12'),
(155, 'Commandes', 'Route', 'AdminCommandeClientControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 9, '2017-07-25 09:57:35', '2017-07-25 10:03:00'),
(156, 'Fiche clients', 'Route', 'AdminClients29ControllerGetIndex', 'normal', 'fa fa-users', 114, 1, 0, 3, 2, '2017-07-25 09:57:35', NULL),
(157, 'Liste des Commandes', 'Route', 'AdminCommandesControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 10, '2017-07-25 09:57:35', '2017-07-25 10:02:50'),
(158, 'Liste des Commandes en detail', 'Route', 'AdminFacturesControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 11, '2017-07-25 09:57:36', '2017-07-25 10:02:40'),
(159, 'Liste des Commerciaux', 'Route', 'AdminCommerciauxControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 12, '2017-07-25 09:57:36', '2017-07-25 10:02:28'),
(160, 'Liste des Memo', 'Route', 'AdminMemo26ControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 13, '2017-07-25 09:57:36', '2017-07-25 10:02:20'),
(161, 'Liste des RDV', 'Route', 'AdminRDV27ControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 14, '2017-07-25 09:57:36', '2017-07-25 10:02:11'),
(162, 'Notes', 'Route', 'AdminMemoControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 15, '2017-07-25 09:57:36', '2017-07-25 10:02:01'),
(163, 'Produits', 'Route', 'AdminProduitsControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 16, '2017-07-25 09:57:36', '2017-07-25 10:01:51'),
(164, 'RDV', 'Route', 'AdminRDVControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 17, '2017-07-25 09:57:37', '2017-07-25 10:01:39'),
(165, 'Stocks', 'Route', 'AdminStocksControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 19, '2017-07-25 09:57:37', '2017-07-25 10:01:18'),
(166, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 0, 0, 3, 18, '2017-07-25 09:57:37', '2017-07-25 10:01:06'),
(167, 'Stats', 'URL', '/admin/commercial', 'normal', NULL, 0, 1, 1, 2, NULL, '2017-07-26 12:20:33', NULL),
(168, 'Produits', 'Route', 'AdminProduits311ControllerGetIndex', NULL, 'fa fa-product-hunt', 0, 1, 0, 1, 21, '2017-07-27 13:03:34', NULL),
(169, 'Produits', 'Module', 'produits', 'normal', NULL, 117, 1, 0, 3, 1, '2017-07-27 13:09:27', NULL),
(170, 'Stocks_A', 'Route', 'AdminStocks321ControllerGetIndex', NULL, 'fa fa-database', 0, 1, 0, 1, 22, '2017-07-27 13:13:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2017-07-18 10:17:42', NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2017-07-18 10:17:42', NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2017-07-18 10:17:42', NULL),
(4, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2017-07-18 10:17:42', NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2017-07-18 10:17:42', NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2017-07-18 10:17:42', NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2017-07-18 10:17:42', NULL),
(8, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2017-07-18 10:17:42', NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2017-07-18 10:17:42', NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2017-07-18 10:17:42', NULL),
(11, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2017-07-18 10:17:42', NULL),
(12, 'Clients', 'fa fa-users', 'clients', 'clients', 'AdminClientsController', 0, 0, '2017-07-19 15:45:13', NULL),
(13, 'Stocks', 'fa fa-database', 'stocks', 'stocks', 'AdminStocksController', 0, 0, '2017-07-19 15:55:58', NULL),
(14, 'Produits', 'fa fa-product-hunt', 'produits', 'produits', 'AdminProduitsController', 0, 0, '2017-07-19 16:04:05', NULL),
(15, 'Commandes', 'fa fa-list-alt', 'commandes28', 'commandes', 'AdminCommandeClientController', 0, 0, '2017-07-20 12:27:32', NULL),
(16, 'RDV', 'fa fa-calendar', 'RDV', 'RDV', 'AdminRDVController', 0, 0, '2017-07-20 13:46:53', NULL),
(21, 'Liste des Commerciaux', 'fa fa-user', 'Commerciaux', 'cms_users', 'AdminCommerciauxController', 0, 0, '2017-07-23 05:35:04', NULL),
(22, 'Liste des Commandes', 'fa fa-list-alt', 'commandes', 'commandes', 'AdminCommandesController', 0, 0, '2017-07-23 05:36:50', NULL),
(23, 'Listes des Clients', 'fa fa-users', 'clients23', 'clients', 'AdminClients23Controller', 0, 0, '2017-07-23 05:40:26', NULL),
(24, 'Notes', 'fa fa-pencil-square-o', 'memo', 'memo', 'AdminMemoController', 0, 0, '2017-07-23 05:56:37', NULL),
(25, 'Liste des Commandes en detail', 'fa fa-list-alt', 'factures', 'factures', 'AdminFacturesController', 0, 0, '2017-07-23 05:58:39', NULL),
(26, 'Liste des Memo', 'fa fa-th-list', 'memo26', 'memo', 'AdminMemo26Controller', 0, 0, '2017-07-23 05:59:33', NULL),
(27, 'Liste des RDV', 'fa fa-calendar', 'RDV27', 'RDV', 'AdminRDV27Controller', 0, 0, '2017-07-23 06:00:21', NULL),
(28, 'Detail', 'fa fa-glass', 'factures28', 'factures', 'AdminFactures28Controller', 0, 0, '2017-07-23 08:32:27', NULL),
(29, 'Fiche clients', 'fa fa-users', 'clients29', 'clients', 'AdminClients29Controller', 0, 0, '2017-07-24 11:27:09', NULL),
(30, 'Devis', 'fa fa-align-center', 'Devis', 'Devis', 'AdminDevisController', 0, 0, '2017-07-24 11:37:48', NULL),
(31, 'Produits_A', 'fa fa-product-hunt', 'produits', 'produits', 'AdminProduits311Controller', 0, 0, '2017-07-27 13:03:33', NULL),
(32, 'Stocks_A', 'fa fa-database', 'stocks', 'stocks', 'AdminStocks321Controller', 0, 0, '2017-07-27 13:13:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-black-light', '2017-07-18 10:17:43', NULL),
(2, 'commercial', 0, 'skin-black-light', NULL, NULL),
(3, 'Admin', 0, 'skin-black-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2017-07-18 10:17:43', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2017-07-18 10:17:43', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2017-07-18 10:17:43', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2017-07-18 10:17:43', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2017-07-18 10:17:43', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2017-07-18 10:17:43', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2017-07-18 10:17:43', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2017-07-18 10:17:43', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2017-07-18 10:17:43', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2017-07-18 10:17:43', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2017-07-18 10:17:43', NULL),
(12, 1, 1, 1, 1, 0, 2, 4, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(14, 1, 1, 1, 1, 0, 2, 12, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(18, 1, 0, 1, 0, 0, 2, 14, NULL, NULL),
(19, 1, 0, 1, 0, 0, 2, 13, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(36, 1, 1, 1, 1, 1, 3, 12, NULL, NULL),
(37, 1, 1, 1, 1, 1, 3, 20, NULL, NULL),
(38, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
(39, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(40, 1, 1, 1, 1, 1, 3, 22, NULL, NULL),
(41, 1, 1, 1, 1, 1, 3, 25, NULL, NULL),
(42, 1, 1, 1, 1, 1, 3, 21, NULL, NULL),
(43, 1, 1, 1, 1, 1, 3, 26, NULL, NULL),
(44, 1, 1, 1, 1, 1, 3, 27, NULL, NULL),
(45, 1, 1, 1, 1, 1, 3, 23, NULL, NULL),
(46, 1, 1, 1, 1, 1, 3, 24, NULL, NULL),
(47, 1, 1, 1, 1, 1, 3, 14, NULL, NULL),
(48, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
(49, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
(50, 1, 1, 1, 1, 1, 3, 17, NULL, NULL),
(51, 1, 1, 1, 1, 1, 3, 4, NULL, NULL),
(52, 1, 1, 1, 1, 0, 2, 15, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(55, 1, 0, 1, 1, 0, 2, 19, NULL, NULL),
(56, 1, 1, 1, 1, 0, 2, 22, NULL, NULL),
(57, 1, 1, 1, 1, 0, 2, 25, NULL, NULL),
(58, 1, 1, 1, 1, 0, 2, 21, NULL, NULL),
(59, 1, 1, 1, 1, 0, 2, 26, NULL, NULL),
(60, 1, 1, 1, 1, 0, 2, 27, NULL, NULL),
(61, 1, 1, 1, 1, 0, 2, 23, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(63, 1, 0, 1, 0, 0, 2, 28, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(65, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(66, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(67, 1, 1, 1, 1, 0, 2, 30, NULL, NULL),
(68, 1, 1, 1, 1, 1, 2, 29, NULL, NULL),
(69, 1, 1, 1, 1, 1, 3, 29, NULL, NULL),
(70, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(71, 1, 1, 1, 1, 1, 1, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', 'gainsboro', 'text', NULL, 'Input hexacode', '2017-07-18 10:17:43', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2017-07-18 10:17:43', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2017-07-18 10:17:43', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2017-07-18 10:17:43', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'SODEL', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2017-07-18 10:17:43', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2017-07/4d451772839ea1065f939d58bca9c970.png', 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2017-07/388ba4035caf9669b54ec2742e8e0f11.png', 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', 'AIzaSyAgwFXpSle_xovLpWk3DQDE-9gbN1NdGSc', 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Stats', 'stats', '2017-07-20 15:34:36', '2017-07-20 15:34:41'),
(2, 'Admin', 'admin', '2017-07-23 13:18:49', '2017-07-23 13:23:09'),
(3, 'Commercial', 'commercial', '2017-07-24 09:58:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 2, 'ca62a64faabf84aad85d48ab3c449ba7', 'smallbox', 'area2', 0, NULL, '{"name":"Clients","icon":"ion-person-stalker","color":"bg-green","link":"\\/admin\\/clients23?m=121","sql":"select count(id) from clients"}', '2017-07-23 13:19:05', NULL),
(2, 2, '6c680343271f8c188c1985a1cac3c8e3', 'smallbox', 'area3', 0, NULL, '{"name":"Commerciaux","icon":"ion-person-stalker","color":"bg-aqua","link":"\\/admin\\/Commerciaux?m=122","sql":"select count(*) from cms_users where cms_users.id_cms_privileges=2"}', '2017-07-23 13:25:39', NULL),
(3, 2, '460622732350cb5c793e788d4b058580', 'smallbox', 'area5', 0, NULL, '{"name":"Commande","icon":"ion-android-clipboard","color":"bg-yellow","link":"\\/admin\\/commandes?m=120","sql":"select count(id) from commandes"}', '2017-07-23 13:25:42', NULL),
(4, 2, '42dac8c8574eada4d5d3577cdb710ee9', 'smallbox', 'area5', 0, NULL, '{"name":"Rendez vous","icon":"ion-ios-calendar-outline","color":"bg-red","link":"\\/admin\\/RDV27?m=124","sql":"SELECT count(id) FROM RDV"}', '2017-07-24 09:43:06', NULL),
(5, 2, '20a987def2716ff103a7df9be0a30dbc', 'smallbox', 'area5', 1, NULL, '{"name":"Post-it","icon":"ion-clipboard","color":"bg-yellow","link":"\\/admin\\/memo26?m=123","sql":"SELECT count(id) from memo"}', '2017-07-24 09:43:17', NULL),
(6, 2, 'c094b48176b2a210d91817c148ff1987', 'smallbox', 'area5', 2, NULL, '{"name":"Produits","icon":"ion-soup-can-outline","color":"bg-red","link":"\\/admin\\/produits?m=118","sql":"SELECT count(id) FROM produits"}', '2017-07-24 09:53:57', NULL),
(7, 3, '44da30ced7d702a44319699b8f16810c', 'smallbox', 'area5', 0, NULL, '{"name":"Produits","icon":"ion-soup-can-outline","color":"bg-yellow","link":"\\/admin\\/produits?m=107","sql":"SELECT count(id) FROM produits"}', '2017-07-24 09:59:07', NULL),
(8, 3, '91f3e4f8cc9f1e008fd4e2609ef45a64', 'smallbox', 'area5', 1, NULL, '{"name":"Post it","icon":"ion-clipboard","color":"bg-red","link":"\\/admin\\/memo?m=93","sql":"SELECT count(id) FROM memo WHERE memo.Commercial_id=3"}', '2017-07-24 10:00:36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(2, 'Marco', 'uploads/2017-07/26247560.jpg', 'marco@marco.com', '$2y$10$eU8z4QhfZqyeXIM/ENnw.uZUSG3UaeNFgY4yZmoOc9kivOVREnqZW', 1, '2017-07-18 10:22:11', '2017-07-19 13:53:15', NULL),
(4, 'Morel', 'uploads/2017-07/octocat.png', 'Morel@Cisse.com', '$2y$10$hJ9mJQ543RzLzvFVU8vZZe1WGgtqIj3jB9CEFoGQfdfSGGvCJQ3Cu', 1, '2017-07-19 13:51:25', '2017-07-24 11:41:19', NULL),
(5, 'Mouad', 'uploads/2017-07/simpson-20homer.jpg', 'mouad@mouad.com', '$2y$10$U3rlG.o7smpIe1w9aNAXvej9JhQcEok9CDFBNYpvbhROwTR/E3bzm', 1, '2017-07-19 15:23:32', '2017-07-28 05:44:21', NULL),
(6, 'Emilie', 'uploads/2017-07/pandaroux.jpg', 'emilie@emilie.com', '$2y$10$h3CNAbv.vjXDTQgVDJqBf.2/ptO5zB9kXvw0L9gsp4IQCIwge0fKW', 1, '2017-07-19 15:39:29', '2017-07-24 13:07:17', NULL),
(9, 'morel', 'uploads/2017-07/testeur.png', 'morel@test.fr', '$2y$10$cHztSr74Qi/zFTrvevOYEOna1awh.A7TgVdKhD.6CXPAUwxxQiqCW', 2, '2017-07-25 07:11:45', NULL, NULL),
(10, 'mouad', 'uploads/2017-07/bg-blur2.jpg', 'mouad@test.fr', '$2y$10$nTkzf/B4CW9eqJpeoDGLce2iY5Gg2No8MMwkQiw3cT1OKHoVQlR7O', 2, '2017-07-25 07:12:08', '2017-07-28 05:43:06', NULL),
(11, 'emilie', 'uploads/2017-07/testeur.png', 'emilie@test.fr', '$2y$10$lGiB1LSTf9d3zy2ot5Dc/O.YjMesdfpVUvUYHWnfmwmVE8UKerUs.', 2, '2017-07-25 07:12:34', NULL, NULL),
(12, 'marco', 'uploads/2017-07/testeur.png', 'marco@test.fr', '$2y$10$AzrkaPtxb9may1qSriS9luGWjIYkCdh363xgWTH1DAZil.J3jMB1a', 2, '2017-07-25 07:12:56', NULL, NULL),
(14, 'mouad', 'uploads/2017-07/sodel.png', 'mouad@admin.fr', '$2y$10$1wdRMt3HhoPDJ6NaIHf.Zu4guHG5I4kPDXrjLBJlkCyt.MxZr6uFW', 3, '2017-07-25 07:14:41', '2017-07-28 05:43:51', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial` int(11) NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_Commande` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id`, `Commercial`, `client`, `ref_Commande`, `total`, `created_at`, `updated_at`) VALUES
(5, 12, '13', '600002', 115.96, '2017-07-27 09:49:55', NULL),
(10, 10, '19', 'morel', 57.98, '2017-07-28 10:02:34', NULL),
(11, 10, '5', 'zzzzz', 259.98, '2017-07-28 10:15:21', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Devis`
--

CREATE TABLE `Devis` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_Devis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `Devis`
--

INSERT INTO `Devis` (`id`, `Commercial`, `client`, `ref_Devis`, `total`, `created_at`, `updated_at`) VALUES
(2, '10', '2', 'rrrrrr', 187.97, '2017-07-25 08:23:50', '2017-07-28 11:48:40'),
(3, '4', '5', 'DM-002', 389.97, '2017-07-25 08:24:50', '2017-07-28 11:48:27'),
(6, '10', '19', 'sdqsfqsd', 54.98, '2017-07-28 10:03:25', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Client_id` int(11) NOT NULL,
  `Produits_id` int(11) NOT NULL,
  `Promotion` double DEFAULT NULL,
  `Quantité` int(11) NOT NULL,
  `Soustotal` double NOT NULL,
  `Prix` double NOT NULL,
  `Valider` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `factures`
--

INSERT INTO `factures` (`id`, `created_at`, `updated_at`, `Client_id`, `Produits_id`, `Promotion`, `Quantité`, `Soustotal`, `Prix`, `Valider`) VALUES
(7, NULL, NULL, 5, 3, NULL, 2, 57.98, 28.99, NULL),
(8, NULL, NULL, 5, 3, NULL, 2, 57.98, 28.99, NULL),
(13, NULL, NULL, 10, 3, NULL, 2, 57.98, 28.99, NULL),
(14, NULL, NULL, 11, 5, NULL, 2, 259.98, 129.99, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `facturesDevis`
--

CREATE TABLE `facturesDevis` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Client_id` int(11) NOT NULL,
  `Produits_id` int(11) NOT NULL,
  `Promotion` double DEFAULT NULL,
  `Quantité` int(11) NOT NULL,
  `Soustotal` double NOT NULL,
  `Prix` double NOT NULL,
  `Valider` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facturesDevis`
--

INSERT INTO `facturesDevis` (`id`, `created_at`, `updated_at`, `Client_id`, `Produits_id`, `Promotion`, `Quantité`, `Soustotal`, `Prix`, `Valider`) VALUES
(1, NULL, NULL, 1, 1, NULL, 2, 60, 30, NULL),
(5, NULL, NULL, 6, 3, 3, 2, 54.98, 28.99, NULL),
(6, NULL, NULL, 3, 5, NULL, 3, 389.97, 129.99, NULL),
(8, NULL, NULL, 2, 3, NULL, 2, 57.98, 28.99, NULL),
(7, NULL, NULL, 2, 5, NULL, 1, 129.99, 129.99, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `memo`
--

CREATE TABLE `memo` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Destinataire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Societe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `memo`
--

INSERT INTO `memo` (`id`, `Commercial_id`, `Description`, `Destinataire`, `Societe`, `created_at`, `updated_at`) VALUES
(1, '7', 'Je teste les mémos', NULL, NULL, '2017-07-23 08:19:18', NULL),
(2, '16', 'blabla', NULL, NULL, NULL, '2017-07-25 07:47:59'),
(3, '6', 'ahahah', NULL, NULL, '2017-07-24 10:40:45', NULL),
(5, '2', 'hohoho', NULL, '', '2017-07-24 10:41:12', NULL),
(6, '6', 'test notes', '5', '', '2017-07-24 12:28:50', NULL),
(7, '7', 'Hello world !', '5', NULL, '2017-07-24 12:33:05', NULL),
(8, '7', 'Youpi tralala!', '5', '7', '2017-07-24 12:46:53', NULL),
(9, '7', 'qqqqqqqqqqqqqqqqqqqqqq', '2', '15', '2017-07-27 12:17:04', '2017-07-27 12:45:03'),
(11, '15', 'AAAAAAAAAAAAAAAAAAAAAa', NULL, NULL, '2017-07-27 13:00:36', '2017-07-28 10:19:34'),
(12, '10', 'Hello', '11', '8', '2017-07-28 10:53:23', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_152014_add_table_cms_privileges', 1),
(5, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(6, '2016_08_07_152320_add_table_cms_settings', 1),
(7, '2016_08_07_152421_add_table_cms_users', 1),
(8, '2016_08_07_154624_add_table_cms_moduls', 1),
(9, '2016_08_17_225409_add_status_cms_users', 1),
(10, '2016_08_20_125418_add_table_cms_notifications', 1),
(11, '2016_09_04_033706_add_table_cms_email_queues', 1),
(12, '2016_09_16_035347_add_group_setting', 1),
(13, '2016_09_16_045425_add_label_setting', 1),
(14, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(15, '2016_10_01_141740_add_method_type_apicustom', 1),
(16, '2016_10_01_141846_add_parameters_apicustom', 1),
(17, '2016_10_01_141934_add_responses_apicustom', 1),
(18, '2016_10_01_144826_add_table_apikey', 1),
(19, '2016_11_14_141657_create_cms_menus', 1),
(20, '2016_11_15_132350_create_cms_email_templates', 1),
(21, '2016_11_15_190410_create_cms_statistics', 1),
(22, '2016_11_17_102740_create_cms_statistic_components', 1),
(23, '2017_07_19_074122_create_clients', 1),
(24, '2017_07_19_074151_create_Commandes', 1),
(25, '2017_07_19_074208_create_factures', 1),
(26, '2017_07_19_074306_create_produits', 1),
(27, '2017_07_19_074350_create_stocks', 1),
(28, '2017_07_20_080220_create_memo', 1),
(29, '2017_07_20_080524_create_RDV', 1),
(30, '2017_07_24_133441_create_Devis', 2),
(31, '2017_07_24_135304_create_factureDevis', 3);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Impedance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sensibilite_aux_entrees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Source_de_courant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dimensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Poids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `Nom`, `Reference`, `Image`, `Description`, `Impedance`, `Sensibilite_aux_entrees`, `Source_de_courant`, `Dimensions`, `Poids`, `Prix`, `created_at`, `updated_at`) VALUES
(1, 'Enceinte universelle professionnelle', 'PAB-308M/SW', NULL, 'Multi-fonctions, applications universelles :\r\ncaractéristiques des enceintes IMG STAGELINE de la série 300. Elles sont adaptées pour une installation fixe ou une utilisation mobile, pour une sonorisation puissante et avec une bonne tenue en niveau et pour des applications d\'enceintes arrières ou Sidefill. Les systèmes très compacts et faciles à transporter sont également parfaits pour une utilisation mobile combinés aux subwoofers tels que PSUB-12AKA ou PSUB-15AKA et comme petits moniteurs.', '8 Ω', '1222', '150 W', '340 x 303 x 379 mm', '10 kg', 30, '2017-07-20 14:43:11', '2017-07-28 10:20:02'),
(2, 'Paire d\'enceintes de sonorisation de grande qualité', 'PAB-68/SW', NULL, 'Cette série puissante et particulièrement attractive d\'enceintes de sonorisation\r\ns\'adresse très clairement à une installation fixe : restauration, hôtellerie, sonorisation en discothèque et salles de conférences de pièces annexes... : ces enceintes PAB- proposent un rapport prix / performances parfait et une qualité excellente.', '8 Ω', '-', '70 W', '210 x 350 x 200 mm', '3,9 Kg', 19.99, '2017-07-20 14:44:51', '2017-07-20 15:25:01'),
(3, 'Microphone dynamique Rétro', 'DM-065', NULL, 'Microphone dynamique Rétro, look des années 50/60.\r\nPour la scène, le chant et le discours\r\nCardioïde\r\nInterrupteur Marche/Arrêt faible bruit\r\nVersion chromée\r\nAvec coffret plastique rembourré de mousse', '250 Ω', '1,3 mV/Pa/1 kHz', '-', '54 x 175 x 68 mm', '550 g', 28.99, '2017-07-20 14:47:11', '2017-07-20 15:24:54'),
(4, 'Amplificateur stéréo professionnel', 'STA-235', NULL, 'Amplificateur stéréo professionnel avec limiteur intégré\r\nAffichage LCD pour la température, le mode de fonctionnement et la puissance\r\n2 modes de fonctionnement réglables (stéréo ou bridgé)\r\nFonction limiteur commutable\r\nVentilateur régulateur de température\r\n2 réglages de niveau\r\nFonction Groundlift\r\nTemporisation d\'allumage des haut-parleurs\r\nProtégé contre les courts-circuits, surchauffes par circuit de protection avec affichage par LED\r\nLEDs pour surcharge, niveau et signal par canal', '1,2 V/10 kΩ', '-', '-', '482 x 100 x 330 mm, 2 U', '11,5 kg', 35, '2017-07-20 14:48:59', NULL),
(5, 'Casque Stéreo', 'MD-350', 'uploads/2017-07/testeur.png', 'Casque stéréo\r\nPour utilisation universelle\r\nSystème clos\r\nEcouteurs et serre-tête rembourrés\r\nCâble de 1,5 m de long, version unilatérale\r\nFiche jack 3,5 mâle plaquée or avec adaptateur 6,35', '32 Ω', '-', '-', '-', '160 g', 129.99, '2017-07-20 14:51:24', '2017-07-24 19:33:25');

-- --------------------------------------------------------

--
-- Structure de la table `RDV`
--

CREATE TABLE `RDV` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Heure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `RDV`
--

INSERT INTO `RDV` (`id`, `Commercial`, `Client`, `Info`, `Date`, `Heure`, `created_at`, `updated_at`) VALUES
(1, '7', '8', 'test', 'ezez', 'zezeze', '2017-07-23 08:27:35', NULL),
(2, '7', '6', 'premier rendez-vous', '2017-07-30', '23:30:45', '2017-07-24 19:36:23', NULL),
(8, '10', '13', 'hello hello', '2017-09-15', '14:45:00', '2017-07-28 10:51:17', '2017-07-28 11:01:26'),
(9, '2', '19', 'llllllllllllll', '2017-07-25', '15:15:15', '2017-07-28 11:15:41', '2017-07-28 11:33:23'),
(11, '10', '5', 'test test test test test', '2017-07-31', '15:15:30', '2017-07-28 11:21:47', '2017-07-28 11:48:58');

-- --------------------------------------------------------

--
-- Structure de la table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `Reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_Allemagne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_France` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_Pays_Bas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Allemagne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_France` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Pays_Bas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `stocks`
--

INSERT INTO `stocks` (`id`, `Reference`, `Stock_Allemagne`, `Stock_France`, `Stock_Pays_Bas`, `Reappro_Allemagne`, `Reappro_France`, `Reappro_Pays_Bas`, `created_at`, `updated_at`) VALUES
(1, 'AAAAAAAAAAA', '12', '11', '333333', '3322', '212', '322', '2017-07-27 13:20:09', '2017-07-28 10:44:19'),
(2, 'koko', '00', '00', '222222', '00', '00', '00', '2017-07-28 10:32:03', '2017-07-28 10:44:13'),
(3, 'koko', '33', '33', '1111111111111', '3', '33', '33', '2017-07-28 10:40:16', '2017-07-28 10:44:04');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_Commande` (`ref_Commande`);

--
-- Index pour la table `Devis`
--
ALTER TABLE `Devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facturesDevis`
--
ALTER TABLE `facturesDevis`
  ADD KEY `id` (`id`);

--
-- Index pour la table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `RDV`
--
ALTER TABLE `RDV`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `Devis`
--
ALTER TABLE `Devis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `facturesDevis`
--
ALTER TABLE `facturesDevis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `memo`
--
ALTER TABLE `memo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `RDV`
--
ALTER TABLE `RDV`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
