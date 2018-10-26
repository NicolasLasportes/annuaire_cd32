-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Ven 26 Octobre 2018 à 11:05
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_cd32`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(10) UNSIGNED NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`, `created_at`, `updated_at`) VALUES
(1, 'Viande', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(2, 'Boulangerie', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(3, 'Multiple', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(4, 'Legumes', '2018-10-23 11:54:04', '2018-10-24 07:54:05'),
(5, 'Fruit', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(6, 'Produit laitier', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(7, 'Legumineuses et Cereales', '2018-10-23 11:54:04', '2018-10-24 07:53:46'),
(8, 'Epicerie', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(9, 'Boisson', '2018-10-23 11:54:04', '2018-10-23 11:54:04'),
(10, 'Poisson', '2018-10-23 11:54:04', '2018-10-23 11:54:04');

-- --------------------------------------------------------

--
-- Structure de la table `chef`
--

CREATE TABLE `chef` (
  `id_chef` int(10) UNSIGNED NOT NULL,
  `nom_chef` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_chef` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifiant_chef` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe_chef` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-24 15:00:34', NULL);

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
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-10-24 15:00:33', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-10-24 15:00:33', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-10-24 15:00:33', NULL, NULL);

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
(1, 'Super Administrator', 1, 'skin-red', '2018-10-24 15:00:33', NULL);

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
(1, 1, 0, 0, 0, 0, 1, 1, '2018-10-24 15:00:33', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-10-24 15:00:33', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-10-24 15:00:33', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-10-24 15:00:33', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-10-24 15:00:33', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-10-24 15:00:33', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-10-24 15:00:33', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-10-24 15:00:33', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-10-24 15:00:33', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-10-24 15:00:33', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-10-24 15:00:33', NULL);

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
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-24 15:00:33', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-24 15:00:33', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-10-24 15:00:33', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-10-24 15:00:33', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-10-24 15:00:33', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-10-24 15:00:33', NULL, 'Application Setting', 'Google FCM Key');

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
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$iSPD01Hnme6aaq1dWS49N.bOLbi0YA3OuvcA.NGqHMeo0W46bypMe', 1, '2018-10-24 15:00:33', NULL, 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(10) UNSIGNED NOT NULL,
  `texte_commentaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_chef` int(11) NOT NULL,
  `id_producteur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(10) UNSIGNED NOT NULL,
  `nom_marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2018_10_24_170058_producteur', 2),
(27, '2018_10_24_170123_chef', 2),
(28, '2018_10_24_170129_categorie', 2),
(29, '2018_10_24_170139_produit', 2),
(30, '2018_10_24_170145_siqo', 2),
(31, '2018_10_24_170149_marque', 2),
(32, '2018_10_24_170220_produire', 3),
(33, '2018_10_24_170257_preferer', 3),
(34, '2018_10_24_170420_sous_categorie', 3),
(35, '2018_10_24_170521_commentaire', 4);

-- --------------------------------------------------------

--
-- Structure de la table `preferer`
--

CREATE TABLE `preferer` (
  `id_preferer` int(10) UNSIGNED NOT NULL,
  `id_producteur` int(11) NOT NULL,
  `id_chef` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `producteur`
--

CREATE TABLE `producteur` (
  `id_producteur` int(10) UNSIGNED NOT NULL,
  `nom_entreprise_producteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu_dit_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voie_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_postal_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commune_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_un_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_deux_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordonneeDD_producteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_internet_producteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `producteur`
--

INSERT INTO `producteur` (`id_producteur`, `nom_entreprise_producteur`, `lieu_dit_producteur`, `numero_producteur`, `voie_producteur`, `code_postal_producteur`, `commune_producteur`, `nom_producteur`, `telephone_un_producteur`, `telephone_deux_producteur`, `coordonneeDD_producteur`, `mail_producteur`, `site_internet_producteur`, `created_at`, `updated_at`) VALUES
(1, 'ABBAYE SAINTE MARIE DE BOULAUR', NULL, NULL, NULL, '32450', 'BOULAUR', NULL, '05 62 65 40 07', NULL, '43.540644, 0.773294', 'travaux.abbaye@boulaur.org', NULL, NULL, NULL),
(2, 'ALBERT STÉPHANE', 'EN HOURMENT', NULL, NULL, '32120', 'LABRIHE', 'ALBERT STÉPHANE', '06 18 39 48 45', NULL, '43.770512, 0.87538', 'salbert32@laposte.net', NULL, NULL, NULL),
(3, 'AQUALANDE', NULL, '505', 'RUE DE LA GRANDE LANDE', '40120', 'ROQUEFORT', NULL, '05 58 05 61 00', NULL, '44.038138, -0.315465', 'aqualande@aqualande.com', NULL, NULL, NULL),
(4, 'AQUESTE PAN', NULL, NULL, NULL, '32320', 'MONTESQUIOU', 'DUPOUY JEAN LUC', '05 62 70 91 50', NULL, '43.578769, 0.327453', 'dupouy-jeanluc@wanadoo.fr', NULL, NULL, NULL),
(5, 'AQUO QUE BOUN', 'GACHIES', NULL, NULL, '32310', 'VALENCE SUR BAISE', 'THEZAN DIDIER', '05 62 28 54 97', NULL, '43.882743, 0.38123', 'didier.thezan@laposte.net', NULL, NULL, NULL),
(6, 'ARCADIE SUD OUEST', NULL, NULL, 'ROUTE D\'AGEN', '32000', 'AUCH', NULL, '05 62 60 02 02', NULL, '43.680221, 0.601822', NULL, NULL, NULL, NULL),
(7, 'ARDIT PIERRE LOUIS et FORLETTA JADE', 'LE BRUCHOUA', NULL, NULL, '32410', 'AYGUETINTE', 'ARDIT PIERRE LOUIS \r\n FORLETTA JADE', '05 62 68 11 67', NULL, '43.834326, 0.428025', NULL, NULL, NULL, NULL),
(8, 'ASSOCIATION PRODUIT SUR SON 31', NULL, '61', 'ALLEE DE BRIENNE', '31069', 'TOULOUSE', NULL, '05 61 10 42 70', NULL, '43.607247, 1.426822', NULL, NULL, NULL, NULL),
(9, 'BASALDELLA LAURENT et ONELIA', 'LE PETIT SAUZENS', NULL, NULL, '32380', 'CADEILHAN', 'BASALDELLA LAURENT et ONELIA', '06 52 52 63 24', NULL, '43.837949, 0.757057', NULL, NULL, NULL, NULL),
(10, 'BELONIEL NICOLAS', 'BASCOU', NULL, NULL, '32350', 'BARRAN', 'BELONIEL NICOLAS', NULL, NULL, '43.61626, 0.442952', 'nicolaslemaraicher@yahoo.fr', NULL, NULL, NULL),
(11, 'BENQUET BENJAMIN', NULL, NULL, NULL, '32550', 'MONTEGUT', 'BENQUET BENJAMIN', '06 28 91 75 31', NULL, '43.651524, 0.645513', 'benjaminbenquet@gmail.com', NULL, NULL, NULL),
(12, 'BERGERIE DES ARBOLETS', 'LA BOURDETTE', NULL, NULL, '32550', 'MONTEGUT', 'ANCELLIN HUGUES', '06 78 15 85 85', NULL, '43.651524, 0.645513', 'labergeriedesarbolets@gmail.com', 'www.lafermedesarbolets.fr', NULL, NULL),
(13, 'BIO PAYS LANDAIS', 'ZAE ATLANTISUD', '293', 'ROUTE DU PAYS DE GOSSE', '40230', 'ST GEOURS DE MARENNE', NULL, '05 58 77 73 38', NULL, '43.713285, -1.236602', NULL, 'www.bio-pays-landais.com', NULL, NULL),
(14, 'BLE D\'ICI ET PAIN D\'ANTAN', NULL, NULL, NULL, '32550', 'PAVIE', 'AMIEL GREGOIRE', '06 74 24 55 01', NULL, '43.609862, 0.591676', 'bledici.paindantan@gmail.com', NULL, NULL, NULL),
(15, 'BONNEAU LUCAS', NULL, NULL, NULL, '32170', 'BARCUGNAN', 'BONNEAU LUCAS', '05 62 67 06 11', NULL, '43.377234, 0.405156', 'lucasbonneau@orange.fr', NULL, NULL, NULL),
(16, 'BORNER RUTHE FELICIA', NULL, NULL, 'QUARTIER LOUMAGNES', '65220', 'BERNADET DEBAT', 'BORNER RUTHE FELICIA', '05 67 45 77 16', NULL, '43.338617, 0.32604', NULL, NULL, NULL, NULL),
(17, 'BOUCHERIE BEZIAT', NULL, NULL, 'ROUTE DE GASCOGNE', '32150', 'CAZAUBON', 'BEZIAT JEAN MICHEL', '05 62 69 53 02', NULL, '43.934058, -0.070837', '0562695302@lannuaire.fr', NULL, NULL, NULL),
(18, 'BOUCHERIE BIFFI', NULL, '13', 'PLACE DU CARDINAL', '32100', 'CONDOM', NULL, '05 62 29 22 73', NULL, '43.954943, 0.364803', NULL, NULL, NULL, NULL),
(19, 'BOUCHERIE BLANLEUIL', NULL, NULL, 'ROUTE MONGUILHEM', '32240', 'ESTANG', 'BLANLEUIL', '05 62 09 68 44', NULL, '43.865821, -0.107031', NULL, NULL, NULL, NULL),
(20, 'BOUCHERIE CUGINI', NULL, '27', 'PLACE DE LA LIBERTE', '32800', 'EAUZE', 'CUGINI JEAN', '05 62 09 71 90', NULL, '43.859279, 0.100757', 'jean.cugini@wanadoo.fr', NULL, NULL, NULL),
(21, 'BOUCHERIE DETAIL VIANDES', NULL, '1', 'AVENUE DE LOMBEZ', '32130', 'SAMATAN', NULL, '05 62 62 35 79', NULL, '43.490075, 0.928633', NULL, NULL, NULL, NULL),
(22, 'BOUCHERIE GASCONNE', NULL, NULL, 'CC LAFONTAINE', '32550', 'PAVIE', 'PELETERIE', '05 62 05 22 98', NULL, '43.609862, 0.591676', 'boucheriegasconne@orange.fr', 'www.boucherie32.fr', NULL, NULL),
(23, 'BOUCHERIE MAISON VILLAS', 'VILLAGE', NULL, NULL, '32170', 'TILLAC', 'VILLAS', '05 62 70 01 19', NULL, '43.474388, 0.27621', NULL, NULL, NULL, NULL),
(24, 'BOUCHERIE PALACIN', 'HOURQUET', NULL, NULL, '32190', 'DEMU', 'PALACIN DAVID et YANNICK', '09 70 35 14 57', NULL, '43.765361, 0.166266', NULL, NULL, NULL, NULL),
(25, 'BOUCHERIE PERE', NULL, '35', 'AV P DE MONTESQUIOU', '32000', 'AUCH', NULL, '05 62 61 05 05', NULL, '43.637273, 0.590054', 'boucherie.pere.montesquiou@orange.fr', NULL, NULL, NULL),
(26, 'BOUCHERIE RECAPE', 'COURS GOUDOULI', NULL, NULL, '31130', 'QUINT FONSEGRIVES', 'PRAT ALAIN', '05 61 24 26 50', NULL, '43.58392, 1.545077', NULL, NULL, NULL, NULL),
(27, 'BOUCHERIE SOTTOM', NULL, '1', 'ALLEE JEANNE DAGUZAN', '32000', 'AUCH', NULL, '05 62 05 65 75', NULL, '43.661523, 0.598331', NULL, NULL, NULL, NULL),
(28, 'BOULANGERIE ATELIER DES PAINS', NULL, NULL, 'ROUTE DE LARRA', '31330', 'LAUNAC', 'MAISON MARTIN', '05 61 85 44 08', NULL, '43.741745, 1.189089', 'martin-benitez.david@orange.fr', NULL, NULL, NULL),
(29, 'BOULANGERIE AUX DELICES DES SAVEURS', NULL, '6', 'RUE DU GENERAL DE GAULLE', '32140', 'MASSEUBE', 'SOULIE EMILIE', '05 62 59 07 48', NULL, '43.429366, 0.578901', NULL, NULL, NULL, NULL),
(30, 'BOULANGERIE BOURREC', 'LAS COSTES D\'EMPERRAS', NULL, 'CHEMIN DU FORMAN', '32810', 'PREIGNAN', NULL, '05 62 65 60 21', NULL, '43.709209, 0.625806', 'pinvers@orange.fr', NULL, NULL, NULL),
(31, 'BOULANGERIE DES MOUSQUETAIRES', NULL, '34', 'RUE ERNEST ET AIMEE TOUYAROU', '32800', 'EAUZE', NULL, '05 62 09 83 95', NULL, '43.862919, 0.107569', NULL, NULL, NULL, NULL),
(32, 'BOULANGERIE DEVICQ', NULL, '38BIS', 'RUE DE L\'ADOUT', '32160', 'RISCLE', 'DEVICQ LAURENT', '05 62 09 54 27', NULL, '43.60559, 0.045507', NULL, NULL, NULL, NULL),
(33, 'BOULANGERIE DUCASSE', NULL, '24', 'AVENUE DE GASCOGNE', '32730', 'VILLECOMTAL SUR ARROS', 'DUCASSE BERNARD', '05 62 64 87 30', NULL, '43.40166, 0.200026', NULL, NULL, NULL, NULL),
(34, 'BOULANGERIE DULOUT', NULL, '4', 'PLACE VOLTAIRE', '32310', 'VALENCE SUR BAISE', 'DULOUT VINCENT', '05 62 28 50 07', NULL, '43.883174, 0.378887', NULL, NULL, NULL, NULL),
(35, 'BOULANGERIE FOCACCIA', NULL, NULL, 'AVENUE DE TOULOUSE', '32200', 'GIMONT', NULL, '05 62 59 67 97', NULL, '43.623425, 0.88223', NULL, NULL, NULL, NULL),
(36, 'BOULANGERIE FONTAINE AUX PAINS', 'LA FONTAINE', NULL, 'ROUTE D\'AUCH', '32550', 'PAVIE', NULL, '05 62 05 90 90', NULL, '43.615543, 0.584553', NULL, NULL, NULL, NULL),
(37, 'BOULANGERIE FOURNIL DE GASCOGNE', NULL, '92', 'RUE CLAUDE CHAPPE', '32000', 'AUCH', 'RENOU JEAN FRANCOIS', '05 62 63 49 15', '06 67 46 63 86', '43.69512, 0.607131', 'fournildegascogne@gmail.com', NULL, NULL, NULL),
(38, 'BOULANGERIE GARENS DANIEL', NULL, '9', 'RUE DE GASCOGNE', '32150', 'CAZAUBON', NULL, '05 62 09 55 76', NULL, '43.934287, -0.070169', NULL, NULL, NULL, NULL),
(39, 'BOULANGERIE HUCHETTE', 'PLACE D\'ARMES', NULL, NULL, '31230', 'L\'ISLE EN DODON', NULL, '05 61 94 01 55', NULL, '43.381366, 0.836628', NULL, NULL, NULL, NULL),
(40, 'BOULANGERIE JILET', NULL, NULL, 'PLACE DU COLONEL PARISOT', '32290', 'AIGNAN', 'JILET YVES', '05 62 09 24 25', NULL, '43.697573, 0.364803', NULL, NULL, NULL, NULL),
(41, 'BOULANGERIE KLEPCZAREK', NULL, '11', 'RUE DU CHEMIN NEUF', '32130', 'SAMATAN', 'KLEPCZAREK VERONIQUE', '05 62 62 30 72', NULL, '43.494316, 0.930923', NULL, NULL, NULL, NULL),
(42, 'BOULANGERIE LA MI DO RE', NULL, '2', 'RUE BISTOUQUET', '32800', 'EAUZE', NULL, '05 62 09 96 18', NULL, '43.861891, 0.101293', NULL, NULL, NULL, NULL),
(43, 'BOULANGERIE LES FOURNILS GERSOIS', 'LEYTOUN', NULL, NULL, '32410', 'BEAUCAIRE', 'FARINES CYRIL', '05 62 68 15 96', NULL, '43.837821, 0.384924', NULL, NULL, NULL, NULL),
(44, 'BOULANGERIE LESCURAT', NULL, '26', 'RUE MARCADIEU', '32130', 'SAMATAN', NULL, '05 62 62 56 41', NULL, '43.490006, 0.932647', NULL, NULL, NULL, NULL),
(45, 'BOULANGERIE LO PAN DEL PAIS', 'LE COUGET', NULL, NULL, '32480', 'LA ROMIEU', 'BARRAILLER GUILLAUME', '06 46 08 14 49', '05 62 68 12 92', '43.981804, 0.497601', 'lopandelpais@outlook.fr', NULL, NULL, NULL),
(46, 'BOULANGERIE MARGRAS', NULL, '5', 'PLACE DE L\'HOTEL DE VILLE', '32230', 'MARCIAC', 'MARGRAS', '05 62 09 38 24', NULL, '43.524122, 0.160487', NULL, NULL, NULL, NULL),
(47, 'BOULANGERIE MARQUEZE', NULL, '4', 'RUE DE BEAULIEU', '40270', 'GRENADE SUR ADOUR', NULL, '05 58 45 90 05', NULL, '43.781262, -0.434409', NULL, NULL, NULL, NULL),
(48, 'BOULANGERIE MASSANO', NULL, '12', 'PLACE DE LA LIBERTE', '32100', 'CONDOM', NULL, '05 62 28 30 68', NULL, '43.955599, 0.370811', NULL, NULL, NULL, NULL),
(49, 'BOULANGERIE MENDEZ NOUVEN', NULL, '1', 'RUE LAFFITTE', '32300', 'MIRANDE', NULL, '05 62 66 69 01', NULL, '43.515641, 0.403333', NULL, NULL, NULL, NULL),
(50, 'BOULANGERIE PARISIENNE', NULL, '6', 'BOULEVARD DU COUCHANT', '47310', 'LAPLUME', 'FRAIOLI BRUNO', '05 53 95 12 55', NULL, '44.112964, 0.529659', NULL, NULL, NULL, NULL),
(51, 'BOULANGERIE PELLIS', NULL, NULL, 'BOULEVARD DES PYRENEES', '32220', 'LOMBEZ', 'PELLIS JOEL', '05 62 62 32 67', NULL, '43.475268, 0.908968', NULL, NULL, NULL, NULL),
(52, 'BOULANGERIE PHANIE', NULL, NULL, 'QUARTIER SAINT PIERRE', '32400', 'VIELLA', NULL, '05 62 69 81 61', NULL, '43.598454, -0.139128', NULL, NULL, NULL, NULL),
(53, 'BOULANGERIE RICOURT', NULL, NULL, 'CENTRE COMMERCIAL', '32730', 'VILLECOMTAL SUR ARROS', 'RICOURT PATRICK', '05 62 64 85 87', NULL, '43.40186, 0.200591', NULL, NULL, NULL, NULL),
(54, 'BOULANGERIE RUIZ VINCENT', NULL, '27', 'RUE DES PYRENEES', '32160', 'PLAISANCE DU GERS', NULL, '05 62 69 30 31', NULL, '43.604742, 0.04865', NULL, NULL, NULL, NULL),
(55, 'BOULANGERIE THUILLIER', NULL, '8', 'RUE DE LA RÉPUBLIQUE', '32190', 'VIC FEZENSAC', 'THUILLER  LAURENCE et JULIEN', '05 62 06 45 33', NULL, '43.758068, 0.303844', NULL, NULL, NULL, NULL),
(56, 'BOULANGERIE TONNERRE', 'MARAT', '36', 'RUE SAINT JULY', '32800', 'EAUZE', 'TONNERRE FRANCK', '05 62 09 82 23', NULL, '43.860765, 0.102079', NULL, NULL, NULL, NULL),
(57, 'BOULANGERIE TROPEZIENNE', NULL, '20', 'AVENUE DES PYRENEES', '32000', 'AUCH', NULL, '05 62 05 05 34', NULL, '43.63835, 0.58407', NULL, NULL, NULL, NULL),
(58, 'BOULANGERIE VILLA DES PAINS', NULL, '3', 'RUE JEANNE D\'ALBRET', '32000', 'AUCH', NULL, '05 62 63 17 75', NULL, '43.633439, 0.58865', NULL, NULL, NULL, NULL),
(59, 'BOULORE LUCE', 'LE BERRET', NULL, NULL, '32600', 'AURADE', 'BOULORE LUCE', '06 35 10 64 48\r\n05 62 59 81 04', '05 62 59 81 04', '43.565289, 1.058046', 'luce.boulore@laposte.net', 'www.lesfeesdupotager.com', NULL, NULL),
(60, 'CARDONNE JULIEN', NULL, NULL, NULL, '32450', 'TRAVERSERES', 'CARDONNE JULIEN', '06 32 97 58 59', NULL, '43.535953, 0.649821', 'juliencardonne@sfr.fr', NULL, NULL, NULL),
(61, 'CARLIER THOMAS', 'LA GRANGE', NULL, NULL, '32260', 'DURBAN', 'CARLIER THOMAS', '06 59 77 16 07', NULL, '43.538652, 0.579491', 'tfcarlier@g', NULL, NULL, NULL),
(62, 'CASSAGNE MICHEL', NULL, NULL, NULL, '32200', 'GIMONT', 'CASSAGNE MICHEL', '06 81 35 79 21', NULL, '43.626348, 0.876768', 'cassagne.michel@gmail.com', NULL, NULL, NULL),
(63, 'CASTIN PHILIPPE', NULL, NULL, 'ROUTE DE MAURENS', '32200', 'GIMONT', 'CASTIN PHILIPPE', '06 16 29 40 23', NULL, '43.616538, 0.885014', NULL, NULL, NULL, NULL),
(64, 'CAVASIN ALAIN', NULL, NULL, NULL, '32810', 'CASTIN', 'CAVASIN ALAIN', '06 74 94 18 91', NULL, '43.691401, 0.547448', NULL, NULL, NULL, NULL),
(65, 'CLÉ DU PAIN', NULL, '4520', 'ROUTE D\'AGEN', '32000', 'AUCH', 'DE ROY CLÉMENT', '06 95 28 09 59', NULL, '43.678405, 0.601818', 'klementis@hotmail.fr', 'www.lafermeencoton.fr', NULL, NULL),
(66, 'COLIS DE LA FERME', 'A TERRE ROUGE', NULL, NULL, '32140', 'MONLAUR-BERNET', 'PICOT CYRIL', '06 82 01 41 38', NULL, '43.351430, 0.511425', 'cyril@lescolisdelaferme.com', NULL, NULL, NULL),
(67, 'CONDOM ANDRÉ', NULL, '6', 'AVENUE DU PDT JOHN KENNEDY', '40280', 'ST PIERRE DU MONT', NULL, '05 58 75 42 51', NULL, '43.886892, -0.500012', 'contact@fruits-legumes-andre-condom.com', NULL, NULL, NULL),
(68, 'COOP BIO LUTSCRAMPO', NULL, '553', 'AVENUE DES PYRENEES', '32800', 'EAUZE', NULL, '05 62 09 94 76', NULL, '43.856185, 0.099209', 'contact@lutscrampo.com', 'www.lutscrampo.com', NULL, NULL),
(69, 'COOPERATIVE QUALISOL MONBIO', NULL, NULL, 'ROUTE DE MAUVEZIN', '32100', 'MONFORT', NULL, '05 62 06 77 73', NULL, '43.795186, 0.821857', 'jp.esteve@qualisol.fr', NULL, NULL, NULL),
(70, 'COULOM FRANCIS', NULL, '7', 'CHEMIN DE LA BORDE', '65700', 'CAUSSADE RIVIERE', 'COULOM FRANCIS', '09 82 12 87 95', NULL, '43.513965, 0.017076', NULL, NULL, NULL, NULL),
(71, 'DAMO SERGE', NULL, NULL, NULL, '32420', 'TOURNAN', 'DAMO SERGE', NULL, NULL, '43.431861, 0.784516', 'aucachestournan@hotmail.fr', NULL, NULL, NULL),
(72, 'DE KOK ALEXANDRE', NULL, '35', 'CHEMIN DU VILLAGE', '32400', 'LANNUX', 'DE KOK ALEXANDRE', '05 62 09 41 47', '06 32 71 68 24', '43.645813, -0.228787', 'dekokalexandre@orange.fr\r\ndekokkatia@orange.fr', NULL, NULL, NULL),
(73, 'DELICES D\'ALIENOR', NULL, NULL, 'BOULEVARD DU NORD', '32200', 'GIMONT', NULL, '05 62 67 87 89', NULL, '43.627067, 0.877629', NULL, NULL, NULL, NULL),
(74, 'DEROY DOMINIQUE', 'LES PLACES', NULL, NULL, '32330', 'GONDRIN', 'DEROY DOMINIQUE', '05 62 06 34 61', NULL, '43.886725, 0.237567', NULL, NULL, NULL, NULL),
(75, 'DIANA ERIC', 'GELET', NULL, NULL, '32120', 'PUYCASQUIER', 'DIANA ERIC', '05 62 65 16 29', NULL, '43.745949, 0.747542', NULL, NULL, NULL, NULL),
(76, 'DOMAINE DE HUSTET', 'A HUSTET', NULL, NULL, '32330', 'MOUCHAN', 'CARDEILLAC', '06 87 46 65 45', NULL, '43.902689, 0.297175', 'contact@hustet.fr', 'www.hustet.fr', NULL, NULL),
(77, 'DOMAINE D\'ENTRAS', NULL, NULL, NULL, '32410', 'AYGUETINTE', 'MAESTROJUAN MICHEL', '05 62 68 11 41', NULL, '43.902689, 0.297175', 'mbmaestrojuan@wanadoo.fr', NULL, NULL, NULL),
(78, 'DOMAINE DU CURÉ', NULL, NULL, NULL, '32110', 'PANJAS', 'ROTH ANDREAS', '05 62 09 15 30', NULL, '43.820961, -0.088533', 'domaine-de-cure@orange.fr', NULL, NULL, NULL),
(79, 'DUPRE JEAN MARC', NULL, NULL, NULL, '32380', 'ST CLAR', 'DUPRE JEAN MARC', '07 81 29 17 16', NULL, '43.892146, 0.770508', NULL, NULL, NULL, NULL),
(80, 'DUPUY SARAH', 'AU PIGNE', NULL, NULL, '32550', 'PESSAN', 'DUPUY SARAH', '06 63 57 32 43', NULL, '43.620103, 0.648943', 'sarahdupuy@gmail.com', NULL, NULL, NULL),
(81, 'ELEVAGE DE LA PAYROULERE', 'LA PAYROULERE PLAINE DE LARTET', NULL, NULL, '32390', 'MONTESTRUC SUR GERS', 'GRANGEON ARLETTE et MICHEL', '09 74 76 83 24', NULL, '43.792738, 0.629239', 'michel.grangeon-menut@alsatis.net', NULL, NULL, NULL),
(82, 'ELEVAGE DE LARROCHE', NULL, NULL, NULL, '32160', 'LASSERADE', 'MATAYRON PIERRE', '05 62 69 32 70', NULL, '43.625182, 0.063303', 'contact@pierre-matayron.fr', NULL, NULL, NULL),
(83, 'EN MASSION', NULL, NULL, NULL, '32120', 'MAUVEZIN', 'BIANCHINI', '06 98 95 45 29', NULL, '43.730448, 0.877138', 'fabrice.bianchini@laposte.net', NULL, NULL, NULL),
(84, 'EN TERRE DE FROMAGES', NULL, '38', 'RUE DE LA REPUBLIQUE', '47240', 'BON ENCONTRE', 'REDDING DAVID', '05 53 96 56 44', NULL, '44.185973, 0.669732', NULL, NULL, NULL, NULL),
(85, 'ESSENTIEL', NULL, '76', 'CHEMIN DE RONDE', '32320', 'MARCIAC', NULL, '05 62 69 07 93', NULL, '43.526182, 0.163551', 'www.lessentiel-marciac.fr', NULL, NULL, NULL),
(86, 'FAGET', NULL, '49', 'CHEMIN PEY', '64460', 'LAMAYOU', NULL, '05 59 81 98 58', NULL, '43.368829, -0.051666', 'ets.faget@orange.fr', NULL, NULL, NULL),
(87, 'FERME AU DRUMACET', 'AUBATBIE', NULL, NULL, '32140', 'PANASSAC', 'CAUBET LAURENT', '06 70 00 78 29', NULL, '43.384971, 0.566099', NULL, NULL, NULL, NULL),
(88, 'FERME AUX PICHARROTS', 'AUX PICHARROTS', NULL, NULL, '32730', 'MALABAT', 'PILLEUX PATRICIA et FRANCOIS', '05 62 59 00 04', '06 70 56 60 24', '43.433799, 0.185137', 'auxpicharrots@hotmail.fr', 'fermedespicharrots.wifeo.com', NULL, NULL),
(89, 'FERME BAYLOCQ', 'FERME A LACAVE DE HAUT', NULL, NULL, '32250', 'FOURCES', 'BAYLOCQ MATHIEU et CARINE', '06 81 09 01 31', NULL, '43.992901, 0.230198', 'cm.baylocq@orange.fr', NULL, NULL, NULL),
(90, 'FERME BERNADOTTE', 'MURA', NULL, NULL, '40310', 'PARLEBOSQ', 'BROUSSET CÉCILE et MICHEL', '05 58 44 33 32', NULL, '43.934137, 0.027987', 'ebernadot@orange.fr', NULL, NULL, NULL),
(91, 'FERME CANOPEE', NULL, NULL, NULL, '32260', 'SANSAN', 'BENARD NICOLAS', '05 62 68 93 58', NULL, '43.527812, 0.615305', 'brindeterre32@gmail.com', NULL, NULL, NULL),
(92, 'FERME CHIARI', 'ARNAUTOT', NULL, NULL, '32500', 'PAUILHAC', 'CHIARI XAVIER', '06 33 98 00 59', NULL, '43.875727, 0.611952', NULL, NULL, NULL, NULL),
(93, 'FERME DE BIDACHE', NULL, NULL, NULL, '32410', 'CASTERA VERDUZAN', 'BOURRUST BENOIT et AUDREY', '06 32 43 21 77', NULL, '43.804353, 0.430482', 'contact@lafermedebidache.fr', NULL, NULL, NULL),
(94, 'FERME DE BOUE', 'BOUÉ', NULL, NULL, '32420', 'TOURNAN', 'CAMAJOU CHRISTOPHE et HELENE', '05 62 65 35 54', '06 75 27 15 12', '43.431861, 0.784516', 'christophe.camajou@wanadoo.fr', NULL, NULL, NULL),
(95, 'FERME DE BRANE', 'BRANE', NULL, NULL, '32290', 'ST PIERRE D\'AUBEZIES', 'BELLANGER MARTINE', '05 62 66 29 04', '06 22 04 29 04', '43.64327, 0.166391', 'palotine@hotmail.fr', NULL, NULL, NULL),
(96, 'FERME DE DOXION', NULL, NULL, NULL, NULL, NULL, 'BONNEAU JEAN MARC', '05 62 67 06 11', NULL, '43.377234, 0.405156', 'bonneau.jm249@orange.fr', NULL, NULL, NULL),
(97, 'FERME DE GASPAROTTO', 'GAYRIN', NULL, NULL, '32400', 'SAINT GERME', 'GASPAROTTO JEAN PHILIPPE', '05 62 69 61 07', NULL, '43.679967, -0.145247', NULL, NULL, NULL, NULL),
(98, 'FERME DE GELAS', 'GELAS', NULL, NULL, '32460', 'LE HOUGA', 'SAINT PE BERNARD', '05 62 08 96 18', '06 79 17 89 79', '43.774743, -0.180098', 'saintpe@wanadoo.frf', NULL, NULL, NULL),
(99, 'FERME DE GUILLOT', 'GUILLOT', NULL, NULL, '32350', 'ST ARAILLES', 'NAUTA DORINE et REINOUT', '05 62 64 14 67', '06 26 17 75 05', '43.626618, 0.357107', 'rnauta@laposte.net', NULL, NULL, NULL),
(100, 'FERME DE LA BOULOUZE', 'LE DUFFAU', NULL, NULL, '32130', 'SEYSSES SAVES', 'TONUS CHRISTIAN', '05 62 07 92 16', NULL, '43.506423, 1.041419', NULL, NULL, NULL, NULL),
(101, 'FERME DE LA BRUYERE', 'LA BRUYERE', NULL, NULL, '32100', 'CAUSSENS', 'BERGES DAVID', '06 78 76 07 28', NULL, '43.942964, 0.423537', NULL, NULL, NULL, NULL),
(102, 'FERME DE LA MOUNICHE', 'AU BOSC', NULL, NULL, '32140', 'ST BLANCARD', 'GARRIC OLIVIER', '06 88 89 66 50', NULL, '43.344398, 0.647243', NULL, NULL, NULL, NULL),
(103, 'FERME DE LA PIPA', NULL, NULL, NULL, '32390', 'TOURRENQUETS', 'BONNOT SABINE', NULL, NULL, '43.753383, 0.692525', 'sabinebonnot@hotmail.com', NULL, NULL, NULL),
(104, 'FERME DE LA TOULOUZETTE', 'LA TOULOUZETTE', NULL, NULL, '32260', 'DURBAN', 'MEDIAMOLE CLAUDE et JOEL', '06 88 39 59 64', NULL, '43.538652, 0.579491', 'gaecdelatoulouzette@orange.fr', NULL, NULL, NULL),
(105, 'FERME DE LABAT', 'LA MOULIERE', NULL, NULL, '40310', 'PARLEBOSQ', 'LABAT THIERRY', '05 58 44 95 67', NULL, '43.934137, 0.027987', NULL, NULL, NULL, NULL),
(106, 'FERME DE LAR', 'LART', NULL, NULL, '32190', 'MARAMBAT', 'SIMONIN CYRIL', '05 62 63 21 79', NULL, '43.776191, 0.314365', 'fermeduraguet@gmail.com', NULL, NULL, NULL),
(107, 'FERME DE LORAN', NULL, NULL, NULL, '32300', 'ST MAUR', 'NEDELLEC CLEMENT', '06 79 58 82 93', NULL, '43.477691, 0.34294', 'nedellec.clement@wanadoo.fr', NULL, NULL, NULL),
(108, 'FERME DE LUBIA', 'LUBIA', NULL, NULL, '31230', 'SAINT FRAJOU', 'MARTIN NINA et JACQUES', '06 84 13 69 38', NULL, '43.333316, 0.849494', NULL, 'www.saveurlubia.fr', NULL, NULL),
(109, 'FERME DE MALET', NULL, NULL, NULL, '32410', 'BEAUCAIRE', 'TONNEAU SEBASTIEN', '06 84 97 03 41', '06 04 02 78 21', '43.837821, 0.384924', 'naturellement.legume@gmail.com', 'http://naturellement legume.blogspot.fr', NULL, NULL),
(110, 'FERME DE MATHIOU', NULL, NULL, NULL, '32300', 'LOUBERSAN', 'BARON PHILIPPE', NULL, NULL, '43.497643, 0.499102', NULL, NULL, NULL, NULL),
(111, 'FERME DE MICHEL', 'PEYMARCHAND', NULL, NULL, '32170', 'DUFFORT', 'DUFFAR NICOLAS', '06 73 44 97 86', NULL, '43.345262, 0.414768', NULL, NULL, NULL, NULL),
(112, 'FERME DE MILHOMMES', 'MILHOMMES', NULL, NULL, '32320', 'POUYLEBON', 'DOUCY HERVÉ', '06 48 23 35 53', '05 62 65 08 87', '43.548153, 0.295589', 'fermedemilhommes@orange.fr', NULL, NULL, NULL),
(113, 'FERME DE NAROQUES', 'NAROQUES', NULL, NULL, '32550', 'LASSEUBE PROPRE', 'COECUP ANDY', NULL, NULL, '43.575213, 0.596074', 'andycato@mac.com', 'www.naroques.fr', NULL, NULL),
(114, 'FERME DE PHALANGE', NULL, NULL, 'AVENUE BARBES', '32170', 'AUX AUSSAT', 'SENAC CLAUDE et PIERRE', '05 62 67 53 05', NULL, '43.444833, 0.249352', 'dephalange@orange.fr', NULL, NULL, NULL),
(115, 'FERME DE PITRAC', 'LA BORDENEUVE', NULL, NULL, '32700', 'LECTOURE', 'LAVAL HELENE', '06 82 96 22 08', NULL, '43.933604, 0.623621', NULL, 'www.fermedepitrac.fr', NULL, NULL),
(116, 'FERME DE SHANTINILAYA', NULL, NULL, NULL, '32270', 'AUBIET', 'JOYA GEORGES', NULL, NULL, '43.646621, 0.783846', 'gjoya@hotmail.fr', NULL, NULL, NULL),
(117, 'FERME D\'EMILIE', NULL, NULL, 'COULEAU', '32800', 'EAUZE', 'SARROTTE EMILIE', NULL, NULL, '43.862587, 0.10053', NULL, NULL, NULL, NULL),
(118, 'FERME D\'EN SOULES', 'EN SOULES', NULL, NULL, '32500', 'GOUTZ', 'GISSOT FREDERIC', '06 19 56 36 00', NULL, '43.805173, 0.73407', NULL, NULL, NULL, NULL),
(119, 'FERME DES COLLINES', 'LA RIBERE', NULL, NULL, '65220', 'BERNADETS DEBAT', 'DOLEAC ANNE et GUY', '06 37 49 48 95', NULL, '43.353911, 0.31614', 'annedoleac@orange.fr', NULL, NULL, NULL),
(120, 'FERME DES FLOTS BLANCS', 'BARADIEU', NULL, NULL, '47170', 'MEZIN', 'CHAPOLARD JULIEN et ROMAIN', '06 38 38 14 85', NULL, '44.056192, 0.25648', 'contact@les-flots-blancs.fr', NULL, NULL, NULL),
(121, 'FERME DES MARRONNIERS', 'AU CHATEAU', NULL, NULL, '32230', 'TRONCENS', 'SOISSONS NICOLAS', '06 28 25 14 39', '05 62 09 36 51', '43.460171, 0.21484', 'vsoissons@yahoo.fr', NULL, NULL, NULL),
(122, 'FERME DES QUATRE GRACES', NULL, NULL, NULL, '32160', 'BEAUMARCHE', 'MASSON CHRISTOPHE', '06 04 65 23 97', NULL, '43.585070, 0.089465', 'fermedesquatregraces@orange.fr', NULL, NULL, NULL),
(123, 'FERME DES SABLES FAUVES', 'COURREGES', NULL, NULL, '32800', 'CAMPAGNE D\'ARMAGNAC', 'BEURSKENS  MARTINUS', '05 62 09 74 17', NULL, '43.864044, -0.001903', 'sablesfauves@aliceadsl.fr', NULL, NULL, NULL),
(124, 'FERME DES TRILLES', NULL, NULL, NULL, '32300', 'SAUVIAC', 'MROZINSKI PHILIPPE', '05 62 67 11 87', NULL, '43.405237, 0.454008', NULL, NULL, NULL, NULL),
(125, 'FERME D\'ISALINE', 'LA BOUZIGUE', NULL, NULL, '32140', 'SAMARAN', 'ISABELLE ET GERALDINE', '05 62 66 06 84', '06 84 04 76 95', '43.390814, 0.51865', 'lafermedisaline@orange.fr', NULL, NULL, NULL),
(126, 'FERME DU BERRET', 'BERRET', NULL, NULL, '32230', 'LOUSLITGES', 'LAHAYE LUC', '06 45 84 17 86', NULL, '43.594520, 0.164237', 'ferme.du.berret@gmail.com', NULL, NULL, NULL),
(127, 'FERME DU BON BERGER', 'LA POUGE DES FOURS', NULL, NULL, '46350', 'CALES', 'SIMON ERIC', '05 65 32 55 78', NULL, '44.812541, 1.537934', 'ericsimon69@hotmail.fr', NULL, NULL, NULL),
(128, 'FERME DU CHOUCOU', 'CHOUCOU', NULL, NULL, '32490', 'MONFERRAN SAVES', 'TOURON', '05 62 07 84 79', '06 84 23 90 71', '43.598157, 0.982391', 'contact@familletouron.com', NULL, NULL, NULL),
(129, 'FERME DU HALICOT', 'LE HALICOT', NULL, NULL, '32130', 'NOILHAN', 'MOULIS ISABELLE', '05 62 62 43 96', '06 88 33 68 63', '43.535161, 0.931572', NULL, NULL, NULL, NULL),
(130, 'FERME DU HUGANET', 'A MOUNICHE', NULL, NULL, '32460', 'NOILHAN', 'DE LOZZO JACK', '05 62 62 43 80', NULL, '43.761998, -0.177595', 'jdelozzo@club-internet.fr', NULL, NULL, NULL),
(131, 'FERME DU LORIOT', 'AU LORIOT', NULL, NULL, '32550', 'LASSERAN', 'FUCHES WILLI et GENET STEPHANIE', '07 81 22 60 82', '05 62 07 92 70', '43.592139, 0.537188', 'lafermeduloriot@gmx.fr', NULL, NULL, NULL),
(132, 'FERME DU POC', 'LE POC', NULL, NULL, '32300', 'ESTIPOUY', 'GRAF SIMON', '06 33 67 55 40', NULL, '43.549898, 0.380247', 'simongraf@hotmail.fr', NULL, NULL, NULL),
(133, 'FERME DU PRESIDENT', 'LE PRESIDENT', NULL, NULL, '32190', 'VIC FEZENSAC', 'CAPDEVILLE COLETTE', '05 62 06 37 72', NULL, '43.759272, 0.301594', NULL, NULL, NULL, NULL),
(134, 'FERME DU RAGUET', 'LE RAGUET', NULL, NULL, '32320', 'RIGUEPEU', 'FLORENT ROMAIN \r\net PREVEL AGNES', '05 62 63 21 79', NULL, '43.649283, 0.343888', 'fermeduraguet@gmail.com', NULL, NULL, NULL),
(135, 'FERME DU RECHOU', 'RECHOU', NULL, NULL, '32190', 'MOUREDE', NULL, '05 62 06 61 45', NULL, '43.799708, 0.296186', NULL, NULL, NULL, NULL),
(136, 'FERME DU REY', NULL, NULL, NULL, '32420', 'SIMORRE', 'CONSIGLIO MARIE et PASCAL', '05 62 65 35 91', NULL, '43.450096, 0.733955', 'fermedurey@wanadoo.fr', NULL, NULL, NULL),
(137, 'FERME DU SERRE', 'AU SERRE', NULL, NULL, '32350', 'ORDAN LARROQUE', 'PEDEMANAUD FABIEN et CINDY', '05 62 64 48 03', NULL, '43.687170, 0.460011', 'lafermeduserre@hotmail.fr', 'www.fermeduserre.fr', NULL, NULL),
(138, 'FERME DU TOUJA', 'CUTXAN', NULL, NULL, '32150', 'CAZAUBON', 'AUVIN AMELIE et CEDRIC', '05 62 08 18 25', NULL, '43.934058, -0.070837', NULL, NULL, NULL, NULL),
(139, 'FERME DU VAL DE SAVE', 'A RAINAL', NULL, NULL, '32130', 'LABASTIDE SAVES', 'ABADIE MICHEL', '06 14 41 50 25', NULL, '43.519859, 0.980653', 'michlou.abadie@orange.fr', NULL, NULL, NULL),
(140, 'FERME EN CONQUET', 'AU BROCAS', NULL, NULL, '32130', 'POLASTRON', 'FOURCADE JEROME', '06 13 28 50 13', NULL, '43.531244, 0.84595', 'jeromeetcorinne@laposte.net', NULL, NULL, NULL),
(141, 'FERME LAS LEBES', 'LAS LEBES', NULL, NULL, '32700', 'LECTOURE', 'COLAS BENOIT', '05 62 68 72 50', NULL, '43.933604, 0.623621', 'sylvie.colas32@gmail.com', NULL, NULL, NULL),
(142, 'FERME LAS PARETS', NULL, NULL, NULL, '32220', 'LAYMONT', 'SAINT SERNIN PIERRE BRICE', '06 09 47 91 98', NULL, '43.422262, 0.985393', 'p.st.sernin@orange.fr', NULL, NULL, NULL),
(143, 'FERME LEBBE', NULL, '1', 'CHEMIN DE MONDEGOURAT', '65700', 'VILLEFRANQUE', 'LEBBE ANNICK et PIERRE', '05 62 96 47 27', NULL, '43.506446, -0.007092', NULL, NULL, NULL, NULL),
(144, 'FERME MALUVA', NULL, NULL, NULL, '32350', 'STE ARRAILLES', 'SMERZ FRANCIS', '06 88 35 29 17', NULL, '43.626618, 0.357107', 'maluva1@free.fr', NULL, NULL, NULL),
(145, 'FERME MARQUE', NULL, '7', 'RUE DU HAMEAU', '65140', 'ESCONDEAUX', 'MARQUE JOSETTE', '06 17 92 56 45', '05 62 96 68 77', '43.348168, 0.131659', NULL, NULL, NULL, NULL),
(146, 'FERME SARRAY', 'NADOUCE', NULL, NULL, '32360', 'LAVARDENS', 'PUJOS ALAIN et SYLVIE', '05 62 64 50 72', '06 20 15 98 94', '43.760522, 0.511695', 'alain.pujos@orange.fr', 'www.lentilles-vertes-du-gers.fr', NULL, NULL),
(147, 'FERMIERS DU GERS', NULL, NULL, 'ROUTE DE GIMONT', '32450', 'SARAMON', 'ARNAUD THIERRY', '06 89 09 79 61', NULL, '43.723875, 0.884738', 'a.thierry@fermiers-so.fr', NULL, NULL, NULL),
(148, 'FERMIERS DU SUD OUEST', NULL, NULL, 'ZONE INDUSTRIELLE DE PERE', '40500', 'ST SEVER', NULL, '05 58 76 42 22', NULL, '43.769975, -0.578652', NULL, NULL, NULL, NULL),
(149, 'FLORENT TARRIEUX', 'A MONSEIGNE', NULL, NULL, '32300', 'ESTIPOUY', 'FLORENT TARRIEUX', '05 62 66 80 11', NULL, '43.549898, 0.380247', NULL, NULL, NULL, NULL),
(150, 'FROMAGERIE DE MONTFORT', 'AU CASTERAN', NULL, NULL, '32300', 'CLERMONT POUYGUILLES', 'MONFORT REGIS', '06 06 42 31 98', '06 28 53 42 56', '43.472581, 0.539715', 'regis.monfort@orange.fr', NULL, NULL, NULL),
(151, 'GAUDICHEAU FLORIAN', NULL, '2', 'RUE MONTAGNE', '32170', 'MIELAN', 'GAUDICHEAU FLORIAN', NULL, NULL, '43.432282, 0.30859', NULL, NULL, NULL, NULL),
(152, 'GAURAN MURIEL', 'LA BOUZOLE', NULL, NULL, '32380', 'TOURNECOUPE', 'GAURAN MURIEL', NULL, NULL, '43.863818, 0.809875', 'muriel.gauran@wanadoo.fr', NULL, NULL, NULL),
(153, 'GERS BOEUF', NULL, '11', 'RUE  MARCEL LUQUET', '32000', 'AUCH', 'SOTTOM NICOLAS', '05 62 63 56 41', NULL, '43.660275, 0.625969', 'gers.boeuf2@orange.fr', 'www.gers.boeuf.com', NULL, NULL),
(154, 'GERS\'AVEURS', 'AUX CAILLAOUETS', NULL, NULL, '32130', 'BEZERIL', 'DAIGNAN CEDRIC', '06 87 95 36 35', NULL, '43.53533, 0.876621', 'info@gersaveurs.fr', 'http://www.gersaveurs.fr/', NULL, NULL),
(155, 'GISSOT FREDERIC', 'EN SOULES', NULL, NULL, '32500', 'GOUTZ', 'GISSOT FREDERIC', '05 62 06 96 02', NULL, '43.805173, 0.73407', 'frederic.giffopp@free.fr', NULL, NULL, NULL),
(156, 'HALLE GIMONTOISE DES VIANDES', NULL, '1', 'ROUTE DE TOUGET', '32200', 'GIMONT', NULL, '05 62 67 89 90', NULL, '43.624526, 0.88506', NULL, NULL, NULL, NULL),
(157, 'HAMEAU DE L\'AOUEILLE', NULL, NULL, NULL, '32320', 'POUYLEBON', NULL, '05 62 66 65 31', '06 07 96 14 14', '43.548153, 0.295589', 'aoueille@wanadoo.fr', NULL, NULL, NULL),
(158, 'HANDIBIO 65', NULL, '5', 'AVENUE DU MARECHAL FOCH', '65100', 'LOURDES', NULL, '05 62 53 14 70', NULL, '43.091258, -0.045592', NULL, NULL, NULL, NULL),
(159, 'HENRI PRIMEUR', NULL, NULL, 'CENTRE COMMERCIAL ENDOUMINGUE', '32000', 'AUCH', NULL, '05 62 61 85 02', NULL, '43.661523, 0.598331', 'contact@henri-primeurs.com', NULL, NULL, NULL),
(160, 'JARDIN D\'ALARIC', NULL, '16', 'ROUTE DE RIVIERE BASSE', '32160', 'PRECHAC SUR ADOUR', 'TILLOL DOMINIQUE', '06 34 58 18 54', NULL, '43.601323, -0.005665', 'domitillol@yahoo.fr', NULL, NULL, NULL),
(161, 'JARDIN DE COCAGNE TERRA FERMA', 'AU VILLAGE', NULL, NULL, '32490', 'CASTILLON SAVES', 'TINCHON ISABELLE', '07 68 17 60 38', '07 81 60 92 49', '43.569316, 0.984955', 'contact@jardinterraferma.fr', NULL, NULL, NULL),
(162, 'JARDIN DE LA DOUROTTE', 'LA RIBERE', NULL, NULL, '32160', 'JUBELLOC', 'DESCAT SIMON', '06 87 11 83 37', NULL, '43.583092, 0.005446', 'simondescat@hotmail.fr', NULL, NULL, NULL),
(163, 'JARDIN DE LANGLERE', 'LE VILLAGE', NULL, NULL, '32400', 'TARSAC', 'LAFFARGUE CHRISTIAN', '06 23 71 12 39', NULL, '43.668228, -0.112624', 'c.laffargue@aliceadsl.fr', NULL, NULL, NULL),
(164, 'JARDIN DU POTE A GERS', 'HAMEAU DU BOLEYRON', NULL, NULL, '32390', 'MONTESTRUC SUR GERS', 'DELESCLUSE BENJAMIN', '06 62 73 88 34', NULL, '43.792738, 0.629239', 'benjamin.delescluse@gmail.com', NULL, NULL, NULL),
(165, 'JARDIN SOLIDAIRE DE L\'ADOUR', 'AU MARCHAND', NULL, 'ROUTE DU MADIRAN', '32400', 'CAHUZAC SUR ADOUR', 'HAMEL JACQUES', '05 62 69 43 98', NULL, '43.635493, -0.027094', 'accueil.jardinadour32@orange.fr', NULL, NULL, NULL),
(166, 'JARDINS DE MESPLES', 'MESPLES', NULL, NULL, '32410', 'CASTERA VERDUZAN', NULL, '06 33 82 11 59', NULL, '43.804353, 0.430482', NULL, NULL, NULL, NULL),
(167, 'LA CHEVRE ET LE CHOU', NULL, '7', 'CHEMIN DE MELIET', '32170', 'LAAS', 'CARTIER FABRICE et RAGOIS MARIE', NULL, NULL, '43.482587, 0.290682', 'chevreetchou@gmail.com', NULL, NULL, NULL),
(168, 'LA CHEVRE QUI RIT', NULL, NULL, NULL, '32320', 'ST CHRISTAUD', 'DUFFO', '05 62 05 33 08', NULL, '43.529284, 0.263653', 'lachevrequirit@gmail.com', NULL, NULL, NULL),
(169, 'LABIDALLE JEAN CLAUDE', 'LABAT', NULL, NULL, '32190', 'JUSTIAN', 'LABIDALLE JEAN CLAUDE', '05 62 06 39 33', NULL, '43.815992, 0.299538', NULL, NULL, NULL, NULL),
(170, 'LACOSTE HUBERT', 'LA BARAQUE', NULL, NULL, '32300', 'BERDOUES', 'LACOSTE HUBERT', '06 16 57 18 32', '05 62 66 73 90', '43.481735, 0.406565', 'hubert.lacoste6@orange.fr', NULL, NULL, NULL),
(171, 'LAFFORGUE YVES', 'AU CARRAU', NULL, NULL, '32450', 'AURIMONT', 'LAFFORGUE YVES', NULL, NULL, '43.572426, 0.822264', NULL, NULL, NULL, NULL),
(172, 'LARAN FRANCK', NULL, '34', 'ROUTE DES BARONNIES', '65130', 'AVEZAC PRAT LAHITTE', 'LARAN FRANCK', NULL, NULL, '43.071165, 0.357725', NULL, NULL, NULL, NULL),
(173, 'L\'ATTELAGE', NULL, NULL, NULL, '32190', 'VIC FEZENSAC', 'LAGARDE LAETITIA', '05 62 64 58 87', NULL, '43.759272, 0.301594', 'laetitia.halary@orange.fr', NULL, NULL, NULL),
(174, 'LEROUX PAUL', 'LES PERDILLES', NULL, NULL, '32350', 'BIRAN', 'LEROUX PAUL', '05 62 64 69 06', '06 14 84 64 76', '43.695787, 0.417583', 'perdilles@laposte.net', NULL, NULL, NULL),
(175, 'LLORENS JOEL', 'PETIT COUSSOULET', NULL, NULL, '47220', 'ASTAFFORT', 'LLORENS JOEL', '05 53 67 18 72', NULL, '44.064756, 0.651658', NULL, NULL, NULL, NULL),
(176, 'LYCEE AGRICOLE DU CAPOU', NULL, '1915', 'RUE DE BORDEAUX', '82000', 'MONTAUBAN', 'CAMPUS TERRE et VIE', '05 63 21 23 23', NULL, '44.031732, 1.314714', NULL, NULL, NULL, NULL),
(177, 'MAINFROID STEPHANIE', NULL, NULL, NULL, '32420', 'VILLEFRANCHE', 'MAINFROID STEPHANIE', '06 37 79 91 31', NULL, '43.424924, 0.727037', 'stephanie.mainfroid@live.fr', NULL, NULL, NULL),
(178, 'MAISON DU JAMBON DE BAYONNE', NULL, NULL, 'ROUTE DE SAMADET', '64410', 'ARZACQ ARRAZIGUET', NULL, '05 59 04 49 93', NULL, '43.539502, -0.409769', NULL, NULL, NULL, NULL),
(179, 'MAURAN ROGER', NULL, '37', 'RUE GAMBETTA', '32120', 'MAUVEZIN', 'MAURAN ROGER', '07 61 23 00 63', NULL, '43.732550, 0.879925', NULL, NULL, NULL, NULL),
(180, 'MENON GUY', 'EN PIGEAT', NULL, NULL, '32270', 'LUSSAN', 'MENON GUY', NULL, NULL, '43.625199, 0.734692', 'guy.menon@wanadoo.fr', NULL, NULL, NULL),
(181, 'MIEJAVILLE GILLES', NULL, NULL, NULL, '32140', 'PANASSAC', 'MIEJAVILLE GILLES', '06 03 93 94 44', '05 62 66 61 10', '43.384971, 0.566099', 'g.miejaville@orange.fr', NULL, NULL, NULL),
(182, 'MIELS DU GERS', 'TOURETTE', NULL, NULL, '32290', 'POUYLOUBRIN', 'LEVANNIER XAVIER', '06 08 33 81 10', NULL, '43.695042, 0.093369', 'philapi@wanadoo.fr', NULL, NULL, NULL),
(183, 'MIRO LAURENT', NULL, NULL, NULL, '31350', 'MONTMAURIN', 'MIRO LAURENT', '06 77 78 11 59', NULL, '43.224327, 0.636628', 'miro.laurent@free.fr', NULL, NULL, NULL),
(184, 'MISSIO RODOLPHE', NULL, '88', 'RUE NATIONALE', '32700', 'LECTOURE', 'MISSIO RODOLPHE', '06 46 34 33 52', NULL, '43.934427, 0.621038', NULL, NULL, NULL, NULL),
(185, 'NOIRE D\'ASTARAC BIGORRE', NULL, NULL, 'RUE DU MOULIN', '65220', 'TRIE SUR BAÏSE', 'BEUSTE JEAN PAUL et\r\n MENVIELLE ELODIE', '06 13 04 38 65', '06 74 77 56 92', '43.320721, 0.37036', 'noiredastaracbigorre@gmail.com', 'www.lapoulegasconne.fr', NULL, NULL),
(186, 'ODYSSEE D\'ENGRAIN', 'ZONE PEYREHITTE', NULL, NULL, '65300', 'LANNEMEZAN', NULL, '05 62 49 23 29', NULL, '43.125519, 0.38396', 'odysee.engrain@gmail.com', 'www.odysseedengrain-patesbio.fr', NULL, NULL),
(187, 'PASA BEATRICE', 'L\'ABADIE', NULL, NULL, '32140', 'CABAS LOUMASSES', 'PASA BEATRICE', '06 07 36 57 12', '05 62 05 19 60', '43.353544, 0.598948', 'beatricepasa@gmail.com', NULL, NULL, NULL),
(188, 'PEPIEUX ALLIANCE BOVINES', 'PEPIEUX', NULL, NULL, '32450', 'CASTELNAU BARBARENS', 'ROMBI GAETAN', '06 07 65 10 92', NULL, '43.575971, 0.7244', 'gaetanrombi@gmail.com', NULL, NULL, NULL),
(189, 'PHILAPI', NULL, NULL, NULL, '32290', 'POUYDRAGUIN', 'KINTDTS PHILIPPE', NULL, NULL, '43.65776, 0.035178', 'philapi@wanadoo.fr', NULL, NULL, NULL),
(190, 'PIGEONNIER DE GUERRE', NULL, NULL, 'ROUTE DE GRENADE', '32600', 'ISLE JOURDAIN', 'BAJON  ELIANE', '05 62 07 29 17', NULL, '43.619843, 1.100301', 'eliane.bajon@gmail.com', NULL, NULL, NULL),
(191, 'PORC NOIR DE BIGORRE', NULL, NULL, 'ZA BASTILLAC NORD', '65000', 'TARBES', NULL, '05 62 56 32 98', NULL, '43.226136, 0.04151', 'contact@porcnoir.fr', NULL, NULL, NULL),
(192, 'POUCES DES RIVES DE L\'AROS', NULL, NULL, NULL, '32730', 'VILLECOMTAL SUR ARROS', 'GOTTI MARIE CLAIRE', '06 86 72 15 41', NULL, '43.40135, 0.198008', 'biodici@outlook.fr', NULL, NULL, NULL),
(193, 'PRAIRIE DE VICTORINE', 'AU VILLAGE', NULL, NULL, '32270', 'ANSAN', 'BADY JEAN CHRISTOPHE', '06 25 79 11 51', NULL, '43.690664, 0.773961', 'anadejesus@orange.fr', 'www.la-prairie-de-victorine.fr', NULL, NULL),
(194, 'P\'TITE CUEILLETTE', NULL, NULL, NULL, '32600', 'LIAS', 'GASC MATHIEU', '06 43 95 38 16', NULL, '43.562201, 1.135989', 'mathieu-gasc@hotmail.fr', NULL, NULL, NULL),
(195, 'QUIDARRE', NULL, '11', 'CARRERE LONGUE', '65380', 'LAMARQUE PONTACQ', 'QUIDARRE JACQUES et CHRISTELLE', '05 59 53 54 30', NULL, '43.174172, -0.116501', 'jacques.quidarre@sfr.fr', 'www.yaourtquidarre.com', NULL, NULL),
(196, 'QUOI DE NOEUF SOUS LES ARBRES', NULL, NULL, NULL, '32260', 'MONFERRAN PLAVES', 'CARRE JEAN MICHEL', '06 33 01 17 30', NULL, '43.492267, 0.639048', 'quoidenoeufsouslesarbres@gmail.com', NULL, NULL, NULL),
(197, 'RESTO BIO', 'HOURCANNÉ', NULL, NULL, '65350', 'COUSSAN', 'DUCOMBS VÉRONIQUE', '05 62 53 27 03', NULL, '43.245422, 0.200204', 'restobio65@free.fr', NULL, NULL, NULL),
(198, 'RUCHERS DE LARYS', 'REVEL', NULL, NULL, '32270', 'AUBIET', 'DAVASSE CAROLE', NULL, NULL, '43.646621, 0.783846', 'carole.davasse@orange.fr', NULL, NULL, NULL),
(199, 'RUCHERS DE SAMAZAN', NULL, NULL, NULL, '32230', 'SAINT JUSTIN', 'BAJON EMILIE', '06 49 63 40 62', NULL, '43.482488, 0.150587', 'lesruchersdesamazan@gmail.com', NULL, NULL, NULL),
(200, 'SALERS DU GAY', NULL, NULL, NULL, '32360', 'ANTRAS', 'DUPRONT ANNE MARIE', NULL, NULL, '43.727754, 0.44552', 'annemariedupront@gmail.com', NULL, NULL, NULL),
(201, 'SALVALAGGIO JEAN CLAUDE', 'AU DAULON', NULL, NULL, '32140', 'BEZUES BAJON', 'SALVALAGGIO JEAN CLAUDE', '05 62 59 84 42', NULL, '43.384370, 0.59821', 'lucie.lafforgue@orange.fr', NULL, NULL, NULL),
(202, 'SICA PYRENEENNE', NULL, '15', 'BOULEVARD DU PRESIDENT KENNEDY', '65000', 'TARBES', NULL, '05 62 93 71 77', NULL, '43.219740, 0.086276', NULL, NULL, NULL, NULL),
(203, 'SIGNETTI DOMINIQUE', NULL, NULL, NULL, '32700', 'SEMPESSERRE', 'SIGNETTI DOMINIQUE', '05 62 68 93 58', '06 71 00 99 89', '44.015323, 0.648729', 'dominique.signetti@wanadoo.fr', NULL, NULL, NULL),
(204, 'SIMPLES GERSOISES', 'AUX ALLEMANS', NULL, NULL, '32120', 'MARAVAT', 'DIANA LUCILE', '06 64 57 46 79', NULL, '43.757124, 0.752416', 'lucile.diana@hotmail.fr', 'www.simplesgersoises.com', NULL, NULL),
(205, 'SODECO', NULL, NULL, 'ROUTE D\'AGEN', '32000', 'AUCH', NULL, '05 62 63 13 77', NULL, '43.680221, 0.601822', NULL, NULL, NULL, NULL),
(206, 'SOLEIL DE LA LIX', NULL, NULL, 'RUE PAUL SAINT MARTIN', '32420', 'SIMORRE', 'SURMANN ANDREA', NULL, NULL, '43.449837, 0.735357', 'allianceverte@yahoo.com', 'www.alliance-verte.com/tofu.htlm', NULL, NULL),
(207, 'SUIFFET MAXIME', 'AUX VIGNEAUX', NULL, NULL, '32500', 'PAUILHAC', 'SUIFFET MAXIME', '06 89 72 86 38', NULL, '43.875727, 0.611952', NULL, NULL, NULL, NULL),
(208, 'TERRA ALTER GASCOGNE', NULL, '5', 'RUE DU PUTNAU', '32230', 'MARCIAC', 'BONNEMAISON ELODIE', '06 71 95 73 94', NULL, '43.523572, 0.163389', 'l.boinaisbourgoin@terraalter.org', 'www.terraalter.org', NULL, NULL),
(209, 'THOMAS PHILIPPE', 'LASALLE SUD', NULL, NULL, '32600', 'ISLE JOURDAIN', 'THOMAS PHILIPPE', NULL, NULL, '43.613837, 1.081741', 'philippethomas31@hotmail.fr', NULL, NULL, NULL),
(210, 'TOMATOFFANY', 'POUCHALAN', NULL, NULL, '32800', 'EAUZE', 'BIDAULT STEPHANIE', '06 31 39 29 97', NULL, '43.862587, 0.10053', 'tomatofanny@yahoo.fr', NULL, NULL, NULL),
(211, 'TRUITE DES PYRENEES', NULL, '34', 'ROUTE DU SAILHET', '65400', 'LAU BALAGNAS', NULL, '05 62 97 02 05', NULL, '42.997858, -0.085211', NULL, NULL, NULL, NULL),
(212, 'VALLEE DES DEUX SOURCES', 'HAUT BOURG', NULL, NULL, '32400', 'VERLUS', 'BASTELICA DAVID', '05 62 09 49 62', NULL, '43.601471, -0.196032', 'contact@valdessources.com', NULL, NULL, NULL),
(213, 'VERDIER MATAYRON PHILIPPE', NULL, '13', 'CHEMIN DU BERNET', '65700', 'HERES', 'VERDIER MATAYRON PHILIPPE', '05 62 31 90 17', '06 79 26 89 79', '43.552293, 0.000743', 'p.verdier.m@orange.fr', NULL, NULL, NULL),
(214, 'VERGE BORDEROLLE ANNE et THIERRY', NULL, '1', 'RUE HENRI LAIGNOUX', '32230', 'MARCIAC', 'VERGE BORDEROLLE ANNE et \r\n THIERRY', '05 62 09 38 69', NULL, '43.523779, 0.162065', NULL, NULL, NULL, NULL),
(215, 'VERGER DE GOUTTE D\'OR', 'SAUVAGE', NULL, NULL, '47160', 'SAINT LEON', 'BIKOWSKI KRYSJA \r\nVANDER HORST HARM', '05 53 79 72 89', '06 89 21 64 15', '44.292714, 0.244316', 'fruitsbio@vergerdegouttedor.com', NULL, NULL, NULL),
(216, 'VERGERS DE BEAUSOLEIL', 'LE DOUBLE', NULL, NULL, '32480', 'LA ROMIEU', 'COUPEY OSCAR', '05 62 28 48 22', NULL, '43.981804, 0.497601', 'sceaocoupey@club-internet.fr', NULL, NULL, NULL),
(217, 'VERGERS DE PAUPENNE', 'LIEU METAIRIE', NULL, NULL, '32140', 'ESCLASSAN LABASTIDE', 'LANSALOT MATRAS JACQUELINE', '05 62 66 01 57', NULL, '43.422414, 0.556062', 'vergerspaupenne@hotmail.com', 'www.vergersdepaupenne.fr', NULL, NULL),
(218, 'VIANDES DU BOULONNAIS', NULL, NULL, 'ROUTE D\'AUCH', '31350', 'BOULOGNE/GESSE', NULL, '05 61 88 49 37', NULL, '43.290874, 0.641958', NULL, NULL, NULL, NULL),
(219, 'VILLENEUVE ROLAND', NULL, NULL, 'QUARTIER CAZAUX', '32300', 'SAINT ARROMAN', 'VILLENEUVE ROLAND', '05 62 66 23 54', NULL, '43.438795, 0.520161', NULL, NULL, NULL, NULL),
(220, 'VOLAILLES DE GASCOGNE', 'TOULIEU', NULL, NULL, '32190', 'VIC FEZENSAC', 'SILLIERES ET FILS', '05 62 06 31 76', NULL, '43.759272, 0.301594', NULL, NULL, NULL, NULL),
(221, 'WENK JEAN RENE', 'HEUGAREDE', NULL, NULL, '47600', 'MONCRABEAU', 'WENK JEAN RENE', '06 81 36 15 98', NULL, '44.034710, 0.369965', 'j-rene.wenk@orange.fr', 'www.la-belle-fruiterie.com', NULL, NULL),
(222, 'ZAUGG GILLES', 'LAMAZERE', NULL, NULL, '32190', 'ROZES', 'ZAUGG GILLES', '06 29 47 44 61', NULL, '43.804627, 0.360714', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produire`
--

CREATE TABLE `produire` (
  `id_produire` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_producteur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(10) UNSIGNED NOT NULL,
  `nom_produit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_siqo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_marque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_sous_categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `siqo`
--

CREATE TABLE `siqo` (
  `id_siqo` int(10) UNSIGNED NOT NULL,
  `nom_siqo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_sous_categorie` int(10) UNSIGNED NOT NULL,
  `nom_sous_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`id_chef`);

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
-- Index pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
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
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `preferer`
--
ALTER TABLE `preferer`
  ADD PRIMARY KEY (`id_preferer`);

--
-- Index pour la table `producteur`
--
ALTER TABLE `producteur`
  ADD PRIMARY KEY (`id_producteur`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `siqo`
--
ALTER TABLE `siqo`
  ADD PRIMARY KEY (`id_siqo`);

--
-- Index pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_sous_categorie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `chef`
--
ALTER TABLE `chef`
  MODIFY `id_chef` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `preferer`
--
ALTER TABLE `preferer`
  MODIFY `id_preferer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `producteur`
--
ALTER TABLE `producteur`
  MODIFY `id_producteur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `siqo`
--
ALTER TABLE `siqo`
  MODIFY `id_siqo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous_categorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
