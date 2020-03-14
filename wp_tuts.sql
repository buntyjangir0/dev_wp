-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2020 at 07:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_tuts`
--

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_commentmeta`
--

CREATE TABLE `wptuts_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_comments`
--

CREATE TABLE `wptuts_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_comments`
--

INSERT INTO `wptuts_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-14 15:31:18', '2020-02-14 15:31:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_links`
--

CREATE TABLE `wptuts_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_options`
--

CREATE TABLE `wptuts_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_options`
--

INSERT INTO `wptuts_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp', 'yes'),
(2, 'home', 'http://localhost/wp', 'yes'),
(3, 'blogname', 'Wp tutorials', 'yes'),
(4, 'blogdescription', 'wordpress tutorials testing purpose', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'buntyjangir0@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '5.5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:84:\"/Applications/XAMPP/xamppfiles/htdocs/wp/wp-content/themes/twentysixteen/sidebar.php\";i:2;s:82:\"/Applications/XAMPP/xamppfiles/htdocs/wp/wp-content/themes/twentysixteen/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'custom_theme', 'yes'),
(41, 'stylesheet', 'custom_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:12:\"This si test\";s:4:\"text\";s:28:\"this is test so ignoer this.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '37', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597246278', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wptuts_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:7:\"Searfch\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"calendar-5\";}s:8:\"footer-1\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:5:{i:1583911879;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583940678;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583940679;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583940705;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:3:{i:3;a:1:{s:5:\"title\";s:13:\"Date and time\";}i:5;a:1:{s:5:\"title\";s:5:\"Dates\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:10:\"Main links\";s:8:\"nav_menu\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583906822;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583906826;s:7:\"checked\";a:5:{s:12:\"custom_theme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581837871;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(149, 'category_children', 'a:0:{}', 'yes'),
(170, 'WPLANG', '', 'yes'),
(171, 'new_admin_email', 'buntyjangir0@gmail.com', 'yes'),
(219, 'current_theme', 'Custom theme', 'yes'),
(220, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583830731;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:10:\"calendar-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}}}}', 'yes'),
(221, 'theme_switched', '', 'yes'),
(223, 'theme_mods_twentysixteen', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:21:\"page_background_color\";s:7:\"#ffffff\";s:16:\"background_image\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582044674;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(230, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(242, 'recently_activated', 'a:0:{}', 'yes'),
(247, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1581858438;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(260, '_transient_twentysixteen_categories', '2', 'yes'),
(279, 'theme_mods_custom_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583830723;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(330, 'recovery_mode_email_last_sent', '1582559681', 'yes'),
(359, '_site_transient_timeout_browser_d0763b22065af3cd4a8622f624a60371', '1584435506', 'no'),
(360, '_site_transient_browser_d0763b22065af3cd4a8622f624a60371', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"68.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(361, '_site_transient_timeout_php_check_2ab73141e07c174afcee0664f1ca7ae5', '1584435507', 'no'),
(362, '_site_transient_php_check_2ab73141e07c174afcee0664f1ca7ae5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(379, '_site_transient_timeout_theme_roots', '1583908624', 'no'),
(380, '_site_transient_theme_roots', 'a:5:{s:12:\"custom_theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(381, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583906828;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(383, '_transient_doing_cron', '1583986449.5092289447784423828125', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_postmeta`
--

CREATE TABLE `wptuts_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_postmeta`
--

