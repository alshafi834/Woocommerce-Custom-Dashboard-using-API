-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 07:45 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-25 14:31:43', '2018-06-25 14:31:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(4, 43, 'WooCommerce', '', '', '', '2018-06-25 16:29:15', '2018-06-25 16:29:15', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 43, 'WooCommerce', '', '', '', '2018-06-26 15:45:04', '2018-06-26 15:45:04', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 53, 'WooCommerce', '', '', '', '2018-06-26 15:52:43', '2018-06-26 15:52:43', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 54, 'WooCommerce', '', '', '', '2018-06-26 15:54:05', '2018-06-26 15:54:05', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 55, 'WooCommerce', '', '', '', '2018-06-26 15:55:02', '2018-06-26 15:55:02', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 55, 'WooCommerce', '', '', '', '2018-06-26 15:56:03', '2018-06-26 15:56:03', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 54, 'WooCommerce', '', '', '', '2018-06-26 15:57:00', '2018-06-26 15:57:00', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 43, 'WooCommerce', '', '', '', '2018-06-26 15:57:42', '2018-06-26 15:57:42', 'Order status changed from Completed to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 56, 'WooCommerce', '', '', '', '2018-06-26 15:58:57', '2018-06-26 15:58:57', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/woocomapi', 'yes'),
(2, 'home', 'http://localhost/woocomapi', 'yes'),
(3, 'blogname', 'woocommerce api', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'afrintamanna96@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '1', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1530037905;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530038533;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1530045261;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530057600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530066705;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530109923;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530110061;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530110072;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530115041;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530120861;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530576000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529937480;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530023512;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_4d90fb766c3b51de57fa42e860c03217', '1530541925', 'no'),
(123, '_site_transient_browser_4d90fb766c3b51de57fa42e860c03217', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"60.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(126, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1530071454', 'no'),
(127, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(147, 'woocommerce_store_address', 'uttara, dhaka', 'yes'),
(148, 'woocommerce_store_address_2', '', 'yes'),
(149, 'woocommerce_store_city', 'dhaka', 'yes'),
(150, 'woocommerce_default_country', 'GB:*', 'yes'),
(151, 'woocommerce_store_postcode', '1230', 'yes'),
(152, 'woocommerce_allowed_countries', 'all', 'yes'),
(153, 'woocommerce_all_except_countries', '', 'yes'),
(154, 'woocommerce_specific_allowed_countries', '', 'yes'),
(155, 'woocommerce_ship_to_countries', '', 'yes'),
(156, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(157, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(158, 'woocommerce_calc_taxes', 'no', 'yes'),
(159, 'woocommerce_enable_coupons', 'yes', 'yes'),
(160, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(161, 'woocommerce_currency', 'BDT', 'yes'),
(162, 'woocommerce_currency_pos', 'left', 'yes'),
(163, 'woocommerce_price_thousand_sep', ',', 'yes'),
(164, 'woocommerce_price_decimal_sep', '.', 'yes'),
(165, 'woocommerce_price_num_decimals', '2', 'yes'),
(166, 'woocommerce_shop_page_id', '5', 'yes'),
(167, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(168, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(169, 'woocommerce_weight_unit', 'kg', 'yes'),
(170, 'woocommerce_dimension_unit', 'cm', 'yes'),
(171, 'woocommerce_enable_reviews', 'yes', 'yes'),
(172, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(173, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(174, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(175, 'woocommerce_review_rating_required', 'yes', 'no'),
(176, 'woocommerce_manage_stock', 'yes', 'yes'),
(177, 'woocommerce_hold_stock_minutes', '60', 'no'),
(178, 'woocommerce_notify_low_stock', 'yes', 'no'),
(179, 'woocommerce_notify_no_stock', 'yes', 'no'),
(180, 'woocommerce_stock_email_recipient', 'afrintamanna96@gmail.com', 'no'),
(181, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(182, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(183, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(184, 'woocommerce_stock_format', '', 'yes'),
(185, 'woocommerce_file_download_method', 'force', 'no'),
(186, 'woocommerce_downloads_require_login', 'no', 'no'),
(187, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(188, 'woocommerce_prices_include_tax', 'no', 'yes'),
(189, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(190, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(191, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(192, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(193, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(194, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(195, 'woocommerce_price_display_suffix', '', 'yes'),
(196, 'woocommerce_tax_total_display', 'itemized', 'no'),
(197, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(198, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(199, 'woocommerce_ship_to_destination', 'billing', 'no'),
(200, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(201, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(202, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(203, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(204, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(205, 'woocommerce_registration_generate_username', 'yes', 'no'),
(206, 'woocommerce_registration_generate_password', 'yes', 'no'),
(207, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(208, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(209, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(210, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(211, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(212, 'woocommerce_trash_pending_orders', '', 'no'),
(213, 'woocommerce_trash_failed_orders', '', 'no'),
(214, 'woocommerce_trash_cancelled_orders', '', 'no'),
(215, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(216, 'woocommerce_email_from_name', 'woocommerce api', 'no'),
(217, 'woocommerce_email_from_address', 'afrintamanna96@gmail.com', 'no'),
(218, 'woocommerce_email_header_image', '', 'no'),
(219, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(220, 'woocommerce_email_base_color', '#96588a', 'no'),
(221, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(222, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(223, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(224, 'woocommerce_cart_page_id', '6', 'yes'),
(225, 'woocommerce_checkout_page_id', '7', 'yes'),
(226, 'woocommerce_myaccount_page_id', '8', 'yes'),
(227, 'woocommerce_terms_page_id', '', 'no'),
(228, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(229, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(230, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(231, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(232, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(233, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(234, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(235, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(236, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(237, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(238, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(239, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(240, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(241, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(242, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(243, 'woocommerce_api_enabled', 'no', 'yes'),
(244, 'woocommerce_single_image_width', '600', 'yes'),
(245, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(246, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(247, 'woocommerce_demo_store', 'no', 'no'),
(248, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(249, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(250, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(251, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(253, 'default_product_cat', '15', 'yes'),
(256, 'woocommerce_version', '3.4.3', 'yes'),
(257, 'woocommerce_db_version', '3.4.3', 'yes'),
(258, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(259, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(260, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(276, '_transient_timeout_external_ip_address_::1', '1530542066', 'no'),
(277, '_transient_external_ip_address_::1', '103.76.155.26', 'no'),
(281, 'woocommerce_product_type', 'both', 'yes'),
(282, 'woocommerce_allow_tracking', 'yes', 'yes'),
(284, 'woocommerce_tracker_last_send', '1529937348', 'yes'),
(286, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(287, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(288, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(289, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(290, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(291, '_transient_shipping-transient-version', '1529937417', 'yes'),
(300, 'current_theme', 'Storefront', 'yes'),
(301, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(302, 'theme_switched', '', 'yes'),
(303, 'mailchimp_woocommerce_version', '2.1.7', 'no'),
(304, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(306, 'mailchimp-woocommerce-store_id', '5b30fe4dd7a62', 'yes'),
(307, 'storefront_nux_fresh_site', '0', 'yes'),
(308, 'woocommerce_catalog_rows', '4', 'yes'),
(309, 'woocommerce_catalog_columns', '3', 'yes'),
(310, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(313, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(314, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530021621;s:7:\"checked\";a:4:{s:10:\"storefront\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(316, 'storefront_nux_dismissed', '1', 'yes'),
(317, 'storefront_nux_guided_tour', '1', 'yes'),
(321, '_transient_product_query-transient-version', '1530022367', 'yes'),
(323, 'product_cat_children', 'a:0:{}', 'yes'),
(326, '_transient_product-transient-version', '1530022367', 'yes'),
(338, '_transient_timeout_wc_shipping_method_count_1_1529937417', '1532534418', 'no'),
(339, '_transient_wc_shipping_method_count_1_1529937417', '2', 'no'),
(340, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(341, '_transient_orders-transient-version', '1530028734', 'yes'),
(342, '_transient_timeout_wc_order_42_needs_processing', '1530029111', 'no'),
(343, '_transient_wc_order_42_needs_processing', '1', 'no'),
(358, '_transient_timeout_wc_order_43_needs_processing', '1530030552', 'no'),
(359, '_transient_wc_order_43_needs_processing', '1', 'no'),
(368, 'woocommerce_tracker_ua', 'a:1:{i:0;s:78:\"mozilla/5.0 (windows nt 10.0; win64; x64; rv:60.0) gecko/20100101 firefox/60.0\";}', 'yes'),
(376, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1530065213', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(377, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Sat, 16 Jun 2018 09:27:20 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43320\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"The Month in WordPress: May 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 09:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6065\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May. Local Communities Celebrate the 15th Anniversary of WordPress Last Sunday, May [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4537:\"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>\n\n<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href=\"https://wp15.wordpress.net/\">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>\n\n<p>Altogether, there were 224 events globally, with <a href=\"https://wp15.wordpress.net/about/\">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>\n\n<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Privacy Tools added to WordPress core</h2>\n\n<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>\n\n<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>\n\n<p>To find out more about these features and the other updates, read the <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updates to the WordPress.org Privacy Policy</h2>\n\n<p>In a similar vein, WordPress.org itself has received <a href=\"https://wordpress.org/about/privacy/\">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href=\"https://wordpress.org/about/privacy/cookies/\">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>\n\n<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>WordCamp US 2018 has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">opened up speaker submissions</a> for the December event.</li>\n	<li><a href=\"https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/\">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>\n	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href=\"https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/\">a major update</a> this month.</li>\n	<li>In preparation for Gutenberg, <a href=\"https://core.trac.wordpress.org/changeset/43309\">significant work has been done</a> to improve WordPress Core’s build process.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"privacy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"The WordPress.org privacy policy has been updated, hurray! While we weren&#8217;t able to remove all the long sentences, we hope you find the revisions make it easier to understand: how we collect and use data, how long the data we collect is retained, and how you can request a copy of the data you&#8217;ve shared [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:657:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:358:\"WordPress 4.9.6 is now available. This is a privacy and maintenance release. We encourage you to update your sites to take advantage of the new privacy features. Privacy The European Union&#8217;s General Data Protection Regulation (GDPR) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13399:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&#038;ssl=1\" alt=\"A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background.\" class=\"wp-image-5988\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=1024%2C512&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<h2 style=\"text-align:left\">Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2 style=\"text-align:left\">Comments</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&#038;ssl=1\" alt=\"A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured.\" class=\"wp-image-5986\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=300%2C291&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=768%2C744&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=1024%2C992&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2 style=\"text-align:left\">Privacy Policy Page</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1898&amp;ssl=1 1898w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=300%2C177&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=768%2C453&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=1024%2C604&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2 style=\"text-align:left\">Data Handling</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=2372&amp;ssl=1 2372w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=300%2C221&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=768%2C565&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=1024%2C753&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"#\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"#\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2 style=\"text-align:left\">Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4981:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"Store\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"wp15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"May 27, 2018 is the 15th anniversary of the first WordPress release ﻿— and we can&#8217;t wait to celebrate! Party time! Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun: Check the WordPress 15th Anniversary website to see [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3948:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&#038;ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=2188&amp;ssl=1 2188w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=300%2C236&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=768%2C605&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=1024%2C806&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 342px) 100vw, 342px\" data-recalc-dims=\"1\" /></figure>\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3914:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.5 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 19:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"WordPress 4.9.5 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6347:\"<p>WordPress 4.9.5 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.5:</p>\n\n<ol>\n    <li>Don&#x27;t treat <code>localhost</code> as same host by default.</li>\n    <li>Use safe redirects when redirecting the login page if SSL is forced.</li>\n    <li>Make sure the version string is correctly escaped for use in generator tags.</li>\n</ol>\n\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">﻿coordinated security disclosure</a>: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> of the WordPress Security Team, <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>, and <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> of the WordPress Security Team.</p>\n\n<p>Twenty-five other bugs were fixed in WordPress 4.9.5. Particularly of note were:</p>\n\n<ul>\n    <li>The previous styles on caption shortcodes have been restored.</li>\n    <li>Cropping on touch screen devices is now supported.</li>\n    <li>A variety of strings such as error messages have been updated for better clarity.</li>\n    <li>The position of an attachment placeholder during uploads has been fixed.</li>\n    <li>Custom nonce functionality in the REST API JavaScript client has been made consistent throughout the code base.</li>\n    <li>Improved compatibility with PHP 7.2.</li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">This post has more information about all of the issues fixed in 4.9.5 if you&#x27;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.5</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.5:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5645\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/04/the-month-in-wordpress-march-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Apr 2018 08:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5632\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:317:\"With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March. WordPress Now Powers 30% of the Internet Over the last 15 years, the popularity and usage of [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4328:\"<p>With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March.\n\n</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress Now Powers 30% of the Internet</h2>\n\n<p>Over the last 15 years, the popularity and usage of WordPress has been steadily growing. That growth hit a significant milestone this month when <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">W3Techs reported that WordPress now powers over 30% of sites on the web.</a></p>\n\n<p>The percentage is determined based on W3Techs’ review of the top 10 million sites on the web, and it’s a strong indicator of the popularity and flexibility of WordPress as a platform.</p>\n\n<p>If you would like to have hand in helping to grow WordPress even further, <a href=\"https://make.wordpress.org/\">you can get involved today</a>.</p>\n\n<h2>WordPress Jargon Glossary Goes Live</h2>\n\n<p>The WordPress Marketing Team has been hard at work lately putting together <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">a comprehensive glossary of WordPress jargon</a> to help newcomers to the project become more easily acquainted with things.</p>\n\n<p>The glossary <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">is available here</a> along with a downloadable PDF to make it simpler to reference offline.</p>\n\n<p>Publishing this resource is part of an overall effort to make WordPress more easily accessible for people who are not so familiar with the project. If you would like to assist the Marketing Team with this, you can follow <a href=\"https://make.wordpress.org/marketing/\">the team blog</a> and join the #marketing channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>.</p>\n\n<h2>Focusing on Privacy in WordPress</h2>\n\n<p>Online privacy has been in the news this month for all the wrong reasons. It has reinforced the commitment of the GDPR Compliance Team to continue working on enhancements to WordPress core that allow site owners to improve privacy standards.</p>\n\n<p>The team&#x27;s work, and the wider privacy project, spans four areas: Adding tools which will allow site administrators to collect the information they need about their sites, examining the plugin guidelines with privacy in mind, enhancing privacy standards in WordPress core, and creating documentation focused on best practices in online privacy.</p>\n\n<p>To get involved with the project, you can <a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">view the roadmap</a>, <a href=\"https://make.wordpress.org/core/tag/gdpr-compliance/\">follow the updates</a>, <a href=\"https://core.trac.wordpress.org/query?status=!closed&amp;keywords=~gdpr\">submit patches</a>, and join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat\">Making WordPress Slack group</a>. Office hours are 15:00 UTC on Wednesdays.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>The WordPress Foundation has published <a href=\"https://wordpressfoundation.org/2017-annual-report/\">their annual report for 2017</a> showing just how much the community has grown over the last year.</li>\n    <li>The dates for WordCamp US <a href=\"https://2018.us.wordcamp.org/2018/03/13/announcing-wordcamp-us-2018/\">have been announced</a> — this flagship WordCamp event will be held on 7-9 December this year in Nashville, Tennessee.</li>\n    <li>WordPress 4.9.5 is due for release on April 3 — <a href=\"https://make.wordpress.org/core/2018/03/21/wordpress-4-9-5-beta/\">find out more here</a>.</li>\n    <li>Version 2.5 of Gutenberg, the new editor for WordPress core, <a href=\"https://make.wordpress.org/core/2018/03/29/whats-new-in-gutenberg-29th-march/\">was released this month</a> with a host of great improvements.</li>\n    <li>WordSesh, a virtual WordPress conference, <a href=\"http://wordsesh.com/\">is returning in July this year</a>.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em><br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5632\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: February 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/03/the-month-in-wordpress-february-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Mar 2018 08:41:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month. WordPress 4.9.3 &#38; 4.9.4 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5936:\"<p>Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.3 &amp; 4.9.4</h2>\n\n<p>Early in the month, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">version 4.9.3 of WordPress was released</a>, including a number of important bug fixes. Unfortunately it introduced a bug that prevented many sites from automatically updating to future releases. To remedy this issue, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\">version 4.9.4 was released</a> the following day requiring many people to manually update their sites.</p>\n\n<p>While this kind of issue is always regrettable, the good thing is that it was fixed quickly, and that not all sites had updated to 4.9.3 yet, which meant they bypassed the bug in that version.</p>\n\n<p>You can find out more technical information about this issue <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">on the Core development blog</a>.</p>\n\n<h2>The WordCamp Incubator is Back</h2>\n\n<p>In 2016, the Global Community Team ran an experimental program to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event. This program was dubbed the WordCamp Incubator, and it was so successful in the three cities where it ran that <a href=\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\">the program is back for 2018</a>.</p>\n\n<p>Right now, the Community Team is looking for cities to be a part of this year’s incubator by <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\">taking applications</a>. Additionally, each incubator community will need an experienced WordCamp organizer to assist them as a co-lead organizer for their event — if that sounds interesting to you, then you can <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-co-lead-application\">fill in the application form for co-leads</a>.</p>\n\n<p>You can find out further information about the WordCamp Incubator <a href=\"https://make.wordpress.org/community/2018/02/19/wordcamp-incubator-program-2018-announcement/\">on the Community Team blog</a>.</p>\n\n<h2>WordPress Meetup Roundtables scheduled for March</h2>\n\n<p>In order to assist local WordPress meetup organizers with running their meetup groups, some members of the Community Team have organized <a href=\"https://make.wordpress.org/community/2018/02/23/wordpress-meetup-roundtables-scheduled-for-march/\">weekly meetup roundtable discussions through the month of March</a>.</p>\n\n<p>These will be run as video chats at 16:00 UTC every Wednesday this month and will be a great place for meetup organizers to come together and help each other out with practical ideas and advice.</p>\n\n<p>If you are not already in the WordPress meetup program and would like to join, you can find out more information in <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the WordPress Meetup Organizer Handbook</a>.</p>\n\n<h2>GDPR Compliance in WordPress Core</h2>\n\n<p>The General Data Protection Regulation (GDPR) is an upcoming regulation that will affect all online services across Europe. In order to prepare for this, a working group has been formed to make sure that WordPress is compliant with the GDPR regulations.</p>\n\n<p>Aside from the fact that this will be a requirement for the project going forward, it will also have an important and significant impact on the privacy and security of WordPress as a whole. The working group has posted <a href=\"https://make.wordpress.org/core/2018/02/19/proposed-roadmap-tools-for-gdpr-compliance/\">their proposed roadmap</a> for this project and it looks very promising.</p>\n\n<p>To get involved in building WordPress Core, jump into the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>WPShout published <a href=\"https://wpshout.com/complete-guide-wordpress-security/\">a thorough guide to WordPress security</a>.</li>\n    <li>The Community Team has published interesting statistics from the WordCamp program in <a href=\"https://make.wordpress.org/community/2018/02/27/wordcamps-in-2016/\">2016</a> and <a href=\"https://make.wordpress.org/community/2018/02/28/wordcamps-in-2017/\">2017</a>.</li>\n    <li><a href=\"https://make.wordpress.org/community/2018/02/15/potential-addition-of-a-new-onboarding-team/\">An intriguing proposal has been made</a> for a new ‘Onboarding’ team to be started in the WordPress project.</li>\n    <li>The new editing experience for WordPress, named Gutenberg, continues to be actively developed with <a href=\"https://make.wordpress.org/core/2018/02/16/whats-new-in-gutenberg-16th-february/\">a feature-packed release</a> this past month.</li>\n    <li>The Advanced WordPress Facebook group <a href=\"https://www.youtube.com/watch?v=4vS_jR5-nIo\">held an interview with WordPress co-founder, Matt Mullenweg</a> about the Gutenberg project.</li>\n    <li><a href=\"https://make.wordpress.org/meta/2018/02/27/two-factor-authentication-on-wp-org/\">Two factor authentication is on its way to the WordPress.org network</a> — this will be a great improvement to the overall security of the project.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5613\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordCamp Incubator 2.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 22:53:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5577\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"WordCamps are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2450:\"<p><a href=\"https://central.wordcamp.org/\">WordCamps</a> are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over 120 WordCamps being hosted around the world in 2017.<br /></p>\n\n<p>Sometimes though, passionate and enthusiastic community members can’t pull together enough people in their community to make a WordCamp happen. To address this, we introduced <a href=\"https://wordpress.org/news/2016/02/experiment-wordcamp-incubator/\">the WordCamp Incubator program</a> in 2016.<br /></p>\n\n<p>The goal of the incubator program is <strong>to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event.</strong> In 2016, members of <a href=\"https://make.wordpress.org/community/\">the global community team</a> worked with volunteers in three cities — Denpasar, Harare and Medellín — giving direct, hands-on assistance in making local WordCamps possible. All three of these WordCamp incubators <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">were a great success</a>, so we&#x27;re bringing the incubator program back for 2018.<br /></p>\n\n<p>Where should the next WordCamp incubators be? If you have always wanted a WordCamp in your city but haven’t been able to get a community started, this is a great opportunity. We will be taking applications for the next few weeks, then will get in touch with everyone who applied to discuss the possibilities. We will announce the chosen cities by the end of March.<br /></p>\n\n<p><strong>To apply, </strong><a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\"><strong>fill in the application</strong></a><strong> by March 15, 2018.</strong> You don’t need to have any specific information handy, it’s just a form to let us know you’re interested. You can apply to nominate your city even if you don’t want to be the main organizer, but for this to work well we will need local liaisons and volunteers, so please only nominate cities where you live or work so that we have at least one local connection to begin.<br /></p>\n\n<p>We&#x27;re looking forward to hearing from you!<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 26 Jun 2018 14:06:50 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sat, 16 Jun 2018 09:27:20 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911110210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(378, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1530065213', 'no'),
(379, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1530022013', 'no'),
(380, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1530065215', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(381, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Interview with Matías Ventura on Building the Vision for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81807\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/interview-with-matias-ventura-on-building-the-vision-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2948:\"<p>At WordCamp Europe I had the opportunity to sit down with <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matías Ventura</a>, the technical lead for Gutenberg. Ventura, who has been responsible for building the vision for Gutenberg (in addition to building the actual product), shared a few things the team might have done differently in the earlier days to improve its reception in the community.</p>\n<p>&#8220;I think we should have put a little bit more effort into clarifying what we meant by the &#8216;editor,\'&#8221; Ventura said. &#8220;When Matt announced that we&#8217;re going to be focusing on the editor, the WordPress community generally took it that we were going to focus on TinyMCE. But the idea from the start was to focus on the editing experience as a whole, how a user perceives that, which is the whole page. I think it took some time to rectify that that was always what was meant &#8211; to look at the whole editing interface at once.</p>\n<p>&#8220;With some of these projects people are going to be in different places at different times and things will coalesce and make sense at different paces. I think we&#8217;ve gotten to a point now where we have built enough of the Gutenberg vision that we can see where it can lead us.&#8221;</p>\n<p>Several representatives from the Gutenberg team were available at WordCamp Europe for informal chats with the community. They also conducted workshops and gave presentations to prepare designers and developers for what&#8217;s coming in the next few months. Momentum for the new editor is building and Ventura shared what he hopes the world will see when version 1 is included in core.</p>\n<p>&#8220;The thing that has been the most fulfilling, at least to me, has been seeing the regular users when they can use Gutenberg and build things that would have been very hard for them to do before,&#8221; Ventura said. &#8220;When they share those impressions &#8211; that they can build something that they are proud of express themselves &#8211; to me that is the most fulfilling because that&#8217;s really one of the major points behind this. At the same time, I&#8217;m really looking forward to seeing what the design and developer community can build with it and where their imaginations can take us from there. Core is going to supply the infrastructure and the main building blocks but it&#8217;s everything that can be built around it that&#8217;s going to be exciting, as always with WordPress.&#8221;</p>\n<p>Ventura also described some of the interesting possibilities of templates, nested blocks, and child blocks, and how they can be combined to create more sophisticated solutions. He recommends the <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.org/Gutenberg</a> page for resources on getting started with the new editor. Check out the video below for the full interview.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 22:59:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Three Minute Movie Showcases The WordCamp EU 2018 Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/three-minute-movie-showcases-the-wordcamp-eu-2018-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:741:\"<p>If you happened to <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">miss out on WordCamp EU</a> this year, check out the following short film produced by <a href=\"https://www.facebook.com/Production-Pool-402255476588176/\">Production Pool</a>. Production Pool is a video production company based in Belgrade, Serbia that was hired to record all of the videos and wrap up the live stream for WordCamp Europe.</p>\n\n<p>The video is just shy of three minutes in length, highlights the size and scope of the event, and is well produced. You can almost feel what it was like to be an attendee.</p>\n\n<p>How many people can you name in the video?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 21:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Mass Unsubscribe Mailchimp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://ma.tt/2018/06/mass-unsubscribe-mailchimp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1082:\"<p>I&#8217;m a huge fan of <a href=\"https://mailchimp.com/\">Mailchimp</a>, but <em>dang</em> does the service get abused by folks aggressively opting you into mailing lists. I have a very early, very generic Gmail address that people put as a filler address into every possible service and it gets tens of thousands of list and spam mails. A good trick to find and unsubscribe from all the Mailchimp lists you&#8217;re on is to search for <code>mcsv.net</code> and then select all, report as spam, and unsubscribe. Gmail doesn&#8217;t deal well when the unsubscribe list is taller than your screen, so you may need to hit <code>command + -</code> a few times to make it all fit. Also <a href=\"https://www.facebook.com/mailchimp/posts/10152104546810777\">according to this post</a>, &#8220;you can also get in touch with our compliance team directly at <a href=\"mailto:compliance@mailchimp.com\">compliance@mailchimp.com</a> with the email address you would like to remove from all lists and they will be happy to further assist you there as well.&#8221; I will try that as well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 15:19:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Atavist &amp; Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/06/atavist-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:884:\"<img />\n\n<p>As <a href=\"https://www.wsj.com/articles/wordpress-com-owner-buys-atavist-maker-of-subscription-offering-publishing-software-1529597700?mod=searchresults&page=1&pos=1\">reported by the Wall Street Journal</a>, and <a href=\"https://en.blog.wordpress.com/2018/06/21/atavist-joins-wordpress-dot-com/\">an interview about on the WP.com blog</a>, Automattic has acquired the <a href=\"https://atavist.com/\">Atavist platform</a>, <a href=\"https://magazine.atavist.com/\">magazine</a>, and team. Looking forward to working alongside the team: we&#8217;re keeping the magazine going and it&#8217;ll complement <a href=\"https://longreads.com/\">Longreads</a>, and integrating the best of the platform&#8217;s CMS and publisher features into WordPress.com and Jetpack and after that&#8217;s done providing an upgrade path so all of its publishers can move to being WordPress-powered.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 19:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"WPTavern: Matt Mullenweg Unveils Gutenberg Roadmap at WCEU, WordPress Agencies and Product Developers Sprint to Prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11163:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/matt-keynote-wceu-2018.jpg?ssl=1\"><img /></a>photo credit: WordCamp Europe Photography Team\n<p>At his WCEU keynote address in Belgrade, Matt Mullenweg laid out a detailed roadmap for Gutenberg to land in WordPress 5.0 within the next few months, garnering mixed reactions from attendees. Gutenberg&#8217;s timeline is one of the most pressing questions for those who work in the WordPress ecosystem.</p>\n<p>The Gutenberg team has sustained a rapid pace of development over the past year with 30 releases since development began. There are currently 14,000 sites actively using the plugin and Mullenweg plans to roll it out to WordPress.com users in the near future. He announced that the WordPress 5.0 release could be ready as soon as August. In the meantime, the Gutenberg team will continue to refine its current features according to the roadmap Mullenweg outlined in his keynote:</p>\n<p><strong>June 2018</strong></p>\n<ul>\n<li>Freeze new features into Gutenberg</li>\n<li>Hosts, agencies and teachers invited to opt-in sites they have influence over</li>\n<li>Opt-in for wp-admin users on WP.com</li>\n<li>Mobile App support in the Aztec editor across iOs and Android</li>\n</ul>\n<p><strong>July 2018</strong></p>\n<ul>\n<li>4.9.x release with a strong invitation to install either Gutenberg or Classic Editor plugin</li>\n<li>Opt-out for wp-admin users on WP.com</li>\n<li>Heavy triage and bug gardening, getting blockers to zero</li>\n<li>Explore expanding Gutenberg beyond the post into site customization</li>\n</ul>\n<p><strong>August 2018 and beyond</strong></p>\n<ul>\n<li>All critical issues resolved</li>\n<li>Integration with Calypso, offering opt-in users</li>\n<li>100k+ sites having makde 250k+ post using Gutenberg</li>\n<li>Core merge, beginning the 5.0 release cycle</li>\n<li>5.0 beta releases and translations completed</li>\n<li>Mobile version of Gutenberg by the end of the year</li>\n</ul>\n<p>Mullenweg said he hopes to increase Gutenberg usage to 100,000 sites with 250,000 posts made over the next few months. WordPress.com will be instrumental in that goal with a call to action for opt-in that will appear on several hundred thousand sites. In July, WordPress.com will switch the Gutenberg editor to opt-out. Mullenweg said he hopes to gather data from how users respond, especially those who have third-party plugins active on their sites.</p>\n<p>Switching between editing posts in the mobile apps currently breaks but Mullenweg anticipates this will be resolved by August, with full mobile versions of Gutenberg available by the end of the year.</p>\n<p>Mullenweg opened his keynote by drawing attendees&#8217; attention to a new &#8220;<a href=\"https://publiccode.eu/\" rel=\"noopener noreferrer\" target=\"_blank\">Public Code</a>&#8221; link in the footer of WordPress.org. This campaign, organized by <a href=\"https://fsfe.org/index.en.html\" rel=\"noopener noreferrer\" target=\"_blank\">Free Software Foundation Europe</a>, aims to require any publicly financed software developed for the public sector be made available under a Free and Open Source Software license.</p>\n<p>Mullenweg also announced St. Louis, MO, as the next location for WordCamp US in 2019-2020. The local WordPress community in the city spans two states with members from both Missouri and Illinois who have hosted seven WordCamps since 2011.</p>\n<h3>Developers and Agencies Double Down on Gutenberg Preparation, &#8220;Playing for Keeps&#8221;</h3>\n<p>The process of getting products and client websites ready for Gutenberg is a leap for nearly every company and freelancer invested in the WordPress ecosystem. Mullenweg said he cannot guarantee a specific date for release but thinks that &#8220;5.0 is going be ready within a relatively short time frame.&#8221;</p>\n<p>Although many WCEU attendees expressed skepticism about the accelerated timeline for Gutenberg&#8217;s inclusion in core, most recognize the importance of working towards making their clients and products compatible with the new editor.</p>\n<p>Gutenberg technical lead <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matias Ventura</a> said it&#8217;s too early to tell whether the WordPress community will be ready by the time Gutenberg is included in core. &#8220;I think people have already been trying to get ready and we&#8217;re already seeing many major sites being launched using Gutenberg,&#8221; Ventura said. &#8220;From what we&#8217;ve seen with plugin authors building compatibility for Gutenberg, it seems there&#8217;s already enough momentum going on that it could be achievable.&#8221;</p>\n<p>Brad Williams, CEO of WebDevStudios, said his company&#8217;s team of engineers has been <a href=\"https://webdevstudios.com/2018/03/20/webdevstudios-gutenberg-planning-wordpress/\">actively preparing for Gutenberg</a> since late last year and is &#8220;very excited about what it means for the future of WordPress publishing.&#8221; Williams assigned two Gutenberg Leads internally to head up everything related to the new editor and conducted internal training with staff. WebDevStudios also built and released its own Gutenberg add-on framework called <a href=\"https://github.com/WebDevStudios/WDS-Blocks/releases\">WDS Blocks</a>, a framework that includes new custom blocks that many WDS clients use.</p>\n<p>&#8220;Having a potential release date, even if it’s only a target month, is incredibly helpful,&#8221; Williams said. &#8220;This gives us a goal to work towards with each of our clients to verify we are ready for the release. I expect the majority of our clients will not enable Gutenberg on release, but we still need to make sure we have an upgrade plan ready for WordPress 5.0. We are working closely with each of our clients so they understand what is coming, the benefits Gutenberg can provide them, and what a potential roll-out plan will look like. We are also making sure any new leads coming in the door are aware of Gutenberg and the impact it will have on their new WordPress project.&#8221;</p>\n<p>Gary Jones, plugin developer and WordPress engineer at <a href=\"https://gamajo.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Gamajo</a>, expressed apprehension about the timeline. He also plans to make use of the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin to opt sites out of using Gutenberg.</p>\n<p>&#8220;With 737 open issues, I think the August timeline may still be a little short,&#8221; Jones said. &#8220;That&#8217;s only for the &#8216;critical issues&#8217; to be resolved but introducing such a massive change to the basics of managing content like this needs more than just the critical issues resolved; it needs all of the workflow to be very smooth as well.&#8221;</p>\n<p>Jones said he doesn&#8217;t think the typical rhetoric of getting a &#8216;1.0&#8217; release out the door applies in the case of Gutenberg. &#8220;There&#8217;s too much riding on it for it not to make a great first impression for the user base who haven&#8217;t been following its progress,&#8221; Jones said. &#8220;A plugin can have a much quicker release turnaround time for non-critical improvements and fixes than what WP core would have.&#8221;</p>\n<p>Jones said he plans to wait until the merge proposal before tackling plugin compatibility and will wait until 5.0 is out to start improving the experience for his clients. He said this may require creating custom blocks or installing plugins that add custom blocks clients might need. &#8220;By then we&#8217;d also know how ACF, Pods. and other plugins we use, and the Genesis theme, are supporting Gutenberg editor (or not),&#8221; Jones said.</p>\n<p>Jake Goldman, President and founder of <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a>, said his company already has an internal mandate that all new public plugins and major plugin updates must have at least &#8220;beta&#8221; support for Gutenberg. 10up&#8217;s <a href=\"https://distributorplugin.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Distributor</a> product is already Gutenberg-ready and the company has several Gutenberg-ready plugins and updates expected to ship in the next 1-2 months.</p>\n<p>&#8220;Clients are trickier,&#8221; Goldman said. &#8220;We have two big client projects started in the last couple of months that are using Gutenberg, and some pretty complicated custom blocks and extensions. We have a couple of other customers who are curious or in the exploratory phase. Two big client projects have us a bit gun shy about adopting [Gutenberg] as the &#8216;standard&#8217; on newer projects until it matures a bit more and begins to focus a bit more on the &#8216;enterprise use case / user stories&#8217; &#8211; there are some real challenges with those user stories.&#8221;</p>\n<p>Goldman also said he was encouraged to hear that Calypso will adopt Gutenberg in the next couple of months, because he hopes it will address some of the confusion and fragmentation issues.</p>\n<p>He doesn&#8217;t anticipate Gutenberg actually landing in August, however. &#8220;I don’t see August, frankly, because I don’t think the core team has a clear vision for &#8216;how&#8217; an upgrade with Gutenberg will work,&#8221; Goldman said. &#8220;That said, I suspect Matt is knowingly putting timeline pressure on the team &#8211; a bit of &#8216;if I say August, we can probably hit November&#8217; type mentality.&#8221;</p>\n<p>Mason James, founder of <a href=\"https://www.valet.io/\">Valet</a>, said he is confident his clients and products will be ready after testing Gutenberg on hundreds of sites. His team is watching a few products that have compatibility issues but he is hopeful these will be resolved soon.</p>\n<p>&#8220;The timeline of August seems a bit optimistic,&#8221; James said. &#8220;I’d be surprised if that is met, but our clients will be in good shape if that happens. We’ve also been sending information to our clients via email, a whitepaper, to try to mitigate any surprises ahead of time.</p>\n<p>&#8220;We decided last year that Gutenberg was a tremendous opportunity for us to reinforce our value proposition to our clients,&#8221; James said. &#8220;It’s an ongoing important initiative for us this year; We&#8217;re playing for keeps.&#8221;</p>\n<p><a href=\"https://thefearlessfreelancer.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Carrie Dils</a>, a WordPress developer, consultant, and educator, has also jumped head first into getting her products compatible with Gutenberg ahead of the new timeline.</p>\n<p>&#8220;I’m feverishly working to get an updated version of the <a href=\"https://store.carriedils.com/downloads/utility-pro/\" rel=\"noopener noreferrer\" target=\"_blank\">Utility Pro theme</a> (my primary product) out the door,&#8221; Dils said. &#8220;The Gutenberg updates are just one part of a larger overhaul (including a minimum requirement of PHP7 and WP 5.0+). I’ve also made the decision not to incorporate Classic Editor theme styles. All looking forward, no looking back.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 16:37:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: WordPress in Uber\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48160\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/06/wordpress-in-uber/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:923:\"<p>I really love this thread and the replies sharing stories about Val Vesa&#8217;s experience talking about WordPress in an Uber / Lyft ride:</p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">My <a href=\"https://twitter.com/Uber?ref_src=twsrc%5Etfw\">@Uber</a> driver last night, going home from airport asked me where was I coming from.<br />Told here about <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a><br />&#8211; what is that, she asked.<br />&#8211; the European Conference for <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a>, I said.<br />Her eyes sparkling, she grabbed the wheel firm, looked in the rear view mirror at me and said,</p>&mdash; Val Vesa | Social Media &amp; Travel Photography (@adspedia) <a href=\"https://twitter.com/adspedia/status/1008782561638801413?ref_src=twsrc%5Etfw\">June 18, 2018</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 05:20:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 321 – Recap of WordCamp EU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81758&preview=true&preview_id=81758\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-321-recap-of-wordcamp-eu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1901:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://lanche86.com/\">Milan Ivanović</a> who helped organize WordCamp EU in Belgrade, Serbia this past weekend. Ivanović describes what it was like to organize such a large event, challenges the team overcame, and a few details related to WordCamp EU 2019 that will be held in Berlin, Germany. John and I finished the show discussing Matt Mullenweg&#8217;s keynote presentation and Gutenberg&#8217;s proposed timeline.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\">Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU</a><br />\n<a href=\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\">WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage</a><br />\n<a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">Mullenweg announced Gutenberg Roadmap</a><br />\n<a href=\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\">WP Rig – A WordPress Starter Theme and Build Process in One</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 27th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #321:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 01:31:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: Proving Geography Doesn’t Matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/proving-geography-doesnt-matter/#utm_source=rss&utm_medium=rss&utm_campaign=proving-geography-doesnt-matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3698:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/08/082416-Uriahs-Victor-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Time passed, and I fell more and more in love with WordPress.\" /><p><img class=\"alignright size-full wp-image-2574\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/06/Screen-Shot-2018-06-20-at-10.16.54-AM.png\" alt=\"Map of Kansas with St. Lucia overlaid.\" width=\"403\" height=\"273\" />Almost exactly two years ago I was looking at Google Analytics Realtime and someone from St. Lucia popped up.  St. Lucia isn&#8217;t a very big place. In the map on the right you can see a little pink dot in the center.  That&#8217;s the size of St. Lucia compared to Kansas. The entire country has fewer people than my city. I wondered who that was, so I tweeted out to the world, asking if anyone knew who that might be. A friend from Themeisle said &#8220;Our man Uriahs lives there, maybe it&#8217;s him!&#8221;</p>\n<p>I looked up Uriahs, and sure enough, it was him! I was fascinated to learn what a WordPress community would look like on an island that size. As it turns out, he&#8217;s fairly alone in WordPress geographically. When I met him, he had never been off his tiny island in the Caribbean.</p>\n<p>Uriahs&#8217; essay is about learning and finding a career in a global workspace, having a GOOD job, all while living someplace where that job didn&#8217;t even exist.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/minority-amongst-minorities/\">A Minority Amongst Minorities</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Proving%20Geography%20Doesn%27t%20Matter&via=heropress&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F&title=Proving+Geography+Doesn%26%238217%3Bt+Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Proving Geography Doesn&#8217;t Matter\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/proving-geography-doesnt-matter/&media=https://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-150x150.jpg&description=Proving Geography Doesn\'t Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Proving Geography Doesn&#8217;t Matter\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/proving-geography-doesnt-matter/\" title=\"Proving Geography Doesn&#8217;t Matter\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/proving-geography-doesnt-matter/\">Proving Geography Doesn&#8217;t Matter</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jun 2018 14:06:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Matt: Link Roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://ma.tt/2018/06/link-roundup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3688:\"<ul>\n	<li><a href=\"https://www.theatlantic.com/family/archive/2018/06/imagining-a-better-boyhood/562232/\">The Atlantic on today&#8217;s masculinity being stifling and imagining a better boyhood</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\">When Deportation is a Death Sentence</a> is one of the most devastating articles I&#8217;ve read in a long time. <br /><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\">A review of the Cy Twombly show</a>, he has an amazing museum in Houston and I enjoy learning more about him.<br /><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\"></a></li>\n	<li><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\">The Great Anthropologists: Margaret Mead</a>, so fascinating.<br /><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\"></a></li>\n	<li><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\">Dating columnist reveals how ‘Sex and the City’ ruined her life</a>, has a happy ending.<br /><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\"></a></li>\n	<li><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\">Barbearians at the Gate</a> &#8220;A journey through a quixotic New Hampshire town teeming with libertarians, fake news, guns, and—possibly—furry invaders.&#8221; Amazing.<br /><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\"></a></li>\n	<li><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\">Lena Dunham Explores Alone Time After a Break-Up</a><br /><br /><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\">My Adventures with the Trip Doctors</a>, aka &#8220;Michael Pollan takes psychedelics.&#8221; See also: <a href=\"https://longreads.com/2018/05/30/michael-pollan-on-why-its-a-good-idea-to-lose-your-self/\">Interview with Longreads</a>.<br />.<br /><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\"></a></li>\n	<li><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\">Kanye West and Why the Myth of “Genius” Must Die</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\">Why Facts Don&#8217;t Change Our Minds</a>, also well-covered in a great book I just finished, <a href=\"https://www.amazon.com/dp/B00SI0B8XC/\">Black Box Thinking</a>.<br />.<br /><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\"></a></li>\n	<li><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\">Admiral Shovel and the Toilet Roll</a> — wow.<br /><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\"></a></li>\n	<li><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\">The Work Required to Have an Opinion</a>, wisdom from Charlie Munger.</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 22:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.8 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/19/version-4-0-8-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:784:\"<p>Version 4.0.8 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.8 contains the following changes:</p>\n<ul>\n<li>Improved the grammar and consistency of the in-admin privacy related notes (notice and config).</li>\n<li>Revised in-admin explanation of the comment form privacy notice to make its usage clearer.</li>\n<li>Added <code>rel=”nofollow noopener”</code> to the comment form privacy notice to improve SEO and security.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 18:35:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Mark Jaquith: Making ScoutDocs: Build Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5665\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://markjaquith.wordpress.com/2018/06/19/making-scoutdocs-build-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2928:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>Build Tools</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>Coding in React involves JSX, a bizarre-but-wonderful XML syntax that you dump directly into the middle of your JavaScript code. It feels exquisitely wrong. Browsers agree, so your JSX-containing JS code will have to be transpiled to regular JavaScript. This can involve using a complex maze of tools. Babel, NPM, Webpack, Browserify, Gulp, Grunt, Uglify, Uglifyify (yes, you read that right), and more. You have decisions to make, and you will find fierce advocates for various solutions.</p>\n<p>For ScoutDocs, I decided to go with <a href=\"https://gruntjs.com/\">Grunt</a> for task running, because I was already comfortable with it, and I needed it for <a href=\"https://www.npmjs.com/package/grunt-wp-deployhttps://www.npmjs.com/package/grunt-wp-deploy\">grunt-wp-deploy</a>. <b>Use a task runner you are already comfortable with.</b> Even if it is just NPM scripts. You’re learning a lot of new things already. It’s okay to keep your task runner setup.</p>\n<p>Next, I had to choose a JS bundler which would let me write and use modular code that gets pulled together into a browser-executable bundle. After deliberating between <a href=\"https://webpack.js.org\">Webpack</a> and <a href=\"http://browserify.org/\">Browserify</a>, I chose Browserify. <b>Webpack is really complicated.</b> It is also very powerful. I recommend you avoid it until you need it. I haven’t needed it yet, and found Browserify to be easier to configure and use, even though it’s a bit on the slow side.</p>\n<p>As I was building ScoutDocs and tweaking my dev tools, tweaking my Grunt file, and writing code to search/replace strings etc, I began to feel like the time I was spending too much time on tooling. Was I becoming one of those people who spend all their time listening to productivity podcasts instead of… being productive? I can see how someone could get sucked into that trap, but putting a reasonable amount of time into configuring your development tools can pay dividends for you beyond simply the time saved. It can also prevent mistakes, keep you in coding mode more often, and increasing your confidence in your code builds. <b>Spend the time up front to make your tools work for you.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 17:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WP Rig – A WordPress Starter Theme and Build Process in One\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81618\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3750:\"<p><a href=\"http://mor10.com/\">Morten Rand-Hendricksen</a>, Senior Staff Instructor at <a href=\"https://www.linkedin.com/learning/\">LinkedIn Learning</a>, has released <a href=\"https://wprig.io/\">WP Rig</a>. WP Rig is a WordPress starter theme and build process combined into one. The starter theme provides a minimal set of templates with the ability to drag-and-drop files from the <a href=\"https://developer.wordpress.org/themes/basics/template-hierarchy/\">WordPress template hierarchy</a>.</p>\n\n<p>It contains a heavily optimized code and file structure, support for lazy-loading images, and documented helper functions. The build process requires no configuration and provides a modern foundation to develop on top of. </p>\n\n<p>Although WP Rig ships with a starter theme, the build process works with any theme you choose to use. WP Rig uses <a href=\"https://gulpjs.com/\">Gulp</a> to manage and optimize files, <a href=\"https://browsersync.io/\">BrowserSync</a> to immediately preview from inside the browser, and ES2015 to parse JavaScript. <a href=\"https://babeljs.io/\">Babel</a>, <a href=\"https://github.com/postcss/postcss\">PostCSS</a>, and <a href=\"http://cssnext.io/\">CSSNext</a> is used to parse CSS. The <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">WordPress Coding Standards</a> and <a href=\"https://eslint.org/\">ESLint</a> are used to check code quality. </p>\n\n<p><a href=\"https://code.visualstudio.com/\">VS Code</a> is tightly integrated with WP Rig but developers can use any code editor they choose. </p>\n\n<p>Rand-Hendriksen says the goal of the project is to provide a starting point where developers can write accessible and performant code from the start using best practices. <br /></p>\n\n<p>&#8220;WordPress and the web it lives on has evolved,&#8221; he said. &#8220;So have the tools we use to build experiences and interactions on and with the web. WordPress theme development is no longer &#8216;just&#8217; about writing PHP and CSS and JavaScript. </p>\n\n<p>&#8220;It’s also about accessibility and build processes and coding standards and performance best practices and and modern coding languages and browser support and a myriad of other topics.</p>\n\n<p>&#8220;WP Rig bridges this gap by building accessibility, performance, coding standards, and modern coding best practices in by default.&#8221;</p>\n\n<p>LinkedIn Learning donated Rand-Hendriksen&#8217;s time to WP Rig. In collaboration with <a href=\"https://xwp.co/\">XWP</a>, <a href=\"https://medinathoughts.com/2018/05/17/progressive-wordpress/\">Google</a>, and other members of the WordPress community, it was released as an open source project that is maintained by him and <a href=\"https://github.com/bamadesigner\">Rachel Cherry</a>. <br /></p>\n\n<p>&#8220;It is not owned or branded by any company, nor beholden to a company goal or ideology,&#8221; he said. &#8220;The purpose and goal of WP Rig is to provide the WordPress community with a theme development rig that puts accessibility, performance, and modern best practices in the front seat to the benefit of the end-user and the web as a whole.&#8221;</p>\n\n<p>You can download WP Rig for free <a href=\"https://wprig.io\">from the project&#8217;s site</a> or <a href=\"https://github.com/wprig/wprig/\">on GitHub</a>. To learn how to use it, LinkedIn Learning is offering a free course entitled &#8220;<a href=\"https://wprig.io/learn/\">Build WordPress Themes with WP Rig</a>.&#8221; The course covers a myriad of topics including, configuring the VS Code workpace settings, Templates, and AMP integration. </p>\n\n<p>For more information about WP Rig check out the <a href=\"https://wprig.io/introducing-wprig-wordpress/\">project&#8217;s official announcement</a>. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 01:19:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7440:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/wceu-2018-contributor-day.jpg?ssl=1\"><img /></a></p>\n<p>WordCamp Europe hosted a successful contributor day in Belgrade despite a wi-fi outage during the first half of the day. The event posted record numbers with 529 attendees registered to contribute across 24 teams.</p>\n<p>Contributors had the opportunity to make connections and conversations with team members and representatives from other teams while the wi-fi was down.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had the chance to meet <a href=\"https://twitter.com/aaroncampbell?ref_src=twsrc%5Etfw\">@aaroncampbell</a> and discuss WordPress core security with him and a couple of attendees on <a href=\"https://twitter.com/hashtag/wceu?src=hash&ref_src=twsrc%5Etfw\">#wceu</a> contributor day. Thanks for the amazing chat folks!</p>\n<p>It is my first WordCamp Europe and it definitely won\'t be the last!</p>\n<p>&mdash; Bojidar Valchovski (@bdvalchovski) <a href=\"https://twitter.com/bdvalchovski/status/1007306648862494720?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had an awesome <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day today. Had some great conversations and made good progress on a few patches to improve the development experience despite the WiFi issues. Was also very proud to see SIX <a href=\"https://twitter.com/yoast?ref_src=twsrc%5Etfw\">@Yoast</a>\'ers lead different contributor teams! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/family?src=hash&ref_src=twsrc%5Etfw\">#family</a></p>\n<p>&mdash; Omar Reiss (@OmarReiss) <a href=\"https://twitter.com/OmarReiss/status/1007291207171616768?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Contributors submitted patches and made more progress online later in the day when the wi-fi resumed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">So proud of the WordPress Coding Standards team at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day. Look at all the patches which are flooding in!!!!<a href=\"https://twitter.com/FlipKeijzer?ref_src=twsrc%5Etfw\">@flipkeijzer</a> <a href=\"https://twitter.com/GaryJ?ref_src=twsrc%5Etfw\">@GaryJ</a> <a href=\"https://twitter.com/fimdalinha?ref_src=twsrc%5Etfw\">@fimdalinha</a> <a href=\"https://twitter.com/Wonderm00n?ref_src=twsrc%5Etfw\">@Wonderm00n</a> <a href=\"https://twitter.com/Niq1982?ref_src=twsrc%5Etfw\">@niq1982</a> <a href=\"https://twitter.com/moorscode?ref_src=twsrc%5Etfw\">@moorscode</a> <a href=\"https://twitter.com/vladilie94?ref_src=twsrc%5Etfw\">@vladilie94</a> <a href=\"https://twitter.com/MCiufudean?ref_src=twsrc%5Etfw\">@MCiufudean</a> <a href=\"https://t.co/lchrR4ZmHX\">pic.twitter.com/lchrR4ZmHX</a></p>\n<p>&mdash; Juliette (@jrf_nl) <a href=\"https://twitter.com/jrf_nl/status/1007263406838173697?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Look at all these lovely people contributing to <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> Contributor Day <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /></p>\n<p>Thank you, you rock! <a href=\"https://t.co/LtRlyolYPL\">pic.twitter.com/LtRlyolYPL</a></p>\n<p>&mdash; Milana Cap (@DjevaLoperka) <a href=\"https://twitter.com/DjevaLoperka/status/1007164509197357056?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Attendees worked on a variety of different projects from improving the project&#8217;s coding standards to documenting best practices for hosts working with WordPress.</p>\n<p><a href=\"https://twitter.com/EvangeliaPappas\" rel=\"noopener noreferrer\" target=\"_blank\">Evangelia Pappa</a> traveled from Greece to attend her first WordCamp Europe, joining the community team to get answers about helping her local deaf community.</p>\n<p>&#8220;In my country you have a lot of deaf people who want to attend WordCamp and also the meetups that we do for the Greek WP community,&#8221; Pappa said. &#8220;We have found a way to assist them while they are at WordCamps with sign language, but are still struggling with meetups, so I am trying to find answers here in order to help other members of the community.&#8221;</p>\n<p><a href=\"http://twitter.com/rociovaldi\" rel=\"noopener noreferrer\" target=\"_blank\">Rocío Valdivia</a> traveled from Spain to attend her 6th WordCamp Europe and also joined the Community Team for contributor day, creating documentation and mentoring WordCamp organizers.</p>\n<p>&#8220;I&#8217;ve been having a meeting with the WordCamp Nordic organizing team,&#8221; Valdivia said. &#8220;We are talking about the next WordCamp Nordic, a large regional WordCamp, that will be held next year in Helsinki in March.&#8221;</p>\n<p>The Hosting team was also able to work, despite the wi-fi outage, bringing together representatives from different countries and hosting companies.</p>\n<p>&#8220;We&#8217;ve been going through and writing some best practices and documentation,&#8221; <a href=\"http://twitter.com/GetSource\" rel=\"noopener noreferrer\" target=\"_blank\">Michael Schroder</a> said. &#8220;We&#8217;ve been making some good progress on the performance area of the docs, so I feel pretty good about getting some of that committed today.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">The Contribution Area is being put to good use at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> . First time we’re using a dedicated room to allow for a continuance of Contributor Day. <a href=\"https://t.co/lTgR8OdLBf\">pic.twitter.com/lTgR8OdLBf</a></p>\n<p>&mdash; Remkus de Vries (@DeFries) <a href=\"https://twitter.com/DeFries/status/1007628138522861568?ref_src=twsrc%5Etfw\">June 15, 2018</a></p></blockquote>\n<p></p>\n<p>For the first time, WordCamp Europe also set aside a spacious, designated room for attendees who wanted to continue collaborating on contributions during the main conference.</p>\n<p>Wifi outages are a common occurrence at WordCamp Contributor days. While many attendees I spoke with said they were frustrated and inconvenienced by the inability to be productive, others expressed happy sentiments about the opportunity to be together in one place.</p>\n<p>&#8220;The most important thing about contributor day is talking to people, getting to know each other, face timing in real life,&#8221; Polyglots team lead <a href=\"http://twitter.com/petyeah\" rel=\"noopener noreferrer\" target=\"_blank\">Petya Raykovska</a> said. &#8220;These are always very useful connections to have, learning everybody&#8217;s name, asking questions about their experience contributing, and them asking you questions about general experience with the team. It&#8217;s actually been great. I feel like it&#8217;s given people a chance to talk to each other. No time is lost in contributor day, really.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Jun 2018 11:23:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Post Status: Productizing your service business, with Brian Casel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46103\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/productizing-your-service-business-with-brian-casel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2663:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/casjam\">Brian Casel</a>. Brian runs <a href=\"https://audienceops.com/\">Audience Ops</a>, a productized service that offers all aspects of content creation for companies. Brian has been in the WordPress community for a long time, and for years has worked on creating processes around his business to enable him to get beyond a freelancer work life and into treating services like products.</p>\n<p>Before Audience Ops, he ran Restuarant Engine &#8212; a niche WordPress site provider, where he really honed many of the processes his company still uses today &#8212; which he sold for six figures.</p>\n<p>We dig in to why he decided to make a transformation with his businesses to be so process oriented, and how he turned that into the 30-person organization it is today, as well as the various courses and communities around Productize and Scale.</p>\n<p>By the way, if you like this interview, Brian has an active job posting on Post Status for a <a href=\"https://poststatus.com/job/audience-ops-united-states-1899-writer-for-blog-content-covering-wordpress-web-dev-business-topics/\">blog content writer for Audience Ops</a>.</p>\n<p>&nbsp;</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://audienceops.com/\">Audience Ops</a></li>\n<li><a href=\"https://productizeandscale.com/\">Productize and Scale</a> newsletter</li>\n<li><a href=\"http://productizepodcast.com/\">Productize Podcast</a></li>\n<li><a href=\"https://productizecourse.com/\">Productize Course</a></li>\n<li><a href=\"https://restaurantengine.com/\">Restaurant Engine</a></li>\n<li><a href=\"http://opscalendar.com/\">Ops Calendar</a></li>\n<li><a href=\"http://www.tropicalmba.com/dc/\">Tropical MBA DC</a></li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p>Yoast SEO Premium gives you 24/7 support from a great support team and extra features such as a redirect manager, recommended internal links, tutorial videos and integration with Google Webmaster Tools! Check out <a href=\"https://yoast.com/\">Yoast SEO Premium</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 18:11:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81546\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5847:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/gutenberg-workshop.jpg?ssl=1\"><img /></a></p>\n<p>The Gutenberg team took questions from a full room users and developers this morning before diving into the specifics of the editor&#8217;s design, block creation, and how to further extend the new interface. The first question they addressed is the one everyone is asking: When will Gutenberg land in core?</p>\n<p>The team said the editor is pretty close to feature complete and should achieve that in the next few months when version 3.3 is released. At that point the focus will be on refining the current experience. They estimate this to happen in June or the first week of July but also hinted at more information coming in Matt Mullenweg&#8217;s keynote address this afternoon.</p>\n<p>Developers also asked about the criteria that will be used to decide that Gutenberg is ready for a WordPress release. The project has a <a href=\"https://github.com/WordPress/gutenberg/issues/4894\" rel=\"noopener noreferrer\" target=\"_blank\">scope and features MVP issue on GitHub</a> that provides an overview for the major functionality that will be introduced in the first version of the new editor. It shows which features have already been shipped and which ones are remaining.</p>\n<p>The team explained that many of the final features have come from developer and user feedback. Some features were not necessarily planned for V1, but it became more apparent that these were needed because they improved either the developer or user experience. For example, within the past four or five months the team found that the child blocks would be necessary to allow developers to be more expressive in extending the editor. A few of the remaining issues include inline images and post locking for concurrent users, but the team doesn&#8217;t anticipate any major new features on the horizon before V1 is released.</p>\n<p>Gutenberg engineers also assured workshop attendees that the project is being built with backwards compatibility in mind. One person asked what will happen when the 5.0 release lands. The team explained that the Gutenberg update will not change all the content on WordPress sites. When users open a post in the editor they will have the option to convert that content to block format so it will work with the new editor. If it doesn&#8217;t quite work, users be able to fall back to the classic editor.</p>\n<p>The team said they took great lengths not to alter how WordPress deals with data. Gutenberg does not change the content structure. One of the cornerstones for the project is providing an update that will not fragment the content structure. There will be a lot of resources available ahead of the release for helping everyone move forward together.</p>\n<p>Gutenberg engineers said they are working to be conscious not to delay the project, because the longer the delay, the more potential users WordPress is losing because the software is not easy enough for them to build and customize content and websites.</p>\n<h3>How Will Theme Building Change with Gutenberg?</h3>\n<p>Gutenberg designers and engineers also tackled questions about how the new editor will change the theme building experience. Design lead Tammie Lister emphasized the importance of theme developers first getting better at creating themes that do not try to do everything. The basic purpose of a theme is to style the frontend and provide an editor style. One potential way forward for theme developers is to provide additional features by releasing a suite of blocks via a plugin. Lister said she hopes that themes will become a lot lighter in the Gutenberg era and encouraged developers to utilize style guides.</p>\n<p>The team also said that existing themes will continue to function and redesigning a theming API, without the hassle of editing a bunch of PHP files, may be possible in the future. However, it&#8217;s too early to know what that will look like. For now, the rendering engine is not changing. Theme developers interested in Gutenberg compatibility should start looking towards deconstructing their themes into individual elements and learn how to express a theme as a list of blocks.</p>\n<h3>How Will Gutenberg Handle Customization?</h3>\n<p>Attendees asked several questions regarding the specific plan to implement customization, or live previewing, after Gutenberg is in core. The current phase 1 handles content editing and puts the infrastructure in place to support customization. There are some issues on GitHub for transforming widgets into blocks, which will be a step towards the site building experience. The team has already implemented direct manipulation on the WYSIWYG road but phase 2 will cover more aspects of customization.</p>\n<p>Gutenberg is not ready to replace the Customizer anytime soon, but the next phase will explore what a block-based experience of customization will look like. When asked if Gutenberg will &#8220;kill off some of the page builders,&#8221; the team said the goal is for page building type applications to be able to use Gutenberg as a springboard for different implementations that extend the editor in ways that benefit different types of users.</p>\n<p>An attendee asked how the team plans to enhance adoption once Gutenberg lands in core. The team said they are working on an experimental feature called &#8216;tips&#8217; that offers a story walkthrough of the publishing workflow. It includes helpful nudges to assist users in getting better at navigating the interface. The wider ecosystem has already responded with courses and tutorials to help developers get on board. The WordPress training team is also working on some training materials to use at WordCamps with tutorials for developers to learn how to convert existing plugins and themes to be Gutenberg-ready.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 11:18:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WPWeekly Episode 320 – Building a Sustainable Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81508&preview=true&preview_id=81508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wpweekly-episode-320-building-a-sustainable-web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1741:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by Jack Lenox, Software Engineer at Automattic, to discuss his new project, <a href=\"https://sustywp.com/\">SustyWP</a>. Lenox explains how he built the site so that it only has 7KB of data transfer, what sustainability on the web means to him, and the relationship between sustainability and optimization to create a better user experience. We end the show discussing the latest WordPress headlines and share information on how you can watch WordCamp EU for free.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://www.wordfence.com/blog/2018/06/babayaga-wordpress-malware/\">BabaYaga: The WordPress Malware That Eats Other Malware</a><br />\n<a href=\"https://blog.threatpress.com/vulnerable-wordpress-plugins-multidots/\">Ten WordPress Plugins By Multidots For WooCommerce Identified As Vulnerable And Dangerous</a><br />\n<a href=\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\">Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #320:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 02:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Watch WordCamp EU for Free via Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81466\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/watch-wordcamp-eu-for-free-via-livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:889:\"<p><a href=\"https://2018.europe.wordcamp.org/\">WordCamp EU 2018</a> is scheduled to take place this weekend in Belgrade, Serbia. Although the event is sold out, you can watch the event for free via livestream. Simply visit the WCEU <a href=\"https://2018.europe.wordcamp.org/tickets/\">tickets page</a> and register a livestream ticket.</p>\n\n<p>Sessions begin on Friday, June 15th. To see a list of sessions and speakers, check out the <a href=\"https://2018.europe.wordcamp.org/schedule/\">event&#8217;s schedule</a>. Note that there is a six hour time difference between Eastern Daylight Time and Belgrade, Serbia. </p>\n\n<p>As we near the halfway point of 2018 and no imminent release of WordPress 5.0 on the horizon, it will be interesting to see what information is shared during <a href=\"https://2018.europe.wordcamp.org/session/matt-on-wordpress/\">Matt Mullenweg&#8217;s keynote.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 00:35:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"HeroPress: By Helping Others, I Save Myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2568\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/by-helping-others-i-save-myself/#utm_source=rss&utm_medium=rss&utm_campaign=by-helping-others-i-save-myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3397:\"<img width=\"960\" height=\"547\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/osmi-1024x583.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner for OSMI, Open Sourcing Mental Illness\" /><p>I think I met Ed Finkler at WordCamp Milwaukee in 2016. It was at the speaker dinner, and he sat across from me for a while. He seemed like a pretty normal WordPress developer and several weeks later I asked him to do a HeroPress essay. His answer surprised me. &#8220;Well sure, that sounds pretty cool, aside from the fact that I don&#8217;t really do WordPress anymore&#8221;.</p>\n<p>As it turns out, he had mostly retired from active WordPress development. His every day world was now filled with working in different frameworks and languages, amongst people who help WordPress in disdain. But Ed&#8217;s view fascinated me. For all that he was working with more modern frameworks, WordPress is what made him a great developer. The empathy and compassion for the user that WordPress holds so dearly carried over into the rest of his life.</p>\n<p>So what was he doing at WordCamp? Spreading the word about his cool new organization, which I will leave for you to read about.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-taught-better-developer/\">How WordPress Taught Me To Be a Better Developer</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: By Helping Others, I Save Myself\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=By%20Helping%20Others%2C%20I%20Save%20Myself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: By Helping Others, I Save Myself\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F&title=By+Helping+Others%2C+I+Save+Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Share: By Helping Others, I Save Myself\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/by-helping-others-i-save-myself/&media=https://heropress.com/wp-content/uploads/2016/05/osmi-150x150.png&description=By Helping Others, I Save Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: By Helping Others, I Save Myself\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/by-helping-others-i-save-myself/\" title=\"By Helping Others, I Save Myself\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/by-helping-others-i-save-myself/\">By Helping Others, I Save Myself</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 13:14:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81315\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3482:\"<p><a href=\"https://2018.oc.wordcamp.org/\">WordCamp Orange County</a>, CA, took place this past weekend and the winners of the <a href=\"https://wptavern.com/wordcamp-orange-county-plugin-a-palooza-first-place-prize-is-3000\">Plugin-a-Palooza</a> have been crowned. <a href=\"https://profiles.wordpress.org/croixhaug\">Nathan Tyler</a> and <a href=\"https://profiles.wordpress.org/nataliemac\">Natalie MacLees</a> took the first place prize of $3,000 with their submission, <a href=\"https://wordpress.org/plugins/plugin-detective/\">Plugin Detective</a>.</p>\n\n<img />\n	Creating a new case in Plugin Detective\n\n\n<p>When it comes to troubleshooting WordPress, disabling and re-enabling plugins is one of the first steps in the process. This is time consuming and involves browsing to the plugin management page multiple times to turn a plugin on or off.</p>\n\n<p>Plugin Detective simplifies the process by quickly identifying the culprit. Once installed, a Troubleshooting quick link is added to the WordPress Toolbar. From here, users can open or continue a case. When a case is opened, a bot named Detective Otto asks users to navigate to the page where the problem is occurring.</p>\n\n<p>After the location is identified, users inform Detective Otto which plugins are required for the site to function properly. Interrogations is the act of of disabling and enabling plugins. Multiple interrogation attempts are made until the culprit is identified through the process of elimination. The following video does a great job of explaining and showing how it works. <br /></p>\n\n\n	<div class=\"embed-vimeo\"></div>\n\n\n<p>It can also be used to <a href=\"https://wordpress.org/plugins/plugin-detective/#i%20just%20see%20errors%20or%20a%20white%20screen.%20can%20i%20still%20use%20plugin%20detective%20to%20troubleshoot%20what%E2%80%99s%20gone%20wrong%3F\">identify and fix</a> White Screen of Death errors caused by plugins.<br /></p>\n\n<p>Plugin Detective is partly inspired by a software program from the 90s called <a href=\"https://en.wikipedia.org/wiki/Conflict_Catcher\">Conflict Catcher</a>.</p>\n\n<p>&#8220;I used &#8216;Conflict Catcher&#8217; to troubleshoot conflicts between system extensions on my Mac,&#8221; Tyler said. &#8220;I thought the concept was cool and would often run it for fun to try to figure out how it worked. Eventually, I learned that the computer science concept is a &#8216;binary search.&#8217;</p>\n\n<p>&#8220;Applying the concept to WordPress plugins seemed like a good approach to the plugin conflict problem we all experience.&#8221;</p>\n\n<p>Tyler developed the functionality and MacLees is credited with the plugin&#8217;s design, user experience, JavaScript, API calls, etc. The duo plan to establish relationships with plugin authors to help get them better bug reports. <br />><br /><br /><br /><br /><br />&#8220;Basically, if an author opts-in, we can help the end-user file a support ticket right there in Plugin Detective after we&#8217;ve identified the problem,&#8221; he said. &#8220;The support team gets a helpful bug report with notes from the customer, along with system information, other installed plugins, active theme, etc.&#8221;</p>\n\n<p>If you troubleshoot sites often or want an easier way to figure out which plugin is causing a conflict, consider adding Plugin Detective to your toolkit. Plugin Detective is free and <a href=\"https://wordpress.org/plugins/plugin-detective/\">available for download</a> from the WordPress plugin directory. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Jun 2018 02:12:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Other Cultures\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48139\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2018/06/other-cultures/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:311:\"<blockquote class=\"wp-block-quote\">\n	<p>As the traveller who has once been from home is wiser than he who has never left his own doorstep, so a knowledge of one other culture should sharpen our ability to scrutinize more steadily, to appreciate more lovingly, our own.</p><cite>Margaret Mead</cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 23:35:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordCamp Europe Introduces Official Mobile App, New Tech for On-site Badge Printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4132:\"<img />\n\n<p>WordCamp Europe debuted its new <a href=\"https://app.wp-europe.org/\">official mobile app</a> today, providing attendees with a quick way to access the event’s schedule, maps, and announcements. Several unofficial apps have popped up over the years, but this is the first one produced and supported by WCEU organizers.</p>\n\n<p>The team opted for creating a PWA (Progressive Web App), which loads inside a mobile browser while offering an experience similar to native apps. It’s also far less complicated than supporting multiple platform-specific mobile apps. Users don’t have to download anything, since it is loaded via the browser, and the site can be accessed offline in case of network failure. <br /></p>\n\n<img />\n\n<p>The app was built using React on the frontend and is hosted on a node server. It uses WordPress for content management on the backend, along with the <a href=\"https://wordpress.org/plugins/wp-pwa/\">WordPress PWA</a> plugin and <a href=\"https://wordpress.org/plugins/onesignal-free-web-push-notifications/\">OneSignal Push Notifications ﻿</a>.</p>\n\n<p>“This first iteration isn’t scalable for the community, but we wanted to test the possibilities and have the opportunity to explore what it would take to eventually make this available for all WordCamps,” WCEU team leader Jenny Beaumont said. “It’s a lofty goal, and we’re not there yet, but we’ve learned a lot along the way and looking forward to pursuing the ambition.”</p>\n\n<p>Attendees can expect to find any last minute schedule changes in the app and may also opt to receive push notifications for important updates. The Favorites feature lets users to bookmark all the sessions they plan to attend and toggle them into view.</p>\n\n<img />\n\n<p>WCEU’s official PWA is lightweight and re-usable &#8211; it can easily be updated to display content for future editions of the WordCamp.</p>\n\n<p>“We’ll only need to update our feeds, since WordCamps are issued a new website every year, but the basic functionality will be in place and can be developed on as browsers offer better support and new team members join the team with their great ideas,” Beaumont said. </p>\n\n<p>The current theme is open source and available on GitHub. It can be rebranded for future events to reflect the design for that year and city. Beaumont said the long term goal is to have a PWA generated directly from WordCamp sites. </p>\n\n<h3>New Tech for Badges Generates a Barcode for Sponsors to Scan</h3>\n\n<p>The technology for badge creation will be getting an overhaul as well this year. WCEU organizers are renting the materials from a <a href=\"https://www.azavista.com/\">Azavista</a>, a Dutch event management company that provides badges, badge printers and scanning devices (iPhones). The new tech will make it more efficient for volunteers to process more than 2,000 attendees at registration.</p>\n\n<p>The badge scanners also streamline attendee interaction with sponsors, replacing the signup sheets and tablets that sponsors usually have for collecting attendee information. </p>\n\n<p>“It’s tied to attendees’ Attendee ID number, created when attendees register on our WordCamp site,” Beaumont said. “Say an attendee is visiting a sponsor booth and having a nice conversation, the sponsor can ask if they’d like to leave their name and email address to stay in touch. If the attendee agrees, then they show their badge to have it scanned by the sponsor using the closed-technology on devices provided by our vendor. &#8220;</p>\n\n<p>After the event, WCEU organizers will send the names and email addresses of attendees to the sponsors based on the signups from scanned badges.</p>\n\n<p>If attendee feedback is positive, Beaumont said organizers plan to implement the quick registration feature next year. This will allow attendees to receive a QR code via email and get it scanned in order to receive their badges. These tech improvements should relieve traffic bottlenecks at the registration desk and sponsor booths, freeing up more time for WCEU attendees to spend in sessions and networking activities.</p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 15:38:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Mark Jaquith: Making ScoutDocs: React\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5658\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6209:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>React</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>After the first iteration of ScoutDocs was built and none of the partners on the project were happy with its experience, it became clear that in order to deliver a clean, simple interface for file uploading and sharing we needed to leave the bounds of the WordPress admin. It didn’t take me long to decide that <a href=\"https://reactjs.org/\">React</a> would be the tool I used to build the new interface.</p>\n<p>There is an incredible momentum behind React, and a rich ecosystem of libraries, tools, and educational resources. But beyond all that, React is just plain <em>fun</em> to code. Once you accept the central premise that a view layer and the controller that handles that view are inextricably linked, and once you get over the weirdness of quasi-HTML-in-JS that is JSX, coding in React is a joy.</p>\n<p><img /></p>\n<p>Make no mistake, learning React is not a weekend project. It will take a while before it feels like home. But once you get it, you feel very powerful.</p>\n<p>The first lesson I learned was <b>don’t learn React by rewriting your app in React</b>. I tried this. I read some tutorials about React and it felt straightforward, and I was like “let’s <i>do</i> this.”</p>\n<p><img /></p>\n<p>This was a bad idea. I was overwhelmed. I had no idea where to start. Next, I tried following some of the interactive tutorials that required me to build a simple React app and then slowly add functionality to it, refactoring it multiple times, until I understood not just the code that I ended up with, but the <i>process</i> of creating it. This went much better.</p>\n<p><b>Start small, and build a bunch of “toy” apps before you use React for your own apps.</b> Once you are able to “think in React”, you’ll be nearly physically itchy to go re-code your app in React, and that’s how you know you’re ready. If you jump the gun, you are going to get stuck a lot, and it will be frustrating.</p>\n<p>As you learn React and explore the React ecosystem, you will likely hear about <a href=\"https://redux.js.org/\">Redux</a>, which is a system for storing application state, and is commonly used with React apps. It looked complicated, and even its creator wrote a post saying <a href=\"https://medium.com/@dan_abramov/you-might-not-need-redux-be46360cf367\">you might not need Redux</a>. So I skipped it. This was probably the right call when I was starting out. But as I fleshed out the ScoutDocs app and its complexity increased, I ran into a problem.</p>\n<p>See, React breaks your app up into these nested chunks of UI and functionality called components. Data flows down through your components. So if a user updates their name, that change will flow down from higher up components like a Page component down to a PageHeader, down to a NavBar, down to a UserStatus. Once this is all set up and you update data in a parent component, the changes automatically flow downstream, and the UserStatus component updates and re-renders. It’s great. Except that there are a bunch of intermediate components that accept and “forward” that user name data to their children, without actually caring about it themselves. When you inevitably refactor something and need to add new data that flows through these components, every single intermediate one needs to be updated to pass it on. It is tedious. You will hate it.</p>\n<p>Worse, because events in React flow upwards, if a user updates their name in the UserName component, that change needs to flow up to ProfileForm, up to Profile, up to Page, and then up to your main App component. When you refactor, you need to make sure this event forwarding chain stays connected. Yet more tedium that you will hate.</p>\n<p>Redux solves this by letting your React components, no matter how deeply they are nested, subscribe directly to the data they need.</p>\n<p>I really wish Dave Ceddia had written <a href=\"https://daveceddia.com/what-does-redux-do/\">this excellent post about Redux</a> two months earlier.</p>\n<blockquote><p>If you have a component structure like the one above – where props are being forwarded down through many layers – consider using Redux.</p></blockquote>\n<p>This is what I needed to hear, and knowing this would have saved me a lot of frustration and time that I now have to spend converting ScoutDocs to use Redux.</p>\n<p><b>Use Redux when your React data flow starts to get unwieldy.</b></p>\n<p>Another mistake I made early on was making the data my React components accepted too restrictive. For example, I wanted the ability to prefix a <code class=\"code-inline\">Row</code> component with a clickable icon. So I let the component accept an <code class=\"code-inline\">icon</code> and <code class=\"code-inline\">onClickIcon</code> property. I just passed a Font Awesome icon name in, and a function I wanted to run when clicked. It worked great.</p>\n<p><img /></p>\n<p>Then I needed to add a second icon in front, in some circumstances. Ugh. I certainly didn’t want to do <code class=\"code-inline\">otherIcon</code> and <code class=\"code-inline\">onClickOtherIcon</code>. Instead, what I should have done was let the component accept <code class=\"code-inline\">beforeRow</code> which could be anything… like an array of <code class=\"code-inline\">&lt;Icon&gt;</code> components or a single one or even other components altogether.</p>\n<p><img /></p>\n<p>This can be used for many more situations than the one (&#8220;put an icon before the row&#8221;) that I&#8217;d originally envisioned.</p>\n<p><b>Your React components should be flexible, so they can be reusable.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li>React</li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 14:36:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Customisation options for the Akismet front-end privacy notice\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1999\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/07/customisation-options-for-the-akismet-front-end-privacy-notice/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3606:\"<p>To help your site be transparent to your visitors about using <a href=\"https://akismet.com/\">Akismet</a> to process comments (think privacy and <a href=\"https://www.eugdpr.org/\">GDPR</a>), <a href=\"https://wordpress.org/plugins/akismet/\">our WordPress plugin</a> now gives you the option to display a notice under your site&#8217;s comment forms. Site owners can decide if they want to display it, or not, on a per-blog basis.</p>\n<p><img /></p>\n<p>But we&#8217;ve also given options to developers to extend the behaviour, and content, of said notice.</p>\n<h3>WordPress option</h3>\n<p>The display of the notice itself, as well as the in-admin notice to set it for one&#8217;s site, all revolves around a new <code>akismet_comment_form_privacy_notice</code> option, which needs to be set to either <code>display</code> or <code>hide</code>.</p>\n<p>If the option is not yet set, the front-end notice will not be displayed, but the in-admin prompting site owners to set it will.</p>\n<p>Once set to either <code>display</code> or <code>hide</code>, the front-end notice will match the choice, and the in-admin notice will disappear.</p>\n<h3>Filters</h3>\n<p>In <a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1408\"><code>class.akismet.php</code></a>, there is a new <a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1408\"><code>Akismet::display_comment_form_privacy_notice()</code></a> method, in which you can find the following filters to extend.</p>\n<ul>\n<li><a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1413\"><code>akismet_comment_form_privacy_notice</code></a>:<br />\nOverrides the returned value of the <code>akismet_comment_form_privacy_notice</code> option. This value can be <code>display</code>, or <code>hide</code>, and controls the display of the front-end privacy notice under comment forms.</li>\n<li><a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1417\"><code>akismet_comment_form_privacy_notice_markup</code></a>:<br />\nLets you customise the text and markup of the actual notice, which defaults to <code>\'&lt;p class=\"akismet_comment_form_privacy_notice\"&gt;\' . sprintf( __( \'This site uses Akismet to reduce spam. &lt;a href=\"%s\" target=\"_blank\"&gt;Learn how your comment data is processed&lt;/a&gt;.\', \'akismet\' ), \'https://akismet.com/privacy/\' ) . \'&lt;/p&gt;\'</code>. Note that if you choose to modify the markup, something needs to eventually point your users to <a href=\"https://akismet.com/privacy/\">https://akismet.com/privacy/</a>, which will always display, or redirect to, our most up-to-date privacy related documentation.</li>\n</ul>\n<h3>CSS</h3>\n<p>As seen above, the default front-end privacy notice is wrapped in a <code>&lt;p class=\"akismet_comment_form_privacy_notice\"&gt;&lt;/p&gt;</code> tag, which you can extend via stylesheets and Javascript.</p>\n<h3>WP Multisite or multiple WP installs</h3>\n<p>If you have a lot of sites/blogs, you might also now be wanting to set the privacy display in bulk.</p>\n<p>There are a few ways of doing that.</p>\n<p>You can create a quick plugin that checks if the <code>akismet_comment_form_privacy_notice</code> option is set, and if it is not, set it for the current blog: <code>update_option( \'akismet_comment_form_privacy_notice\', $state );</code> where <code>$state</code> is either <code>display</code> or <code>hide</code>.</p>\n<p>Or you could write a script that loops on your blog list, and set the same option, in one run.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jun 2018 14:52:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Stephane Daury\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: WPWeekly Episode 319 – The Gutenberg Plugin Turns 30\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81249&preview=true&preview_id=81249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpweekly-episode-319-the-gutenberg-plugin-turns-30\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"http://pento.net/\">Gary Pendergast</a>, a WordPress core contributor, to discuss what&#8217;s new with Gutenberg. We find out what happened with WordPress 4.9.6, and discuss WordPress&#8217; future. We also discuss Microsoft&#8217;s acquisition of GitHub and when WordPress core development might transition to GitHub. Last but not least, we share the news of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://news.microsoft.com/2018/06/04/microsoft-to-acquire-github-for-7-5-billion/\">Microsoft Acquires GitHub for $7.5B In Stock</a><br />\n<a href=\"https://make.wordpress.org/core/2018/06/05/whats-new-in-gutenberg-5th-june/\">Gutenberg 3.0.0 Released, 30th Release</a><br />\n<a href=\"https://wptavern.com/simplepress-forum-plugin-is-up-for-adoption\">Simple:Press Forum Plugin Is Up for Adoption</a><br />\n<a href=\"https://wptavern.com/wordcamp-for-ios-renamed-to-wp-camps-more-events-added\">WordCamp for iOS Renamed to WP Camps, More Events Added</a><br />\n<a href=\"https://wptavern.com/sustainability-wordpress-sustywp\">Sustainability + WordPress = SustyWP</a><br />\n<a href=\"https://medium.com/@muglug/improving-wordpress-with-static-analysis-505cc5ba495d\">Improving WordPress with Static Analysis</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 13th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #319:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jun 2018 01:12:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: Simple:Press Forum Plugin Is Up for Adoption\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81186\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/simplepress-forum-plugin-is-up-for-adoption\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1355:\"<p><a href=\"https://simple-press.com/\">Simple:Press</a>, a forum plugin for WordPress that has been around for more than a dozen years, is available for adoption. Developers Andy Staines and Steve Klasen announced their plans to shutdown operations last August on their <a href=\"https://simple-press.com/support-forum/\">customer support forum</a> and have had little luck finding a suitable replacement.</p>\n\n<img />\n	Simple:Press Forum in Action\n\n\n<p>Staines and Klasen will retire on August 1st. Everything related to the site, including the domain, plugin code, customer information, income, etc. will transfer to the new owner with no strings attached.</p>\n\n<blockquote class=\"wp-block-quote\">\n	<p>The forum plugin has been a labor of love for a long time. We don&#8217;t really want to see the plugin die because we have decided to retire. It has provided us a good secondary income for many years and has good potential for anyone who wished to make a go at it.<br /></p><cite>Steve Klasen</cite></blockquote>\n\n<p>Simple:Press is not available on the WordPress.org plugin directory and generates revenue through memberships, themes, and plugins. Those interested in taking over the plugin or to find out more information can contact Klasen and Staines through the <a href=\"https://simple-press.com/contact/\">Simple:Press Forum contact form</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 19:45:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"BuddyPress: BuddyPress 3.1.0 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=274141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://buddypress.org/2018/06/buddypress-3-1-0-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:817:\"<p>BuddyPress 3.1.0 is now available. This is a maintenance release that fixes 23 bugs and is a recommended upgrade for all BuddyPress installations.</p>\n<p>For more information, see the <a href=\"https://buddypress.trac.wordpress.org/query?group=status&milestone=3.1.0\">3.1.0 milestone</a> on <a href=\"https://buddypress.trac.wordpress.org/\">BuddyPress Trac</a>.</p>\n<p>Update to BuddyPress 3.1.0 today in your WordPress Dashboard, or by <a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the wordpress.org plugin repository</a>.</p>\n<p>Questions or comments? Check out the <a href=\"https://codex.buddypress.org/releases/version-3-1-0/\">3.1.0 changelog</a>, or stop by our <a href=\"https://buddypress.org/support/\">support forums</a> or <a href=\"https://buddypress.trac.wordpress.org/\">Trac</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 16:06:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"@mercime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordCamp for iOS Renamed to WP Camps, More Events Added\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/wordcamp-for-ios-renamed-to-wp-camps-more-events-added\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1268:\"<p>When Marcel Schmitz <a href=\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\">released his WordCamp for iOS app</a>, there was concern that it violated the <a href=\"https://wordpressfoundation.org/trademark-policy/\">WordCamp Trademark policy</a>. Schmitz has changed the name of the app to <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">WP Camps,</a> describes it as a companion app for WordCamps, and has added a number of upcoming events.</p>\n\n<img />\n	WordCamp Kent, OH in WP Camps\n\n\n<p>In addition to these changes, Schmitz has also redesigned the app&#8217;s icon due to user feedback. <a href=\"https://schmitzoide.blog/wordcamp-ios-app-is-now-wp-camps-multiple-wordcamps-added/\">Version 1.1</a> sets the stage for search, chat, a who&#8217;s on stage feature, and more.</p>\n\n<p>If you&#8217;re organizing a WordCamp or WordPress event and want it added to the app, you can <a href=\"https://twitter.com/schmitzoide\">contact Schmitz on Twitter.</a> You can also click on the About section within the App to send him an email. </p>\n\n<p>WP Camps is an application for iOS devices and is <a href=\"https://itunes.apple.com/us/app/wp-camps/id1384323581?ls=1&mt=8\">available for free</a> on the Apple App Store.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 03:29:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"HeroPress: Work is not just about Money\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2560\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:130:\"https://heropress.com/essays/work-is-not-just-about-money/#utm_source=rss&utm_medium=rss&utm_campaign=work-is-not-just-about-money\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7746:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/06/060618-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: It\'s about the satisfaction I feel when I see the impact I make on the community.\" /><p>Settle in, because you are about to read some worst and some even worst experiences that I have had in my life and yet how I am still pulling myself together.</p>\n<p>Before we get into it, I am going to tell you something about me. I am Libertarian, otaku. I LOVE to play with words. By profession I am an IT engineer but by passion I am a writer. I am writing about Microsoft &amp; other Technologies for various publications. I am also writing about Exciting Technology &amp; Mind-Boggling Science and am a co-founder of 2 sci-fi and technological news platform.</p>\n<p>I was so engaged in the world of Computer and Technology since the school time. I was excited about HTML, CSS, C and other basic computer programming concept since school. Recently, I completed my Bachelor of Engineering study (result is yet to be declared, but I think I will pass in all subject). And as of now, I don’t have any plans for further studies. Phew.</p>\n<h3>Talking about WordPress</h3>\n<p>My cousin introduced me with WordPress in 2010 when I completed 10th standard (grade). OMG! It’s been 8 years! However, at that time he gave me only basic WordPress work i.e.data entry. But later in college I was getting engaged in various freelancing work (mostly WordPress related) and that’s where the real journey with WordPress began!</p>\n<p>As of now, I have designed &amp; developed tons of websites with WordPress and modified up to dozens of themes. I enjoy working in WordPress so much that sometimes, I forget to take dinner. I am so committed to my work, it’s like passion to me.</p>\n<p>Fast forward to September 2016, I submitted my first WordPress theme “Frindle” to WordPress theme directory. After waiting for nearly 5 months in theme review queue, in January 2017, the theme reviewer rejected my theme, because theme had “5 or more issues” (31 I remembered correctly). And I was back to square one. But after this setback I pushed myself and resubmitted theme again in the very next month. This time everything worked out and the theme was approved in April 2017 and went live on 1st July 2017.</p>\n<p>A friend of mine from WordPress community set me up for an interview in her company. I got selected and they wanted me to join from very next day. I was so thrilled and excited but as I was still pursuing my engineering study. But, my college didn’t signed the NDA (for attendance) so I had to give up the opportunity.</p>\n<p>Later on, I submitted 2 more themes to the official WordPress theme directory, Horkos &amp; Ogee. Both of them are live right now and Ogee is getting significant user base. Later on, I joined a small web development company as a remote WordPress developer. And worked on so many projects.<br />\nWhile I was working on various freelancing WordPress projects, I was also doing content writing passionately. Now I am writing for several publication and news websites. Mostly I write about mind-boggling science and futuristic technology. Some of my anonymously written articles are featured on popular newsletter such as Slashdot.</p>\n<h3>This went well:</h3>\n<p>While I was in the last year of study, my cousin set me up for an interview for internship/training program. Everything was going perfect. The interviewer was impressed from my resume, but all of sudden, he started asking questions about technology which I am not aware of. I straightly said, “With all due respect sir, I don’t know anything about it, but if it’s worth I am ready to learn.” God knows what he heard but within 2 minutes he ended up saying “You are just wasting your life. You can go now.” I was like, man, it took me 30 minutes to find your office, please hear me out.</p>\n<p>But everything changed after this interview. When I was driving home from this interview, I got a call from an old friend and he asked me to write sci-fi articles for his new website. Wait! On the same day I got an email from a popular news website asking me to come onboard as a senior editor. I was like this is the worst best day of my life.</p>\n<h3>So no WordPress?</h3>\n<p>Well, here’s something good. In addition to this, right now I am perusing internship for PHP/WordPress and front-end developer in an MNC company. I am learning so many things nowadays, collaborating with team, project management, communication with clients and more!</p>\n<h3>Life nowadays</h3>\n<p>Every day, I wake up with a new task and go to sleep with a new idea. What is most aspiring in this is the platform that we all associated with. Even though I practice polyphasic sleep, I still need 5 extra hours in a day.</p>\n<p>I don’t work for money, I just do it because I am so passionate about it. I mean money is important but work is not just about it. It’s about the satisfaction I feel when I see the impact I make on the community.</p>\n<p>I am 22, but as of now, I don’t have a 9 to 5 permanent “job” nor a shoulder to cry on (you know what I mean). But I work a LOT. I love my keyboard. I’m highly sensitive. I spend my days immersing myself in the personal growth world. Maybe in some ways, I’m (definitely) not normal – some of the ways that I go against the grain of the society. And you know what? It’s okay.</p>\n<p>So yeah, I’m comfortably okay with the basic skills which I possess. I wonder when people will understand that it’s okay to be “okay”. Everything that was still is. So, whether I like it or not, I pull myself together and I do it all again.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Work is not just about Money\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Work%20is%20not%20just%20about%20Money&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Work is not just about Money\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F&title=Work+is+not+just+about+Money\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Work is not just about Money\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/work-is-not-just-about-money/&media=https://heropress.com/wp-content/uploads/2018/06/060618-150x150.jpg&description=Work is not just about Money\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Work is not just about Money\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/work-is-not-just-about-money/\" title=\"Work is not just about Money\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/work-is-not-just-about-money/\">Work is not just about Money</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 02:30:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Zipal Patel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: Sustainability + WordPress = SustyWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81034\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wptavern.com/sustainability-wordpress-sustywp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:959:\"<p>Jack Lenox, a Software Engineer at Automattic, has launched a new site called <a href=\"https://sustywp.com/\">SustyWP</a> that focuses on web sustainability using WordPress.<br /></p>\n\n<p>By removing the parts of <a href=\"https://github.com/automattic/_s\">Underscores</a> he didn&#8217;t need, using one inline SVG image, no sidebars, limited CSS, and no webfonts, Lenox was able to launch a WordPress site that only has 7 Kilobytes of data transfer. <br /></p>\n\n<p>As you might expect, the site crushes page speed and performance benchmarks. The site is also hosted in a data center that uses 100% renewable energy.  To learn how and why he built the site, check out his <a href=\"https://blog.jacklenox.com/2018/06/04/delivering-wordpress-in-7kb/\">detailed blog post</a>.</p>\n\n<p>While only transferring seven kilobytes of data is commendable, these days, websites are feature-rich. I wonder how practical his methods are for large and complex sites. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Jun 2018 20:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Mark Jaquith: Lessons Learned Making ScoutDocs: Outsourcing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5642\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5156:\"<p>Now that <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs is in the WordPress plugin repository</a>, I&#8217;d like to share some lessons I learned making it. Every project teaches me something — this one taught me a lot.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site. You can upload files (which are stored securely in the cloud and served over HTTPS via a global CDN), and share them with individuals or groups of individuals. Email notifications are also handled by the ScoutDocs service, getting around the issue of reliable email delivery on a shared host. You can require that recipients accept or decline the files you&#8217;ve shared, e.g. so you can see which of your employees has seen the new employee handbook. Instead of files living as email attachments (if they even fit) or off on some third-party site, people can access them on your site.</em></p>\n<p>In this weekly series, I&#8217;m going to cover:</p>\n<ul>\n<li>Outsourcing</li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>First up, lessons learned about outsourcing.</p>\n<p>When we started making ScoutDocs, the question was raised as to whether it would be beneficial to outsource any of the coding. My time was valuable and limited, so I figured that if I had another developer code while I slept, I could spend an hour in the morning reviewing the code and giving them direction for the next workday. I had visions of quickly scanning code while my morning coffee brewed, twirling an invisible moustache, and muttering &#8220;good, good.&#8221;</p>\n<p>This is not what happened.</p>\n<p>The issue I quickly ran into was that for any nebulously defined problem, someone else&#8217;s solution was unlikely to match what I wanted. Their assumptions would not be the same as mine. As a result, the odds of me being happy with their solution were very low.</p>\n<p>I spent a lot of time rewriting code.</p>\n\n<a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/not-hiring/\"><img width=\"100\" height=\"56\" src=\"https://markjaquith.files.wordpress.com/2018/06/not-hiring.gif?w=100&h=56\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/spaces/\"><img width=\"100\" height=\"56\" src=\"https://markjaquith.files.wordpress.com/2018/06/spaces.gif?w=100&h=56\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<p>And because I was spending all my time &#8220;fixing&#8221; the code I wasn&#8217;t really looking at the product as a whole.</p>\n<p>When the contractors were done, my ScoutDocs partners and I looked at it, and we realized that it&#8230; was bad. Forget code quality, which despite all my vain reshuffling was still lacking: what we had was just overall a terrible user experience. Rather horrifyingly, we admitted that what we needed to do to give it the user experience we wanted was nothing short of a total rewrite.</p>\n<p><img /></p>\n<p>I rolled up my sleeves, <a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">learned React</a>, and rewrote ScoutDocs until almost nothing of the original code and user experience remained.</p>\n<p>So was outsourcing a waste? Not completely. Some code was retained, mostly relating to the Amazon S3 interface. I was glad that someone else had experienced the singular joy of spending an eternity lost in a maze of Amazon Web Services documentation and confusing code samples. Additionally, if I had set out to build the initial version of the code, it would have taken a lot of my time (which I did not have much to spare), and might have meant that our horrifying realization would have been delayed for several months.</p>\n<p><strong>Knowing what doesn&#8217;t work is valuable</strong>, even if you have to throw it away. That&#8217;s mostly what we had gotten for our money: figuring out what didn&#8217;t work. If outsourcing can get you to these realizations sooner or for less money, it might be well worth it.</p>\n<p>As I rewrote the software, my partners asked me a few times if I regretted outsourcing. I didn&#8217;t, for the above reason, but also because outsourcing had solved some of the coding issues that would have been a slog for me. However, if I was doing it all over again, I would have done more work upfront to identify specific, well-defined tasks that I wanted to outsource.</p>\n<p><strong>Delegation makes sense when the task is well-defined.</strong> At the extreme, you could spend so much time redoing work and asking for revisions that you&#8217;d have been better off just doing it yourself. If you can specify exactly what constitutes success in a task, and the time it takes you to specify that is much less than the time it would take you to do the task, outsource it.</p>\n<p>Check back next week for my thoughts on rewriting ScoutDocs in React.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 14:11:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dev Blog: The Month in WordPress: May 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4536:\"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>\n\n<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href=\"https://wp15.wordpress.net/\">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>\n\n<p>Altogether, there were 224 events globally, with <a href=\"https://wp15.wordpress.net/about/\">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>\n\n<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Privacy Tools added to WordPress core</h2>\n\n<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>\n\n<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>\n\n<p>To find out more about these features and the other updates, read the <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updates to the WordPress.org Privacy Policy</h2>\n\n<p>In a similar vein, WordPress.org itself has received <a href=\"https://wordpress.org/about/privacy/\">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href=\"https://wordpress.org/about/privacy/cookies/\">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>\n\n<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>WordCamp US 2018 has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">opened up speaker submissions</a> for the December event.</li>\n	<li><a href=\"https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/\">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>\n	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href=\"https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/\">a major update</a> this month.</li>\n	<li>In preparation for Gutenberg, <a href=\"https://core.trac.wordpress.org/changeset/43309\">significant work has been done</a> to improve WordPress Core’s build process.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 09:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Community Spotlight: James Huff (MacManX)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wptavern.com/community-spotlight-james-huff-macmanx\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2473:\"<p>Providing support on the <a href=\"https://wordpress.org/support/\">WordPress.org forums</a> is one of the easiest ways to contribute to WordPress and those who do are some of the unsung heroes of the project. One of those heroes is James Huff known as <a href=\"https://wordpress.org/support/users/macmanx/\">MacManX</a> on the forums.</p>\n\n<p>Huff has been supporting users for 13 years and recently celebrated an awesome milestone reaching 50K replies. <br /></p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Achievement Unlocked: Over 13 years of <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> support, and 50,000 replies: <a href=\"https://t.co/0un3ggrKGI\">https://t.co/0un3ggrKGI</a> <a href=\"https://t.co/aKiwOuesk8\">pic.twitter.com/aKiwOuesk8</a></p>&mdash; James Huff (@MacManX) <a href=\"https://twitter.com/MacManX/status/1001958883303280640?ref_src=twsrc%5Etfw\">May 30, 2018</a></blockquote>\n\n\n<p>In this spotlight, we learn what drives Huff to provide support, what he&#8217;s learned, and what users can do to improve the likelihood a support request will be resolved. </p>\n\n<p><em>What drives your desire to help people with WordPress on the support forums?</em></p>\n\n<p>I like helping people succeed with WordPress. It&#8217;s kind of a legacy for me, because you never know if solving one blocker will lead to a life-changing site or service. If anything, I hope I made a few days better for a few folks.</p>\n\n<p><em>Any trends or common issues you’ve noticed in the past few months/years?</em></p>\n\n<p>Nothing out of the ordinary. Plugin and theme conflicts will always be the most common.</p>\n\n<p><em>What tips or suggestions do you have for users to increase the likelihood of solving their problem?</em></p>\n\n<p>Try the <a href=\"https://wordpress.org/plugins/health-check/\">Health Check</a> plugin first, its Troubleshooting Mode is great!</p>\n\n<p><em>What lessons have you learned by providing support in the forums?</em></p>\n\n<p>I learned about almost everything I have done to customize my sites first by helping someone else do it. Overall, I have learned quite a bit about WordPress just by helping other people. </p>\n\n<p>To learn more about James and how he got involved with supporting the WordPress community, watch <a href=\"https://wordpress.tv/2018/02/21/andrea-middleton-wordpress-is-a-banquet/\">this presentation</a> by Andrea Middleton from WordCamp Seattle 2017.</p>\n\n\n	\n\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 02:38:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WPWeekly Episode 318 – Happy 15th Birthday WordPress 0.70\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81007&preview=true&preview_id=81007\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wpweekly-episode-318-happy-15th-birthday-wordpress-0-70\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1431:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I look back at 15 years of WordPress. We discuss the journey so far and where we think the project is going. Hint, it involves JavaScript. We also do a bit of self-reflection on how WordPress fits into our lives and where we see us fitting into its future. For giggles, we did some WordPress trivia as well.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://ma.tt/2018/05/wordpress-at-15/\">Matt’s Birthday Post</a><br />\n<a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">WordPress Now Available</a><br />\n<a href=\"https://wordpress.org/news/category/releases/\">WordPress Release History</a><br />\n<a href=\"https://twitter.com/search?q=%23wp15&src=typd\">#wp15 on Twitter</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 6th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #318:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 01:27:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"HeroPress: Freedom to Parent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2556\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://heropress.com/freedom-to-parent/#utm_source=rss&utm_medium=rss&utm_campaign=freedom-to-parent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3038:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/11/MyPride-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: WordPress has given me much more than just a job. It has given me back my pride, my strength, a social life.\" /><p>In any post about how WordPress changes lives the word Freedom invariably comes up. Freedom to be yourself, to travel, to grow, learn, even age. This week&#8217;s replay is about the freedom to parent.</p>\n<p>Ines was a young single mother without advanced education during an economic downturn. Things seemed bleak.</p>\n<p>Through her own hard work and effort she learned the fundamentals of web development, but it was WordPress that allowed her to pursue that profession from her own home. She was able to be home with her baby and care for him the way she saw fit. He was able to grow getting to know his mother every day instead of a day care worker.</p>\n<p>WordPress can be an incredible source of freedom for single parents, allowing them to have a solid career while also being good parents.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/getting-a-life/\">Getting A Life</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Freedom to Parent\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Freedom%20to%20Parent&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Freedom to Parent\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F&title=Freedom+to+Parent\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Freedom to Parent\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/freedom-to-parent/&media=https://heropress.com/wp-content/uploads/2015/11/MyPride-HeroPress-150x150.jpg&description=Freedom to Parent\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Freedom to Parent\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/freedom-to-parent/\" title=\"Freedom to Parent\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/freedom-to-parent/\">Freedom to Parent</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 May 2018 14:00:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: One Way to Whitelist and Blacklist Blocks in Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80994\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/one-way-to-whitelist-and-blacklist-blocks-in-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1044:\"<p><a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> ships with a number of blocks but what if your client or project doesn&#8217;t need most of them? The <a href=\"https://wordpress.org/gutenberg/handbook/extensibility/extending-blocks/\">Gutenberg Handbook explains</a> how to create a whitelist and a blacklist for blocks but in some circumstances, Gutenberg does not respect the allowed_block_types filter.</p>\n\n<p>Jason Bahl, a WordPress Engineer at Digital First Media, <a href=\"http://jasonbahl.com/2018/05/29/whitelisting-blacklisting-blocks/\">published a tutorial</a> that explains how to whitelist and blacklist blocks using a filterable, localized array.</p>\n\n<p>One thing to keep in mind is that Gutenberg development is in a high state of flux and Bahl warns that his technique is fragile and will likely cause things to break over time. He suggests keeping a close eye on <a href=\"https://github.com/WordPress/gutenberg\">Gutenberg development</a> to see how blacklisting/whitelisting evolves in the plugin. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 May 2018 01:07:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: WordCamp US 2018 is Accepting Speaker Proposals Until July 1st\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80988\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wptavern.com/wordcamp-us-2018-is-accepting-speaker-proposals-until-july-1st\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:640:\"<p>WordCamp US has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">announced</a> it is accepting speaker proposals until July 1st, 11:59p.m. CDT. The event takes place December 7-9, 2018, in Nashville, TN.</p>\n\n<p>Those interested in speaking can submit an application through the <a href=\"https://wcus-speakers.org/\">Call for Speakers</a> site. The site contains session ideas, a list of speaker benefits, and tips for submissions.</p>\n\n<p>To see a list of sessions and speakers from last year&#8217;s event, check out the <a href=\"https://2017.us.wordcamp.org/sessions/\">2017 WordCamp US website</a>. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 30 May 2018 23:36:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.7 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1997\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/05/28/version-4-0-7-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:957:\"<p>Version 4.0.7 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.7 contains the following changes:</p>\n<ul>\n<li>Based on user feedback, the link on &#8220;Learn how your comment data is processed.&#8221; in the optional privacy notice now has a <code>target</code> of <code>_blank</code> and opens in a new tab/window.</li>\n<li>Updated the in-admin privacy notice to use the term &#8220;comment&#8221; instead of &#8220;contact&#8221; in &#8220;Akismet can display a notice to your users under your comment forms.&#8221;</li>\n<li>Only show in-admin privacy notice if Akismet has an API Key configured</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 May 2018 16:34:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.6 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1989\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/05/26/version-4-0-6-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1494:\"<p>Version 4.0.6 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. If you are paying attention to version numbers, you will notice that we went from 4.0.3 to 4.0.6 in one day. This is because we got <a href=\"https://wordpress.org/support/topic/help-fatal-error-after-update/\">user reports</a> of issues with older versions of PHP with our intermediary versions, which we jumped on fixing right away.</p>\n<p>4.0.6 contains the following changes:</p>\n<ul>\n<li>\n<p class=\"p1\"><span class=\"s1\">Added a hook to provide Akismet-specific </span><span class=\"s2\">privacy</span><span class=\"s1\"> information for a site&#8217;s </span><span class=\"s2\">privacy</span><span class=\"s1\"> policy.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Added tools to control the display of a </span><span class=\"s2\">privacy</span><span class=\"s1\"> related notice under comment forms.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Fixed HTML in activation failure message to close META and HEAD tag properly.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Fixed a bug that would sometimes prevent Akismet from being correctly auto-configured.</span></p>\n</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 17:32:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Stephane Daury\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"Post Status: The History of the Web, and WordPress’s 15th Birthday — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://poststatus.com/the-history-of-the-web-and-wordpresss-15th-birthday-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2249:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/jay_hoffmann\">Jay Hoffmann</a>. Jay is the Lead Developer at <a href=\"https://reaktivstudios.com/\">Reaktiv Studios</a> and the creator and curator of <a href=\"https://thehistoryoftheweb.com/\">The History of the Web</a>. It is a good time to discuss the history of the web with Jay, as WordPress is ready to celebrate <a href=\"https://ma.tt/2018/05/wordpress-at-15/\">its 15th birthday</a>.</p>\n<p>Be sure to subscribe to Jay&#8217;s newsletter on the History of the Web website to receive new articles on such a fascinating project.</p>\n<p>Brian and Jay discuss his work at Reaktiv, his prior work at Sesame Street Workshop and Random House, and the project he&#8217;s worked on for two years now documenting the web&#8217;s timeline and history. It was a fun discussion on all fronts.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://thehistoryoftheweb.com/\">The History of the Web</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-flash/\">The history of Flash</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-wordpress/\">The story of WordPress</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/web-fonts/\">The decade long path to web fonts</a></li>\n</ul>\n<h3>Sponsor: WooCommerce</h3>\n<p><a href=\"https://woocommerce.com/\">WooCommerce</a> makes the most customizable eCommerce software on the planet, and it’s the most popular too. You can build just about anything with WooCommerce. <a href=\"https://woocommerce.com/\">Try it today</a>, and thanks to the team at WooCommerce being a Post Status partner</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 21:42:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: The First Release of WordPress Turns 15 Years Old\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80964\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wptavern.com/the-first-release-of-wordpress-turns-15-years-old\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2945:\"<p>This Sunday, May 27th, marks the 15th anniversary of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first release</a> of WordPress. Users are celebrating the occasion across the world with <a href=\"https://twitter.com/WPCapeTown/status/999696890349457408\">huge cakes</a>, <a href=\"https://twitter.com/outtheboxthemes/status/999995112879984640\">cupcakes</a>, <a href=\"https://twitter.com/kevinwhoffman/status/999444582445273088\">memorable photos</a>, <a href=\"https://twitter.com/CristianoZanca/status/999723447789015040\">parties</a>, and <a href=\"https://twitter.com/ChapitreOnze/status/999738180361441280\">meetups</a>.<br />.<br /></p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Now that’s a cake! <a href=\"https://twitter.com/hashtag/wp15?src=hash&ref_src=twsrc%5Etfw\">#wp15</a> <a href=\"https://t.co/i8lAr4SLsO\">pic.twitter.com/i8lAr4SLsO</a></p>&mdash; WordPress Cape Town (@WPCapeTown) <a href=\"https://twitter.com/WPCapeTown/status/999696890349457408?ref_src=twsrc%5Etfw\">May 24, 2018</a></blockquote>\n\n\n<p>To see if there is an event near you, visit the official <a href=\"https://wp15.wordpress.net/\">WordPress 15th anniversary site</a> and type your city into the search box. You can also follow the festivities on Twitter by browsing the <a href=\"https://twitter.com/search?q=%23wp15&src=typd\">#WP15</a> hashtag.</p>\n\n<p>If you&#8217;re thinking about hosting a party and want to use the WordPress logo on a cake or other bakery items, you&#8217;re in luck. The WordPress Foundation has amended the <a href=\"https://wordpressfoundation.org/trademark-policy/\">WordPress Trademark Policy</a> to allow people to put the logo on baked goods.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n	<p>*** Attention: If you’re interested in putting the WordPress logo on a cake, cookie, cupcake, babka, or other celebratory food in honor of the WordPress 15th Anniversary… yes, this is OK under the Trademark policy. ***</p><cite>WordPress Trademark Policy </cite></blockquote>\n\n<p>In 2015, <a href=\"https://wptavern.com/93digital-publishes-wordpress-time-machine\">we highlighted</a> <a href=\"https://93digital.co.uk/\">93Digital</a>&#8216;s WordPress Time Machine. The company has continued to <a href=\"https://93digital.co.uk/wphistory/\">update the timeline</a> with images of the WordPress 4.6, 4.7, 4.8, and 4.9 backends along with their default themes. The timeline is a quick way to see how WordPress has evolved over 15 years. <br /></p>\n\n<img />\n	93Digital WordPress Time Machine\n\n\n<p>Don&#8217;t forget that you can use the coupon code <strong>CELEBRATEWP15</strong> to take 15% off any swag you purchase on the <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">WordPress Swag store</a>. The coupon code is good through the end of the year. <br /></p>\n\n<p>Will you be celebrating WordPress&#8217; birthday this weekend? If so, how and where? Let us know!<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 19:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Matt: WordPress at 15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48110\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://ma.tt/2018/05/wordpress-at-15/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2065:\"<img />\n\n<p>This weekend, May 27, marks <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">the 15th anniversary of the first release of WordPress</a>. It is an understatement to say that I am immensely proud of what this global community has become, and what it has created. More than 30% of the top sites on the web are now powered by WordPress, I&#8217;m writing this in <a href=\"https://wordpress.org/plugins/gutenberg/\">our next-generation editor Gutenberg</a>, and every day I meet someone who is building something interesting on WordPress or pushing our shared project in bold new directions. If you can believe it, growth has actually been accelerating.</p>\n\n<p>There&#8217;s so much: A group of high school students bands together to <a href=\"https://marchforourlives.com/home/\">build a national movement on WordPress</a>; a president builds the foundation for <a href=\"https://www.obama.org/\">his own next chapter on WordPress</a>; the <a href=\"https://www.whitehouse.gov/\">current WhiteHouse.gov</a> switches over; or when someone like Hajj Flemings brings thousands of small businesses <a href=\"https://rebrand.city/\">onto the open web for the first time</a>, with WordPress.</p>\n\n<p>To celebrate #WP15, hundreds of local WordPress communities around the world will be throwing parties. <a href=\"https://wp15.wordpress.net/\">Go here to find a meetup in your area</a>. <br /></p>\n\n<p>I am thankful to <a href=\"https://mikelittle.org/\">Mike</a> for helping make WordPress a reality, many dedicated folks in the years since, and to all of you who are dreaming up the next 15 years. <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f604.png\" alt=\"😄\" class=\"wp-smiley\" /></p>\n\n<p>Many in the open source world are like Moses in that they speak of the Promised Land but will never set foot there. If I spend the rest of my life working and we don’t reach almost all websites being powered by open source and the web being substantially open, I will die content because I already see younger generations picking up the banner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 19:30:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Dev Blog: WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:656:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WPWeekly Episode 317 – Minor Major Major Minor Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80952&preview=true&preview_id=80952\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/wpweekly-episode-317-minor-major-major-minor-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2307:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss Adobe&#8217;s acquisition of Magento, feedback regarding WordPress 4.9.6, when 4.9.7 might ship, an unofficial WordCamp app for iOS, and whether or not it&#8217;s time for WordPress auto updates to occur for every version. I describe what it&#8217;s like having poison ivy on my face and my continuing woes with lawn care equipment.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://techcrunch.com/2018/05/21/adobe-to-acquire-magento-for-1-6-b/\">Adobe to acquire Magento for $1.68B</a><br />\n<a href=\"https://core.trac.wordpress.org/ticket/44142\">WordPress 4.9.7 will include patch to fix an issue that caused fatal 500 errors</a><br />\n<a href=\"https://make.wordpress.org/community/2018/05/18/wordpress-logos-on-cakes/\">You can use the WordPress logo on bakery goods to celebrate WordPress’ birthday</a><br />\n<a href=\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\">Marcel Schmitz Releases Unofficial WordCamp for iOS App</a><br />\n<a href=\"https://themeshaper.com/2018/05/22/music-a-gutenberg-powered-theme/\">Music: A Gutenberg-Powered Theme</a><br />\n<a href=\"https://deliciousbrains.com/gdpr-local-development/\">GDPR for WordPress Developers: Announcing the (Free) Anonymization Addon    </a><br />\n<a href=\"https://buddypress.org/2018/05/buddypress-3-0-0-apollo/\">BuddyPress 3.0.0 “Apollo”</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://www.kickstarter.com/projects/1920546253/panic-mode\">Panic Mode</a> the card game. A cooperative card game of office politics during Disaster Recovery for up to 8 players.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 30th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #317:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 May 2018 19:44:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Why Sites Didn’t Automatically Update to WordPress 4.9.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/why-sites-didnt-automatically-update-to-wordpress-4-9-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2086:\"<p>WordPress 4.9.6 was <a href=\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\">released last</a> week and was labeled a minor release. Minor releases trigger WordPress&#8217; automatic update system. Shortly after its release, some users <a href=\"https://wordpress.org/support/topic/4-9-6-not-updating-automatically/\">began questioning</a> why their sites were not automatically updating to 4.9.6. I wondered the same thing after logging into a site I maintain and discovering it had not updated.</p>\n\n<p>It turns out that the WordPress Development team disabled the auto update system after discovering that a few plugins were incorrectly loading the new privacy features and <a href=\"https://core.trac.wordpress.org/ticket/44142\">triggering fatal 500 errors</a> on the frontend of user&#8217;s sites.</p>\n\n<p>The issue stems from privacy code that includes a file that was not expected to be loaded without the rest of the WordPress admin. Mika Epstein, a volunteer member of the plugin review team, personally contacted the affected plugin developers last weekend to help rectify the issue.</p>\n\n<p>A recent scan of the WordPress plugin directory shows that there are no other plugins incorrectly loading the privacy code. However, automatic updates for WordPress 4.9.6 remain disabled until the release of WordPress 4.9.7.</p>\n\n<p>WordPress 4.9.7 will fix the issue described above and include a few other bug fixes. Since auto updates will be enabled for 4.9.7, sites running on 4.9.5 should auto update to 4.9.7 when it&#8217;s released. WordPress 4.9.7 is expected to be released sometime after the Memorial Day holiday (Monday, May 28th). <del>Until then, users will need to manually update to 4.9.6.</del></p>\n\n<h3><strong>*Updated 5/23/2018 9:28 PM EST*</strong></h3>\n\n<p>Earlier this evening, Gary Pendergast enabled auto updates for WordPress 4.9.6 and the team is monitoring for any new errors that are triggered. So far, 20K sites have updated without any notable problems. </p>\n\n<p><del></del></p>\n\n<p><br /></p><br /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 May 2018 00:32:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Accessibility Where It Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2551\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/accessibility-where-it-matters/#utm_source=rss&utm_medium=rss&utm_campaign=accessibility-where-it-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3223:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The beauty of WordPress and its community is that we can create opportunities for ourselves.\" /><p>One of the things that I&#8217;ve always loved about WordPress is how it provides things to people. It provides a living to those who have none, it provides community to those without one, and it can provide tools to those who need them.</p>\n<p>Amanda Rush is blind, and navigates a world that is often hostile to blind people. WordPress developers work very very hard to make the WordPress software usable by people with no sight.</p>\n<p>A wonderful by-product of that is that Amanda and people like her can build a career for themselves, without depending on a physically friendly workplace and a physically friendly transit.</p>\n<p>WordPress provides Freedom to those who deal with a world that&#8217;s built to be hostile toward them.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/finding-freedom-wordpress/\">Finding Freedom in WordPress</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Accessibility Where It Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Accessibility%20Where%20It%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Accessibility Where It Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F&title=Accessibility+Where+It+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Accessibility Where It Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/accessibility-where-it-matters/&media=https://heropress.com/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-150x150.jpg&description=Accessibility Where It Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Accessibility Where It Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/accessibility-where-it-matters/\" title=\"Accessibility Where It Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/accessibility-where-it-matters/\">Accessibility Where It Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 May 2018 12:00:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Marcel Schmitz Releases Unofficial WordCamp for iOS App\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2623:\"<p>Marcel Schmitz, founder of <a href=\"https://hellodev.us/\">hellodev</a>, has <a href=\"https://schmitzoide.blog/wordcamp-app-an-ios-app-for-all-wordcampers-around-the-world/\">released</a> WordCamp for iOS for free on the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. The app utilizes the WordPress REST API endpoints from <a href=\"https://central.wordcamp.org/\">WordCamp Central</a> and hellodev to display sessions, speakers, and news from an event&#8217;s official site.</p>\n\n<p>Schmitz used <a href=\"https://2018.porto.wordcamp.org/\">WordCamp Porto</a> to test features within the app. Sessions are displayed in a timeline and if you give the app permission to access your device&#8217;s calendar, you can add sessions to it and create reminders.</p>\n\n<img />\n	Session Timeline\n\n\n<p>When viewing a session in the app, the screen displays the time the session takes place, name of the speaker with a quick link to a bio, session description, and a section at the bottom to write notes.</p>\n\n<p>There&#8217;s also an option on the top-right corner to mark sessions as favorites. However, during testing, marking a session as a favorite would crash the app.</p>\n\n<img />\n	Take Notes While Watching a Session\n\n\n<p>The app displays all of the necessary information concerning the event without the need to browse to the actual site. Schmitz says he plans to add more information about the city, venue, and the ability to call an UBER in future updates.</p>\n\n<p>WordCamp is a <a href=\"https://wordpressfoundation.org/trademark-policy/\">trademark of the WordPress Foundation</a>. Although Schmitz clearly states that WordCamp for iOS is not the official app for all WordCamps, he does not mention receiving permission from the Foundation to use WordCamp in the name. Unless his app is adopted to be the official App for iOS devices, it&#8217;s likely he will need to change the name.</p>\n\n<p>Searching the App Store for WordCamp only produces two results. Schmitz&#8217;s app and a WordCamp EU Paris Guide. There&#8217;s an official WordCamp App for Android available on <a href=\"https://play.google.com/store/apps/details?id=org.wordcamp.android&hl=en_US\">Google Play</a> and <a href=\"https://github.com/wordpress-mobile/WordCamp-Android\">GitHub</a> but the project has seen little activity in the last three years.</p>\n\n<p>WordCamp for iOS fills a void and gives users convenient access to a lot of relevant WordCamp information. To check it out for yourself, you can download it for free from the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 May 2018 20:54:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"BuddyPress: BuddyPress 3.0.0 “Apollo”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=273108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://buddypress.org/2018/05/buddypress-3-0-0-apollo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3300:\"<p>BuddyPress 3.0.0 &#8220;Apollo&#8221; is now available for immediate download from the WordPress.org plugin repository, or right from your WordPress Dashboard. &#8220;Apollo&#8221; focuses on various improvement for developers, site builders and site managers.</p>\n<h4>Say hello to “Nouveau”!</h4>\n<p>A bold reimagining of our legacy templates, Nouveau is our celebration of <a href=\"https://buddypress.org/2018/03/10-years/\">10 years of BuddyPress</a>! Nouveau delivers modern markup with fresh JavaScript-powered templates, and full integration with WordPress’ Customizer, allowing more out-of-the-box control of your BuddyPress content than ever before.</p>\n<p>Nouveau provides vertical and horizontal layout options for BuddyPress navigation, and for the component directories, you can choose between a grid layout, and a classic flat list.</p>\n<p>Nouveau is fully compatible with WordPress. Existing BuddyPress themes have been written for our legacy template pack, and until they are updated, resolve any compatibility issues by choosing the legacy template pack option in <strong>Settings &gt; BuddyPress</strong>.</p>\n<h4>Support for WP-CLI</h4>\n<p><a href=\"https://wp-cli.org/\">WP-CLI</a> is the command-line interface for WordPress. You can update plugins, configure multisite installs, and much more, without using a web browser. With this version of BuddyPress, you can now manage your BuddyPress content from WP-CLI.</p>\n<h4>Control site-wide notices from your dashboard</h4>\n<p>Site Notices are a feature within the Private Messaging component that allows community managers to share important messages with all members of their community. With Nouveau, the management interface for Site Notices has been removed from the front-end theme templates.</p>\n<p>Explore the new management interface at <strong>Users &gt; Site Notices</strong>.</p>\n<h4>New profile field type: telephone numbers</h4>\n<p>A new telephone number field type has been added to the Extended Profiles component, with support for all international number formats. With a modern web browser, your members can use this field type to touch-to-dial a number directly.</p>\n<h4>BuddyPress: leaner, faster, stronger</h4>\n<p>With every BuddyPress version, we strive to make performance improvements alongside new features and fixes; this version is no exception. Memory use has been optimised — within active components, we now only load each individual code file when it’s needed, not before.</p>\n<p>Most notably, the <a href=\"https://bpdevel.wordpress.com/2017/12/07/legacy-forums-support-will-be/\">Legacy Forums component has been removed</a> after 9 years of service. If your site was using Legacy Forums, you need to <a href=\"https://codex.buddypress.org/getting-started/guides/migrating-from-old-forums-to-bbpress-2/\">migrate to the bbPress plugin</a>.</p>\n<h4>Make mine Apollo&#8217;s</h4>\n<p>In north-east London, Stoke Newington &#8212; or Stokey, as it&#8217;s affectionately known &#8212; is an area awash with newly-opening restaurants, amidst lapping waves of encroaching gentrification. Apollo&#8217;s is an authentically Neapolitan pizza place on the High Street, serving fantastically tasty yet uncomplicated pizzas. If you ever find yourself in north London, don&#8217;t miss Apollo&#8217;s!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 May 2018 00:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Gibbs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: WordPress 4.9.6 Released With User Data Export and Removal Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80898\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2428:\"<p><a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">WordPress 4.9.6</a> has been released and is considered a privacy and maintenance release. Traditionally, <a href=\"https://make.wordpress.org/core/handbook/about/release-cycle/version-numbering/\">minor versions</a> contain security and bug fixes. This release is different as it includes a number of privacy related features such as:</p>\n\n<ul>\n	<li>Privacy Policy page template/creation</li>\n	<li>User Data Request Handling</li>\n	<li>User Data Export and Removal tools</li>\n	<li>Cookie Opt-in for Comments</li>\n	<li>Other features related to <a href=\"https://www.eugdpr.org/\">GDPR Compliance</a></li>\n</ul>\n\n<p>Earlier this month, I <a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">reviewed the privacy features</a> in 4.9.6 and since that post was published, the team has made a number of adjustments. For example, site admins will receive an email when a user confirms a personal data export or removal request and the text on the privacy policy template page has been simplified. <br /></p>\n\n<p>The privacy features in WordPress 4.9.6 are largely the result of a <a href=\"https://wptavern.com/new-team-forms-to-facilitate-gdpr-compliance-in-wordpress-core\">new team of volunteers</a> that was formed earlier this year. The team is already hard at work on improving these features for future versions of WordPress.</p>\n\n<p>In addition to privacy enhancements, more than 50 bugs have been fixed. &#8216;Mine&#8217; has been added as a filter in the WordPress Media Library and when viewing a plugin in the backend, it will display the minimum PHP version that&#8217;s required.</p>\n\n<p>The WordPress Development team has published an <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">update guide</a> that provides links to technical information related to features in 4.9.6. In addition, there&#8217;s a <a href=\"https://make.wordpress.org/core/2018/05/17/changes-that-affect-theme-authors-in-wordpress-4-9-6/\">guide available for Theme Authors</a> as styling adjustments may be necessary.</p>\n\n<p>As this is a minor release, sites are in the process of updating automatically. If you encounter an issue with 4.9.6, please report it on the <a href=\"https://wordpress.org/support/forum/how-to-and-troubleshooting/\">Support Forums</a>. <br /></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 22:46:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Dev Blog: WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10732:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&ssl=1\" alt=\"A decorative header featuring the text \" />\n\n<h2>Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2>Comments</h2>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&ssl=1\" alt=\"A screenshot of a comment form, where the new \" name=\"name\" />\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2>Privacy Policy Page</h2>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" />\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2>Data Handling</h2>\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" />\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"https://wordpress.org/news/feed/\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"https://wordpress.org/news/feed/\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: WPWeekly Episode 316 – Stone Cold WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80887&preview=true&preview_id=80887\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wpweekly-episode-316-stone-cold-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2175:\"<p>While editing this episode, I noticed that my voice routinely goes from quiet to loud. I&#8217;m not sure why this is and suspect it has something to do with Windows 10. I apologize for the audio quality and will try to have it fixed by next week&#8217;s show.</p>\n<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the recent acquisition of the Google Analytics Dashboard for WordPress plugin, rebuilding the WordPress edit screen, and an in-depth conversation on the concerns expressed surrounding WordPress 4.9.6. We send a shout out to Alex Mills, get an update on John&#8217;s stolen goats, and rant about lawn care power equipment.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://exactmetrics.com/google-analytics-dashboard-wordpress-gadwp-now-exactmetrics/\">Google Analytics Dashboard for WordPress (GADWP) is Now ExactMetrics</a><br />\n<a href=\"https://www.satellitewp.com/en/warning-wordpress-4-9-6-really-is-a-major-update/\">Warning: WordPress 4.9.6 Really is a Major Update</a><br />\n<a href=\"https://humanmade.com/2018/05/11/rebuilding-wordpress-edit-screen/\">Rebuilding the WordPress Edit Screen</a><br />\n<a href=\"https://techcrunch.com/2018/05/10/mediums-latest-pivot-leaves-some-independent-media-in-the-lurch/\">Medium’s latest pivot leaves some independent media in the lurch</a><br />\n<a href=\"https://alex.blog/2018/05/15/vision-update-better-than-expected-but-serious-damage-was-done/\">Vision Update: Better Than Expected But Serious Damage Was Done</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 23rd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #316:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 01:12:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 26 Jun 2018 14:06:53 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Tue, 26 Jun 2018 13:45:28 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911110210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(382, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1530065215', 'no'),
(383, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1530022015', 'no'),
(384, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1530065215', 'no'),
(385, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\'>The Month in WordPress: May 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/interview-with-matias-ventura-on-building-the-vision-for-gutenberg\'>WPTavern: Interview with Matías Ventura on Building the Vision for Gutenberg</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/three-minute-movie-showcases-the-wordcamp-eu-2018-experience\'>WPTavern: Three Minute Movie Showcases The WordCamp EU 2018 Experience</a></li><li><a class=\'rsswidget\' href=\'https://ma.tt/2018/06/mass-unsubscribe-mailchimp/\'>Matt: Mass Unsubscribe Mailchimp</a></li></ul></div>', 'no'),
(398, '_transient_timeout_wc_related_50', '1530121343', 'no'),
(399, '_transient_wc_related_50', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=50\";a:4:{i:0;s:2:\"40\";i:1;s:2:\"44\";i:2;s:2:\"46\";i:3;s:2:\"48\";}}', 'no'),
(400, '_transient_timeout_wc_related_48', '1530121343', 'no'),
(401, '_transient_wc_related_48', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=48\";a:4:{i:0;s:2:\"40\";i:1;s:2:\"44\";i:2;s:2:\"46\";i:3;s:2:\"50\";}}', 'no'),
(402, '_transient_timeout_wc_related_46', '1530121343', 'no'),
(403, '_transient_wc_related_46', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=46\";a:4:{i:0;s:2:\"40\";i:1;s:2:\"44\";i:2;s:2:\"48\";i:3;s:2:\"50\";}}', 'no'),
(404, '_transient_timeout_wc_related_44', '1530121343', 'no'),
(405, '_transient_wc_related_44', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=44\";a:4:{i:0;s:2:\"40\";i:1;s:2:\"46\";i:2;s:2:\"48\";i:3;s:2:\"50\";}}', 'no'),
(406, '_transient_timeout_wc_related_40', '1530121343', 'no'),
(407, '_transient_wc_related_40', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=40\";a:4:{i:0;s:2:\"44\";i:1;s:2:\"46\";i:2;s:2:\"48\";i:3;s:2:\"50\";}}', 'no'),
(411, '_site_transient_timeout_theme_roots', '1530025313', 'no'),
(412, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(413, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530023514;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.7\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.1.7\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1557817\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1557817\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(438, '_transient_timeout_wc_low_stock_count', '1532620251', 'no'),
(439, '_transient_wc_low_stock_count', '0', 'no'),
(440, '_transient_timeout_wc_outofstock_count', '1532620251', 'no'),
(441, '_transient_wc_outofstock_count', '0', 'no'),
(443, '_transient_timeout_wc_order_53_needs_processing', '1530114760', 'no'),
(444, '_transient_wc_order_53_needs_processing', '1', 'no'),
(446, '_transient_timeout_wc_term_counts', '1532620364', 'no'),
(447, '_transient_wc_term_counts', 'a:3:{i:16;s:1:\"5\";i:19;s:1:\"1\";i:20;s:1:\"4\";}', 'no'),
(453, '_transient_timeout_wc_order_54_needs_processing', '1530114843', 'no'),
(454, '_transient_wc_order_54_needs_processing', '1', 'no'),
(460, '_transient_timeout_wc_order_55_needs_processing', '1530114900', 'no'),
(461, '_transient_wc_order_55_needs_processing', '1', 'no'),
(480, '_transient_timeout_wc_order_56_needs_processing', '1530115134', 'no'),
(481, '_transient_wc_order_56_needs_processing', '1', 'no'),
(482, '_transient_is_multi_author', '0', 'yes'),
(483, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(484, '_transient_timeout_wc_report_sales_by_date', '1530121340', 'no'),
(485, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"397103924d485078ddf4c6bd32a952ff\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"5\";s:9:\"post_date\";s:19:\"2018-06-26 15:54:00\";}}s:32:\"f349a11ace952a0113832071b5ca6a45\";a:0:{}s:32:\"d7143689e95a79ef38e3874484ecb25b\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"9\";s:9:\"post_date\";s:19:\"2018-06-25 16:29:09\";}}s:32:\"c7370c0ba123f01185e36cf70bb8b226\";N;s:32:\"59ab7b874fd5c91b31b21014f85cead1\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:6:\"128500\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-06-25 16:29:09\";}}s:32:\"0f183ba728d289959acb7f4eea0526de\";a:0:{}s:32:\"32c61f1bfffdb417df625c024545ef36\";a:0:{}s:32:\"0e0c73a6896e49428c5d0aa473f36c1b\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wp_attached_file', '2018/06/beanie.jpg'),
(4, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/06/beanie.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 9, '_starter_content_theme', 'storefront'),
(6, 9, '_customize_draft_post_name', 'beanie-image'),
(7, 10, '_wp_attached_file', '2018/06/belt.jpg'),
(8, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2018/06/belt.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_starter_content_theme', 'storefront'),
(10, 10, '_customize_draft_post_name', 'belt-image'),
(11, 11, '_wp_attached_file', '2018/06/cap.jpg'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2018/06/cap.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_starter_content_theme', 'storefront'),
(14, 11, '_customize_draft_post_name', 'cap-image'),
(15, 12, '_wp_attached_file', '2018/06/hoodie-with-logo.jpg'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2018/06/hoodie-with-logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_starter_content_theme', 'storefront'),
(18, 12, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(19, 13, '_wp_attached_file', '2018/06/hoodie-with-pocket.jpg'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/06/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 13, '_starter_content_theme', 'storefront'),
(22, 13, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(23, 14, '_wp_attached_file', '2018/06/hoodie-with-zipper.jpg'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/06/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 14, '_starter_content_theme', 'storefront'),
(26, 14, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(27, 15, '_wp_attached_file', '2018/06/hoodie.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/06/hoodie.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 15, '_starter_content_theme', 'storefront'),
(30, 15, '_customize_draft_post_name', 'hoodie-image'),
(31, 16, '_wp_attached_file', '2018/06/long-sleeve-tee.jpg'),
(32, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2018/06/long-sleeve-tee.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 16, '_starter_content_theme', 'storefront'),
(34, 16, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(35, 17, '_wp_attached_file', '2018/06/polo.jpg'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/06/polo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 17, '_starter_content_theme', 'storefront'),
(38, 17, '_customize_draft_post_name', 'polo-image'),
(39, 18, '_wp_attached_file', '2018/06/sunglasses.jpg'),
(40, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2018/06/sunglasses.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 18, '_starter_content_theme', 'storefront'),
(42, 18, '_customize_draft_post_name', 'sunglasses-image'),
(43, 19, '_wp_attached_file', '2018/06/tshirt.jpg'),
(44, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/06/tshirt.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 19, '_starter_content_theme', 'storefront'),
(46, 19, '_customize_draft_post_name', 'tshirt-image'),
(47, 20, '_wp_attached_file', '2018/06/vneck-tee.jpg'),
(48, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/06/vneck-tee.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 20, '_starter_content_theme', 'storefront'),
(50, 20, '_customize_draft_post_name', 'vneck-tee-image'),
(51, 21, '_wp_attached_file', '2018/06/hero.jpg'),
(52, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2018/06/hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 21, '_starter_content_theme', 'storefront'),
(54, 21, '_customize_draft_post_name', 'hero-image'),
(55, 22, '_wp_attached_file', '2018/06/accessories.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/06/accessories.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 22, '_starter_content_theme', 'storefront'),
(58, 22, '_customize_draft_post_name', 'accessories-image'),
(59, 23, '_wp_attached_file', '2018/06/tshirts.jpg'),
(60, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/06/tshirts.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 23, '_starter_content_theme', 'storefront'),
(62, 23, '_customize_draft_post_name', 'tshirts-image'),
(63, 24, '_wp_attached_file', '2018/06/hoodies.jpg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/06/hoodies.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 24, '_starter_content_theme', 'storefront'),
(66, 24, '_customize_draft_post_name', 'hoodies-image'),
(67, 25, '_thumbnail_id', '21'),
(68, 25, '_wp_page_template', 'template-homepage.php'),
(69, 25, '_customize_draft_post_name', 'welcome'),
(70, 25, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(71, 26, '_customize_draft_post_name', 'blog'),
(72, 26, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(73, 27, '_thumbnail_id', '9'),
(74, 27, '_customize_draft_post_name', 'beanie'),
(75, 27, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(76, 28, '_thumbnail_id', '10'),
(77, 28, '_customize_draft_post_name', 'belt'),
(78, 28, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(79, 29, '_thumbnail_id', '11'),
(80, 29, '_customize_draft_post_name', 'cap'),
(81, 29, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(82, 30, '_thumbnail_id', '18'),
(83, 30, '_customize_draft_post_name', 'sunglasses'),
(84, 30, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(85, 31, '_thumbnail_id', '12'),
(86, 31, '_customize_draft_post_name', 'hoodie-with-logo'),
(87, 31, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(88, 32, '_thumbnail_id', '13'),
(89, 32, '_customize_draft_post_name', 'hoodie-with-pocket'),
(90, 32, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(91, 33, '_thumbnail_id', '14'),
(92, 33, '_customize_draft_post_name', 'hoodie-with-zipper'),
(93, 33, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(94, 34, '_thumbnail_id', '15'),
(95, 34, '_customize_draft_post_name', 'hoodie'),
(96, 34, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(97, 35, '_thumbnail_id', '16'),
(98, 35, '_customize_draft_post_name', 'long-sleeve-tee'),
(99, 35, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(100, 36, '_thumbnail_id', '17'),
(101, 36, '_customize_draft_post_name', 'polo'),
(102, 36, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(103, 37, '_thumbnail_id', '19'),
(104, 37, '_customize_draft_post_name', 'tshirt'),
(105, 37, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(106, 38, '_thumbnail_id', '20'),
(107, 38, '_customize_draft_post_name', 'vneck-tee'),
(108, 38, '_customize_changeset_uuid', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4'),
(109, 27, '_wc_review_count', '0'),
(110, 27, '_wc_rating_count', 'a:0:{}'),
(111, 27, '_wc_average_rating', '0'),
(112, 27, '_sku', ''),
(113, 27, '_regular_price', '20'),
(114, 27, '_sale_price', '18'),
(115, 27, '_sale_price_dates_from', ''),
(116, 27, '_sale_price_dates_to', ''),
(117, 27, 'total_sales', '0'),
(118, 27, '_tax_status', 'taxable'),
(119, 27, '_tax_class', ''),
(120, 27, '_manage_stock', 'no'),
(121, 27, '_backorders', 'no'),
(122, 27, '_sold_individually', 'no'),
(123, 27, '_weight', ''),
(124, 27, '_length', ''),
(125, 27, '_width', ''),
(126, 27, '_height', ''),
(127, 27, '_upsell_ids', 'a:0:{}'),
(128, 27, '_crosssell_ids', 'a:0:{}'),
(129, 27, '_purchase_note', ''),
(130, 27, '_default_attributes', 'a:0:{}'),
(131, 27, '_virtual', 'no'),
(132, 27, '_downloadable', 'no'),
(133, 27, '_product_image_gallery', ''),
(134, 27, '_download_limit', '-1'),
(135, 27, '_download_expiry', '-1'),
(136, 27, '_stock', NULL),
(137, 27, '_stock_status', 'instock'),
(138, 27, '_product_version', '3.4.3'),
(139, 27, '_price', '18'),
(140, 28, '_wc_review_count', '0'),
(141, 28, '_wc_rating_count', 'a:0:{}'),
(142, 28, '_wc_average_rating', '0'),
(143, 28, '_sku', ''),
(144, 28, '_regular_price', '65'),
(145, 28, '_sale_price', '55'),
(146, 28, '_sale_price_dates_from', ''),
(147, 28, '_sale_price_dates_to', ''),
(148, 28, 'total_sales', '0'),
(149, 28, '_tax_status', 'taxable'),
(150, 28, '_tax_class', ''),
(151, 28, '_manage_stock', 'no'),
(152, 28, '_backorders', 'no'),
(153, 28, '_sold_individually', 'no'),
(154, 28, '_weight', ''),
(155, 28, '_length', ''),
(156, 28, '_width', ''),
(157, 28, '_height', ''),
(158, 28, '_upsell_ids', 'a:0:{}'),
(159, 28, '_crosssell_ids', 'a:0:{}'),
(160, 28, '_purchase_note', ''),
(161, 28, '_default_attributes', 'a:0:{}'),
(162, 28, '_virtual', 'no'),
(163, 28, '_downloadable', 'no'),
(164, 28, '_product_image_gallery', ''),
(165, 28, '_download_limit', '-1'),
(166, 28, '_download_expiry', '-1'),
(167, 28, '_stock', NULL),
(168, 28, '_stock_status', 'instock'),
(169, 28, '_product_version', '3.4.3'),
(170, 28, '_price', '55'),
(171, 29, '_wc_review_count', '0'),
(172, 29, '_wc_rating_count', 'a:0:{}'),
(173, 29, '_wc_average_rating', '0'),
(174, 29, '_sku', ''),
(175, 29, '_regular_price', '18'),
(176, 29, '_sale_price', '16'),
(177, 29, '_sale_price_dates_from', ''),
(178, 29, '_sale_price_dates_to', ''),
(179, 29, 'total_sales', '0'),
(180, 29, '_tax_status', 'taxable'),
(181, 29, '_tax_class', ''),
(182, 29, '_manage_stock', 'no'),
(183, 29, '_backorders', 'no'),
(184, 29, '_sold_individually', 'no'),
(185, 29, '_weight', ''),
(186, 29, '_length', ''),
(187, 29, '_width', ''),
(188, 29, '_height', ''),
(189, 29, '_upsell_ids', 'a:0:{}'),
(190, 29, '_crosssell_ids', 'a:0:{}'),
(191, 29, '_purchase_note', ''),
(192, 29, '_default_attributes', 'a:0:{}'),
(193, 29, '_virtual', 'no'),
(194, 29, '_downloadable', 'no'),
(195, 29, '_product_image_gallery', ''),
(196, 29, '_download_limit', '-1'),
(197, 29, '_download_expiry', '-1'),
(198, 29, '_stock', NULL),
(199, 29, '_stock_status', 'instock'),
(200, 29, '_product_version', '3.4.3'),
(201, 29, '_price', '16'),
(202, 30, '_wc_review_count', '0'),
(203, 30, '_wc_rating_count', 'a:0:{}'),
(204, 30, '_wc_average_rating', '0'),
(205, 30, '_sku', ''),
(206, 30, '_regular_price', '90'),
(207, 30, '_sale_price', ''),
(208, 30, '_sale_price_dates_from', ''),
(209, 30, '_sale_price_dates_to', ''),
(210, 30, 'total_sales', '0'),
(211, 30, '_tax_status', 'taxable'),
(212, 30, '_tax_class', ''),
(213, 30, '_manage_stock', 'no'),
(214, 30, '_backorders', 'no'),
(215, 30, '_sold_individually', 'no'),
(216, 30, '_weight', ''),
(217, 30, '_length', ''),
(218, 30, '_width', ''),
(219, 30, '_height', ''),
(220, 30, '_upsell_ids', 'a:0:{}'),
(221, 30, '_crosssell_ids', 'a:0:{}'),
(222, 30, '_purchase_note', ''),
(223, 30, '_default_attributes', 'a:0:{}'),
(224, 30, '_virtual', 'no'),
(225, 30, '_downloadable', 'no'),
(226, 30, '_product_image_gallery', ''),
(227, 30, '_download_limit', '-1'),
(228, 30, '_download_expiry', '-1'),
(229, 30, '_stock', NULL),
(230, 30, '_stock_status', 'instock'),
(231, 30, '_product_version', '3.4.3'),
(232, 30, '_price', '90'),
(233, 31, '_wc_review_count', '0'),
(234, 31, '_wc_rating_count', 'a:0:{}'),
(235, 31, '_wc_average_rating', '0'),
(236, 31, '_sku', ''),
(237, 31, '_regular_price', '45'),
(238, 31, '_sale_price', ''),
(239, 31, '_sale_price_dates_from', ''),
(240, 31, '_sale_price_dates_to', ''),
(241, 31, 'total_sales', '0'),
(242, 31, '_tax_status', 'taxable'),
(243, 31, '_tax_class', ''),
(244, 31, '_manage_stock', 'no'),
(245, 31, '_backorders', 'no'),
(246, 31, '_sold_individually', 'no'),
(247, 31, '_weight', ''),
(248, 31, '_length', ''),
(249, 31, '_width', ''),
(250, 31, '_height', ''),
(251, 31, '_upsell_ids', 'a:0:{}'),
(252, 31, '_crosssell_ids', 'a:0:{}'),
(253, 31, '_purchase_note', ''),
(254, 31, '_default_attributes', 'a:0:{}'),
(255, 31, '_virtual', 'no'),
(256, 31, '_downloadable', 'no'),
(257, 31, '_product_image_gallery', ''),
(258, 31, '_download_limit', '-1'),
(259, 31, '_download_expiry', '-1'),
(260, 31, '_stock', NULL),
(261, 31, '_stock_status', 'instock'),
(262, 31, '_product_version', '3.4.3'),
(263, 31, '_price', '45'),
(264, 32, '_wc_review_count', '0'),
(265, 32, '_wc_rating_count', 'a:0:{}'),
(266, 32, '_wc_average_rating', '0'),
(267, 32, '_sku', ''),
(268, 32, '_regular_price', '45'),
(269, 32, '_sale_price', '35'),
(270, 32, '_sale_price_dates_from', ''),
(271, 32, '_sale_price_dates_to', ''),
(272, 32, 'total_sales', '0'),
(273, 32, '_tax_status', 'taxable'),
(274, 32, '_tax_class', ''),
(275, 32, '_manage_stock', 'no'),
(276, 32, '_backorders', 'no'),
(277, 32, '_sold_individually', 'no'),
(278, 32, '_weight', ''),
(279, 32, '_length', ''),
(280, 32, '_width', ''),
(281, 32, '_height', ''),
(282, 32, '_upsell_ids', 'a:0:{}'),
(283, 32, '_crosssell_ids', 'a:0:{}'),
(284, 32, '_purchase_note', ''),
(285, 32, '_default_attributes', 'a:0:{}'),
(286, 32, '_virtual', 'no'),
(287, 32, '_downloadable', 'no'),
(288, 32, '_product_image_gallery', ''),
(289, 32, '_download_limit', '-1'),
(290, 32, '_download_expiry', '-1'),
(291, 32, '_stock', NULL),
(292, 32, '_stock_status', 'instock'),
(293, 32, '_product_version', '3.4.3'),
(294, 32, '_price', '35'),
(295, 33, '_wc_review_count', '0'),
(296, 33, '_wc_rating_count', 'a:0:{}'),
(297, 33, '_wc_average_rating', '0'),
(298, 33, '_sku', ''),
(299, 33, '_regular_price', '45'),
(300, 33, '_sale_price', ''),
(301, 33, '_sale_price_dates_from', ''),
(302, 33, '_sale_price_dates_to', ''),
(303, 33, 'total_sales', '0'),
(304, 33, '_tax_status', 'taxable'),
(305, 33, '_tax_class', ''),
(306, 33, '_manage_stock', 'no'),
(307, 33, '_backorders', 'no'),
(308, 33, '_sold_individually', 'no'),
(309, 33, '_weight', ''),
(310, 33, '_length', ''),
(311, 33, '_width', ''),
(312, 33, '_height', ''),
(313, 33, '_upsell_ids', 'a:0:{}'),
(314, 33, '_crosssell_ids', 'a:0:{}'),
(315, 33, '_purchase_note', ''),
(316, 33, '_default_attributes', 'a:0:{}'),
(317, 33, '_virtual', 'no'),
(318, 33, '_downloadable', 'no'),
(319, 33, '_product_image_gallery', ''),
(320, 33, '_download_limit', '-1'),
(321, 33, '_download_expiry', '-1'),
(322, 33, '_stock', NULL),
(323, 33, '_stock_status', 'instock'),
(324, 33, '_product_version', '3.4.3'),
(325, 33, '_price', '45'),
(326, 34, '_wc_review_count', '0'),
(327, 34, '_wc_rating_count', 'a:0:{}'),
(328, 34, '_wc_average_rating', '0'),
(329, 34, '_sku', ''),
(330, 34, '_regular_price', '45'),
(331, 34, '_sale_price', '42'),
(332, 34, '_sale_price_dates_from', ''),
(333, 34, '_sale_price_dates_to', ''),
(334, 34, 'total_sales', '0'),
(335, 34, '_tax_status', 'taxable'),
(336, 34, '_tax_class', ''),
(337, 34, '_manage_stock', 'no'),
(338, 34, '_backorders', 'no'),
(339, 34, '_sold_individually', 'no'),
(340, 34, '_weight', ''),
(341, 34, '_length', ''),
(342, 34, '_width', ''),
(343, 34, '_height', ''),
(344, 34, '_upsell_ids', 'a:0:{}'),
(345, 34, '_crosssell_ids', 'a:0:{}'),
(346, 34, '_purchase_note', ''),
(347, 34, '_default_attributes', 'a:0:{}'),
(348, 34, '_virtual', 'no'),
(349, 34, '_downloadable', 'no'),
(350, 34, '_product_image_gallery', ''),
(351, 34, '_download_limit', '-1'),
(352, 34, '_download_expiry', '-1'),
(353, 34, '_stock', NULL),
(354, 34, '_stock_status', 'instock'),
(355, 34, '_product_version', '3.4.3'),
(356, 34, '_price', '42'),
(357, 35, '_wc_review_count', '0'),
(358, 35, '_wc_rating_count', 'a:0:{}'),
(359, 35, '_wc_average_rating', '0'),
(360, 35, '_sku', ''),
(361, 35, '_regular_price', '25'),
(362, 35, '_sale_price', ''),
(363, 35, '_sale_price_dates_from', ''),
(364, 35, '_sale_price_dates_to', ''),
(365, 35, 'total_sales', '0'),
(366, 35, '_tax_status', 'taxable'),
(367, 35, '_tax_class', ''),
(368, 35, '_manage_stock', 'no'),
(369, 35, '_backorders', 'no'),
(370, 35, '_sold_individually', 'no'),
(371, 35, '_weight', ''),
(372, 35, '_length', ''),
(373, 35, '_width', ''),
(374, 35, '_height', ''),
(375, 35, '_upsell_ids', 'a:0:{}'),
(376, 35, '_crosssell_ids', 'a:0:{}'),
(377, 35, '_purchase_note', ''),
(378, 35, '_default_attributes', 'a:0:{}'),
(379, 35, '_virtual', 'no'),
(380, 35, '_downloadable', 'no'),
(381, 35, '_product_image_gallery', ''),
(382, 35, '_download_limit', '-1'),
(383, 35, '_download_expiry', '-1'),
(384, 35, '_stock', NULL),
(385, 35, '_stock_status', 'instock'),
(386, 35, '_product_version', '3.4.3'),
(387, 35, '_price', '25'),
(388, 36, '_wc_review_count', '0'),
(389, 36, '_wc_rating_count', 'a:0:{}'),
(390, 36, '_wc_average_rating', '0'),
(391, 36, '_sku', ''),
(392, 36, '_regular_price', '20'),
(393, 36, '_sale_price', ''),
(394, 36, '_sale_price_dates_from', ''),
(395, 36, '_sale_price_dates_to', ''),
(396, 36, 'total_sales', '0'),
(397, 36, '_tax_status', 'taxable'),
(398, 36, '_tax_class', ''),
(399, 36, '_manage_stock', 'no'),
(400, 36, '_backorders', 'no'),
(401, 36, '_sold_individually', 'no'),
(402, 36, '_weight', ''),
(403, 36, '_length', ''),
(404, 36, '_width', ''),
(405, 36, '_height', ''),
(406, 36, '_upsell_ids', 'a:0:{}'),
(407, 36, '_crosssell_ids', 'a:0:{}'),
(408, 36, '_purchase_note', ''),
(409, 36, '_default_attributes', 'a:0:{}'),
(410, 36, '_virtual', 'no'),
(411, 36, '_downloadable', 'no'),
(412, 36, '_product_image_gallery', ''),
(413, 36, '_download_limit', '-1'),
(414, 36, '_download_expiry', '-1'),
(415, 36, '_stock', NULL),
(416, 36, '_stock_status', 'instock'),
(417, 36, '_product_version', '3.4.3'),
(418, 36, '_price', '20'),
(419, 37, '_wc_review_count', '0'),
(420, 37, '_wc_rating_count', 'a:0:{}'),
(421, 37, '_wc_average_rating', '0'),
(422, 37, '_sku', ''),
(423, 37, '_regular_price', '18'),
(424, 37, '_sale_price', ''),
(425, 37, '_sale_price_dates_from', ''),
(426, 37, '_sale_price_dates_to', ''),
(427, 37, 'total_sales', '0'),
(428, 37, '_tax_status', 'taxable'),
(429, 37, '_tax_class', ''),
(430, 37, '_manage_stock', 'no'),
(431, 37, '_backorders', 'no'),
(432, 37, '_sold_individually', 'no'),
(433, 37, '_weight', ''),
(434, 37, '_length', ''),
(435, 37, '_width', ''),
(436, 37, '_height', ''),
(437, 37, '_upsell_ids', 'a:0:{}'),
(438, 37, '_crosssell_ids', 'a:0:{}'),
(439, 37, '_purchase_note', ''),
(440, 37, '_default_attributes', 'a:0:{}'),
(441, 37, '_virtual', 'no'),
(442, 37, '_downloadable', 'no'),
(443, 37, '_product_image_gallery', ''),
(444, 37, '_download_limit', '-1'),
(445, 37, '_download_expiry', '-1'),
(446, 37, '_stock', NULL),
(447, 37, '_stock_status', 'instock'),
(448, 37, '_product_version', '3.4.3'),
(449, 37, '_price', '18'),
(450, 38, '_wc_review_count', '0'),
(451, 38, '_wc_rating_count', 'a:0:{}'),
(452, 38, '_wc_average_rating', '0'),
(453, 38, '_sku', ''),
(454, 38, '_regular_price', '18'),
(455, 38, '_sale_price', ''),
(456, 38, '_sale_price_dates_from', ''),
(457, 38, '_sale_price_dates_to', ''),
(458, 38, 'total_sales', '0'),
(459, 38, '_tax_status', 'taxable'),
(460, 38, '_tax_class', ''),
(461, 38, '_manage_stock', 'no'),
(462, 38, '_backorders', 'no'),
(463, 38, '_sold_individually', 'no'),
(464, 38, '_weight', ''),
(465, 38, '_length', ''),
(466, 38, '_width', ''),
(467, 38, '_height', ''),
(468, 38, '_upsell_ids', 'a:0:{}'),
(469, 38, '_crosssell_ids', 'a:0:{}'),
(470, 38, '_purchase_note', ''),
(471, 38, '_default_attributes', 'a:0:{}'),
(472, 40, '_wc_review_count', '0'),
(473, 40, '_wc_rating_count', 'a:0:{}'),
(474, 40, '_wc_average_rating', '0'),
(475, 40, '_edit_last', '1'),
(476, 40, '_edit_lock', '1530022368:1'),
(477, 41, '_wp_attached_file', '2018/06/dfdf.jpg'),
(478, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/06/dfdf.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"dfdf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"dfdf-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"dfdf-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"dfdf-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"dfdf-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"dfdf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"dfdf-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"dfdf-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"dfdf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 550D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1471789637\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(479, 40, '_thumbnail_id', '52'),
(480, 40, '_sku', ''),
(481, 40, '_regular_price', '500'),
(482, 40, '_sale_price', ''),
(483, 40, '_sale_price_dates_from', ''),
(484, 40, '_sale_price_dates_to', ''),
(485, 40, 'total_sales', '4'),
(486, 40, '_tax_status', 'taxable'),
(487, 40, '_tax_class', ''),
(488, 40, '_manage_stock', 'no'),
(489, 40, '_backorders', 'no'),
(490, 40, '_sold_individually', 'no'),
(491, 40, '_weight', ''),
(492, 40, '_length', ''),
(493, 40, '_width', ''),
(494, 40, '_height', ''),
(495, 40, '_upsell_ids', 'a:0:{}'),
(496, 40, '_crosssell_ids', 'a:0:{}'),
(497, 40, '_purchase_note', ''),
(498, 40, '_default_attributes', 'a:0:{}'),
(499, 40, '_virtual', 'no'),
(500, 40, '_downloadable', 'no'),
(501, 40, '_product_image_gallery', ''),
(502, 40, '_download_limit', '-1'),
(503, 40, '_download_expiry', '-1'),
(504, 40, '_stock', NULL),
(505, 40, '_stock_status', 'instock'),
(506, 40, '_product_version', '3.4.3'),
(507, 40, '_price', '500'),
(557, 43, '_order_key', 'wc_order_5b31185589955'),
(558, 43, '_customer_user', '0'),
(559, 43, '_payment_method', 'cod'),
(560, 43, '_payment_method_title', 'Cash on delivery'),
(561, 43, '_transaction_id', ''),
(562, 43, '_customer_ip_address', '::1'),
(563, 43, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/64.0.3282.140 safari/537.36 edge/17.17134'),
(564, 43, '_created_via', 'checkout'),
(565, 43, '_date_completed', '1530027902'),
(566, 43, '_completed_date', '2018-06-26 15:45:02'),
(567, 43, '_date_paid', '1530028661'),
(568, 43, '_paid_date', '2018-06-26 15:57:41'),
(569, 43, '_cart_hash', '3a8423d722ca3529c22b0cf3effb90a1'),
(570, 43, '_billing_first_name', 'abul'),
(571, 43, '_billing_last_name', 'bashar'),
(572, 43, '_billing_company', 'beta'),
(573, 43, '_billing_address_1', 'uttara, dhaka'),
(574, 43, '_billing_address_2', ''),
(575, 43, '_billing_city', 'dhaka'),
(576, 43, '_billing_state', 'BD-13'),
(577, 43, '_billing_postcode', '1212'),
(578, 43, '_billing_country', 'BD'),
(579, 43, '_billing_email', 'alshafi834@outlook.com'),
(580, 43, '_billing_phone', '01521478595'),
(581, 43, '_shipping_first_name', 'abul'),
(582, 43, '_shipping_last_name', 'bashar'),
(583, 43, '_shipping_company', 'beta'),
(584, 43, '_shipping_address_1', 'uttara, dhaka'),
(585, 43, '_shipping_address_2', ''),
(586, 43, '_shipping_city', 'dhaka'),
(587, 43, '_shipping_state', 'BD-13'),
(588, 43, '_shipping_postcode', '1212'),
(589, 43, '_shipping_country', 'BD'),
(590, 43, '_order_currency', 'BDT'),
(591, 43, '_cart_discount', '0'),
(592, 43, '_cart_discount_tax', '0'),
(593, 43, '_order_shipping', '0.00'),
(594, 43, '_order_shipping_tax', '0'),
(595, 43, '_order_tax', '0'),
(596, 43, '_order_total', '500.00'),
(597, 43, '_order_version', '3.4.3'),
(598, 43, '_prices_include_tax', 'no'),
(599, 43, '_billing_address_index', 'abul bashar beta uttara, dhaka  dhaka BD-13 1212 BD alshafi834@outlook.com 01521478595'),
(600, 43, '_shipping_address_index', 'abul bashar beta uttara, dhaka  dhaka BD-13 1212 BD'),
(601, 43, 'mailchimp_woocommerce_is_subscribed', '1'),
(602, 43, '_download_permissions_granted', 'yes'),
(603, 43, '_recorded_sales', 'yes'),
(604, 43, '_recorded_coupon_usage_counts', 'yes'),
(605, 43, '_order_stock_reduced', 'yes'),
(606, 44, '_wc_review_count', '0'),
(607, 44, '_wc_rating_count', 'a:0:{}'),
(608, 44, '_wc_average_rating', '0'),
(609, 44, '_edit_last', '1'),
(610, 44, '_edit_lock', '1530021995:1'),
(611, 45, '_wp_attached_file', '2018/06/africa-en_UA32J4303BKXXA_001_Front_indigo-blue.jpg'),
(612, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:330;s:6:\"height\";i:330;s:4:\"file\";s:58:\"2018/06/africa-en_UA32J4303BKXXA_001_Front_indigo-blue.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"africa-en_UA32J4303BKXXA_001_Front_indigo-blue-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(613, 44, '_thumbnail_id', '45'),
(614, 44, '_sku', ''),
(615, 44, '_regular_price', '20000'),
(616, 44, '_sale_price', ''),
(617, 44, '_sale_price_dates_from', ''),
(618, 44, '_sale_price_dates_to', ''),
(619, 44, 'total_sales', '1'),
(620, 44, '_tax_status', 'taxable'),
(621, 44, '_tax_class', ''),
(622, 44, '_manage_stock', 'no'),
(623, 44, '_backorders', 'no'),
(624, 44, '_sold_individually', 'no'),
(625, 44, '_weight', ''),
(626, 44, '_length', ''),
(627, 44, '_width', ''),
(628, 44, '_height', ''),
(629, 44, '_upsell_ids', 'a:0:{}'),
(630, 44, '_crosssell_ids', 'a:0:{}'),
(631, 44, '_purchase_note', ''),
(632, 44, '_default_attributes', 'a:0:{}'),
(633, 44, '_virtual', 'no'),
(634, 44, '_downloadable', 'no'),
(635, 44, '_product_image_gallery', ''),
(636, 44, '_download_limit', '-1'),
(637, 44, '_download_expiry', '-1'),
(638, 44, '_stock', NULL),
(639, 44, '_stock_status', 'instock'),
(640, 44, '_product_version', '3.4.3'),
(641, 44, '_price', '20000'),
(642, 46, '_wc_review_count', '0'),
(643, 46, '_wc_rating_count', 'a:0:{}'),
(644, 46, '_wc_average_rating', '0'),
(645, 46, '_edit_last', '1'),
(646, 46, '_edit_lock', '1530022061:1'),
(647, 47, '_wp_attached_file', '2018/06/index.jpg'),
(648, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:17:\"2018/06/index.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"index-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"index-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"index-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 46, '_thumbnail_id', '47'),
(650, 46, '_sku', ''),
(651, 46, '_regular_price', '25000'),
(652, 46, '_sale_price', ''),
(653, 46, '_sale_price_dates_from', ''),
(654, 46, '_sale_price_dates_to', ''),
(655, 46, 'total_sales', '2'),
(656, 46, '_tax_status', 'taxable'),
(657, 46, '_tax_class', ''),
(658, 46, '_manage_stock', 'no'),
(659, 46, '_backorders', 'no'),
(660, 46, '_sold_individually', 'no'),
(661, 46, '_weight', ''),
(662, 46, '_length', ''),
(663, 46, '_width', ''),
(664, 46, '_height', ''),
(665, 46, '_upsell_ids', 'a:0:{}'),
(666, 46, '_crosssell_ids', 'a:0:{}'),
(667, 46, '_purchase_note', ''),
(668, 46, '_default_attributes', 'a:0:{}'),
(669, 46, '_virtual', 'no'),
(670, 46, '_downloadable', 'no'),
(671, 46, '_product_image_gallery', ''),
(672, 46, '_download_limit', '-1'),
(673, 46, '_download_expiry', '-1'),
(674, 46, '_stock', NULL),
(675, 46, '_stock_status', 'instock'),
(676, 46, '_product_version', '3.4.3'),
(677, 46, '_price', '25000'),
(678, 48, '_wc_review_count', '0'),
(679, 48, '_wc_rating_count', 'a:0:{}'),
(680, 48, '_wc_average_rating', '0'),
(681, 48, '_edit_last', '1'),
(682, 48, '_edit_lock', '1530022139:1'),
(683, 49, '_wp_attached_file', '2018/06/indexv.jpg'),
(684, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2018/06/indexv.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"indexv-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"indexv-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"indexv-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(685, 48, '_thumbnail_id', '49'),
(686, 48, '_sku', ''),
(687, 48, '_regular_price', '21000'),
(688, 48, '_sale_price', ''),
(689, 48, '_sale_price_dates_from', ''),
(690, 48, '_sale_price_dates_to', ''),
(691, 48, 'total_sales', '2'),
(692, 48, '_tax_status', 'taxable'),
(693, 48, '_tax_class', ''),
(694, 48, '_manage_stock', 'no'),
(695, 48, '_backorders', 'no'),
(696, 48, '_sold_individually', 'no'),
(697, 48, '_weight', ''),
(698, 48, '_length', ''),
(699, 48, '_width', ''),
(700, 48, '_height', ''),
(701, 48, '_upsell_ids', 'a:0:{}'),
(702, 48, '_crosssell_ids', 'a:0:{}'),
(703, 48, '_purchase_note', ''),
(704, 48, '_default_attributes', 'a:0:{}'),
(705, 48, '_virtual', 'no'),
(706, 48, '_downloadable', 'no'),
(707, 48, '_product_image_gallery', ''),
(708, 48, '_download_limit', '-1'),
(709, 48, '_download_expiry', '-1'),
(710, 48, '_stock', NULL),
(711, 48, '_stock_status', 'instock'),
(712, 48, '_product_version', '3.4.3'),
(713, 48, '_price', '21000'),
(714, 50, '_wc_review_count', '0'),
(715, 50, '_wc_rating_count', 'a:0:{}'),
(716, 50, '_wc_average_rating', '0'),
(717, 50, '_edit_last', '1'),
(718, 50, '_edit_lock', '1530022200:1'),
(719, 51, '_wp_attached_file', '2018/06/26_inch_lcd_tv_rental.jpg'),
(720, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:33:\"2018/06/26_inch_lcd_tv_rental.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"26_inch_lcd_tv_rental-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(721, 50, '_thumbnail_id', '51'),
(722, 50, '_sku', ''),
(723, 50, '_regular_price', '15000'),
(724, 50, '_sale_price', ''),
(725, 50, '_sale_price_dates_from', ''),
(726, 50, '_sale_price_dates_to', ''),
(727, 50, 'total_sales', '1'),
(728, 50, '_tax_status', 'taxable'),
(729, 50, '_tax_class', ''),
(730, 50, '_manage_stock', 'no'),
(731, 50, '_backorders', 'no'),
(732, 50, '_sold_individually', 'no'),
(733, 50, '_weight', ''),
(734, 50, '_length', ''),
(735, 50, '_width', ''),
(736, 50, '_height', ''),
(737, 50, '_upsell_ids', 'a:0:{}'),
(738, 50, '_crosssell_ids', 'a:0:{}'),
(739, 50, '_purchase_note', ''),
(740, 50, '_default_attributes', 'a:0:{}'),
(741, 50, '_virtual', 'no'),
(742, 50, '_downloadable', 'no'),
(743, 50, '_product_image_gallery', ''),
(744, 50, '_download_limit', '-1'),
(745, 50, '_download_expiry', '-1'),
(746, 50, '_stock', NULL),
(747, 50, '_stock_status', 'instock'),
(748, 50, '_product_version', '3.4.3'),
(749, 50, '_price', '15000'),
(750, 52, '_wp_attached_file', '2018/06/indddex.jpg'),
(751, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:237;s:6:\"height\";i:213;s:4:\"file\";s:19:\"2018/06/indddex.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"indddex-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"indddex-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"indddex-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(752, 53, '_order_key', 'wc_order_5b326142eec10'),
(753, 53, '_customer_user', '1'),
(754, 53, '_payment_method', 'cod'),
(755, 53, '_payment_method_title', 'Cash on delivery'),
(756, 53, '_transaction_id', ''),
(757, 53, '_customer_ip_address', '::1'),
(758, 53, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:60.0) gecko/20100101 firefox/60.0'),
(759, 53, '_created_via', 'checkout'),
(760, 53, '_date_completed', ''),
(761, 53, '_completed_date', ''),
(762, 53, '_date_paid', ''),
(763, 53, '_paid_date', ''),
(764, 53, '_cart_hash', '59fa1a6f575a8606f7fef08d28c449e6'),
(765, 53, '_billing_first_name', 'abul'),
(766, 53, '_billing_last_name', 'hayat'),
(767, 53, '_billing_company', ''),
(768, 53, '_billing_address_1', 'badda, dhaka'),
(769, 53, '_billing_address_2', ''),
(770, 53, '_billing_city', 'dhaka'),
(771, 53, '_billing_state', 'BD-13'),
(772, 53, '_billing_postcode', ''),
(773, 53, '_billing_country', 'BD'),
(774, 53, '_billing_email', 'jashimismail@gmail.com'),
(775, 53, '_billing_phone', '01523254252'),
(776, 53, '_shipping_first_name', 'abul'),
(777, 53, '_shipping_last_name', 'hayat'),
(778, 53, '_shipping_company', ''),
(779, 53, '_shipping_address_1', 'badda, dhaka'),
(780, 53, '_shipping_address_2', ''),
(781, 53, '_shipping_city', 'dhaka'),
(782, 53, '_shipping_state', 'BD-13'),
(783, 53, '_shipping_postcode', ''),
(784, 53, '_shipping_country', 'BD'),
(785, 53, '_order_currency', 'BDT'),
(786, 53, '_cart_discount', '0'),
(787, 53, '_cart_discount_tax', '0'),
(788, 53, '_order_shipping', '0.00'),
(789, 53, '_order_shipping_tax', '0'),
(790, 53, '_order_tax', '0'),
(791, 53, '_order_total', '81500.00'),
(792, 53, '_order_version', '3.4.3'),
(793, 53, '_prices_include_tax', 'no'),
(794, 53, '_billing_address_index', 'abul hayat  badda, dhaka  dhaka BD-13  BD jashimismail@gmail.com 01523254252');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(795, 53, '_shipping_address_index', 'abul hayat  badda, dhaka  dhaka BD-13  BD'),
(796, 53, 'mailchimp_woocommerce_is_subscribed', '1'),
(797, 53, '_download_permissions_granted', 'yes'),
(798, 53, '_recorded_sales', 'yes'),
(799, 53, '_recorded_coupon_usage_counts', 'yes'),
(800, 53, '_order_stock_reduced', 'yes'),
(801, 54, '_order_key', 'wc_order_5b3261983f034'),
(802, 54, '_customer_user', '1'),
(803, 54, '_payment_method', 'cod'),
(804, 54, '_payment_method_title', 'Cash on delivery'),
(805, 54, '_transaction_id', ''),
(806, 54, '_customer_ip_address', '::1'),
(807, 54, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:60.0) gecko/20100101 firefox/60.0'),
(808, 54, '_created_via', 'checkout'),
(809, 54, '_date_completed', '1530028618'),
(810, 54, '_completed_date', '2018-06-26 15:56:58'),
(811, 54, '_date_paid', ''),
(812, 54, '_paid_date', ''),
(813, 54, '_cart_hash', 'f8c9a16842e5285b1ce8484f8a36c21a'),
(814, 54, '_billing_first_name', 'Rahmat'),
(815, 54, '_billing_last_name', 'hayat'),
(816, 54, '_billing_company', ''),
(817, 54, '_billing_address_1', 'badda, dhaka'),
(818, 54, '_billing_address_2', ''),
(819, 54, '_billing_city', 'dhaka'),
(820, 54, '_billing_state', 'BD-13'),
(821, 54, '_billing_postcode', ''),
(822, 54, '_billing_country', 'BD'),
(823, 54, '_billing_email', 'jashimismail@gmail.com'),
(824, 54, '_billing_phone', '01523254252'),
(825, 54, '_shipping_first_name', 'Rahmat'),
(826, 54, '_shipping_last_name', 'hayat'),
(827, 54, '_shipping_company', ''),
(828, 54, '_shipping_address_1', 'badda, dhaka'),
(829, 54, '_shipping_address_2', ''),
(830, 54, '_shipping_city', 'dhaka'),
(831, 54, '_shipping_state', 'BD-13'),
(832, 54, '_shipping_postcode', ''),
(833, 54, '_shipping_country', 'BD'),
(834, 54, '_order_currency', 'BDT'),
(835, 54, '_cart_discount', '0'),
(836, 54, '_cart_discount_tax', '0'),
(837, 54, '_order_shipping', '0.00'),
(838, 54, '_order_shipping_tax', '0'),
(839, 54, '_order_tax', '0'),
(840, 54, '_order_total', '25000.00'),
(841, 54, '_order_version', '3.4.3'),
(842, 54, '_prices_include_tax', 'no'),
(843, 54, '_billing_address_index', 'Rahmat hayat  badda, dhaka  dhaka BD-13  BD jashimismail@gmail.com 01523254252'),
(844, 54, '_shipping_address_index', 'Rahmat hayat  badda, dhaka  dhaka BD-13  BD'),
(845, 54, 'mailchimp_woocommerce_is_subscribed', '0'),
(846, 54, '_download_permissions_granted', 'yes'),
(847, 54, '_recorded_sales', 'yes'),
(848, 54, '_recorded_coupon_usage_counts', 'yes'),
(849, 54, '_order_stock_reduced', 'yes'),
(850, 55, '_order_key', 'wc_order_5b3261d0d1da0'),
(851, 55, '_customer_user', '1'),
(852, 55, '_payment_method', 'cod'),
(853, 55, '_payment_method_title', 'Cash on delivery'),
(854, 55, '_transaction_id', ''),
(855, 55, '_customer_ip_address', '::1'),
(856, 55, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:60.0) gecko/20100101 firefox/60.0'),
(857, 55, '_created_via', 'checkout'),
(858, 55, '_date_completed', '1530028561'),
(859, 55, '_completed_date', '2018-06-26 15:56:01'),
(860, 55, '_date_paid', ''),
(861, 55, '_paid_date', ''),
(862, 55, '_cart_hash', '90a49a35c4b705f6d283d689e5bb8a54'),
(863, 55, '_billing_first_name', 'Faruk'),
(864, 55, '_billing_last_name', 'hossen'),
(865, 55, '_billing_company', ''),
(866, 55, '_billing_address_1', 'badda, dhaka'),
(867, 55, '_billing_address_2', ''),
(868, 55, '_billing_city', 'dhaka'),
(869, 55, '_billing_state', 'BD-13'),
(870, 55, '_billing_postcode', ''),
(871, 55, '_billing_country', 'BD'),
(872, 55, '_billing_email', 'jashimismail@gmail.com'),
(873, 55, '_billing_phone', '01523254252'),
(874, 55, '_shipping_first_name', 'Faruk'),
(875, 55, '_shipping_last_name', 'hossen'),
(876, 55, '_shipping_company', ''),
(877, 55, '_shipping_address_1', 'badda, dhaka'),
(878, 55, '_shipping_address_2', ''),
(879, 55, '_shipping_city', 'dhaka'),
(880, 55, '_shipping_state', 'BD-13'),
(881, 55, '_shipping_postcode', ''),
(882, 55, '_shipping_country', 'BD'),
(883, 55, '_order_currency', 'BDT'),
(884, 55, '_cart_discount', '0'),
(885, 55, '_cart_discount_tax', '0'),
(886, 55, '_order_shipping', '0.00'),
(887, 55, '_order_shipping_tax', '0'),
(888, 55, '_order_tax', '0'),
(889, 55, '_order_total', '21000.00'),
(890, 55, '_order_version', '3.4.3'),
(891, 55, '_prices_include_tax', 'no'),
(892, 55, '_billing_address_index', 'Faruk hossen  badda, dhaka  dhaka BD-13  BD jashimismail@gmail.com 01523254252'),
(893, 55, '_shipping_address_index', 'Faruk hossen  badda, dhaka  dhaka BD-13  BD'),
(894, 55, 'mailchimp_woocommerce_is_subscribed', '0'),
(895, 55, '_download_permissions_granted', 'yes'),
(896, 55, '_recorded_sales', 'yes'),
(897, 55, '_recorded_coupon_usage_counts', 'yes'),
(898, 55, '_order_stock_reduced', 'yes'),
(899, 56, '_order_key', 'wc_order_5b3262ba885c1'),
(900, 56, '_customer_user', '1'),
(901, 56, '_payment_method', 'cod'),
(902, 56, '_payment_method_title', 'Cash on delivery'),
(903, 56, '_transaction_id', ''),
(904, 56, '_customer_ip_address', '::1'),
(905, 56, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:60.0) gecko/20100101 firefox/60.0'),
(906, 56, '_created_via', 'checkout'),
(907, 56, '_date_completed', ''),
(908, 56, '_completed_date', ''),
(909, 56, '_date_paid', ''),
(910, 56, '_paid_date', ''),
(911, 56, '_cart_hash', '3a8423d722ca3529c22b0cf3effb90a1'),
(912, 56, '_billing_first_name', 'Afrin'),
(913, 56, '_billing_last_name', 'rukaia'),
(914, 56, '_billing_company', ''),
(915, 56, '_billing_address_1', 'badda, dhaka'),
(916, 56, '_billing_address_2', ''),
(917, 56, '_billing_city', 'dhaka'),
(918, 56, '_billing_state', 'BD-13'),
(919, 56, '_billing_postcode', ''),
(920, 56, '_billing_country', 'BD'),
(921, 56, '_billing_email', 'jashimismail@gmail.com'),
(922, 56, '_billing_phone', '01523254252'),
(923, 56, '_shipping_first_name', 'Afrin'),
(924, 56, '_shipping_last_name', 'rukaia'),
(925, 56, '_shipping_company', ''),
(926, 56, '_shipping_address_1', 'badda, dhaka'),
(927, 56, '_shipping_address_2', ''),
(928, 56, '_shipping_city', 'dhaka'),
(929, 56, '_shipping_state', 'BD-13'),
(930, 56, '_shipping_postcode', ''),
(931, 56, '_shipping_country', 'BD'),
(932, 56, '_order_currency', 'BDT'),
(933, 56, '_cart_discount', '0'),
(934, 56, '_cart_discount_tax', '0'),
(935, 56, '_order_shipping', '0.00'),
(936, 56, '_order_shipping_tax', '0'),
(937, 56, '_order_tax', '0'),
(938, 56, '_order_total', '500.00'),
(939, 56, '_order_version', '3.4.3'),
(940, 56, '_prices_include_tax', 'no'),
(941, 56, '_billing_address_index', 'Afrin rukaia  badda, dhaka  dhaka BD-13  BD jashimismail@gmail.com 01523254252'),
(942, 56, '_shipping_address_index', 'Afrin rukaia  badda, dhaka  dhaka BD-13  BD'),
(943, 56, 'mailchimp_woocommerce_is_subscribed', '0'),
(944, 56, '_download_permissions_granted', 'yes'),
(945, 56, '_recorded_sales', 'yes'),
(946, 56, '_recorded_coupon_usage_counts', 'yes'),
(947, 56, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-25 14:31:43', '2018-06-25 14:31:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-25 14:31:43', '2018-06-25 14:31:43', '', 0, 'http://localhost/woocomapi/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-25 14:31:43', '2018-06-25 14:31:43', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/woocomapi/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-25 14:31:43', '2018-06-25 14:31:43', '', 0, 'http://localhost/woocomapi/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-25 14:31:43', '2018-06-25 14:31:43', '<h2>Who we are</h2><p>Our website address is: http://localhost/woocomapi.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-25 14:31:43', '2018-06-25 14:31:43', '', 0, 'http://localhost/woocomapi/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-06-25 14:32:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-25 14:32:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/?p=4', 0, 'post', '', 0),
(5, 1, '2018-06-25 14:35:46', '2018-06-25 14:35:46', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-06-25 14:35:46', '2018-06-25 14:35:46', '', 0, 'http://localhost/woocomapi/shop/', 0, 'page', '', 0),
(6, 1, '2018-06-25 14:35:46', '2018-06-25 14:35:46', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-06-25 14:35:46', '2018-06-25 14:35:46', '', 0, 'http://localhost/woocomapi/cart/', 0, 'page', '', 0),
(7, 1, '2018-06-25 14:35:46', '2018-06-25 14:35:46', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-06-25 14:35:46', '2018-06-25 14:35:46', '', 0, 'http://localhost/woocomapi/checkout/', 0, 'page', '', 0),
(8, 1, '2018-06-25 14:35:46', '2018-06-25 14:35:46', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-06-25 14:35:46', '2018-06-25 14:35:46', '', 0, 'http://localhost/woocomapi/my-account/', 0, 'page', '', 0),
(9, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/wp-content/uploads/2018/06/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 14:42:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 14:42:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:35', '2018-06-25 14:42:35', '', 0, 'http://localhost/woocomapi/?p=27', 0, 'product', '', 0),
(28, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:37', '2018-06-25 14:42:37', '', 0, 'http://localhost/woocomapi/?p=28', 0, 'product', '', 0),
(29, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:40', '2018-06-25 14:42:40', '', 0, 'http://localhost/woocomapi/?p=29', 0, 'product', '', 0),
(30, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:42', '2018-06-25 14:42:42', '', 0, 'http://localhost/woocomapi/?p=30', 0, 'product', '', 0),
(31, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:44', '2018-06-25 14:42:44', '', 0, 'http://localhost/woocomapi/?p=31', 0, 'product', '', 0),
(32, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:46', '2018-06-25 14:42:46', '', 0, 'http://localhost/woocomapi/?p=32', 0, 'product', '', 0),
(33, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:48', '2018-06-25 14:42:48', '', 0, 'http://localhost/woocomapi/?p=33', 0, 'product', '', 0),
(34, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:50', '2018-06-25 14:42:50', '', 0, 'http://localhost/woocomapi/?p=34', 0, 'product', '', 0),
(35, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:52', '2018-06-25 14:42:52', '', 0, 'http://localhost/woocomapi/?p=35', 0, 'product', '', 0),
(36, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:54', '2018-06-25 14:42:54', '', 0, 'http://localhost/woocomapi/?p=36', 0, 'product', '', 0),
(37, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:56', '2018-06-25 14:42:56', '', 0, 'http://localhost/woocomapi/?p=37', 0, 'product', '', 0),
(38, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-25 14:42:58', '2018-06-25 14:42:58', '', 0, 'http://localhost/woocomapi/?p=38', 0, 'product', '', 0),
(39, 1, '2018-06-25 14:42:23', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            9,\n            10,\n            11,\n            12,\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38,\n            6,\n            7,\n            8,\n            5\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 14:42:23\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 14:42:23\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 14:42:23\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 14:42:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'db3be513-04a1-4058-9ff9-bf1e9914f9d4', '', '', '2018-06-25 14:42:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocomapi/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2018-06-25 15:59:27', '2018-06-25 15:59:27', 'Enjoy our mouth watering burger !', 'Burger', '', 'publish', 'open', 'closed', '', 'burger', '', '', '2018-06-26 14:12:47', '2018-06-26 14:12:47', '', 0, 'http://localhost/woocomapi/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2018-06-25 15:58:31', '2018-06-25 15:58:31', '', 'dfdf', '', 'inherit', 'open', 'closed', '', 'dfdf', '', '', '2018-06-25 15:58:31', '2018-06-25 15:58:31', '', 40, 'http://localhost/woocomapi/wp-content/uploads/2018/06/dfdf.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-06-25 16:29:09', '2018-06-25 16:29:09', '', 'Order &ndash; June 25, 2018 @ 04:29 PM', '', 'wc-processing', 'open', 'closed', 'order_5b311855899d4', 'order-jun-25-2018-0429-pm', '', '', '2018-06-26 15:57:41', '2018-06-26 15:57:41', '', 0, 'http://localhost/woocomapi/?post_type=shop_order&#038;p=43', 0, 'shop_order', '', 3),
(44, 1, '2018-06-26 14:08:31', '2018-06-26 14:08:31', 'samsung television', 'Samsung TV', '', 'publish', 'open', 'closed', '', 'samsung-tv', '', '', '2018-06-26 14:08:34', '2018-06-26 14:08:34', '', 0, 'http://localhost/woocomapi/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2018-06-26 14:07:18', '2018-06-26 14:07:18', '', 'africa-en_UA32J4303BKXXA_001_Front_indigo-blue', '', 'inherit', 'open', 'closed', '', 'africa-en_ua32j4303bkxxa_001_front_indigo-blue', '', '', '2018-06-26 14:07:18', '2018-06-26 14:07:18', '', 44, 'http://localhost/woocomapi/wp-content/uploads/2018/06/africa-en_UA32J4303BKXXA_001_Front_indigo-blue.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-06-26 14:09:56', '2018-06-26 14:09:56', 'Sony LED tv.', 'Sony LED tv', '', 'publish', 'open', 'closed', '', 'sony-led-tv', '', '', '2018-06-26 14:09:59', '2018-06-26 14:09:59', '', 0, 'http://localhost/woocomapi/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2018-06-26 14:09:42', '2018-06-26 14:09:42', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2018-06-26 14:09:42', '2018-06-26 14:09:42', '', 46, 'http://localhost/woocomapi/wp-content/uploads/2018/06/index.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-06-26 14:11:14', '2018-06-26 14:11:14', 'Nova television', 'Nova TV', '', 'publish', 'open', 'closed', '', 'nova-tv', '', '', '2018-06-26 14:11:17', '2018-06-26 14:11:17', '', 0, 'http://localhost/woocomapi/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2018-06-26 14:10:45', '2018-06-26 14:10:45', '', 'indexv', '', 'inherit', 'open', 'closed', '', 'indexv', '', '', '2018-06-26 14:10:45', '2018-06-26 14:10:45', '', 48, 'http://localhost/woocomapi/wp-content/uploads/2018/06/indexv.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-06-26 14:12:07', '2018-06-26 14:12:07', 'PC monitor', 'Asus Monitor', '', 'publish', 'open', 'closed', '', 'asus-monitor', '', '', '2018-06-26 14:12:11', '2018-06-26 14:12:11', '', 0, 'http://localhost/woocomapi/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2018-06-26 14:11:55', '2018-06-26 14:11:55', '', '26_inch_lcd_tv_rental', '', 'inherit', 'open', 'closed', '', '26_inch_lcd_tv_rental', '', '', '2018-06-26 14:11:55', '2018-06-26 14:11:55', '', 50, 'http://localhost/woocomapi/wp-content/uploads/2018/06/26_inch_lcd_tv_rental.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-06-26 14:12:41', '2018-06-26 14:12:41', '', 'indddex', '', 'inherit', 'open', 'closed', '', 'indddex', '', '', '2018-06-26 14:12:41', '2018-06-26 14:12:41', '', 40, 'http://localhost/woocomapi/wp-content/uploads/2018/06/indddex.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-06-26 15:52:34', '2018-06-26 15:52:34', '', 'Order &ndash; June 26, 2018 @ 03:52 PM', '', 'wc-processing', 'open', 'closed', 'order_5b326142eec96', 'order-jun-26-2018-0352-pm', '', '', '2018-06-26 15:52:40', '2018-06-26 15:52:40', '', 0, 'http://localhost/woocomapi/?post_type=shop_order&#038;p=53', 0, 'shop_order', '', 1),
(54, 1, '2018-06-26 15:54:00', '2018-06-26 15:54:00', '', 'Order &ndash; June 26, 2018 @ 03:54 PM', '', 'wc-completed', 'open', 'closed', 'order_5b3261983f0bc', 'order-jun-26-2018-0354-pm', '', '', '2018-06-26 15:56:58', '2018-06-26 15:56:58', '', 0, 'http://localhost/woocomapi/?post_type=shop_order&#038;p=54', 0, 'shop_order', '', 2),
(55, 1, '2018-06-26 15:54:56', '2018-06-26 15:54:56', '', 'Order &ndash; June 26, 2018 @ 03:54 PM', '', 'wc-completed', 'open', 'closed', 'order_5b3261d0d1e21', 'order-jun-26-2018-0354-pm-2', '', '', '2018-06-26 15:56:01', '2018-06-26 15:56:01', '', 0, 'http://localhost/woocomapi/?post_type=shop_order&#038;p=55', 0, 'shop_order', '', 2),
(56, 1, '2018-06-26 15:58:50', '2018-06-26 15:58:50', '', 'Order &ndash; June 26, 2018 @ 03:58 PM', '', 'wc-processing', 'open', 'closed', 'order_5b3262ba8865c', 'order-jun-26-2018-0358-pm', '', '', '2018-06-26 15:58:54', '2018-06-26 15:58:54', '', 0, 'http://localhost/woocomapi/?post_type=shop_order&#038;p=56', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'thumbnail_id', '22'),
(2, 16, 'product_count_product_cat', '5'),
(3, 17, 'thumbnail_id', '24'),
(4, 17, 'product_count_product_cat', '0'),
(5, 18, 'thumbnail_id', '23'),
(6, 18, 'product_count_product_cat', '0'),
(7, 19, 'product_count_product_tag', '1'),
(8, 20, 'product_count_product_tag', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Accessories', 'accessories', 0),
(17, 'Hoodies', 'hoodies', 0),
(18, 'Tshirts', 'tshirts', 0),
(19, 'burger', 'burger', 0),
(20, 'tv', 'tv', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(27, 16, 0),
(28, 2, 0),
(28, 16, 0),
(29, 2, 0),
(29, 16, 0),
(30, 2, 0),
(30, 8, 0),
(30, 16, 0),
(31, 2, 0),
(31, 17, 0),
(32, 2, 0),
(32, 8, 0),
(32, 17, 0),
(33, 2, 0),
(33, 8, 0),
(33, 17, 0),
(34, 2, 0),
(34, 8, 0),
(34, 17, 0),
(35, 2, 0),
(35, 18, 0),
(36, 2, 0),
(36, 18, 0),
(37, 2, 0),
(37, 18, 0),
(38, 18, 0),
(40, 2, 0),
(40, 16, 0),
(40, 19, 0),
(44, 2, 0),
(44, 16, 0),
(44, 20, 0),
(46, 2, 0),
(46, 16, 0),
(46, 20, 0),
(48, 2, 0),
(48, 16, 0),
(48, 20, 0),
(50, 2, 0),
(50, 16, 0),
(50, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', 'A short category description', 0, 5),
(17, 17, 'product_cat', 'A short category description', 0, 0),
(18, 18, 'product_cat', 'A short category description', 0, 0),
(19, 19, 'product_tag', '', 0, 1),
(20, 20, 'product_tag', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Afrin'),
(3, 1, 'last_name', 'rukaia'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"fcfd89a4aa114c040a86269270e2b4764bb847b8765f6b051ea892e7facc98c4\";a:4:{s:10:\"expiration\";i:1530109923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1529937123;}s:64:\"d2502938eabdd7fe841a38ec319d8d4493b553afe4ffe50904cd8e4553114ac8\";a:4:{s:10:\"expiration\";i:1530194806;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1530022006;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'wc_last_active', '1529971200'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1529942367'),
(22, 1, 'last_update', '1530028730'),
(23, 1, 'billing_first_name', 'Afrin'),
(24, 1, 'billing_last_name', 'rukaia'),
(25, 1, 'billing_address_1', 'badda, dhaka'),
(26, 1, 'billing_city', 'dhaka'),
(27, 1, 'billing_state', 'BD-13'),
(28, 1, 'billing_country', 'BD'),
(29, 1, 'billing_email', 'jashimismail@gmail.com'),
(30, 1, 'billing_phone', '01523254252'),
(31, 1, 'shipping_first_name', 'Afrin'),
(32, 1, 'shipping_last_name', 'rukaia'),
(33, 1, 'shipping_address_1', 'badda, dhaka'),
(34, 1, 'shipping_city', 'dhaka'),
(35, 1, 'shipping_state', 'BD-13'),
(36, 1, 'shipping_country', 'BD'),
(38, 1, 'mailchimp_woocommerce_is_subscribed', '0'),
(47, 1, 'paying_customer', '1'),
(48, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:2\";}'),
(50, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BINQsbrGkhRlvDbD6DI5G0Wgv8LdHZ1', 'admin', 'afrintamanna96@gmail.com', '', '2018-06-25 14:31:43', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

INSERT INTO `wp_woocommerce_api_keys` (`key_id`, `user_id`, `description`, `permissions`, `consumer_key`, `consumer_secret`, `nonces`, `truncated_key`, `last_access`) VALUES
(1, 1, 'api of woocommerce', 'read_write', '051f769f124d622d898fd15943398fd66f4ba7def83d774e4124a49a938c2f7f', 'cs_73760ffa32856b0ce06c5e32c92f8b4adafa8f5c', 'a:6:{i:1530034937;s:40:\"fe02e87448dfe86f7c912ff1eda41a5a10f7ac0b\";i:1530034938;s:40:\"55294f6d11ae4efa0142809651005de50f31ce2f\";i:1530034939;s:40:\"eef3f3f1e539105b85cd992dc1a9838597f3a78b\";i:1530034940;s:40:\"241e9fb5229de74d8c4089808e338e4a1737948e\";i:1530034941;s:40:\"781522bbd08a6ee70bc910ca2e40d910761bddc4\";i:1530034942;s:40:\"be6bd0c5b5735f1f09ec070a7e71e6eb2ced7384\";}', '7eceac2', '2018-06-26 17:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(16, 3, '_product_id', '40'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '500'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '500'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '2'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Items', 'Burger &times; 1'),
(31, 5, '_product_id', '40'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '500'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '500'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, '_product_id', '50'),
(41, 6, '_variation_id', '0'),
(42, 6, '_qty', '1'),
(43, 6, '_tax_class', ''),
(44, 6, '_line_subtotal', '15000'),
(45, 6, '_line_subtotal_tax', '0'),
(46, 6, '_line_total', '15000'),
(47, 6, '_line_tax', '0'),
(48, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(49, 7, '_product_id', '48'),
(50, 7, '_variation_id', '0'),
(51, 7, '_qty', '1'),
(52, 7, '_tax_class', ''),
(53, 7, '_line_subtotal', '21000'),
(54, 7, '_line_subtotal_tax', '0'),
(55, 7, '_line_total', '21000'),
(56, 7, '_line_tax', '0'),
(57, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(58, 8, '_product_id', '46'),
(59, 8, '_variation_id', '0'),
(60, 8, '_qty', '1'),
(61, 8, '_tax_class', ''),
(62, 8, '_line_subtotal', '25000'),
(63, 8, '_line_subtotal_tax', '0'),
(64, 8, '_line_total', '25000'),
(65, 8, '_line_tax', '0'),
(66, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(67, 9, '_product_id', '44'),
(68, 9, '_variation_id', '0'),
(69, 9, '_qty', '1'),
(70, 9, '_tax_class', ''),
(71, 9, '_line_subtotal', '20000'),
(72, 9, '_line_subtotal_tax', '0'),
(73, 9, '_line_total', '20000'),
(74, 9, '_line_tax', '0'),
(75, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(76, 10, 'method_id', 'free_shipping'),
(77, 10, 'instance_id', '2'),
(78, 10, 'cost', '0.00'),
(79, 10, 'total_tax', '0'),
(80, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(81, 10, 'Items', 'Burger &times; 1, Asus Monitor &times; 1, Nova TV &times; 1, Sony LED tv &times; 1, Samsung TV &times; 1'),
(82, 11, '_product_id', '46'),
(83, 11, '_variation_id', '0'),
(84, 11, '_qty', '1'),
(85, 11, '_tax_class', ''),
(86, 11, '_line_subtotal', '25000'),
(87, 11, '_line_subtotal_tax', '0'),
(88, 11, '_line_total', '25000'),
(89, 11, '_line_tax', '0'),
(90, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(91, 12, 'method_id', 'free_shipping'),
(92, 12, 'instance_id', '2'),
(93, 12, 'cost', '0.00'),
(94, 12, 'total_tax', '0'),
(95, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(96, 12, 'Items', 'Sony LED tv &times; 1'),
(97, 13, '_product_id', '48'),
(98, 13, '_variation_id', '0'),
(99, 13, '_qty', '1'),
(100, 13, '_tax_class', ''),
(101, 13, '_line_subtotal', '21000'),
(102, 13, '_line_subtotal_tax', '0'),
(103, 13, '_line_total', '21000'),
(104, 13, '_line_tax', '0'),
(105, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(106, 14, 'method_id', 'free_shipping'),
(107, 14, 'instance_id', '2'),
(108, 14, 'cost', '0.00'),
(109, 14, 'total_tax', '0'),
(110, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(111, 14, 'Items', 'Nova TV &times; 1'),
(112, 15, '_product_id', '40'),
(113, 15, '_variation_id', '0'),
(114, 15, '_qty', '1'),
(115, 15, '_tax_class', ''),
(116, 15, '_line_subtotal', '500'),
(117, 15, '_line_subtotal_tax', '0'),
(118, 15, '_line_total', '500'),
(119, 15, '_line_tax', '0'),
(120, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(121, 16, 'method_id', 'free_shipping'),
(122, 16, 'instance_id', '2'),
(123, 16, 'cost', '0.00'),
(124, 16, 'total_tax', '0'),
(125, 16, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(126, 16, 'Items', 'Burger &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(3, 'Burger', 'line_item', 43),
(4, 'Free shipping', 'shipping', 43),
(5, 'Burger', 'line_item', 53),
(6, 'Asus Monitor', 'line_item', 53),
(7, 'Nova TV', 'line_item', 53),
(8, 'Sony LED tv', 'line_item', 53),
(9, 'Samsung TV', 'line_item', 53),
(10, 'Free shipping', 'shipping', 53),
(11, 'Sony LED tv', 'line_item', 54),
(12, 'Free shipping', 'shipping', 54),
(13, 'Nova TV', 'line_item', 55),
(14, 'Free shipping', 'shipping', 55),
(15, 'Burger', 'line_item', 56),
(16, 'Free shipping', 'shipping', 56);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(55, '1', 'a:14:{s:22:\"mailchimp_landing_site\";s:110:\"http://localhost/woocomapi/woocomapi/wp-admin/admin-ajax.php?action=wp_1_wc_regenerate_images&nonce=de2b91286a\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:842:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-06-26T15:58:50+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"dhaka\";s:9:\"address_1\";s:12:\"badda, dhaka\";s:7:\"address\";s:12:\"badda, dhaka\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:5:\"BD-13\";s:7:\"country\";s:2:\"BD\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"dhaka\";s:18:\"shipping_address_1\";s:12:\"badda, dhaka\";s:16:\"shipping_address\";s:12:\"badda, dhaka\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:5:\"BD-13\";s:16:\"shipping_country\";s:2:\"BD\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Afrin\";s:9:\"last_name\";s:6:\"rukaia\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"01523254252\";s:5:\"email\";s:22:\"jashimismail@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Afrin\";s:18:\"shipping_last_name\";s:6:\"rukaia\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:390:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b18cbedb1134a9c8a07bcf7509d7580c\";s:5:\"rates\";a:1:{s:15:\"free_shipping:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:2\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:2;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:16:\"Burger &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:2\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:2\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;}', 1530115218),
(23, '5d3c8c336e0305c9cbcf57528a2383d3', 'a:14:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:390:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b3d49e53c33307c95ff23216a6bcb54d\";s:5:\"rates\";a:1:{s:15:\"free_shipping:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:2\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:2;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:16:\"Burger &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:2\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:2\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:772:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:4:\"1212\";s:4:\"city\";s:5:\"dhaka\";s:9:\"address_1\";s:13:\"uttara, dhaka\";s:7:\"address\";s:13:\"uttara, dhaka\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:5:\"BD-13\";s:7:\"country\";s:2:\"BD\";s:17:\"shipping_postcode\";s:4:\"1212\";s:13:\"shipping_city\";s:5:\"dhaka\";s:18:\"shipping_address_1\";s:13:\"uttara, dhaka\";s:16:\"shipping_address\";s:13:\"uttara, dhaka\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:5:\"BD-13\";s:16:\"shipping_country\";s:2:\"BD\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:10:\"wc_notices\";N;s:22:\"order_awaiting_payment\";N;}', 1530115349);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United Kingdom (UK)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'GB', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
