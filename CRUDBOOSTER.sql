-- phpMyAdmin SQL Dump
-- version 4.6.6deb3
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 20 Juillet 2017 à 16:06
-- Version du serveur :  5.7.18
-- Version de PHP :  7.0.16-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `CRUDBOOSTER`
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
  `Approuvé` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(8, '6', 'Kanopé', 'Mme Hmouin', 'Riguepeu', 32320, 'Riguepeu', 697989898, 'emilie_dev@gmail.com', 'Oui', '2017-07-20 14:38:31', NULL);

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
(110, '192.168.1.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'http://192.168.1.188:8000/admin/logs/delete/109', 'Delete data 192.168.1.188 at Logs', 4, '2017-07-20 15:38:10', NULL);

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
(1, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-users', 0, 0, 0, 2, 1, '2017-07-18 10:40:36', '2017-07-19 05:53:57'),
(2, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 1, '2017-07-19 05:32:13', NULL),
(3, 'Clients', 'Route', 'AdminClientsControllerGetIndex', NULL, 'fa fa-music', 0, 1, 0, 1, 2, '2017-07-19 15:45:13', NULL),
(4, 'Stocks', 'Route', 'AdminStocksControllerGetIndex', NULL, 'fa fa-star', 0, 1, 0, 1, 3, '2017-07-19 15:55:58', NULL),
(5, 'Produits', 'Route', 'AdminProduitsControllerGetIndex', NULL, 'fa fa-product-hunt', 0, 1, 0, 1, 4, '2017-07-19 16:04:05', NULL),
(6, 'Clients', 'Route', 'AdminClientsControllerGetIndex', 'normal', 'fa fa-music', 0, 1, 0, 2, 2, '2017-07-20 11:06:46', NULL),
(7, 'Produits', 'Route', 'AdminProduitsControllerGetIndex', 'normal', 'fa fa-product-hunt', 0, 1, 0, 2, 3, '2017-07-20 11:06:46', NULL),
(8, 'Stocks', 'Route', 'AdminStocksControllerGetIndex', 'normal', 'fa fa-cog', 0, 1, 0, 2, 4, '2017-07-20 11:06:47', NULL),
(9, 'Commandes', 'Route', 'AdminCommandeClientControllerGetIndex', NULL, 'fa fa-bar-chart', 0, 1, 0, 1, 5, '2017-07-20 12:27:32', NULL),
(10, 'RDV', 'Route', 'AdminRDVControllerGetIndex', NULL, 'fa fa-calendar', 0, 1, 0, 1, 6, '2017-07-20 13:46:53', NULL);

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
(12, 'Clients', 'fa fa-music', 'Clients', 'clients', 'AdminClientsController', 0, 0, '2017-07-19 15:45:13', NULL),
(13, 'Stocks', 'fa fa-cog', 'stocks', 'stocks', 'AdminStocksController', 0, 0, '2017-07-19 15:55:58', NULL),
(14, 'Produits', 'fa fa-product-hunt', 'produits', 'produits', 'AdminProduitsController', 0, 0, '2017-07-19 16:04:05', NULL),
(15, 'Commandes', 'fa fa-bar-chart', 'commandeClient', 'commandeClient', 'AdminCommandeClientController', 0, 0, '2017-07-20 12:27:32', NULL),
(16, 'RDV', 'fa fa-calendar', 'RDV', 'RDV', 'AdminRDVController', 0, 0, '2017-07-20 13:46:53', NULL);

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
(2, 'commercial', 0, 'skin-black-light', NULL, NULL);

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
(24, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);

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
(12, 'logo', 'uploads/2017-07/6dce140f759b49cd9788cdc07798a372.png', 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2017-07-18 10:17:43', NULL, 'Application Setting', 'Favicon'),
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
(1, 'Stats', 'stats', '2017-07-20 15:34:36', '2017-07-20 15:34:41');

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
(4, 'Morel', 'uploads/2017-07/octocat.png', 'Morel@Cisse.com', '$2y$10$d9im2P/rzKoCFDnGqYGfburJohMCZnFdLpwsvZ.ivtZ32dA1EH1XK', 1, '2017-07-19 13:51:25', NULL, NULL),
(5, 'Mouad', 'uploads/2017-07/bart-simpsonico.png', 'mouad@mouad.com', '$2y$10$U3rlG.o7smpIe1w9aNAXvej9JhQcEok9CDFBNYpvbhROwTR/E3bzm', 1, '2017-07-19 15:23:32', NULL, NULL),
(6, 'emilie', 'uploads/2017-07/image.jpg', 'emilie@emilie.com', '$2y$10$h3CNAbv.vjXDTQgVDJqBf.2/ptO5zB9kXvw0L9gsp4IQCIwge0fKW', 1, '2017-07-19 15:39:29', NULL, NULL),
(7, 'test', 'uploads/2017-07/avatar.jpg', 'test@test.fr', '$2y$10$gUSNFCttjsP3moFEd0Qk3O5B4bt7FKRMCI53F6Gq/dLIyTZhqpHtO', 2, '2017-07-20 11:05:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commandeClient`
--

CREATE TABLE `commandeClient` (
  `id` int(10) UNSIGNED NOT NULL,
  `Refclient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Refcommande` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Refcommercial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Livre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Refcolis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_Commande` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_Produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantité` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(23, '2017_07_19_074122_create_clients', 2),
(24, '2017_07_19_074151_create_commandes', 2),
(25, '2017_07_19_074208_create_factures', 2),
(26, '2017_07_19_074246_create_prixTarif', 2),
(27, '2017_07_19_074306_create_produits', 2),
(28, '2017_07_19_074320_create_proforma', 2),
(29, '2017_07_19_074350_create_stocks', 2),
(30, '2016_08_07_145904_add_table_cms_apicustom', 1),
(31, '2016_08_07_150834_add_table_cms_dashboard', 1),
(32, '2016_08_07_151210_add_table_cms_logs', 1),
(33, '2016_08_07_152014_add_table_cms_privileges', 1),
(34, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(35, '2016_08_07_152320_add_table_cms_settings', 1),
(36, '2016_08_07_152421_add_table_cms_users', 1),
(37, '2016_08_07_154624_add_table_cms_moduls', 1),
(38, '2016_08_17_225409_add_status_cms_users', 1),
(39, '2016_08_20_125418_add_table_cms_notifications', 1),
(40, '2016_09_04_033706_add_table_cms_email_queues', 1),
(41, '2016_09_16_035347_add_group_setting', 1),
(42, '2016_09_16_045425_add_label_setting', 1),
(43, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(44, '2016_10_01_141740_add_method_type_apicustom', 1),
(45, '2016_10_01_141846_add_parameters_apicustom', 1),
(46, '2016_10_01_141934_add_responses_apicustom', 1),
(47, '2016_10_01_144826_add_table_apikey', 1),
(48, '2016_11_14_141657_create_cms_menus', 1),
(49, '2016_11_15_132350_create_cms_email_templates', 1),
(50, '2016_11_15_190410_create_cms_statistics', 1),
(51, '2016_11_17_102740_create_cms_statistic_components', 1),
(52, '2017_07_19_074122_create_clients', 1),
(53, '2017_07_19_074151_create_commandes', 1),
(54, '2017_07_19_074208_create_factures', 1),
(55, '2017_07_19_074246_create_prixTarif', 1),
(56, '2017_07_19_074306_create_produits', 2),
(57, '2017_07_19_074320_create_proforma', 2),
(58, '2017_07_19_074350_create_stocks', 2),
(59, '2017_07_20_080220_create_memo', 3),
(60, '2017_07_20_080524_create_RDV', 3),
(61, '2017_07_20_080649_create_commandeClient', 3),
(62, '2017_07_19_074151_create_Commandes', 4);

-- --------------------------------------------------------

--
-- Structure de la table `prixTarif`
--

CREATE TABLE `prixTarif` (
  `id` int(10) UNSIGNED NOT NULL,
  `Code_produit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixTarif` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `Nom`, `Reference`, `Description`, `Impedance`, `Sensibilite_aux_entrees`, `Source_de_courant`, `Dimensions`, `Poids`, `created_at`, `updated_at`) VALUES
(1, 'Enceinte universelle professionnelle', 'PAB-308M/SW', 'Multi-fonctions, applications universelles :\r\ncaractéristiques des enceintes IMG STAGELINE de la série 300. Elles sont adaptées pour une installation fixe ou une utilisation mobile, pour une sonorisation puissante et avec une bonne tenue en niveau et pour des applications d\'enceintes arrières ou Sidefill. Les systèmes très compacts et faciles à transporter sont également parfaits pour une utilisation mobile combinés aux subwoofers tels que PSUB-12AKA ou PSUB-15AKA et comme petits moniteurs.', '8 Ω', '-', '150 W', '340 x 303 x 379 mm', '10 kg', '2017-07-20 14:43:11', NULL),
(2, 'Paire d\'enceintes de sonorisation de grande qualité', 'PAB-68/SW', 'Cette série puissante et particulièrement attractive d\'enceintes de sonorisation\r\ns\'adresse très clairement à une installation fixe : restauration, hôtellerie, sonorisation en discothèque et salles de conférences de pièces annexes... : ces enceintes PAB- proposent un rapport prix / performances parfait et une qualité excellente.', '8 Ω', '-', '70 W', '210 x 350 x 200 mm', '3,9 Kg', '2017-07-20 14:44:51', '2017-07-20 15:25:01'),
(3, 'Microphone dynamique Rétro', 'DM-065', 'Microphone dynamique Rétro, look des années 50/60.\r\nPour la scène, le chant et le discours\r\nCardioïde\r\nInterrupteur Marche/Arrêt faible bruit\r\nVersion chromée\r\nAvec coffret plastique rembourré de mousse', '250 Ω', '1,3 mV/Pa/1 kHz', '-', '54 x 175 x 68 mm', '550 g', '2017-07-20 14:47:11', '2017-07-20 15:24:54'),
(4, 'Amplificateur stéréo professionnel', 'STA-235', 'Amplificateur stéréo professionnel avec limiteur intégré\r\nAffichage LCD pour la température, le mode de fonctionnement et la puissance\r\n2 modes de fonctionnement réglables (stéréo ou bridgé)\r\nFonction limiteur commutable\r\nVentilateur régulateur de température\r\n2 réglages de niveau\r\nFonction Groundlift\r\nTemporisation d\'allumage des haut-parleurs\r\nProtégé contre les courts-circuits, surchauffes par circuit de protection avec affichage par LED\r\nLEDs pour surcharge, niveau et signal par canal', '1,2 V/10 kΩ', '-', '-', '482 x 100 x 330 mm, 2 U', '11,5 kg', '2017-07-20 14:48:59', NULL),
(5, 'Casque Stéreo', 'MD-350', 'Casque stéréo\r\nPour utilisation universelle\r\nSystème clos\r\nEcouteurs et serre-tête rembourrés\r\nCâble de 1,5 m de long, version unilatérale\r\nFiche jack 3,5 mâle plaquée or avec adaptateur 6,35', '32 Ω', '-', '-', '-', '160 g', '2017-07-20 14:51:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `proforma`
--

CREATE TABLE `proforma` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Index pour la table `commandeClient`
--
ALTER TABLE `commandeClient`
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
-- Index pour la table `prixTarif`
--
ALTER TABLE `prixTarif`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `proforma`
--
ALTER TABLE `proforma`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `commandeClient`
--
ALTER TABLE `commandeClient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `memo`
--
ALTER TABLE `memo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `prixTarif`
--
ALTER TABLE `prixTarif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `proforma`
--
ALTER TABLE `proforma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RDV`
--
ALTER TABLE `RDV`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
