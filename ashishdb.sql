-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 04:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashishdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_about`
--

CREATE TABLE `about_about` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `descriptionI` longtext NOT NULL,
  `descriptionII` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_about`
--

INSERT INTO `about_about` (`id`, `name`, `profile`, `email`, `phone`, `description`, `photo`, `download`, `descriptionI`, `descriptionII`) VALUES
(1, 'Shiva Giri', 'full stack developer', 'girishiva93@gmail.com', '(+977) 9846-695-452', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.', 'photo/2020/09/04/Aasis.jpg', 'photo/trekking-website.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add portfolio', 8, 'add_portfolio'),
(30, 'Can change portfolio', 8, 'change_portfolio'),
(31, 'Can delete portfolio', 8, 'delete_portfolio'),
(32, 'Can view portfolio', 8, 'view_portfolio'),
(33, 'Can add service', 9, 'add_service'),
(34, 'Can change service', 9, 'change_service'),
(35, 'Can delete service', 9, 'delete_service'),
(36, 'Can view service', 9, 'view_service'),
(37, 'Can add hero img', 10, 'add_heroimg'),
(38, 'Can change hero img', 10, 'change_heroimg'),
(39, 'Can delete hero img', 10, 'delete_heroimg'),
(40, 'Can view hero img', 10, 'view_heroimg'),
(41, 'Can add text animation', 11, 'add_textanimation'),
(42, 'Can change text animation', 11, 'change_textanimation'),
(43, 'Can delete text animation', 11, 'delete_textanimation'),
(44, 'Can view text animation', 11, 'view_textanimation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$s7ShUlEMnl3b$/KbSfYepAXy0sRIlU48NQ62uIHhxup35jaquUcnyfCo=', '2020-09-05 14:01:08.982432', 1, 'shiva', '', '', 'girishiva93@gmail.com', 1, 1, '2020-09-03 05:30:17.944895');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-03 11:04:18.517153', '1', 'Shiva Giri', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-09-03 11:04:25.864580', '1', 'Shiva Giri', 2, '[]', 7, 1),
(3, '2020-09-03 11:06:53.664951', '1', 'Shiva Giri', 2, '[]', 7, 1),
(4, '2020-09-03 15:22:39.309562', '1', 'Shiva Giri', 2, '[]', 7, 1),
(5, '2020-09-04 15:05:26.627069', '1', 'Shiva Giri', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 7, 1),
(6, '2020-09-05 09:20:04.141153', '1', 'SERVICE', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-09-05 09:20:35.194707', '2', 'null', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-09-05 09:20:55.486880', '3', 'null', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-09-05 09:28:03.908442', '3', 'PHOTOGRAPHY', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Bio\"]}}]', 9, 1),
(10, '2020-09-05 09:28:10.123093', '2', 'WEB DEVELOPMENT', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Bio\"]}}]', 9, 1),
(11, '2020-09-05 09:28:44.198511', '4', 'RESPONSIVE DESIGN', 1, '[{\"added\": {}}]', 9, 1),
(12, '2020-09-05 09:28:59.151828', '5', 'GRAPHIC DESIGN', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-09-05 09:29:12.186600', '6', 'MARKETING SERVICES', 1, '[{\"added\": {}}]', 9, 1),
(14, '2020-09-05 09:37:22.541961', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(15, '2020-09-05 09:37:31.776941', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Bio\"]}}]', 9, 1),
(16, '2020-09-05 09:47:58.029018', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Bio\"]}}]', 9, 1),
(17, '2020-09-05 09:48:05.114762', '1', 'WEB DESIGN', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Bio\"]}}]', 9, 1),
(18, '2020-09-05 11:33:48.742050', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(19, '2020-09-05 11:35:24.143593', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(20, '2020-09-05 11:35:53.225207', '2', 'WEB DEVELOPMENT', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(21, '2020-09-05 11:36:22.770134', '1', 'WEB DESIGN', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(22, '2020-09-05 11:36:37.746862', '1', 'WEB DESIGN', 2, '[]', 9, 1),
(23, '2020-09-05 11:37:28.652816', '4', 'RESPONSIVE DESIGN', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(24, '2020-09-05 11:38:00.632640', '5', 'GRAPHIC DESIGN', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(25, '2020-09-05 11:38:44.580189', '6', 'MARKETING SERVICES', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(26, '2020-09-05 11:39:25.915636', '1', 'WEB DESIGN', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(27, '2020-09-05 11:40:26.597013', '3', 'PHOTOGRAPHY', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(28, '2020-09-05 11:43:18.386247', '3', 'PHOTOGRAPHY', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(29, '2020-09-05 12:10:11.502846', '1', 'Lorem ipsum dolor sit', 1, '[{\"added\": {}}]', 8, 1),
(30, '2020-09-05 12:10:20.307300', '2', 'Lorem ipsum dolor sit', 1, '[{\"added\": {}}]', 8, 1),
(31, '2020-09-05 12:10:30.253312', '3', 'Lorem ipsum dolor sit', 1, '[{\"added\": {}}]', 8, 1),
(32, '2020-09-05 12:18:05.870803', '6', 'MARKETING SERVICES', 2, '[]', 9, 1),
(33, '2020-09-05 14:09:02.051217', '1', 'Web Developer', 1, '[{\"added\": {}}]', 11, 1),
(34, '2020-09-05 14:17:07.733014', '4', 'Hello', 1, '[{\"added\": {}}]', 8, 1),
(35, '2020-09-05 14:17:39.648181', '4', 'Hello', 3, '', 8, 1),
(36, '2020-09-05 14:21:48.355624', '1', 'Web Developer', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 11, 1),
(37, '2020-09-06 06:20:09.208185', '1', 'WEB DESIGN', 2, '[]', 9, 1),
(38, '2020-09-06 06:46:29.132150', '1', 'Shiva Giri', 2, '[{\"changed\": {\"fields\": [\"DescriptionII\"]}}]', 7, 1),
(39, '2020-09-06 06:46:41.000258', '1', 'Shiva Giri', 2, '[{\"changed\": {\"fields\": [\"DescriptionII\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'about', 'about'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'portfolio', 'heroimg'),
(8, 'portfolio', 'portfolio'),
(9, 'service', 'service'),
(6, 'sessions', 'session'),
(11, 'textanimation', 'textanimation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-03 04:25:25.473690'),
(2, 'auth', '0001_initial', '2020-09-03 04:25:26.032222'),
(3, 'admin', '0001_initial', '2020-09-03 04:25:28.848598'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-03 04:25:29.704679'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-03 04:25:29.725673'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-03 04:25:30.240740'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-03 04:25:30.563281'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-03 04:25:30.627226'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-03 04:25:30.645451'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-03 04:25:30.846743'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-03 04:25:30.865001'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-03 04:25:30.905981'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-03 04:25:30.953913'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-03 04:25:31.014267'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-03 04:25:31.124002'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-03 04:25:31.143725'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-03 04:25:31.197495'),
(18, 'sessions', '0001_initial', '2020-09-03 04:25:31.378726'),
(19, 'about', '0001_initial', '2020-09-03 06:15:54.043635'),
(20, 'portfolio', '0001_initial', '2020-09-03 06:15:54.122901'),
(21, 'service', '0001_initial', '2020-09-03 06:15:54.202823'),
(22, 'about', '0002_auto_20200903_1646', '2020-09-03 11:01:58.806986'),
(23, 'portfolio', '0002_portfolio_imageheader', '2020-09-05 09:27:37.531284'),
(24, 'service', '0002_auto_20200905_1512', '2020-09-05 09:27:37.818656'),
(25, 'service', '0003_auto_20200905_1729', '2020-09-05 11:45:05.389242'),
(26, 'service', '0004_remove_service_bio', '2020-09-05 11:45:50.991232'),
(27, 'portfolio', '0003_auto_20200905_1750', '2020-09-05 12:05:22.348806'),
(28, 'portfolio', '0004_auto_20200905_1752', '2020-09-05 12:08:00.179716'),
(29, 'portfolio', '0005_delete_heroimg', '2020-09-05 12:09:19.424753'),
(30, 'textanimation', '0001_initial', '2020-09-05 13:44:59.374674'),
(31, 'textanimation', '0002_auto_20200905_1936', '2020-09-05 13:55:43.383845'),
(32, 'textanimation', '0003_textanimation_name', '2020-09-05 14:19:16.125677');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bf3cgkwpvclflbd1e8rkh0wti3i4b40c', '.eJxVjDsOwyAQBe9CHSEQP2_K9DkDWlg2OImwZOzKyt0jJBdJ-2bmHSLivtW497LGmcRVaHH53RLmV2kD0BPbY5F5ads6JzkUedIu7wuV9-10_w4q9jrqqXBiBvJZETllwCUL6HzRySvrFScXgmIDQVsINqOFSQMGhqwsG_H5AveYN8A:1kEYke:1_b0tzO0SV2Hac8Gh3WUcNEKkix5NBjG3PDYyPm6Mx8', '2020-09-19 14:01:08.996459');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_portfolio`
--

CREATE TABLE `portfolio_portfolio` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `imageheader` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio_portfolio`
--

INSERT INTO `portfolio_portfolio` (`id`, `photo`, `imageheader`) VALUES
(1, 'photo/2020/09/05/realstate.jpeg', 'Lorem ipsum dolor sit'),
(2, 'photo/2020/09/05/realstate_8PLll7c.jpeg', 'Lorem ipsum dolor sit'),
(3, 'photo/2020/09/05/realstate_IRGfiNs.jpeg', 'Lorem ipsum dolor sit');

-- --------------------------------------------------------

--
-- Table structure for table `service_service`
--

CREATE TABLE `service_service` (
  `id` int(11) NOT NULL,
  `icons` varchar(250) NOT NULL,
  `header` varchar(250) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_service`
--

INSERT INTO `service_service` (`id`, `icons`, `header`, `description`) VALUES
(1, 'fas fa-tv', 'WEB DESIGN', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.'),
(2, 'fas fa-code', 'WEB DEVELOPMENT', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.'),
(3, 'fas fa-camera', 'PHOTOGRAPHY', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.'),
(4, 'fas fa-mobile', 'RESPONSIVE DESIGN', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.'),
(5, 'fas fa-drafting-compass', 'GRAPHIC DESIGN', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.'),
(6, 'fas fa-bullhorn', 'MARKETING SERVICES', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni adipisci eaque autem fugiat! Quia, provident vitae! Magni tempora perferendis eum non provident.');

-- --------------------------------------------------------

--
-- Table structure for table `textanimation_textanimation`
--

CREATE TABLE `textanimation_textanimation` (
  `id` int(11) NOT NULL,
  `animation` varchar(500) NOT NULL,
  `animationI` varchar(500) NOT NULL,
  `animationII` varchar(500) NOT NULL,
  `animationIV` varchar(500) NOT NULL,
  `animationV` varchar(500) NOT NULL,
  `animationVI` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `textanimation_textanimation`
--

INSERT INTO `textanimation_textanimation` (`id`, `animation`, `animationI`, `animationII`, `animationIV`, `animationV`, `animationVI`, `name`) VALUES
(1, 'Web Developer', 'Web Designer', 'Frontend Developer', 'Graphic Designer', '', '', 'Shiva Giri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_about`
--
ALTER TABLE `about_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `portfolio_portfolio`
--
ALTER TABLE `portfolio_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_service`
--
ALTER TABLE `service_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textanimation_textanimation`
--
ALTER TABLE `textanimation_textanimation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_about`
--
ALTER TABLE `about_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `portfolio_portfolio`
--
ALTER TABLE `portfolio_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_service`
--
ALTER TABLE `service_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `textanimation_textanimation`
--
ALTER TABLE `textanimation_textanimation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