INSERT INTO `wptuts_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_edit_lock', '1581697136:1'),
(5, 7, '_wp_attached_file', '2020/02/download.jpeg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:21:\"2020/02/download.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"download-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 10, '_edit_lock', '1581837351:1'),
(13, 11, '_wp_attached_file', '2020/02/Capture1.png'),
(14, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1751;s:6:\"height\";i:850;s:4:\"file\";s:20:\"2020/02/Capture1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Capture1-300x146.png\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Capture1-1024x497.png\";s:5:\"width\";i:1024;s:6:\"height\";i:497;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Capture1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Capture1-768x373.png\";s:5:\"width\";i:768;s:6:\"height\";i:373;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"Capture1-1536x746.png\";s:5:\"width\";i:1536;s:6:\"height\";i:746;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"Capture1-1200x583.png\";s:5:\"width\";i:1200;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 12, '_wp_attached_file', '2020/02/1578646980_tomato.jpg'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2020/02/1578646980_tomato.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"1578646980_tomato-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"1578646980_tomato-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(19, 14, '_wp_attached_file', '2020/02/dlText.txt'),
(24, 17, '_edit_lock', '1582730785:1'),
(25, 20, '_wp_attached_file', '2020/02/1578647349_radish.jpg'),
(26, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2020/02/1578647349_radish.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"1578647349_radish-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"1578647349_radish-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_thumbnail_id', '20'),
(28, 17, '_wp_page_template', 'default'),
(29, 21, '_edit_lock', '1582731446:1'),
(32, 10, '_edit_last', '1'),
(33, 10, '_pingme', '1'),
(34, 10, '_encloseme', '1'),
(35, 23, '_wp_trash_meta_status', 'publish'),
(36, 23, '_wp_trash_meta_time', '1581838056'),
(37, 24, '_wp_trash_meta_status', 'publish'),
(38, 24, '_wp_trash_meta_time', '1581838073'),
(39, 25, '_edit_lock', '1581838114:1'),
(40, 7, '_wp_attachment_is_custom_background', 'twentysixteen'),
(41, 25, '_wp_trash_meta_status', 'publish'),
(42, 25, '_wp_trash_meta_time', '1581838117'),
(43, 26, '_wp_trash_meta_status', 'publish'),
(44, 26, '_wp_trash_meta_time', '1581838123'),
(45, 27, '_menu_item_type', 'post_type'),
(46, 27, '_menu_item_menu_item_parent', '0'),
(47, 27, '_menu_item_object_id', '21'),
(48, 27, '_menu_item_object', 'page'),
(49, 27, '_menu_item_target', ''),
(50, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 27, '_menu_item_xfn', ''),
(52, 27, '_menu_item_url', ''),
(54, 28, '_menu_item_type', 'post_type'),
(55, 28, '_menu_item_menu_item_parent', '0'),
(56, 28, '_menu_item_object_id', '17'),
(57, 28, '_menu_item_object', 'page'),
(58, 28, '_menu_item_target', ''),
(59, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 28, '_menu_item_xfn', ''),
(61, 28, '_menu_item_url', ''),
(63, 29, '_menu_item_type', 'post_type'),
(64, 29, '_menu_item_menu_item_parent', '0'),
(65, 29, '_menu_item_object_id', '2'),
(66, 29, '_menu_item_object', 'page'),
(67, 29, '_menu_item_target', ''),
(68, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 29, '_menu_item_xfn', ''),
(70, 29, '_menu_item_url', ''),
(82, 32, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<lable> Phone \n[tel* phone] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(83, 32, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"Wp tutorials \"[your-subject]\"\";s:6:\"sender\";s:37:\"Wp tutorials <buntyjangir0@gmail.com>\";s:9:\"recipient\";s:22:\"buntyjangir0@gmail.com\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\nPhone : [phone]\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wp tutorials (http://localhost/wp)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(84, 32, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Wp tutorials \"[your-subject]\"\";s:6:\"sender\";s:37:\"Wp tutorials <buntyjangir0@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:112:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wp tutorials (http://localhost/wp)\";s:18:\"additional_headers\";s:32:\"Reply-To: buntyjangir0@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(85, 32, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(86, 32, '_additional_settings', ''),
(87, 32, '_locale', 'en_US'),
(88, 17, '_edit_last', '1'),
(89, 37, '_edit_lock', '1582732412:1'),
(90, 37, '_edit_last', '1'),
(91, 39, '_menu_item_type', 'post_type'),
(92, 39, '_menu_item_menu_item_parent', '0'),
(93, 39, '_menu_item_object_id', '37'),
(94, 39, '_menu_item_object', 'page'),
(95, 39, '_menu_item_target', ''),
(96, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 39, '_menu_item_xfn', ''),
(98, 39, '_menu_item_url', ''),
(99, 39, '_menu_item_orphaned', '1582559911'),
(100, 40, '_menu_item_type', 'post_type'),
(101, 40, '_menu_item_menu_item_parent', '0'),
(102, 40, '_menu_item_object_id', '37'),
(103, 40, '_menu_item_object', 'page'),
(104, 40, '_menu_item_target', ''),
(105, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 40, '_menu_item_xfn', ''),
(107, 40, '_menu_item_url', ''),
(109, 41, '_menu_item_type', 'taxonomy'),
(110, 41, '_menu_item_menu_item_parent', '0'),
(111, 41, '_menu_item_object_id', '2'),
(112, 41, '_menu_item_object', 'category'),
(113, 41, '_menu_item_target', ''),
(114, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 41, '_menu_item_xfn', ''),
(116, 41, '_menu_item_url', ''),
(117, 42, '_wp_attached_file', '2020/02/download-1.jpeg'),
(118, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:23:\"2020/02/download-1.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"download-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 21, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_posts`
--

