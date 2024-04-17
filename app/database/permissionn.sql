SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `permissionn` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `permissionn`;

CREATE TABLE `system_group` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_group` (`id`, `name`) VALUES
(1, 'Admin'),
(3, 'ETEC'),
(2, 'Standard');

CREATE TABLE `system_group_program` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_group_program` (`id`, `system_group_id`, `system_program_id`) VALUES
(76, 2, 10),
(77, 2, 12),
(78, 2, 13),
(79, 2, 16),
(80, 2, 17),
(81, 2, 18),
(82, 2, 19),
(83, 2, 20),
(84, 2, 30),
(85, 2, 43),
(86, 2, 44),
(87, 2, 45),
(88, 2, 46),
(89, 2, 47),
(90, 2, 48),
(91, 2, 49),
(92, 2, 54),
(93, 2, 55),
(94, 2, 56),
(95, 2, 64),
(96, 3, 5),
(97, 3, 6),
(98, 3, 7),
(99, 3, 10),
(100, 3, 12),
(101, 3, 13),
(102, 3, 16),
(103, 3, 17),
(104, 3, 18),
(105, 3, 65),
(106, 1, 1),
(107, 1, 2),
(108, 1, 3),
(109, 1, 4),
(110, 1, 5),
(111, 1, 6),
(112, 1, 8),
(113, 1, 9),
(114, 1, 11),
(115, 1, 14),
(116, 1, 15),
(117, 1, 21),
(118, 1, 26),
(119, 1, 27),
(120, 1, 28),
(121, 1, 29),
(122, 1, 31),
(123, 1, 32),
(124, 1, 33),
(125, 1, 34),
(126, 1, 35),
(127, 1, 36),
(128, 1, 37),
(129, 1, 38),
(130, 1, 39),
(131, 1, 40),
(132, 1, 41),
(133, 1, 42),
(134, 1, 43),
(135, 1, 44),
(136, 1, 45),
(137, 1, 46),
(138, 1, 47),
(139, 1, 48),
(140, 1, 49),
(141, 1, 52),
(142, 1, 53),
(143, 1, 54),
(144, 1, 55),
(145, 1, 56),
(146, 1, 57),
(147, 1, 58),
(148, 1, 59),
(149, 1, 60),
(150, 1, 61),
(151, 1, 62),
(152, 1, 63),
(153, 1, 65),
(154, 1, 66),
(155, 3, 66);

