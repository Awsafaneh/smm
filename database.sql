-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2023 at 01:16 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialka_ex`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_providers`
--

INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `type`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES
(2, '7277fe7a20c21f39b0c877ef0006d094', 1, 'SocialBazar', 'https://socialbazar.in/api/v2', '2f08f684f0ca5b38c941ff9c1c0d0f7a', 'standard', '0.00000', NULL, 'Main API', 1, '2023-05-21 12:24:40', '2023-05-21 12:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `image` text,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ids`, `uid`, `name`, `desc`, `image`, `sort`, `status`, `created`, `changed`) VALUES
(1, 'a2627cdc8490da96e3951d42dbc9f336', 1, '♛ 𝐒𝐨𝐜𝐢𝐚𝐥𝐁𝐚𝐳𝐚𝐫 𝐏𝐫𝐨𝐦𝐨 ⭐ 🔥', NULL, NULL, 0, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `ids` text NOT NULL,
  `uid` int(11) NOT NULL,
  `child_key` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `domain` varchar(191) DEFAULT NULL,
  `password` text,
  `charge` decimal(15,4) DEFAULT NULL,
  `status` enum('active','processing','refunded','disabled','terminated') NOT NULL DEFAULT 'processing',
  `renewal_date` date NOT NULL,
  `changed` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `question` text,
  `answer` longtext,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` int(1) DEFAULT '1',
  `position` int(1) DEFAULT '0',
  `name` text,
  `slug` text,
  `image` text,
  `description` longtext,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4,
  `file_type` text CHARACTER SET utf8mb4,
  `file_ext` text CHARACTER SET utf8mb4,
  `file_size` text CHARACTER SET utf8mb4,
  `is_image` text CHARACTER SET utf8mb4,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_file_manager`
--

INSERT INTO `general_file_manager` (`id`, `ids`, `uid`, `file_name`, `file_type`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `created`) VALUES
(316, '0c037861e5dc297f2adc2dd76686377a', 38, '0f825824fa982dcac4bd733de1f94b11.png', 'image/png', 'png', '2.19', '1', 225, 225, '2020-04-30 16:49:18'),
(317, 'b5b7274f1b63c717c7351538074e6150', 38, '2ad9194ca57dfd8f76b2a82ad6a6266b.png', 'image/png', 'png', '10.69', '1', 600, 200, '2020-04-30 16:49:25'),
(318, '5dd8049be58d3e462d3d4d016aa465c3', 38, '8a267ee14b24cd82ce40f92e99c3f674.png', 'image/png', 'png', '10.69', '1', 600, 200, '2020-04-30 16:49:42'),
(319, 'd42879a3e8dbc69cd89986b5dd9bf3ce', 38, '3530c465b0d02a980703f66c1c16368d.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-05 09:59:38'),
(320, 'bbe5af404ea726f2d75c32eebae2507c', 38, 'f67aa99257ae32085c1472d778c8cceb.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-05 10:01:23'),
(321, 'b96b5fe88d6e491d6165247d7c94c4db', 38, '667965336f2064150c11dbf7b3b68bde.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-06 13:01:53'),
(322, 'd11083fa19c258d05a188d55b037081e', 38, '50f24e4c75b2ec89f6fe0198a770078c.JPG', 'image/jpeg', 'jpg', '22.53', '1', 900, 200, '2020-05-06 13:46:51'),
(323, '82ff38485399962bbb050e60ea57f766', 38, '77db8ba89676413b31ee8721f10efc98.png', 'image/png', 'png', '40.32', '1', 900, 200, '2020-05-06 13:48:12'),
(324, '2242e5bc57e0430419a6bc4ea8e6e1c3', 38, '3bc4fadfa26d461037ee8ec32f7abbe3.png', 'image/png', 'png', '2.19', '1', 225, 225, '2020-05-08 20:44:56'),
(325, '18e304b2410772be4f9dc289235a8f1f', 38, '1012ca5bd492179b0b71dc14f2754566.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:45:17'),
(326, 'a0e1bc43d892a438cb01b6d88b4a3924', 38, '3f6e66864658b4892dc05c01a91021c8.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:45:54'),
(327, '2e5dcf8d71863b0fd5fbdd2ece1e49ca', 38, '7cbe51d356bcce8714b8f23344d1aad6.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:46:06'),
(328, '7e1e5a55b1ed86d0f7ee2eba4903d96e', 38, '1459842c71b1b06343be728f721dc560.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:46:25'),
(329, '5006857d49f7f1fd12c0699bc1b7d412', 38, 'ec2463b921d5ba20243f97480e465a19.JPG', 'image/jpeg', 'jpg', '22.53', '1', 900, 200, '2020-05-08 21:47:30'),
(330, '4e1424b6a51911167145089e4dfd408b', 38, 'e0300eeedfc942997353750fe6ddf931.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 21:54:36'),
(331, 'a353c95d5c067f7076572fa2166e7995', 38, 'bece2822c27c99128009fac5ede0f649.png', 'image/png', 'png', '40.32', '1', 900, 200, '2020-05-09 07:38:51'),
(332, '27a6a22840e5a6380f6f42c57a256d15', 8, '03d3721143fb43348a4f30bf238a8b65.png', 'image/png', 'png', '0.22', '1', 32, 32, '2020-11-23 13:06:37'),
(333, '6977c97e005bbbefa96326f96a1d20a9', 8, '4ac6bad2e4ac601aabf54287c04d42fc.png', 'image/png', 'png', '6.76', '1', 1200, 1200, '2020-11-23 13:06:45'),
(334, '92a85abb938d141d81810428d235c070', 8, '719ef55fad8bdfc443c78eea66548d1c.png', 'image/png', 'png', '6.76', '1', 1200, 1200, '2020-11-23 13:06:59'),
(335, 'df86a7618038e216cd5cad092b40c8ea', 520, 'ace687f2a93734ac806a0c802016aa87.jpg', 'image/jpeg', 'jpg', '25.02', '1', 360, 360, '2021-04-12 18:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '2a4b53c9c07dbce757eea6a1a1eff1d7', 'en', 'GB', 1, 1, '2020-04-30 15:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_news`
--

INSERT INTO `general_news` (`id`, `ids`, `uid`, `type`, `description`, `status`, `created`, `expiry`, `changed`) VALUES
(2, '6a107a4aa1a6e91a709b3d7e1cecafd2', 1, 'announcement', '&lt;p&gt;Dear Customer,&lt;/p&gt;\r\n&lt;p&gt;Our chat support available at Ticket And Whatsapp so please Msg at on whatsappor raise ticket if you have any issues.&lt;/p&gt;\r\n&lt;p&gt;Thank You!&lt;/p&gt;\r\n&lt;p&gt;Cheapest SMM Script&amp;nbsp;&lt;/p&gt;', 1, '2020-12-23 00:00:00', '2022-12-23 00:00:00', '2021-09-03 13:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '1'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'SMM Panel'),
(70, 'website_keywords', 'SMM Panel'),
(71, 'website_title', 'SMM Panel'),
(72, 'website_favicon', 'https://ownsmmpanel.in/ownsmmpanel/images/favicon.png'),
(73, 'embed_head_javascript', ''),
(205, 'paytm_qr_chagre_fee', '0'),
(206, 'paytm_qr_payment_transaction_min', ''),
(74, 'website_logo', 'https://ownsmmpanel.in/ownsmmpanel/images/SMMPanel.png'),
(75, 'website_logo_white', 'https://ownsmmpanel.in/ownsmmpanel/images/SMMPanel.png'),
(76, 'enable_service_list_no_login', '1'),
(77, 'disable_signup_page', '0'),
(78, 'notification_popup_content', ''),
(79, 'is_cookie_policy_page', '1'),
(80, 'enable_api_tab', '1'),
(81, 'contact_tel', '+91 000000000'),
(82, 'contact_email', 'contact@webtechz.co'),
(83, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(84, 'social_facebook_link', '#'),
(85, 'social_twitter_link', '#'),
(86, 'social_instagram_link', '#'),
(87, 'social_pinterest_link', '#'),
(88, 'social_tumblr_link', '#'),
(89, 'social_youtube_link', 'https://www.youtube.com/@webtechz'),
(90, 'copy_right_content', 'Copyright © 2023 - SMM Panel'),
(91, 'embed_javascript', ''),
(92, 'enable_notification_popup', '0'),
(93, 'enable_goolge_recapcha', '0'),
(94, 'currency_decimal_separator', 'dot'),
(95, 'currency_thousand_separator', 'comma'),
(96, 'currency_symbol', '$'),
(97, 'currency_decimal', '3'),
(98, 'default_header_skin', 'dimigo'),
(99, 'enable_news_announcement', '1'),
(100, 'is_maintenance_mode', '0'),
(101, 'website_name', 'SMM Panel'),
(102, 'cookies_policy_page', ''),
(103, 'terms_content', ''),
(104, 'policy_content', '<p></p>\r\n<p></p>'),
(105, 'default_home_page', 'monoka'),
(106, 'default_limit_per_page', '100'),
(107, 'default_timezone', 'Asia/Kolkata'),
(108, 'is_clear_ticket', '0'),
(109, 'default_clear_ticket_days', '30'),
(110, 'default_min_order', '300'),
(111, 'default_max_order', '5000'),
(112, 'default_price_per_1k', '0.80'),
(113, 'enable_drip_feed', '0'),
(114, 'default_drip_feed_runs', '10'),
(115, 'default_drip_feed_interval', '30'),
(116, 'enable_explication_service_symbol', '1'),
(117, 'enable_signup_skype_field', '1'),
(118, 'google_capcha_site_key', ''),
(119, 'google_capcha_secret_key', ''),
(120, 'currency_code', 'USD'),
(121, 'default_price_percentage_increase', '2'),
(122, 'auto_rounding_x_decimal_places', '2'),
(123, 'is_auto_currency_convert', '1'),
(124, 'new_currecry_rate', '1'),
(182, 'payumoney_merchant_key', ''),
(183, 'payumoney_merchant_salt', ''),
(177, 'is_active_payumoney', '0'),
(178, 'payumoney_payment_environment', 'LIVE'),
(179, 'payumoney_chagre_fee', '2'),
(180, 'payumoney_payment_transaction_min', '30'),
(181, 'payumoney_currency_rate_to_usd', '1'),
(125, 'is_verification_new_account', '0'),
(126, 'is_welcome_email', '0'),
(127, 'is_new_user_email', '0'),
(128, 'is_payment_notice_email', '0'),
(129, 'is_ticket_notice_email', '0'),
(130, 'is_ticket_notice_email_admin', '0'),
(131, 'is_order_notice_email', '0'),
(132, 'email_from', 'info@starsmmpanels.com'),
(133, 'email_name', 'STAR SMM PANELS.com'),
(134, 'email_protocol_type', 'php_mail'),
(135, 'smtp_server', 'mail.indiansmmservices.com'),
(136, 'smtp_port', '465'),
(137, 'smtp_encryption', 'ssl'),
(138, 'smtp_username', 'account@indiansmmservices.com'),
(139, 'smtp_password', 'x%@p6~PJ22Qd'),
(140, 'verification_email_subject', '{{website_name}} - Please validate your account'),
(141, 'verification_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p>\r\n<p>Hello <strong>{{user_firstname}}</strong>!</p>\r\n<p> Thank you for joining! We\'re glad to have you as community member, and we\'re stocked for you to start exploring our service.  If you don\'t verify your address, you won\'t be able to create a User Account.</p>\r\n<p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p>\r\n<p>Thanks and Best Regards!</p>'),
(142, 'email_welcome_email_subject', '{{website_name}} - Getting Started with Our Service!'),
(143, 'email_welcome_email_content', '<p xss=\"removed\"><strong>Welcome to {{website_name}}! </strong></p>\r\n<p>Hello <strong>{{user_firstname}}</strong>!</p>\r\n<p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p>\r\n<ul>\r\n<li>Firstname: {{user_firstname}}</li>\r\n<li>Lastname: {{user_lastname}}</li>\r\n<li>Email: {{user_email}}</li>\r\n<li>Timezone: {{user_timezone}}</li>\r\n</ul>\r\n<p></p>\r\n<p>Congratulations once more </p>\r\n<p>We would like to invite you to become reseller with us now you have the best earning opportunity with us don\'t miss this chance. </p>\r\n<p></p>\r\n<p>Requirement </p>\r\n<p>. Domain </p>\r\n<p>. Monthly fees 500rs only </p>\r\n<p></p>\r\n<p>Benefits for reseller</p>\r\n<p>. Get 20% off on all services</p>\r\n<p>. Get child panel</p>\r\n<p>. Lifetime support</p>\r\n<p>. Customer gain tips</p>\r\n<p>. Automate website</p>\r\n<p>. One click services load</p>\r\n<p>. Free api support</p>\r\n<p></p>\r\n<p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p>\r\n<p>Best Regards,</p>'),
(144, 'email_new_registration_subject', '{{website_name}} - New Registration'),
(145, 'email_new_registration_content', '<p>Hi Admin!</p>\r\n<p>Someone signed up in <strong>{{website_name}}</strong> with follow data</p>\r\n<ul>\r\n<li>Firstname {{user_firstname}}</li>\r\n<li>Lastname: {{user_lastname}}</li>\r\n<li>Email: {{user_email}}</li>\r\n<li>Timezone: {{user_timezone}}</li>\r\n</ul>'),
(146, 'email_password_recovery_subject', '{{website_name}} - Password Recovery'),
(147, 'email_password_recovery_content', '<p>Hi<strong> {{user_firstname}}! </strong></p>\r\n<p>Somebody (hopefully you) requested a new password for your account. </p>\r\n<p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p>\r\n<p>If you did not request a password reset, no further action is required. </p>\r\n<p>Thanks and Best Regards!</p>'),
(148, 'email_payment_notice_subject', '{{website_name}} -  Thank You! Deposit Payment Received'),
(149, 'email_payment_notice_content', '<p>Hi<strong> {{user_firstname}}! </strong></p>\r\n<p>We\'ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p>\r\n<p>It has been a pleasure doing business with you. We wish you the best of luck.</p>\r\n<p>Thanks and Best Regards!</p>'),
(150, 'payment_transaction_min', '1'),
(151, 'payment_environment', 'live'),
(152, 'is_active_paypal', '0'),
(153, 'paypal_chagre_fee', '4'),
(154, 'paypal_client_id', ''),
(155, 'paypal_client_secret', ''),
(156, 'is_active_stripe', '0'),
(157, 'stripe_chagre_fee', '4'),
(158, 'stripe_publishable_key', ''),
(159, 'stripe_secret_key', ''),
(160, 'is_active_2checkout', '0'),
(161, 'twocheckout_chagre_fee', '4'),
(162, '2checkout_publishable_key', ''),
(163, '2checkout_private_key', ''),
(164, '2checkout_seller_id', ''),
(165, 'is_active_manual', '1'),
(166, 'manual_payment_content', ''),
(167, 'is_active_paytm', '0'),
(168, 'paytm_payment_environment', 'PROD'),
(169, 'paytm_chagre_fee', '4'),
(170, 'paytm_currency_rate_to_usd', '1'),
(171, 'paytm_merchant_id', NULL),
(172, 'paytm_merchant_key', NULL),
(173, 'paytm_payment_transaction_min', ''),
(174, 'enable_attentions_orderpage', ''),
(175, 'paypal_payment_transaction_min', ''),
(176, 'get_features_option', '0'),
(184, 'is_active_razor_pay', '1'),
(185, 'razor_pay_chagre_fee', '2'),
(186, 'razor_pay_publishable_key', NULL),
(187, 'razor_pay_secret_key', NULL),
(188, 'razor_pay_payment_transaction_min', ''),
(189, 'default_original_price_per_1k', '0.40'),
(190, 'payment_expiry_time', ''),
(191, 'expire_balance_start_date', ''),
(192, 'home_contact', ''),
(193, 'custom_home', 'Thanks For Purchasing From  <a href=\"codeclub.in\">Code Club</a>'),
(194, 'custom_css', ''),
(195, 'is_active_coinbase', ''),
(196, 'manual_payment_info', ''),
(197, 'coinbase_chagre_fee', '4'),
(198, 'coinbase_payment_transaction_min', '10'),
(199, 'coinbase_api_key', ''),
(200, 'defaut_auto_sync_service_setting', '{\"price_percentage_increase\":50,\"sync_request\":0,\"new_currency_rate\":\"1\",\"is_enable_sync_price\":0,\"is_convert_to_new_currency\":0}'),
(201, 'paytm_qr_image', 'https://i.ibb.co/k6nfQTW/Whats-App-Image-2020-11-23-at-7-08-07-PM.jpg'),
(202, 'is_active_paytmqr', '1'),
(203, 'paytm_qr_currency_rate_to_usd', '1'),
(204, 'paytm_qr_merchant_id', 'sfqxVR54277884771300'),
(207, 'paytmqr_payment_environment', 'PROD'),
(208, 'enable_affiliate', '1'),
(209, 'affiliate_notice', 'TEXT'),
(210, 'affiliate_bonus', '1'),
(211, 'is_childpanel_status', '1'),
(212, 'childpanel_price', '5'),
(213, 'ns1', 'ns1.'),
(214, 'ns2', 'ns2.'),
(215, 'childpanel_desc', 'hlo \r\nhere you can type any information '),
(216, 'enable_custom_home', ''),
(217, 'refill_expiry_days', '30');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` text,
  `purchase_code` text,
  `version` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', '91dbc122-7ddb-e5b3-ae92-5c6b9a3f1430', '3.2');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('451230b10e4a27783ae19b6fd3f98ebea4acc4e3', '103.215.225.248', 1684651910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635313931303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d7569647c733a313a2231223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a2261646d696e40776562746563687a2e636f223b733a31303a2266697273745f6e616d65223b733a333a22534d4d223b733a393a226c6173745f6e616d65223b733a353a2250414e454c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('2e0b349b68e8382ae2455cbb1735289020b3160f', '103.215.225.248', 1684651851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635313439313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ae5f7b225224250c2836b92b741fdec380610a04', '103.215.225.248', 1684653582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635333538323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d7569647c733a313a2231223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a2261646d696e40776562746563687a2e636f223b733a31303a2266697273745f6e616d65223b733a333a22534d4d223b733a393a226c6173745f6e616d65223b733a353a2250414e454c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('9744d25cc925bc9685a0174a6e7dd17fb97c9363', '103.215.225.248', 1684653582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635333538323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d7569647c733a313a2231223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a2261646d696e40776562746563687a2e636f223b733a31303a2266697273745f6e616d65223b733a333a22534d4d223b733a393a226c6173745f6e616d65223b733a353a2250414e454c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('01262e15ee83b2fd3eccb4143873ca135f66aa31', '103.215.225.248', 1684654001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635333630313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('26c095cc223067dd8a870423d4745f37a6766a09', '173.255.251.4', 1684654946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635343934363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('d6d37bdf1a1e514af34d37604dfa5899a93646ca', '173.255.251.4', 1684654947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343635343934373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `ip` text,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4,
  `role` enum('admin','user','supporter') CHARACTER SET utf8mb4 DEFAULT 'user',
  `login_type` text CHARACTER SET utf8mb4,
  `first_name` text CHARACTER SET utf8mb4,
  `last_name` text CHARACTER SET utf8mb4,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/Chicago',
  `more_information` text CHARACTER SET utf8mb4,
  `settings` longtext CHARACTER SET utf8mb4,
  `desc` longtext CHARACTER SET utf8mb4,
  `balance` decimal(15,4) DEFAULT '0.0000',
  `affiliate_bal_available` decimal(15,4) DEFAULT '0.0000',
  `affiliate_bal_transferred` decimal(15,4) DEFAULT '0.0000',
  `custom_rate` int(11) NOT NULL DEFAULT '0',
  `api_key` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `affiliate_id` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `referral_id` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `spent` varchar(225) CHARACTER SET utf8mb4 DEFAULT NULL,
  `activation_key` text CHARACTER SET utf8mb4,
  `reset_key` text CHARACTER SET utf8mb4,
  `history_ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_estonian_ci,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `affiliate_bal_available`, `affiliate_bal_transferred`, `custom_rate`, `api_key`, `affiliate_id`, `referral_id`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(1, 'd43f90d73a8947677521448faf06c8e4', 'admin', NULL, 'SMM', 'PANEL', 'admin@webtechz.co', '$2a$08$5LRdpNEAH49k6HYpIVfU4O/uqJ.3Rxh/QA2o30VZVhqGuZpkCoRp.', 'Asia/Kolkata', NULL, '{\"limit_payments\":{\"paypal\":\"1\",\"stripe\":\"1\",\"paytm\":\"1\",\"paytmqr\":\"1\",\"razorpay\":\"1\"}}', '', '0.0000', '0.0000', '0.0000', 0, 'couEE6nLeuOfktIMr5DJsp5aV5WZwLTg', '967569', '', '2470', 'wlupuGSn2G16UCuxZqFcnfjxvgSsYaJz', '18c940dafb9830bc1e748dbbea526221', '103.215.225.248', 1, '2023-05-21 12:12:37', '2021-09-03 13:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_user_block_ip`
--

CREATE TABLE `general_user_block_ip` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_user_logs`
--

CREATE TABLE `general_user_logs` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `country` text,
  `type` int(1) DEFAULT '1' COMMENT '1 - login, 0 - logout',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_user_logs`
--

INSERT INTO `general_user_logs` (`id`, `ids`, `uid`, `ip`, `country`, `type`, `created`) VALUES
(1, 'fa99927fa7b84f536847b43536b480af', 1, '103.215.225.248', 'India', 1, '2023-05-21 12:12:08'),
(2, 'c2fa37d4bc705d110de1b417ee19c4c8', 1, '103.215.225.248', 'India', 1, '2023-05-21 12:50:40'),
(3, '2698ca7f0e4b05e5aad5e36c1e3fa207', 1, '103.215.225.248', 'India', 0, '2023-05-21 12:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `general_user_mail_logs`
--

CREATE TABLE `general_user_mail_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `received_uid` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT '0',
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci,
  `username` text COLLATE utf8mb4_unicode_ci,
  `hashtags` text COLLATE utf8mb4_unicode_ci,
  `hashtag` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT '0',
  `runs` int(11) DEFAULT '0',
  `interval` int(2) DEFAULT '0',
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `new_users` int(1) NOT NULL DEFAULT '0' COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 1000, 1, 1, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"1000\",\"new_users\":\"1\",\"status\":\"1\",\"take_fee_from_user\":\"1\",\"option\":{\"environment\":\"live\",\"client_id\":\"ARuVpd_oPz4AAzeXZ9JZcoXLv4UNrwpkuQrQl3wsIyaMqJKPhRw0xkR9MA881xVenJdl5TpvE45hMPZs\",\"secret_key\":\"EOZxzZO4J-tSQttLbCCOwibC6ksRHqKkLhGPZ7UV4t7Ua18WpVQ5S1NqX4AcXwCkJHMX6sd3f7jsfe33\"}}'),
(14, 'stripe', 'Stripe Checkout', 10, 10000, 1, 1, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"10\",\"max\":\"100000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"3\",\"environment\":\"live\",\"public_key\":\"pk_live_WTxA1Zw8dFXqRRE36yzy57gg00BXKsBN2i\",\"secret_key\":\"sk_live_lkobgCZxAtJeOT8MZy7GiYhn00jlc4L0F2\"}}'),
(129, 'paytm', 'Paytm CheckOut', 100, 10000, 1, 1, '{\"type\":\"paytm\",\"name\":\"Paytm CheckOut\",\"min\":\"100\",\"max\":\"10000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"3\",\"environment\":\"PROD\",\"paytm_mid\":\"WovRgV31347227870736\",\"merchant_key\":\"\",\"rate_to_usd\":\"1\"}}'),
(130, 'paytmqr', 'PaytmQR', 1, 100000, 1, 1, '{\"type\":\"paytmqr\",\"name\":\"PaytmQR\",\"min\":\"1\",\"max\":\"100000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"0\",\"environment\":\"PROD\",\"paytmqr_mid\":\"sfqxVR54277884771300\",\"rate_to_usd\":\"76\"}}'),
(131, 'razorpay', 'Razorpay CheckOut', 10, 10000, 1, 1, '{\"type\":\"razorpay\",\"name\":\"Razorpay CheckOut\",\"min\":\"10\",\"max\":\"10000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"0\",\"environment\":\"TEST\",\"public_key\":\"rzp_test_NMocLJe0cP8lCu\",\"secret_key\":\"zj4OeJd9yj7Bp2scGbYL75ua\",\"rate_to_usd\":\"1\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `refills`
--

CREATE TABLE `refills` (
  `refill_id` int(11) NOT NULL,
  `refill_order_id` int(11) NOT NULL,
  `refill_api_provider_id` int(11) NOT NULL,
  `refill_api_order_id` int(21) NOT NULL,
  `refill_client_id` int(11) NOT NULL,
  `refill_service_id` int(11) NOT NULL,
  `refill_note` text COLLATE utf8_unicode_ci,
  `refill_status` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `refill_updated` datetime NOT NULL,
  `refill_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `refill` int(1) NOT NULL DEFAULT '0',
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `refill`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1, 'e01933b28146a8b04cdd4ccfac3aad6c', 1, 1, 'YT Very Fast Views [ Non Drop ] [ Speed 200K/day ] [ Start Time : 0-5Min ] [ Lifetime Guaranteed ]🔥🔥🔥⚡⚡⚡ ⛔', NULL, '2.1500', '1.9500', 10000, 10000000, 0, 'api', 'default', '474', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(2, '8022514eb78e3678ec34f9b4f818e326', 1, 1, 'YT Views | HQ | Cheap | Speed: 20-30K/Day | Start Time : 0-15Min | Lifetime Guaranteed | MAX 5M⚡⚡⚡🔥🔥🔥', NULL, '1.7700', '1.6130', 500, 5000000, 0, 'api', 'default', '471', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(3, 'c7ef8405e239dea7327e4c155e5aa3b2', 1, 1, 'YT Views [ Lifetime Guaranteed ] [ Speed 5k-10K/day ] [ Start Time : 0-5Min ]🔥🔥🔥⚡⚡⚡ ⛔', NULL, '1.7500', '1.5880', 100, 10000000, 0, 'api', 'default', '472', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(4, '8d49e2521ec6a844c7eb7f8137bda3e9', 1, 1, 'YT Views - [ NON DROP-Min 100 ] [ Speed 15k-20K/day ] [ Start Time : 0-5Min ] [ Lifetime Guaranteed ]🔥🔥🔥⚡⚡⚡ ⛔', NULL, '1.8800', '1.7130', 100, 10000000, 0, 'api', 'default', '473', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(5, '21b3d49dbbc35107f0314415484cf3ed', 1, 1, 'YT Views | NEW | Real | Start 0-12 hours | Speed: +200/Hour | Refill Button 30 Days | AR30 | MAX 100M', NULL, '1.5500', '1.4130', 100, 100000000, 0, 'api', 'default', '469', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(6, '93a67a926373e4d8f9ee2ea8b1c3b76c', 1, 1, 'YT Short Views | Suggested | Speed : Up To 10K/Day | No Drop | R30 | MAX 500K', NULL, '1.2900', '1.1750', 100, 10000000, 0, 'api', 'default', '447', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(7, 'dcc090beeb6ad641118a8d1983dc8429', 1, 1, 'YT Views + Likes  | 100% Suggested | Customer\'s Choice | Speed: 20K/Day | Lifetime Guarantee | MAX 500K ⚡⚡⚡🔥🔥', NULL, '1.0300', '0.9380', 100, 1000000, 0, 'api', 'default', '467', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(8, '098cebd1e6449e08c237851df1478848', 1, 1, 'YT Views | Source:Suggested | Speed: 1-2K/Day | Lifetime Guarantee | MAX 500K ⚡⚡⚡🔥🔥', NULL, '0.9500', '0.8630', 100, 500000, 0, 'api', 'default', '465', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(9, '03ec96539c8caa7849a68c35bf27cd18', 1, 1, 'IG Views + Reach | All Types Of Videos | Fastest | No Refill | MAX 100K  🔥🔥🔥', NULL, '0.1700', '0.1500', 100, 100000, 0, 'api', 'default', '463', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(10, 'b5909b482781c27e388df747f111b797', 1, 1, 'IG Likes | Real | Reach + Impressions + Views | Speed: Up To 25K/Day | No Drop | Lifetime guarantee | MAX 100K⚡️⚡️⚡🔥🔥🔥⛔', NULL, '0.1700', '0.1560', 10, 100000, 0, 'api', 'default', '459', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(11, 'e8794bab365c98613cdc7628a87fcf05', 1, 1, 'IG Followers | Real-Mix | Speed: Up To 10K/Hour | Less Drop | R60 | MAX 500K  ♻️ ⛔ ⚡️⚡️🔥🔥', NULL, '0.3000', '0.2700', 10, 500000, 0, 'api', 'default', '458', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(12, '67140b4bd84e578d562a252ec187840b', 1, 1, 'IG Followers | MIX | Speed: Up To 50K/Day | R15 | MAX 300K ♻️🔥🔥⚡⚡ ⛔', NULL, '0.1500', '0.1380', 10, 300000, 0, 'api', 'default', '457', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(13, 'eaaccb332025526676271a783b3bbfcf', 1, 1, 'IG Followers | Real-VIP | Speed: Up To 100K/Day | R365 | MAX 500K  ♻️🔥🔥⚡⚡ ⛔', NULL, '0.3600', '0.3300', 50, 500000, 0, 'api', 'default', '456', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(14, 'a10313645164ced7e7b01b9c9e1fff1c', 1, 1, 'YT Subscribers | New | Cheapest | Fast | No Refill | MAX 50K', NULL, '2.0600', '1.8750', 10, 40000, 0, 'api', 'default', '451', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(15, 'f978c647cc54285aa1557cf1e7547c3c', 1, 1, 'YT Views | Real | Speed: Up To 100-150K/Day | No Drop | Refill Button: 15Days | Lifetime Guarantee | MAX 1M ♻️', NULL, '1.4200', '1.2880', 100, 1000000, 0, 'api', 'default', '446', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(16, '63b3e53af1707f3afae141af00bb8135', 1, 1, 'IG Followers | MIX | Stabe | Speed: Up To 50K/Day | Refill: 30 Days Refill Button | MAX 300K 🔥🔥⚡⚡⛔♻️', NULL, '0.2800', '0.2540', 10, 300000, 0, 'api', 'default', '444', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(17, 'a2dc236192aff995dc4694571f09dafb', 1, 1, 'IG Views | Start Time: Instant | Speed: SuperFast | No Refill | MAX 50M ⚡⚡🔥', NULL, '0.0400', '0.0380', 100, 50000000, 0, 'api', 'default', '441', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(18, '799f6a8c2bfaa03eacc8c82fb63b9ea9', 1, 1, 'YT Views | HQ | Cheap | Speed: 5-10K/Day | Start Time : 0-15Min | Lifetime Guaranteed | MAX 500K⚡⚡⚡🔥🔥🔥', NULL, '1.3100', '1.1880', 500, 500000, 0, 'api', 'default', '470', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(19, 'abfd7e1c4a6f581a64c3eb4a632f9885', 1, 1, 'YT Views | HQ | Retention: 45 Seconds | Speed: 10-20K/Day | Refill: 60 Days | MAX 1M  ⛔', NULL, '1.6400', '1.4880', 100, 1000000, 0, 'api', 'default', '468', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(20, 'c041a67e130a0b7429420c083dcc9203', 1, 1, 'YT Views | Source:Suggested | Speed: 10-30K/Day | Lifetime Guarantee | MAX 1M ⚡⚡⚡🔥🔥', NULL, '1.0300', '0.9380', 100, 1000000, 0, 'api', 'default', '466', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(21, '384fd1aacab167de987e7048ffde8ab2', 1, 1, 'IG Views | All Types Of Videos | Speed: Up To 500K/Hour | MAX 50M  ⛔🔥🔥⚡⚡⚡', NULL, '0.0700', '0.0600', 25, 50000000, 0, 'api', 'default', '464', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(22, '27c9b741e5b853e9ef000a81029cf248', 1, 1, 'IG Views | Work Only With Reels | New | Cheapest | Speed: Up To 100K/Hour | No Refill | MAX 50M 🔥🔥⚡⚡⚡ ⛔', NULL, '0.0100', '0.0080', 500, 50000000, 0, 'api', 'default', '462', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(23, 'c8473cf73ae0f868ec8a279a5e853624', 1, 1, 'IG Likes | New | Mix | Speed: Up To 20K/Day | Refill Button: 30 Days | MAX 300K ⚡⚡🔥🔥 ♻️⛔', NULL, '0.0900', '0.0790', 10, 300000, 0, 'api', 'default', '461', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(24, '2566c7502122bda071767db507524aae', 1, 1, 'IG Likes | New | Mix | Cheapest | Speed: Up To 100K/Day | Refill Button: 30 Days | MAX 250K 🔥🔥🔥⚡⚡ ♻️⛔', NULL, '0.0600', '0.0550', 10, 250000, 0, 'api', 'default', '460', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49'),
(25, '65c062e320330f982fe6f3a480a2d50e', 1, 1, 'IG Followers | HQ | Up To 200K/Day | Cheapest | R365 | MAX 500K  ♻️ ⚡️⚡️⚡️', NULL, '0.5400', '0.4880', 50, 5000000, 0, 'api', 'default', '454', 2, NULL, 1, '2023-05-21 12:25:49', '2023-05-21 12:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `user_read` double NOT NULL DEFAULT '0',
  `admin_read` double NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_block_ip`
--
ALTER TABLE `general_user_block_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_logs`
--
ALTER TABLE `general_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_mail_logs`
--
ALTER TABLE `general_user_mail_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refills`
--
ALTER TABLE `refills`
  ADD PRIMARY KEY (`refill_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_user_block_ip`
--
ALTER TABLE `general_user_block_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_user_logs`
--
ALTER TABLE `general_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_user_mail_logs`
--
ALTER TABLE `general_user_mail_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refills`
--
ALTER TABLE `refills`
  MODIFY `refill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
