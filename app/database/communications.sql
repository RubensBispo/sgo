-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2024 at 09:58 PM
-- Server version: 5.7.44
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `communications`
--
CREATE DATABASE IF NOT EXISTS `communications` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `communications`;

-- --------------------------------------------------------

--
-- Table structure for table `system_document`
--

CREATE TABLE `system_document` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `archive_date` date DEFAULT NULL,
  `filename` varchar(512) DEFAULT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_document_bookmark`
--

CREATE TABLE `system_document_bookmark` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_document_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_document_category`
--

CREATE TABLE `system_document_category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_document_category`
--

INSERT INTO `system_document_category` (`id`, `name`) VALUES
(1, 'Documentos');

-- --------------------------------------------------------

--
-- Table structure for table `system_document_group`
--

CREATE TABLE `system_document_group` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_document_user`
--

CREATE TABLE `system_document_user` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_folder`
--

CREATE TABLE `system_folder` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_folder_bookmark`
--

CREATE TABLE `system_folder_bookmark` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_folder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_folder_group`
--

CREATE TABLE `system_folder_group` (
  `id` int(11) NOT NULL,
  `system_folder_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_folder_user`
--

CREATE TABLE `system_folder_user` (
  `id` int(11) NOT NULL,
  `system_folder_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_message`
--

CREATE TABLE `system_message` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text,
  `dt_message` varchar(256) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text,
  `dt_message` varchar(256) DEFAULT NULL,
  `action_url` varchar(4096) DEFAULT NULL,
  `action_label` varchar(256) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_post`
--

CREATE TABLE `system_post` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_post`
--

INSERT INTO `system_post` (`id`, `system_user_id`, `title`, `content`, `created_at`, `active`) VALUES
(1, 1, 'Primeira noticia', '<p style=\"text-align: justify; \"><span style=\"font-family: &quot;Source Sans Pro&quot;; font-size: 18px;\">ï»¿</span><span style=\"font-family: &quot;Source Sans Pro&quot;; font-size: 18px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id cursus metus aliquam eleifend mi in nulla posuere sollicitudin. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Odio pellentesque diam volutpat commodo sed egestas egestas. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Habitant morbi tristique senectus et netus et malesuada. Vitae ultricies leo integer malesuada nunc vel risus commodo viverra. Vehicula ipsum a arcu cursus. Rhoncus est pellentesque elit ullamcorper dignissim. Faucibus in ornare quam viverra orci sagittis eu. Nisi scelerisque eu ultrices vitae auctor. Tellus cras adipiscing enim eu turpis egestas. Eget lorem dolor sed viverra ipsum nunc aliquet. Neque convallis a cras semper auctor neque. Bibendum ut tristique et egestas. Amet nisl suscipit adipiscing bibendum.</span></p><p style=\"text-align: justify;\"><span style=\"font-family: &quot;Source Sans Pro&quot;; font-size: 18px;\">Mattis nunc sed blandit libero volutpat sed cras ornare. Leo duis ut diam quam nulla. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Non quam lacus suspendisse faucibus. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Dignissim enim sit amet venenatis urna. Elit sed vulputate mi sit. Sit amet nisl suscipit adipiscing bibendum est. Maecenas accumsan lacus vel facilisis. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Aenean pharetra magna ac placerat vestibulum lectus mauris ultrices eros. Augue lacus viverra vitae congue eu consequat ac felis. Bibendum neque egestas congue quisque egestas diam. Facilisis magna etiam tempor orci eu lobortis elementum. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Nullam eget felis eget nunc. Nec ullamcorper sit amet risus nullam eget felis. Lacus vel facilisis volutpat est velit egestas dui id.</span></p>', '2022-11-03 17:59:39', 'Y'),
(2, 1, 'Segunda noticia', '<p style=\"text-align: justify; \"><span style=\"font-size: 18px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac orci phasellus egestas tellus rutrum. Pretium nibh ipsum consequat nisl vel pretium lectus quam. Faucibus scelerisque eleifend donec pretium vulputate sapien. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Ultricies mi quis hendrerit dolor magna eget. Quam id leo in vitae turpis massa sed elementum tempus. Eget arcu dictum varius duis at consectetur lorem. Quis varius quam quisque id diam. Consequat interdum varius sit amet mattis vulputate. Purus non enim praesent elementum facilisis leo vel fringilla. Nulla facilisi nullam vehicula ipsum a arcu. Habitant morbi tristique senectus et netus et malesuada fames. Risus commodo viverra maecenas accumsan lacus. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Imperdiet proin fermentum leo vel orci porta non pulvinar neque. Massa massa ultricies mi quis hendrerit. Vel turpis nunc eget lorem dolor sed viverra ipsum nunc. Quisque egestas diam in arcu cursus euismod quis.</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 18px;\">Posuere morbi leo urna molestie at elementum eu facilisis. Dolor morbi non arcu risus quis varius quam. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Consectetur adipiscing elit ut aliquam purus sit. Gravida cum sociis natoque penatibus et magnis. Sollicitudin aliquam ultrices sagittis orci. Tortor consequat id porta nibh venenatis cras sed felis. Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc. Arcu dictum varius duis at consectetur. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar. At tellus at urna condimentum mattis pellentesque. Tellus mauris a diam maecenas sed.</span></p>', '2022-11-03 18:03:31', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `system_post_comment`
--

CREATE TABLE `system_post_comment` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `system_user_id` int(11) NOT NULL,
  `system_post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_post_comment`
--

INSERT INTO `system_post_comment` (`id`, `comment`, `system_user_id`, `system_post_id`, `created_at`) VALUES
(1, 'My first comment', 1, 2, '2022-11-03 18:22:11'),
(2, 'Another comment', 1, 2, '2022-11-03 18:22:17'),
(3, 'The best comment', 2, 2, '2022-11-03 18:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_post_like`
--

CREATE TABLE `system_post_like` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_post_share_group`
--

CREATE TABLE `system_post_share_group` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_post_share_group`
--

INSERT INTO `system_post_share_group` (`id`, `system_group_id`, `system_post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_post_tag`
--

CREATE TABLE `system_post_tag` (
  `id` int(11) NOT NULL,
  `system_post_id` int(11) NOT NULL,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_post_tag`
--

INSERT INTO `system_post_tag` (`id`, `system_post_id`, `tag`) VALUES
(1, 1, 'novidades'),
(2, 2, 'novidades');

-- --------------------------------------------------------

--
-- Table structure for table `system_wiki_page`
--

CREATE TABLE `system_wiki_page` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `content` text NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `searchable` char(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_wiki_page`
--

INSERT INTO `system_wiki_page` (`id`, `system_user_id`, `created_at`, `updated_at`, `title`, `description`, `content`, `active`, `searchable`) VALUES
(1, 1, '2022-11-02 18:33:58', '2022-11-02 18:35:10', 'Manual de operacoes', 'Este manual explica os procedimentos basicos de operacao', '<p style=\"text-align: justify; \"><span style=\"font-size: 18px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sapien nec sagittis aliquam malesuada bibendum arcu vitae. Quisque egestas diam in arcu cursus euismod quis. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. At imperdiet dui accumsan sit amet. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Elementum facilisis leo vel fringilla est ullamcorper. Id porta nibh venenatis cras. Viverra orci sagittis eu volutpat odio facilisis mauris sit. Senectus et netus et malesuada fames ac turpis. Sociis natoque penatibus et magnis dis parturient montes. Vel turpis nunc eget lorem dolor sed viverra ipsum nunc. Sed viverra tellus in hac habitasse. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu. Pharetra et ultrices neque ornare aenean euismod elementum. Volutpat blandit aliquam etiam erat velit scelerisque in. Neque aliquam vestibulum morbi blandit cursus risus. Id consectetur purus ut faucibus pulvinar elementum.</span></p><p style=\"text-align: justify; \"><br></p>', 'Y', 'Y'),
(2, 1, '2022-11-02 18:35:04', '2022-11-02 18:37:49', 'Instrucoes de lancamento', 'Este manual explica as instrucoes de lancamento de produto', '<p><span style=\"font-size: 18px;\">Non curabitur gravida arcu ac tortor dignissim convallis. Nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi. Nunc eget lorem dolor sed viverra. Et odio pellentesque diam volutpat commodo sed egestas. Enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Faucibus et molestie ac feugiat. Erat velit scelerisque in dictum non consectetur a erat nam. Quis risus sed vulputate odio ut enim blandit volutpat. Pharetra vel turpis nunc eget lorem dolor sed viverra. Nisl tincidunt eget nullam non nisi est sit. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Et tortor at risus viverra adipiscing at in tellus integer. Risus ultricies tristique nulla aliquet enim. Ac felis donec et odio pellentesque diam volutpat commodo sed. Ut morbi tincidunt augue interdum. Morbi tempus iaculis urna id volutpat.</span></p><p><a href=\"index.php?class=SystemWikiView&amp;method=onLoad&amp;key=3\" generator=\"adianti\">Sub pagina de instrucoes 1</a></p><p><a href=\"index.php?class=SystemWikiView&amp;method=onLoad&amp;key=4\" generator=\"adianti\">Sub pagina de instrucoes 2</a><br><span style=\"font-size: 18px;\"><br></span><br></p>', 'Y', 'Y'),
(3, 1, '2022-11-02 18:36:59', '2022-11-02 18:37:21', 'Instrucoes - sub pagina 1', 'Instrucoes - sub pagina 1', '<p><span style=\"font-size: 18px;\">Follow these steps:</span></p><ol><li><span style=\"font-size: 18px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></li><li><span style=\"font-size: 18px;\">Sapien nec sagittis aliquam malesuada bibendum arcu vitae.</span></li><li><span style=\"font-size: 18px;\">Quisque egestas diam in arcu cursus euismod quis.</span><br></li></ol>', 'Y', 'N'),
(4, 1, '2022-11-02 18:37:17', '2022-11-02 18:37:22', 'Instrucoes - sub pagina 2', 'Instrucoes - sub pagina 2', '<p><span style=\"font-size: 18px;\">Follow these steps:</span></p><ol><li><span style=\"font-size: 18px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></li><li><span style=\"font-size: 18px;\">Sapien nec sagittis aliquam malesuada bibendum arcu vitae.</span></li><li><span style=\"font-size: 18px;\">Quisque egestas diam in arcu cursus euismod quis.</span></li></ol>', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `system_wiki_share_group`
--

CREATE TABLE `system_wiki_share_group` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_wiki_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_wiki_share_group`
--

INSERT INTO `system_wiki_share_group` (`id`, `system_group_id`, `system_wiki_page_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 1, 3),
(6, 2, 3),
(7, 1, 4),
(8, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `system_wiki_tag`
--

CREATE TABLE `system_wiki_tag` (
  `id` int(11) NOT NULL,
  `system_wiki_page_id` int(11) NOT NULL,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_wiki_tag`
--

INSERT INTO `system_wiki_tag` (`id`, `system_wiki_page_id`, `tag`) VALUES
(3, 1, 'manual'),
(5, 4, 'manual'),
(6, 3, 'manual'),
(7, 2, 'manual');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `system_document`
--
ALTER TABLE `system_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_user_idx` (`system_user_id`),
  ADD KEY `sys_document_category_idx` (`category_id`),
  ADD KEY `sys_document_folder_idx` (`system_folder_id`);

--
-- Indexes for table `system_document_bookmark`
--
ALTER TABLE `system_document_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_bookmark_user_idx` (`system_user_id`),
  ADD KEY `sys_document_bookmark_document_idx` (`system_document_id`);

--
-- Indexes for table `system_document_category`
--
ALTER TABLE `system_document_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_category_name_idx` (`name`);

--
-- Indexes for table `system_document_group`
--
ALTER TABLE `system_document_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_group_document_idx` (`document_id`),
  ADD KEY `sys_document_group_group_idx` (`system_group_id`);

--
-- Indexes for table `system_document_user`
--
ALTER TABLE `system_document_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_user_document_idx` (`document_id`),
  ADD KEY `sys_document_user_user_idx` (`system_user_id`);

--
-- Indexes for table `system_folder`
--
ALTER TABLE `system_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_user_id_idx` (`system_user_id`),
  ADD KEY `sys_folder_name_idx` (`name`),
  ADD KEY `sys_folder_parend_id_idx` (`system_folder_parent_id`);

--
-- Indexes for table `system_folder_bookmark`
--
ALTER TABLE `system_folder_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_bookmark_user_idx` (`system_user_id`),
  ADD KEY `sys_folder_bookmark_folder_idx` (`system_folder_id`);

--
-- Indexes for table `system_folder_group`
--
ALTER TABLE `system_folder_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_group_folder_idx` (`system_folder_id`),
  ADD KEY `sys_folder_group_group_idx` (`system_group_id`);

--
-- Indexes for table `system_folder_user`
--
ALTER TABLE `system_folder_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_user_folder_idx` (`system_folder_id`),
  ADD KEY `sys_folder_user_user_idx` (`system_user_id`);

--
-- Indexes for table `system_message`
--
ALTER TABLE `system_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_message_user_id_idx` (`system_user_id`),
  ADD KEY `sys_message_user_to_idx` (`system_user_to_id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_notification_user_id_idx` (`system_user_id`),
  ADD KEY `sys_notification_user_to_idx` (`system_user_to_id`);

--
-- Indexes for table `system_post`
--
ALTER TABLE `system_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_user_idx` (`system_user_id`);

--
-- Indexes for table `system_post_comment`
--
ALTER TABLE `system_post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_comment_user_idx` (`system_user_id`),
  ADD KEY `sys_post_comment_post_idx` (`system_post_id`);

--
-- Indexes for table `system_post_like`
--
ALTER TABLE `system_post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_like_user_idx` (`system_user_id`),
  ADD KEY `sys_post_like_post_idx` (`system_post_id`);

--
-- Indexes for table `system_post_share_group`
--
ALTER TABLE `system_post_share_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_share_group_group_idx` (`system_group_id`),
  ADD KEY `sys_post_share_group_post_idx` (`system_post_id`);

--
-- Indexes for table `system_post_tag`
--
ALTER TABLE `system_post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_tag_post_idx` (`system_post_id`);

--
-- Indexes for table `system_wiki_page`
--
ALTER TABLE `system_wiki_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_page_user_idx` (`system_user_id`);

--
-- Indexes for table `system_wiki_share_group`
--
ALTER TABLE `system_wiki_share_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_share_group_group_idx` (`system_group_id`),
  ADD KEY `sys_wiki_share_group_page_idx` (`system_wiki_page_id`);

--
-- Indexes for table `system_wiki_tag`
--
ALTER TABLE `system_wiki_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_tag_page_idx` (`system_wiki_page_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
