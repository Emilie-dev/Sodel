-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 24 Juillet 2017 à 10:05
-- Version du serveur :  5.7.18-0ubuntu0.16.04.1
-- Version de PHP :  7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Sodel`
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
(2, '2', 'SODEL', 'M. Floriant', 'Auch', 32000, 'Auch', 654446787, 'joel@sodelpro.com', 'Approuved', '2017-07-19 15:51:12', '2017-07-19 16:30:08'),
(5, '4', 'Simplon', 'M. KAPPES', 'Carca', 32000, 'Auch', 697989898, 'marcofrosi@gmail.com', 'Yes', '2017-07-20 14:31:24', NULL),
(6, '4', 'Kopané', 'M. Orel', 'Paris', 75000, 'Paris', 697989898, 'OrelChirot@gmail.com', 'Oui', '2017-07-20 14:32:42', NULL),
(7, '5', 'Pour le bien de Mouad', 'M. Mouad', 'Lectoure', 32700, 'Lectoure', 697989897, 'Moubarak@gmail.com', 'Oui', '2017-07-20 14:35:43', NULL),
(8, '6', 'Kanopé', 'Mme Hmouin', 'Riguepeu', 32320, 'Riguepeu', 697989898, 'emilie_dev@gmail.com', 'Oui', '2017-07-20 14:38:31', NULL),
(9, '7', 'az', 'az', 'az', 23165, 'az', 1234567890, 'ricococo32@gmail.com', NULL, '2017-07-23 08:11:22', NULL);

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
(410, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.160:8000/admin/Commerciaux/edit-save/4', 'Update data Morel at Liste des Commerciaux', 8, '2017-07-24 06:04:43', NULL);

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
(1, 'Clients', 'Module', 'clients', 'normal', 'fa fa-th-list', 0, 1, 0, 2, 1, '2017-07-23 07:46:51', NULL),
(2, 'client', 'Module', 'clients', 'normal', NULL, 1, 1, 0, 2, 1, '2017-07-23 07:47:36', NULL),
(93, 'Post it', 'Module', 'memo', 'normal', 'fa fa-tag', 0, 1, 0, 2, 4, '2017-07-23 08:15:12', '2017-07-23 08:44:33'),
(95, 'RDV', 'Route', 'AdminRDVControllerGetIndex', 'normal', 'fa fa-calendar', 0, 1, 0, 2, 5, '2017-07-23 08:15:13', NULL),
(99, 'Detail', 'Route', 'AdminFactures28ControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 10, '2017-07-23 08:32:28', NULL),
(100, 'Commandes', 'Module', 'commandes28', 'normal', 'fa fa-list-alt', 0, 1, 0, 2, 2, '2017-07-23 08:36:22', NULL),
(101, 'Produits', 'Module', 'produits', 'normal', 'fa fa-music', 0, 1, 0, 2, 3, '2017-07-23 08:37:08', NULL),
(102, 'Détail', 'Module', 'factures28', 'normal', NULL, 100, 1, 0, 2, 2, '2017-07-23 08:38:20', '2017-07-23 08:38:44'),
(106, 'Commandes', 'Module', 'commandes28', 'normal', NULL, 100, 1, 0, 2, 1, '2017-07-23 08:43:06', NULL),
(107, 'Produits', 'Module', 'produits', 'normal', NULL, 101, 1, 0, 2, 1, '2017-07-23 08:45:00', NULL),
(108, 'Stocks', 'Module', 'stocks', 'normal', NULL, 101, 1, 0, 2, 2, '2017-07-23 08:45:15', NULL),
(109, 'Liste des Commandes', 'Module', 'commandes', 'normal', 'fa fa-book', 0, 1, 0, 3, 2, '2017-07-23 08:47:48', '2017-07-23 13:15:44'),
(111, 'Liste des Commerciaux', 'Module', 'Commerciaux', 'normal', 'fa fa-group', 0, 1, 0, 3, 3, '2017-07-23 08:47:48', '2017-07-23 13:16:14'),
(112, 'Liste des Memo', 'Module', 'memo26', 'normal', 'fa fa-tags', 0, 1, 0, 3, 5, '2017-07-23 08:47:48', '2017-07-23 13:16:41'),
(113, 'Liste des RDV', 'Module', 'RDV27', 'normal', 'fa fa-calendar', 0, 1, 0, 3, 4, '2017-07-23 08:47:48', '2017-07-23 13:17:06'),
(114, 'Listes des Clients', 'Route', 'AdminClients23ControllerGetIndex', 'normal', 'fa fa-group', 0, 1, 0, 3, 1, '2017-07-23 08:47:48', '2017-07-23 13:17:31'),
(117, 'Produits', 'Module', 'produits', 'normal', 'fa fa-th-list', 0, 1, 0, 3, 6, '2017-07-23 13:11:35', NULL),
(118, 'Produits', 'Module', 'produits', 'normal', NULL, 117, 1, 0, 3, 1, '2017-07-23 13:11:57', NULL),
(119, 'Stocks', 'Module', 'stocks', 'normal', NULL, 117, 1, 0, 3, 2, '2017-07-23 13:12:11', NULL),
(120, 'Commandes', 'Module', 'commandes', 'normal', NULL, 109, 1, 0, 3, 1, '2017-07-23 13:12:48', NULL),
(121, 'Clients', 'Module', 'clients23', 'normal', NULL, 114, 1, 0, 3, 1, '2017-07-23 13:13:01', NULL),
(122, 'Commerciaux', 'Module', 'Commerciaux', 'normal', NULL, 111, 1, 0, 3, 1, '2017-07-23 13:13:19', NULL),
(123, 'Mémo', 'Module', 'memo26', 'normal', NULL, 112, 1, 0, 3, 1, '2017-07-23 13:13:38', NULL),
(124, 'Rendez vous', 'Module', 'RDV27', 'normal', NULL, 113, 1, 0, 3, 1, '2017-07-23 13:13:50', NULL),
(125, 'Détail', 'Module', 'factures', 'normal', NULL, 109, 1, 0, 3, 2, '2017-07-23 13:14:06', NULL);

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
(12, 'Clients', 'fa fa-music', 'clients', 'clients', 'AdminClientsController', 0, 0, '2017-07-19 15:45:13', NULL),
(13, 'Stocks', 'fa fa-cog', 'stocks', 'stocks', 'AdminStocksController', 0, 0, '2017-07-19 15:55:58', NULL),
(14, 'Produits', 'fa fa-product-hunt', 'produits', 'produits', 'AdminProduitsController', 0, 0, '2017-07-19 16:04:05', NULL),
(15, 'Commandes', 'fa fa-bar-chart', 'commandes28', 'commandes', 'AdminCommandeClientController', 0, 0, '2017-07-20 12:27:32', NULL),
(16, 'RDV', 'fa fa-calendar', 'RDV', 'RDV', 'AdminRDVController', 0, 0, '2017-07-20 13:46:53', NULL),
(21, 'Liste des Commerciaux', 'fa fa-glass', 'Commerciaux', 'cms_users', 'AdminCommerciauxController', 0, 0, '2017-07-23 05:35:04', NULL),
(22, 'Liste des Commandes', 'fa fa-glass', 'commandes', 'commandes', 'AdminCommandesController', 0, 0, '2017-07-23 05:36:50', NULL),
(23, 'Listes des Clients', 'fa fa-glass', 'clients23', 'clients', 'AdminClients23Controller', 0, 0, '2017-07-23 05:40:26', NULL),
(24, 'memo', 'fa fa-glass', 'memo', 'memo', 'AdminMemoController', 0, 0, '2017-07-23 05:56:37', NULL),
(25, 'Liste des Commandes en detail', 'fa fa-glass', 'factures', 'factures', 'AdminFacturesController', 0, 0, '2017-07-23 05:58:39', NULL),
(26, 'Liste des Memo', 'fa fa-glass', 'memo26', 'memo', 'AdminMemo26Controller', 0, 0, '2017-07-23 05:59:33', NULL),
(27, 'Liste des RDV', 'fa fa-glass', 'RDV27', 'RDV', 'AdminRDV27Controller', 0, 0, '2017-07-23 06:00:21', NULL),
(28, 'Detail', 'fa fa-glass', 'factures28', 'factures', 'AdminFactures28Controller', 0, 0, '2017-07-23 08:32:27', NULL);

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
(53, 1, 1, 1, 1, 0, 2, 24, NULL, NULL),
(54, 1, 1, 1, 1, 0, 2, 16, NULL, NULL),
(55, 1, 0, 1, 1, 0, 2, 19, NULL, NULL),
(56, 1, 1, 1, 1, 0, 2, 22, NULL, NULL),
(57, 1, 1, 1, 1, 0, 2, 25, NULL, NULL),
(58, 1, 1, 1, 1, 0, 2, 21, NULL, NULL),
(59, 1, 1, 1, 1, 0, 2, 26, NULL, NULL),
(60, 1, 1, 1, 1, 0, 2, 27, NULL, NULL),
(61, 1, 1, 1, 1, 0, 2, 23, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(63, 1, 0, 1, 1, 0, 2, 28, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 29, NULL, NULL);

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
(12, 'logo', 'uploads/2017-07/c43b073509561f630b31fd523d993d37.png', 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2017-07/388ba4035caf9669b54ec2742e8e0f11.png', 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Google API Key'),
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
(2, 'Admin', 'admin', '2017-07-23 13:18:49', '2017-07-23 13:23:09');

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
(1, 2, 'ca62a64faabf84aad85d48ab3c449ba7', 'smallbox', 'area1', 0, NULL, '{"name":"Clients","icon":"ion-person-stalker","color":"bg-green","link":"iii","sql":"select count(id) from clients"}', '2017-07-23 13:19:05', NULL),
(2, 2, '6c680343271f8c188c1985a1cac3c8e3', 'smallbox', 'area2', 0, NULL, '{"name":"Commerciaux","icon":"ion-person-stalker","color":"bg-aqua","link":"gg","sql":"select count(*) from cms_users where cms_users.id_cms_privileges=2"}', '2017-07-23 13:25:39', NULL),
(3, 2, '460622732350cb5c793e788d4b058580', 'smallbox', 'area3', 0, NULL, '{"name":"Commande","icon":"ion-android-clipboard","color":"bg-yellow","link":"dzdz","sql":"select count(id) from commandes"}', '2017-07-23 13:25:42', NULL);

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
(4, 'Morel', 'uploads/2017-07/octocat.png', 'Morel@Cisse.com', '$2y$10$d9im2P/rzKoCFDnGqYGfburJohMCZnFdLpwsvZ.ivtZ32dA1EH1XK', 1, '2017-07-19 13:51:25', '2017-07-24 06:04:42', NULL),
(5, 'Mouad', 'uploads/2017-07/bart-simpsonico.png', 'mouad@mouad.com', '$2y$10$U3rlG.o7smpIe1w9aNAXvej9JhQcEok9CDFBNYpvbhROwTR/E3bzm', 1, '2017-07-19 15:23:32', NULL, NULL),
(6, 'emilie', 'uploads/2017-07/image.jpg', 'emilie@emilie.com', '$2y$10$h3CNAbv.vjXDTQgVDJqBf.2/ptO5zB9kXvw0L9gsp4IQCIwge0fKW', 1, '2017-07-19 15:39:29', NULL, NULL),
(7, 'test', 'uploads/2017-07/avatar.jpg', 'test@test.fr', '$2y$10$gUSNFCttjsP3moFEd0Qk3O5B4bt7FKRMCI53F6Gq/dLIyTZhqpHtO', 2, '2017-07-20 11:05:57', NULL, NULL),
(8, 'Admin', 'uploads/2017-07/sodel.png', 'admin@admin.fr', '$2y$10$mlQE.ZYm/v4qSSYdOVrUP.dvvydRdX41P6Hzl8OzK7uGI6eQzWMvm', 3, '2017-07-23 06:37:49', NULL, NULL);

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
(1, 7, '9', '12121', 494.97, '2017-07-23 08:51:19', '2017-07-23 11:58:32'),
(2, 2, '8', '5950', 35, '2017-07-23 11:15:44', NULL),
(3, 2, '8', '5950', 185, '2017-07-23 11:17:47', NULL);

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
(1, NULL, NULL, 1, 4, NULL, 3, 105, 35, NULL),
(2, NULL, NULL, 1, 5, NULL, 3, 389.97, 129.99, NULL),
(4, NULL, NULL, 4, 3, NULL, 2, 121, 23, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `memo`
--

CREATE TABLE `memo` (
  `id` int(10) UNSIGNED NOT NULL,
  `Commercial_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `memo`