CREATE TABLE `system_preference` (
  `id` varchar(256) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `system_program` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `controller` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_program` (`id`, `name`, `controller`) VALUES
(1, 'System Group Form', 'SystemGroupForm'),
(2, 'System Group List', 'SystemGroupList'),
(3, 'System Program Form', 'SystemProgramForm'),
(4, 'System Program List', 'SystemProgramList'),
(5, 'System User Form', 'SystemUserForm'),
(6, 'System User List', 'SystemUserList'),
(7, 'Common Page', 'CommonPage'),
(8, 'System PHP Info', 'SystemPHPInfoView'),
(9, 'System ChangeLog View', 'SystemChangeLogView'),
(10, 'Welcome View', 'WelcomeView'),
(11, 'System Sql Log', 'SystemSqlLogList'),
(12, 'System Profile View', 'SystemProfileView'),
(13, 'System Profile Form', 'SystemProfileForm'),
(14, 'System SQL Panel', 'SystemSQLPanel'),
(15, 'System Access Log', 'SystemAccessLogList'),
(16, 'System Message Form', 'SystemMessageForm'),
(17, 'System Message List', 'SystemMessageList'),
(18, 'System Message Form View', 'SystemMessageFormView'),
(19, 'System Notification List', 'SystemNotificationList'),
(20, 'System Notification Form View', 'SystemNotificationFormView'),
(21, 'System Document Category List', 'SystemDocumentCategoryFormList'),
(26, 'System Unit Form', 'SystemUnitForm'),
(27, 'System Unit List', 'SystemUnitList'),
(28, 'System Access stats', 'SystemAccessLogStats'),
(29, 'System Preference form', 'SystemPreferenceForm'),
(30, 'System Support form', 'SystemSupportForm'),
(31, 'System PHP Error', 'SystemPHPErrorLogView'),
(32, 'System Database Browser', 'SystemDatabaseExplorer'),
(33, 'System Table List', 'SystemTableList'),
(34, 'System Data Browser', 'SystemDataBrowser'),
(35, 'System Menu Editor', 'SystemMenuEditor'),
(36, 'System Request Log', 'SystemRequestLogList'),
(37, 'System Request Log View', 'SystemRequestLogView'),
(38, 'System Administration Dashboard', 'SystemAdministrationDashboard'),
(39, 'System Log Dashboard', 'SystemLogDashboard'),
(40, 'System Session vars', 'SystemSessionVarsView'),
(41, 'System Information', 'SystemInformationView'),
(42, 'System files diff', 'SystemFilesDiff'),
(43, 'System Documents', 'SystemDriveList'),
(44, 'System Folder form', 'SystemFolderForm'),
(45, 'System Share folder', 'SystemFolderShareForm'),
(46, 'System Share document', 'SystemDocumentShareForm'),
(47, 'System Document properties', 'SystemDocumentFormWindow'),
(48, 'System Folder properties', 'SystemFolderFormView'),
(49, 'System Document upload', 'SystemDriveDocumentUploadForm'),
(52, 'System Post list', 'SystemPostList'),
(53, 'System Post form', 'SystemPostForm'),
(54, 'Post View list', 'SystemPostFeedView'),
(55, 'Post Comment form', 'SystemPostCommentForm'),
(56, 'Post Comment list', 'SystemPostCommentList'),
(57, 'System Contacts list', 'SystemContactsList'),
(58, 'System Wiki list', 'SystemWikiList'),
(59, 'System Wiki form', 'SystemWikiForm'),
(60, 'System Wiki search', 'SystemWikiSearchList'),
(61, 'System Wiki view', 'SystemWikiView'),
(62, 'System Role List', 'SystemRoleList'),
(63, 'System Role Form', 'SystemRoleForm'),
(64, 'System Profile 2FA Form', 'SystemProfile2FAForm'),
(65, 'Cadastro de Itens', 'FormItem'),
(66, 'Cadastro de laboratórios', 'FormLab');

CREATE TABLE `system_program_method_role` (
  `id` int(11) NOT NULL,
  `system_program_id` int(11) DEFAULT NULL,
  `system_role_id` int(11) DEFAULT NULL,
  `method_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `system_role` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_role` (`id`, `name`, `custom_code`) VALUES
(1, 'Role A', ''),
(2, 'Role B', '');

CREATE TABLE `system_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `connection_name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_unit` (`id`, `name`, `connection_name`, `custom_code`) VALUES
(1, 'Unit A', 'unit_a', ''),
(2, 'Unit B', 'unit_b', '');

CREATE TABLE `system_users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `accepted_term_policy` char(1) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `function_name` varchar(256) DEFAULT NULL,
  `about` varchar(4096) DEFAULT NULL,
  `accepted_term_policy_at` varchar(256) DEFAULT NULL,
  `accepted_term_policy_data` text,
  `frontpage_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL,
  `otp_secret` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_users` (`id`, `name`, `login`, `password`, `email`, `accepted_term_policy`, `phone`, `address`, `function_name`, `about`, `accepted_term_policy_at`, `accepted_term_policy_data`, `frontpage_id`, `system_unit_id`, `active`, `custom_code`, `otp_secret`) VALUES
(1, 'Administrator', 'admin', '$2y$10$rtQ2ZgnmwcykWRbuM2k3gebWoo2ZxaJ0BVIHMsCrJCdWkFWip83qa', 'admin@admin.net', 'Y', '+123 456 789', 'Admin Street, 123', 'Administrator', 'I\'m the administrator', NULL, NULL, 10, NULL, 'Y', NULL, NULL),
(2, 'User', 'user', '$2y$10$MUYN29LOSHrCSGhrzvYG8O/PtAjbWvCubaUSTJGhVTJhm69WNFJs.', 'user@user.net', 'Y', '+123 456 789', 'User Street, 123', 'End user', 'I\'m the end user', NULL, NULL, 7, NULL, 'Y', NULL, NULL),
(3, 'etecia', 'etec', '$2y$10$V3TF.Yld2XGHqk/qODvGN.oc6LDaRtDTZQEqn6eh/IDPp3VyJxa8y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, 'Y', NULL, NULL);

CREATE TABLE `system_user_group` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_user_group` (`id`, `system_user_id`, `system_group_id`) VALUES
(3, 2, 2),
(6, 1, 2),
(9, 1, 1),
(10, 3, 3);

CREATE TABLE `system_user_old_password` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `system_user_program` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_user_program` (`id`, `system_user_id`, `system_program_id`) VALUES
(1, 2, 7),
(2, 3, 1),
(3, 3, 2),
(4, 3, 5),
(5, 3, 6),
(6, 3, 65),
(7, 3, 66);

CREATE TABLE `system_user_role` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_user_role` (`id`, `system_user_id`, `system_role_id`) VALUES
(1, 3, 1);

CREATE TABLE `system_user_unit` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_user_unit` (`id`, `system_user_id`, `system_unit_id`) VALUES
(3, 2, 1),
(4, 2, 2),
(5, 1, 1),
(6, 1, 2),
(7, 3, 1),
(8, 3, 2);


ALTER TABLE `system_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_group_name_idx` (`name`);

ALTER TABLE `system_group_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_group_program_program_idx` (`system_program_id`),
  ADD KEY `sys_group_program_group_idx` (`system_group_id`);

ALTER TABLE `system_preference`
  ADD KEY `sys_preference_id_idx` (`id`);

ALTER TABLE `system_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_program_name_idx` (`name`),
  ADD KEY `sys_program_controller_idx` (`controller`);

ALTER TABLE `system_program_method_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_program_id` (`system_program_id`),
  ADD KEY `system_role_id` (`system_role_id`);

ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_role_name_idx` (`name`);

ALTER TABLE `system_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_unit_name_idx` (`name`);

ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_idx` (`frontpage_id`),
  ADD KEY `sys_users_name_idx` (`name`);

ALTER TABLE `system_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_group_group_idx` (`system_group_id`),
  ADD KEY `sys_user_group_user_idx` (`system_user_id`);

ALTER TABLE `system_user_old_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_user_id` (`system_user_id`);

ALTER TABLE `system_user_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_program_idx` (`system_program_id`),
  ADD KEY `sys_user_program_user_idx` (`system_user_id`);

ALTER TABLE `system_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_user_id` (`system_user_id`),
  ADD KEY `system_role_id` (`system_role_id`);

ALTER TABLE `system_user_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_unit_id` (`system_unit_id`),
  ADD KEY `sys_user_unit_user_idx` (`system_user_id`);


ALTER TABLE `system_group_program`
  ADD CONSTRAINT `system_group_program_ibfk_1` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`),
  ADD CONSTRAINT `system_group_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

ALTER TABLE `system_program_method_role`
  ADD CONSTRAINT `system_program_method_role_ibfk_1` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`),
  ADD CONSTRAINT `system_program_method_role_ibfk_2` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`);

ALTER TABLE `system_users`
  ADD CONSTRAINT `system_users_ibfk_1` FOREIGN KEY (`frontpage_id`) REFERENCES `system_program` (`id`);

ALTER TABLE `system_user_group`
  ADD CONSTRAINT `system_user_group_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_group_ibfk_2` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`);

ALTER TABLE `system_user_old_password`
  ADD CONSTRAINT `system_user_old_password_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`);

ALTER TABLE `system_user_program`
  ADD CONSTRAINT `system_user_program_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

ALTER TABLE `system_user_role`
  ADD CONSTRAINT `system_user_role_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_role_ibfk_2` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`);

ALTER TABLE `system_user_unit`
  ADD CONSTRAINT `system_user_unit_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_unit_ibfk_2` FOREIGN KEY (`system_unit_id`) REFERENCES `system_unit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