CREATE TABLE `wptuts_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_posts`
--

INSERT INTO `wptuts_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-14 15:31:18', '2020-02-14 15:31:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-02-14 15:31:18', '2020-02-14 15:31:18', '', 0, 'http://localhost/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-14 15:31:18', '2020-02-14 15:31:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-14 15:31:18', '2020-02-14 15:31:18', '', 0, 'http://localhost/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-14 15:31:18', '2020-02-14 15:31:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-14 15:31:18', '2020-02-14 15:31:18', '', 0, 'http://localhost/wp/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-02-14 16:15:22', '2020-02-14 16:15:22', '<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"width\":554,\"height\":310,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download.jpeg\" alt=\"\" class=\"wp-image-7\" width=\"554\" height=\"310\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wp/wp-content/uploads/2020/02/dlText.txt\">Text file link</a></div>\n<!-- /wp:button -->', 'Aap win in dehli', '', 'publish', 'open', 'open', '', 'aap-win-in-dehli', '', '', '2020-02-14 16:21:08', '2020-02-14 16:21:08', '', 0, 'http://localhost/wp/?p=6', 0, 'post', '', 0),
(7, 1, '2020-02-14 16:15:10', '2020-02-14 16:15:10', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2020-02-14 16:15:10', '2020-02-14 16:15:10', '', 6, 'http://localhost/wp/wp-content/uploads/2020/02/download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-02-14 16:15:22', '2020-02-14 16:15:22', '<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"width\":554,\"height\":310,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download.jpeg\" alt=\"\" class=\"wp-image-7\" width=\"554\" height=\"310\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->', 'Aap win in dehli', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-02-14 16:15:22', '2020-02-14 16:15:22', '', 6, 'http://localhost/wp/2020/02/14/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-02-14 16:18:25', '2020-02-14 16:18:25', '<!-- wp:image {\"id\":12,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Endgame is very nice movie in 2019. I like movie very much. something something.</p>\n<!-- /wp:paragraph -->', 'Endgame 2019', '', 'publish', 'open', 'open', '', 'endgame-2019', '', '', '2020-02-16 12:45:50', '2020-02-16 07:15:50', '', 0, 'http://localhost/wp/?p=10', 0, 'post', '', 0),
(11, 1, '2020-02-14 16:17:32', '2020-02-14 16:17:32', '', 'Capture1', '', 'inherit', 'open', 'closed', '', 'capture1', '', '', '2020-02-14 16:17:32', '2020-02-14 16:17:32', '', 10, 'http://localhost/wp/wp-content/uploads/2020/02/Capture1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-02-14 16:17:50', '2020-02-14 16:17:50', '', '1578646980_tomato', '', 'inherit', 'open', 'closed', '', '1578646980_tomato', '', '', '2020-02-14 16:17:50', '2020-02-14 16:17:50', '', 10, 'http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-02-14 16:18:25', '2020-02-14 16:18:25', '<!-- wp:image {\"id\":12,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Endgame is very nice movie in 2019. I like movie very much. something something.</p>\n<!-- /wp:paragraph -->', 'Endgame 2019', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-02-14 16:18:25', '2020-02-14 16:18:25', '', 10, 'http://localhost/wp/2020/02/14/10-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-02-14 16:19:46', '2020-02-14 16:19:46', '', 'dlText', '', 'inherit', 'open', 'closed', '', 'dltext', '', '', '2020-02-14 16:19:46', '2020-02-14 16:19:46', '', 0, 'http://localhost/wp/wp-content/uploads/2020/02/dlText.txt', 0, 'attachment', 'text/plain', 0),
(15, 1, '2020-02-14 16:20:50', '2020-02-14 16:20:50', '<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"width\":554,\"height\":310,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download.jpeg\" alt=\"\" class=\"wp-image-7\" width=\"554\" height=\"310\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Text file link</a></div>\n<!-- /wp:button -->', 'Aap win in dehli', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-02-14 16:20:50', '2020-02-14 16:20:50', '', 6, 'http://localhost/wp/2020/02/14/6-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-02-14 16:21:08', '2020-02-14 16:21:08', '<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"width\":554,\"height\":310,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download.jpeg\" alt=\"\" class=\"wp-image-7\" width=\"554\" height=\"310\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>this is test artical and it is belong to dehli elections. Arvind kejriwal is new cm. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wp/wp-content/uploads/2020/02/dlText.txt\">Text file link</a></div>\n<!-- /wp:button -->', 'Aap win in dehli', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-02-14 16:21:08', '2020-02-14 16:21:08', '', 6, 'http://localhost/wp/2020/02/14/6-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-02-14 16:21:59', '2020-02-14 16:21:59', '<!-- wp:list -->\n<ul><li>one</li><li>two</li><li>thre</li><li>four</li><li>five</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Her is my contact details.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"32\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:gallery {\"ids\":[20,12]} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578647349_radish.jpg\" alt=\"\" data-id=\"20\" data-full-url=\"http://localhost/wp/wp-content/uploads/2020/02/1578647349_radish.jpg\" data-link=\"http://localhost/wp/contact/1578647349_radish/\" class=\"wp-image-20\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" alt=\"\" data-id=\"12\" data-full-url=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" data-link=\"http://localhost/wp/endgame-2019/1578646980_tomato/\" class=\"wp-image-12\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-02-26 20:56:25', '2020-02-26 15:26:25', '', 0, 'http://localhost/wp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-02-14 16:21:59', '2020-02-14 16:21:59', '<!-- wp:paragraph -->\n<p>Her is my contact details.</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-02-14 16:21:59', '2020-02-14 16:21:59', '', 17, 'http://localhost/wp/2020/02/14/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-02-14 16:22:47', '2020-02-14 16:22:47', '<!-- wp:list -->\n<ul><li>one</li><li>two</li><li>thre</li><li>four</li><li>five</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Her is my contact details.</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-02-14 16:22:47', '2020-02-14 16:22:47', '', 17, 'http://localhost/wp/2020/02/14/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-02-14 16:23:49', '2020-02-14 16:23:49', '', '1578647349_radish', '', 'inherit', 'open', 'closed', '', '1578647349_radish', '', '', '2020-02-14 16:23:49', '2020-02-14 16:23:49', '', 17, 'http://localhost/wp/wp-content/uploads/2020/02/1578647349_radish.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-02-14 16:25:06', '2020-02-14 16:25:06', '<!-- wp:paragraph -->\n<p>this is query page we are testing and developing theme.</p>\n<!-- /wp:paragraph -->', 'Query page', '', 'publish', 'closed', 'closed', '', 'query-page', '', '', '2020-02-26 21:07:25', '2020-02-26 15:37:25', '', 0, 'http://localhost/wp/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-02-14 16:25:06', '2020-02-14 16:25:06', '<!-- wp:paragraph -->\n<p>this is query page</p>\n<!-- /wp:paragraph -->', 'Query page', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-02-14 16:25:06', '2020-02-14 16:25:06', '', 21, 'http://localhost/wp/2020/02/14/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-02-16 12:57:36', '2020-02-16 07:27:36', '{\n    \"widget_search[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjc6IlNlYXJmY2giO30=\",\n            \"title\": \"Searfch\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4d7e33568b9ba3b1bd1a8d6edf28f559\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-16 07:27:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '542dd223-c03b-46ea-84f5-f98c37df8bfc', '', '', '2020-02-16 12:57:36', '2020-02-16 07:27:36', '', 0, 'http://localhost/wp/542dd223-c03b-46ea-84f5-f98c37df8bfc/', 0, 'customize_changeset', '', 0),
(24, 1, '2020-02-16 12:57:53', '2020-02-16 07:27:53', '{\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0fc281fc390d45723ff6f292941ddc24\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-16 07:27:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc4f14fc-55d9-40fc-ae79-6c0d1daed665', '', '', '2020-02-16 12:57:53', '2020-02-16 07:27:53', '', 0, 'http://localhost/wp/bc4f14fc-55d9-40fc-ae79-6c0d1daed665/', 0, 'customize_changeset', '', 0),
(25, 1, '2020-02-16 12:58:36', '2020-02-16 07:28:36', '{\n    \"twentysixteen::page_background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-16 07:28:33\"\n    },\n    \"twentysixteen::background_image\": {\n        \"value\": \"http://localhost/wp/wp-content/uploads/2020/02/download.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-16 07:28:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e979977-7fec-47f3-a250-b50a23d511fc', '', '', '2020-02-16 12:58:36', '2020-02-16 07:28:36', '', 0, 'http://localhost/wp/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2020-02-16 12:58:43', '2020-02-16 07:28:43', '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-16 07:28:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e84334d2-6421-4122-99ed-22d88fb28b4c', '', '', '2020-02-16 12:58:43', '2020-02-16 07:28:43', '', 0, 'http://localhost/wp/e84334d2-6421-4122-99ed-22d88fb28b4c/', 0, 'customize_changeset', '', 0),
(27, 1, '2020-02-16 13:01:01', '2020-02-16 07:31:01', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-02-24 21:33:39', '2020-02-24 16:03:39', '', 0, 'http://localhost/wp/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2020-02-16 13:01:01', '2020-02-16 07:31:01', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-02-24 21:33:39', '2020-02-24 16:03:39', '', 0, 'http://localhost/wp/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2020-02-16 13:01:01', '2020-02-16 07:31:01', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-02-24 21:33:39', '2020-02-24 16:03:39', '', 0, 'http://localhost/wp/?p=29', 2, 'nav_menu_item', '', 0),
(32, 1, '2020-02-16 13:07:18', '2020-02-16 07:37:18', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<lable> Phone \r\n[tel* phone] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nWp tutorials \"[your-subject]\"\nWp tutorials <buntyjangir0@gmail.com>\nbuntyjangir0@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\nPhone : [phone]\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Wp tutorials (http://localhost/wp)\nReply-To: [your-email]\n\n\n\n\nWp tutorials \"[your-subject]\"\nWp tutorials <buntyjangir0@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Wp tutorials (http://localhost/wp)\nReply-To: buntyjangir0@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-02-16 13:10:01', '2020-02-16 07:40:01', '', 0, 'http://localhost/wp/?post_type=wpcf7_contact_form&#038;p=32', 0, 'wpcf7_contact_form', '', 0),
(33, 1, '2020-02-16 13:08:23', '2020-02-16 07:38:23', '<!-- wp:list -->\n<ul><li>one</li><li>two</li><li>thre</li><li>four</li><li>five</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Her is my contact details.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"32\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-02-16 13:08:23', '2020-02-16 07:38:23', '', 17, 'http://localhost/wp/17-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-02-16 14:36:12', '2020-02-16 09:06:12', '<!-- wp:list -->\n<ul><li>one</li><li>two</li><li>thre</li><li>four</li><li>five</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Her is my contact details.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"32\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:gallery {\"ids\":[20,12]} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578647349_radish.jpg\" alt=\"\" data-id=\"20\" data-full-url=\"http://localhost/wp/wp-content/uploads/2020/02/1578647349_radish.jpg\" data-link=\"http://localhost/wp/contact/1578647349_radish/\" class=\"wp-image-20\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" alt=\"\" data-id=\"12\" data-full-url=\"http://localhost/wp/wp-content/uploads/2020/02/1578646980_tomato.jpg\" data-link=\"http://localhost/wp/endgame-2019/1578646980_tomato/\" class=\"wp-image-12\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-02-16 14:36:12', '2020-02-16 09:06:12', '', 17, 'http://localhost/wp/17-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-02-24 21:22:22', '2020-02-24 15:52:22', '<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":42,\"width\":528,\"height\":296,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download-1.jpeg\" alt=\"\" class=\"wp-image-42\" width=\"528\" height=\"296\"/></figure>\n<!-- /wp:image -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-02-26 20:55:57', '2020-02-26 15:25:57', '', 0, 'http://localhost/wp/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-02-24 21:22:22', '2020-02-24 15:52:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-02-24 21:22:22', '2020-02-24 15:52:22', '', 37, 'http://localhost/wp/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-02-24 21:28:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-24 21:28:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2020-02-24 21:29:21', '2020-02-24 15:59:21', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2020-02-24 21:33:39', '2020-02-24 16:03:39', '', 0, 'http://localhost/wp/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2020-02-24 21:33:39', '2020-02-24 16:03:39', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-02-24 21:33:39', '2020-02-24 16:03:39', '', 0, 'http://localhost/wp/?p=41', 5, 'nav_menu_item', '', 0),
(42, 1, '2020-02-26 20:51:47', '2020-02-26 15:21:47', '', 'download-1', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2020-02-26 20:51:47', '2020-02-26 15:21:47', '', 37, 'http://localhost/wp/wp-content/uploads/2020/02/download-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-02-26 20:51:50', '2020-02-26 15:21:50', '<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":42,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download-1.jpeg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-02-26 20:51:50', '2020-02-26 15:21:50', '', 37, 'http://localhost/wp/37-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-02-26 20:55:56', '2020-02-26 15:25:56', '<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.This is home page we are testing home page all is good.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":42,\"width\":528,\"height\":296,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/wp/wp-content/uploads/2020/02/download-1.jpeg\" alt=\"\" class=\"wp-image-42\" width=\"528\" height=\"296\"/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-02-26 20:55:56', '2020-02-26 15:25:56', '', 37, 'http://localhost/wp/37-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-02-26 21:07:25', '2020-02-26 15:37:25', '<!-- wp:paragraph -->\n<p>this is query page we are testing and developing theme.</p>\n<!-- /wp:paragraph -->', 'Query page', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-02-26 21:07:25', '2020-02-26 15:37:25', '', 21, 'http://localhost/wp/21-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-03-10 14:28:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-10 14:28:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=46', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_termmeta`
--