--

INSERT INTO `memo` (`id`, `Commercial_id`, `Description`, `created_at`, `updated_at`) VALUES
(1, '7', 'Je teste les mémos', '2017-07-23 08:19:18', NULL),
(2, '3', 'blabla', NULL, NULL);

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
(29, '2017_07_20_080524_create_RDV', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `produits` (`id`, `Nom`, `Reference`, `Description`, `Impedance`, `Sensibilite_aux_entrees`, `Source_de_courant`, `Dimensions`, `Poids`, `Prix`, `created_at`, `updated_at`) VALUES
(1, 'Enceinte universelle professionnelle', 'PAB-308M/SW', 'Multi-fonctions, applications universelles :\r\ncaractéristiques des enceintes IMG STAGELINE de la série 300. Elles sont adaptées pour une installation fixe ou une utilisation mobile, pour une sonorisation puissante et avec une bonne tenue en niveau et pour des applications d\'enceintes arrières ou Sidefill. Les systèmes très compacts et faciles à transporter sont également parfaits pour une utilisation mobile combinés aux subwoofers tels que PSUB-12AKA ou PSUB-15AKA et comme petits moniteurs.', '8 Ω', '-', '150 W', '340 x 303 x 379 mm', '10 kg', 30, '2017-07-20 14:43:11', NULL),
(2, 'Paire d\'enceintes de sonorisation de grande qualité', 'PAB-68/SW', 'Cette série puissante et particulièrement attractive d\'enceintes de sonorisation\r\ns\'adresse très clairement à une installation fixe : restauration, hôtellerie, sonorisation en discothèque et salles de conférences de pièces annexes... : ces enceintes PAB- proposent un rapport prix / performances parfait et une qualité excellente.', '8 Ω', '-', '70 W', '210 x 350 x 200 mm', '3,9 Kg', 19.99, '2017-07-20 14:44:51', '2017-07-20 15:25:01'),
(3, 'Microphone dynamique Rétro', 'DM-065', 'Microphone dynamique Rétro, look des années 50/60.\r\nPour la scène, le chant et le discours\r\nCardioïde\r\nInterrupteur Marche/Arrêt faible bruit\r\nVersion chromée\r\nAvec coffret plastique rembourré de mousse', '250 Ω', '1,3 mV/Pa/1 kHz', '-', '54 x 175 x 68 mm', '550 g', 28.99, '2017-07-20 14:47:11', '2017-07-20 15:24:54'),
(4, 'Amplificateur stéréo professionnel', 'STA-235', 'Amplificateur stéréo professionnel avec limiteur intégré\r\nAffichage LCD pour la température, le mode de fonctionnement et la puissance\r\n2 modes de fonctionnement réglables (stéréo ou bridgé)\r\nFonction limiteur commutable\r\nVentilateur régulateur de température\r\n2 réglages de niveau\r\nFonction Groundlift\r\nTemporisation d\'allumage des haut-parleurs\r\nProtégé contre les courts-circuits, surchauffes par circuit de protection avec affichage par LED\r\nLEDs pour surcharge, niveau et signal par canal', '1,2 V/10 kΩ', '-', '-', '482 x 100 x 330 mm, 2 U', '11,5 kg', 35, '2017-07-20 14:48:59', NULL),
(5, 'Casque Stéreo', 'MD-350', 'Casque stéréo\r\nPour utilisation universelle\r\nSystème clos\r\nEcouteurs et serre-tête rembourrés\r\nCâble de 1,5 m de long, version unilatérale\r\nFiche jack 3,5 mâle plaquée or avec adaptateur 6,35', '32 Ω', '-', '-', '-', '160 g', 129.99, '2017-07-20 14:51:24', NULL);

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
(1, '7', '8', 'test', 'ezez', 'zezeze', '2017-07-23 08:27:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `Reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_Allemagne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_France` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock_Pays Bas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Allemagne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Allemagne_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_France` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_France_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Pays_Bas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reappro_Pays_Bas_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `memo`
--
ALTER TABLE `memo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `RDV`
--
ALTER TABLE `RDV`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