CREATE TABLE `wptuts_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_terms`
--

CREATE TABLE `wptuts_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_terms`
--

INSERT INTO `wptuts_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Hollywood', 'hollywood', 0),
(3, 'bollywood', 'bollywood', 0),
(4, 'Politics', 'politics', 0),
(5, 'Primary_menu', 'primary_menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_term_relationships`
--

CREATE TABLE `wptuts_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_term_relationships`
--

INSERT INTO `wptuts_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 4, 0),
(10, 2, 0),
(27, 5, 0),
(28, 5, 0),
(29, 5, 0),
(40, 5, 0),
(41, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_term_taxonomy`
--

CREATE TABLE `wptuts_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_term_taxonomy`
--

INSERT INTO `wptuts_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_usermeta`
--

CREATE TABLE `wptuts_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_usermeta`
--

INSERT INTO `wptuts_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'ectoplasm'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wptuts_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wptuts_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wptuts_dashboard_quick_press_last_post_id', '46'),
(19, 1, 'wptuts_user-settings', 'libraryContent=browse'),
(20, 1, 'wptuts_user-settings-time', '1581697489'),
(21, 1, 'enable_custom_fields', '1'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'session_tokens', 'a:1:{s:64:\"8320e2efc0f60b10a4f8645ca8f37473d19ee39ff097cf869e6707afeff83a5f\";a:4:{s:10:\"expiration\";i:1584003504;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1583830704;}}'),
(25, 1, 'nav_menu_recently_edited', '5');

-- --------------------------------------------------------

--
-- Table structure for table `wptuts_users`
--

CREATE TABLE `wptuts_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wptuts_users`
--

INSERT INTO `wptuts_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BRzJZspAqvINycnvWQfE/ycuYAi4gP.', 'admin', 'buntyjangir0@gmail.com', '', '2020-02-14 15:31:18', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wptuts_commentmeta`
--
ALTER TABLE `wptuts_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wptuts_comments`
--
ALTER TABLE `wptuts_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wptuts_links`
--
ALTER TABLE `wptuts_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wptuts_options`
--
ALTER TABLE `wptuts_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wptuts_postmeta`
--
ALTER TABLE `wptuts_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wptuts_posts`
--
ALTER TABLE `wptuts_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wptuts_termmeta`
--
ALTER TABLE `wptuts_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wptuts_terms`
--
ALTER TABLE `wptuts_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wptuts_term_relationships`
--
ALTER TABLE `wptuts_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wptuts_term_taxonomy`
--
ALTER TABLE `wptuts_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wptuts_usermeta`
--
ALTER TABLE `wptuts_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wptuts_users`
--
ALTER TABLE `wptuts_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wptuts_commentmeta`
--
ALTER TABLE `wptuts_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wptuts_comments`
--
ALTER TABLE `wptuts_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wptuts_links`
--
ALTER TABLE `wptuts_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wptuts_options`
--
ALTER TABLE `wptuts_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `wptuts_postmeta`
--
ALTER TABLE `wptuts_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `wptuts_posts`
--
ALTER TABLE `wptuts_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wptuts_termmeta`
--
ALTER TABLE `wptuts_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wptuts_terms`
--
ALTER TABLE `wptuts_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wptuts_term_taxonomy`
--
ALTER TABLE `wptuts_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wptuts_usermeta`
--
ALTER TABLE `wptuts_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wptuts_users`
--
ALTER TABLE `wptuts_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
