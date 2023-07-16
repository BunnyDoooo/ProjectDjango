-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2023 lúc 06:02 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$eS9G3WYY7hezuuHhNt9yk7$X5G749qnidz7QktFIvOWmXSGq8oz0DGt9FP0JnuD0F4=', '2023-06-20 04:16:34.855734', 1, 'om', '', '', 'om@gmail.com', 1, 1, '2023-03-18 16:53:12.572760'),
(2, 'pbkdf2_sha256$390000$b6UVFw65NkkS6H5ymaWVJl$lewcuVIr549gsun21EIxQPe1tRVESZ+t9VAGB2wWNtg=', NULL, 0, 'ducdo123', 'Duc', 'Duc', 'doduc@gmail.com', 0, 1, '2023-04-04 15:44:51.891474'),
(4, 'pbkdf2_sha256$390000$K5a09IE1L3jlrfXaVvg2Ny$7vHBxj+dCFAQOlGo8TTnvqFkhTs8dDZZaV3lR2MQ3XE=', NULL, 0, '', 'Bunny', 'Do', 'bunnydo@gmail.com', 0, 1, '2023-04-05 07:25:15.831397'),
(14, 'pbkdf2_sha256$390000$tUubvIUgDvwFvxyah5IxYV$SLrRZ+uK5kGHtnKuTbeTgJMiypsR0cfZHLUlTP/gOq8=', NULL, 0, 'ThiThu', 'Thi', 'Thu', 'Thithu@gmail.com', 0, 1, '2023-04-05 08:02:44.000000'),
(15, 'pbkdf2_sha256$390000$SzjjpLqjhxguKUS3ONmfL2$jlCRI3TGwSgr4QvLin9ru2n/Lf/AZoFuX+BYV45IIN4=', NULL, 0, 'AnhB123', 'Anh', 'B', 'anhb123@gmail.com', 0, 1, '2023-04-05 09:29:33.413048'),
(16, 'pbkdf2_sha256$390000$NMuqOkkObW3A7eUgV294Me$MtYe2N8uhXiNYWQPOoNCjzhrRjJvkqm90RvEuti1ZpE=', NULL, 0, 'DucAnh2411', 'Anh', 'Duc', 'ducanh2411@gmail.com', 0, 1, '2023-04-05 10:38:22.724394'),
(17, 'pbkdf2_sha256$390000$ApFVqVklPIVTu3WB5HoNfZ$daTgBPLp4ioOUKrQFXROv8pvBv46J49HQ6lW664WHTE=', '2023-06-23 06:16:33.928581', 0, 'ducne54', 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', 0, 1, '2023-04-07 15:29:41.000000'),
(18, 'pbkdf2_sha256$390000$soctB0kfnAF3KZZy1IZtp0$bc4k7OOmi96hXIuTpUbb9Qx0H1wPP6R++I1IlMT/7vA=', '2023-06-07 17:48:07.236782', 0, 'huythu', 'Nguyễn', 'huy', 'huythu@gmail.com', 0, 1, '2023-04-24 10:51:49.476994');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-18 17:03:16.024335', '1', 'Laptops', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-03-18 17:10:03.437566', '1', 'Laptop Lenovo Ideapad 3 15IAU7 82RK005KVN', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-03-20 12:27:22.425677', '2', 'mobiles', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-03-20 12:30:52.997816', '3', 'Apple Watch', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-03-20 13:00:29.193616', '2', 'Mobiles', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(6, '2023-04-12 07:26:23.111105', '2', 'iPhone 11 64GB', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-05-04 15:21:33.234079', '14', 'ThiThu', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(8, '2023-05-04 15:22:41.104224', '14', 'ThiThu', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(9, '2023-05-04 15:23:08.603881', '17', 'ducne54', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(10, '2023-05-09 09:39:00.886199', '4', 'ROOF RACKS', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-05-09 09:39:22.151928', '3', 'Apple Watch', 3, '', 7, 1),
(12, '2023-05-09 09:39:27.794359', '2', 'Mobiles', 3, '', 7, 1),
(13, '2023-05-09 09:39:32.829504', '1', 'Laptops', 3, '', 7, 1),
(14, '2023-05-09 09:40:31.600319', '5', 'CAR SEAT COVERS', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-05-09 09:40:54.754380', '6', 'CAR FLOOR MATS', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-05-09 09:41:24.176671', '7', 'CAR DASH MATS', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-05-09 09:41:45.082733', '8', 'CAR BOOT MATS & CARGO LINERS', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-05-09 09:42:05.624044', '9', 'CAR INTERIOR ACCESSORIES', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-05-09 09:42:30.706539', '10', 'STEERING WHEEL COVERS', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-05-09 09:43:11.114145', '11', 'SEAT BELT COVERS', 1, '[{\"added\": {}}]', 7, 1),
(21, '2023-05-09 09:43:37.690035', '12', 'EXTERIOR VEHICLE COVERS', 1, '[{\"added\": {}}]', 7, 1),
(22, '2023-05-09 09:43:59.979596', '13', 'CAR EXTERIOR ACCESSORIES', 1, '[{\"added\": {}}]', 7, 1),
(23, '2023-05-09 09:44:31.707856', '14', 'CAR MIRRORS', 1, '[{\"added\": {}}]', 7, 1),
(24, '2023-05-09 09:44:35.054797', '14', 'CAR MIRRORS', 2, '[]', 7, 1),
(25, '2023-05-09 09:46:14.385625', '15', 'BIKE CARRIERS AND ACCESSORIES', 1, '[{\"added\": {}}]', 7, 1),
(26, '2023-05-09 09:52:13.728302', '3', 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-05-09 09:54:07.875967', '4', 'SCA 3 Clamp Single Pole Bike Carrier', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-05-09 09:55:55.995894', '5', 'Rola Folding Bike Carrier 3 Bike Hitch Mount', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-05-09 09:57:37.923415', '6', 'SCA 4 Clamp Single Pole Twist Bike Carrier', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-05-09 09:57:43.516432', '6', 'SCA 4 Clamp Single Pole Twist Bike Carrier', 2, '[]', 8, 1),
(31, '2023-05-09 09:59:15.864454', '7', 'Proack Bike Fork Mount Carrier PR3600', 1, '[{\"added\": {}}]', 8, 1),
(32, '2023-05-09 10:05:04.250082', '8', 'Rola Titan MK2 Roof Tray 1500 X 1200mm', 1, '[{\"added\": {}}]', 8, 1),
(33, '2023-05-09 10:06:53.026846', '9', 'Prorack Aero Bar Roof Racks Pair 1200mm S16', 1, '[{\"added\": {}}]', 8, 1),
(34, '2023-05-09 10:08:21.824467', '10', 'XTM 4WD Car Awning 2.5 X 2.5m', 1, '[{\"added\": {}}]', 8, 1),
(35, '2023-05-09 10:12:59.333078', '10', 'XTM 4WD Car Awning 2.5 X 2.5m', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(36, '2023-05-09 10:13:06.858495', '10', 'XTM 4WD Car Awning 2.5 X 2.5m', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(37, '2023-05-09 10:23:45.288061', '14', 'CAR MIRRORS', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(38, '2023-05-09 10:23:58.862526', '9', 'Prorack Aero Bar Roof Racks Pair 1200mm S16', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(39, '2023-05-09 10:24:03.942943', '8', 'Rola Titan MK2 Roof Tray 1500 X 1200mm', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(40, '2023-05-09 10:24:35.437255', '8', 'Rola Titan MK2 Roof Tray 1500 X 1200mm', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(41, '2023-05-09 10:27:26.080679', '7', 'Proack Bike Fork Mount Carrier PR3600', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(42, '2023-05-09 10:27:35.822292', '7', 'Proack Bike Fork Mount Carrier PR3600', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(43, '2023-05-09 10:27:40.402402', '6', 'SCA 4 Clamp Single Pole Twist Bike Carrier', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(44, '2023-05-09 10:28:02.578311', '6', 'SCA 4 Clamp Single Pole Twist Bike Carrier', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(45, '2023-05-09 10:28:12.735040', '5', 'Rola Folding Bike Carrier 3 Bike Hitch Mount', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(46, '2023-05-09 10:28:16.534556', '4', 'SCA 3 Clamp Single Pole Bike Carrier', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(47, '2023-05-09 10:28:23.641002', '3', 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(48, '2023-05-09 10:28:30.051139', '3', 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(49, '2023-05-09 10:28:37.823067', '4', 'SCA 3 Clamp Single Pole Bike Carrier', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(50, '2023-05-13 14:28:04.800839', '17', 'ducne54', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(51, '2023-06-20 04:56:58.693917', '11', 'Prorack Heavy Duty Roof Racks Pair 1375mm T17', 1, '[{\"added\": {}}]', 8, 1),
(52, '2023-06-20 05:01:23.685463', '12', 'Ridge Ryder Roof Tray Small Wire', 1, '[{\"added\": {}}]', 8, 1),
(53, '2023-06-20 05:04:32.493672', '13', 'Cargo Guttermount Roof Racks Pair 1300mm SC13', 1, '[{\"added\": {}}]', 8, 1),
(54, '2023-06-20 05:08:45.432261', '14', 'XTM 4WD Awning Side Wall 4 Pack', 1, '[{\"added\": {}}]', 8, 1),
(55, '2023-06-20 05:12:37.970789', '15', 'Prorack Roof Rack Shovel Holder PR3204', 1, '[{\"added\": {}}]', 8, 1),
(56, '2023-06-20 05:15:56.722426', '16', 'Ridge Ryder 4WD Sliding Pantry', 1, '[{\"added\": {}}]', 8, 1),
(57, '2023-06-20 05:20:29.558842', '17', 'R.M.Williams Woven Seat Cover Combo', 1, '[{\"added\": {}}]', 8, 1),
(58, '2023-06-20 05:31:41.920785', '18', 'Dickies OG Logo Seat Cover Combo', 1, '[{\"added\": {}}]', 8, 1),
(59, '2023-06-20 05:35:17.603788', '19', 'Cabin Crew Kids Padded Under Seat Protector Black', 1, '[{\"added\": {}}]', 8, 1),
(60, '2023-06-20 05:38:01.249660', '20', 'Autometer Car Seat Cover - Black Built-In Headrest Size 60 Slip On Single', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitem'),
(8, 'store', 'product'),
(13, 'store', 'profile'),
(10, 'store', 'wishlist');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-18 16:49:49.732670'),
(2, 'auth', '0001_initial', '2023-03-18 16:49:50.236089'),
(3, 'admin', '0001_initial', '2023-03-18 16:49:50.331826'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-18 16:49:50.340997'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-18 16:49:50.350478'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-18 16:49:50.407936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-18 16:49:50.452773'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-18 16:49:50.473961'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-18 16:49:50.482724'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-18 16:49:50.524555'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-18 16:49:50.531747'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-18 16:49:50.541194'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-18 16:49:50.558841'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-18 16:49:50.577726'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-18 16:49:50.597720'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-18 16:49:50.607063'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-18 16:49:50.624116'),
(18, 'sessions', '0001_initial', '2023-03-18 16:49:50.648898'),
(19, 'store', '0001_initial', '2023-03-18 16:49:50.715861'),
(20, 'store', '0002_cart', '2023-04-17 12:09:00.535011'),
(21, 'store', '0003_wishlist', '2023-05-01 06:44:34.884922'),
(22, 'store', '0004_alter_product_product_image', '2023-05-09 10:21:44.956369'),
(23, 'store', '0005_order_cart_subtotal_cart_total_and_more', '2023-05-12 05:40:49.350328'),
(24, 'store', '0006_remove_cart_subtotal_remove_cart_total', '2023-05-12 05:57:45.900314'),
(25, 'store', '0007_profile', '2023-05-15 08:17:44.093081'),
(26, 'store', '0008_cart_subtotal', '2023-05-23 09:26:13.194412'),
(27, 'store', '0009_alter_cart_subtotal', '2023-05-23 10:24:06.236732'),
(28, 'store', '0010_alter_cart_subtotal', '2023-05-23 10:26:09.614797'),
(29, 'store', '0011_remove_cart_subtotal', '2023-05-23 14:22:20.731671');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('13rpiik731w1y4clwom9b809f3jv0rgm', '.eJxVjM0OwiAQhN-FsyHLT6B49O4zkF1YpGpoUtqT8d2VpAed43zfzEtE3Lca985rnLM4C-XF6bckTA9ug-Q7ttsi09K2dSY5FHnQLq9L5uflcP8OKvY61sHmEgxM7FT5xiL4YrXWqLwPE4UMDkImMDoYW9gaAg2F2KJSyYF4fwAJijfQ:1qCa5x:-Po44tY2rZ4ogl6gViNw4Ei7kfW2xakzxzIsoy8k7gI', '2023-07-07 06:16:33.934986'),
('4942wa4lihn8i7pdh9wf4utnzm2hr84g', '.eJxVjDkOwjAUBe_iGlmxExubkj5niP5KAsiWslSIu0OkFNC-mXkvM8C2jsO2yDxMbC7GJXP6HRHoIWUnfIdyq5ZqWecJ7a7Ygy62ryzP6-H-HYywjN9amwA-cZaQPGOKkWNEQX-m5GLQBlwQCagdpdx1bUvZOyaIDSqp5mzeHxZvOK8:1q6xGR:dit_apLrZW7WoWbrlrmXimHJmTJi-DmxACCR-JoBaf4', '2023-06-21 17:48:07.241004'),
('56hxls4blntf0vja1w73bd38k8p3k8uq', '.eJxVjDsOwyAQBe9CHSFWsHxSps8ZELAQnEQgGbuycvfYkoukfTPzNubDulS_jjz7idiVAbv8bjGkV24HoGdoj85Tb8s8RX4o_KSD3zvl9-10_w5qGHWvFSYn0VlbokUDZAhEhpCTIK2LNRbBUUKJUFBJqVXB3Y4I4DKC0OzzBcVbNqM:1peDf9:DzUgrW0x2J5oJ6g6JXygzzj_PaSoCmwbemIvKxc2Q0Q', '2023-04-03 11:26:51.039570'),
('60i37i6tbeqlg0in0fdiabxzt5kc56lx', '.eJxVjDsOwyAQBe9CHSFWsHxSps8ZELAQnEQgGbuycvfYkoukfTPzNubDulS_jjz7idiVAbv8bjGkV24HoGdoj85Tb8s8RX4o_KSD3zvl9-10_w5qGHWvFSYn0VlbokUDZAhEhpCTIK2LNRbBUUKJUFBJqVXB3Y4I4DKC0OzzBcVbNqM:1pxqBJ:BQ7suboZn5xDhIT4i36htnur9a-uM6l4STRlwHZWwfM', '2023-05-27 14:25:09.761556'),
('k2ojd9vgtl39un7s0vmi3qxjr51k3z62', '.eJxVjDkOwjAUBe_iGlmxExubkj5niP5KAsiWslSIu0OkFNC-mXkvM8C2jsO2yDxMbC7GJXP6HRHoIWUnfIdyq5ZqWecJ7a7Ygy62ryzP6-H-HYywjN9amwA-cZaQPGOKkWNEQX-m5GLQBlwQCagdpdx1bUvZOyaIDSqp5mzeHxZvOK8:1pzKKK:7kQQpfA2VKE5qE3kx6_fbXNcWETUhdw0E4t6K8DTFCA', '2023-05-31 16:48:36.072245'),
('n1qbufr302f83x7uld4rlj158xn0bive', '.eJxVjDkOwjAUBe_iGlmxExubkj5niP5KAsiWslSIu0OkFNC-mXkvM8C2jsO2yDxMbC7GJXP6HRHoIWUnfIdyq5ZqWecJ7a7Ygy62ryzP6-H-HYywjN9amwA-cZaQPGOKkWNEQX-m5GLQBlwQCagdpdx1bUvZOyaIDSqp5mzeHxZvOK8:1ptNc0:KtUOwe5xdE4X2p2n3uJmplLlQycmWoyrVGeSn79CB-c', '2023-05-15 07:06:16.753949'),
('r3vk51ztk3qcvqe6gms8t4m18rws61oi', '.eJxVjDsOwyAQBe9CHSFWsHxSps8ZELAQnEQgGbuycvfYkoukfTPzNubDulS_jjz7idiVAbv8bjGkV24HoGdoj85Tb8s8RX4o_KSD3zvl9-10_w5qGHWvFSYn0VlbokUDZAhEhpCTIK2LNRbBUUKJUFBJqVXB3Y4I4DKC0OzzBcVbNqM:1pjtgs:QgtN6vyJdC813Wycgp8udBAxGo1zaNfkREueu_kQ-JE', '2023-04-19 03:20:06.340523'),
('vuhqb3ryldhkpq3n8qzeti3ff6rke8ky', '.eJxVjDsOwyAQBe9CHSFWsHxSps8ZELAQnEQgGbuycvfYkoukfTPzNubDulS_jjz7idiVAbv8bjGkV24HoGdoj85Tb8s8RX4o_KSD3zvl9-10_w5qGHWvFSYn0VlbokUDZAhEhpCTIK2LNRbBUUKJUFBJqVXB3Y4I4DKC0OzzBcVbNqM:1pdZpm:T2fnnewDIPvmB49gjBumKhOaXddEfqmGqNuGk2mLQSw', '2023-04-01 16:55:10.557094'),
('w62ya4sk2ulhqc7ue6w4666lhzvdhpu3', '.eJxVjDsOwyAQBe9CHSFWsHxSps8ZELAQnEQgGbuycvfYkoukfTPzNubDulS_jjz7idiVAbv8bjGkV24HoGdoj85Tb8s8RX4o_KSD3zvl9-10_w5qGHWvFSYn0VlbokUDZAhEhpCTIK2LNRbBUUKJUFBJqVXB3Y4I4DKC0OzzBcVbNqM:1pwJic:8ueL9OCxhOv4H8tyNydNDonxsWwmkZW1sZGlBFI57gw', '2023-05-23 09:33:14.700767');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_cart`
--

INSERT INTO `store_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(129, 3, '2023-05-30 15:35:25.017735', 5, 18),
(152, 2, '2023-06-21 09:36:23.539547', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `status`, `trending`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(4, 'ROOF RACKS', 'ROOF RACKS', '', 0, 0, 'ROOF RACKS, AWNINGS & ACCESSORIES', 'ROOF RACKS, AWNINGS & ACCESSORIES', 'ROOF RACKS, AWNINGS & ACCESSORIES', 'ROOF RACKS, AWNINGS & ACCESSORIES for car', '2023-05-09 09:39:00.885205'),
(5, 'CAR SEAT COVERS', 'CAR SEAT COVERS', '', 0, 0, 'CAR SEAT COVERS', 'CAR SEAT COVERS', 'CAR SEAT COVERS', 'CAR SEAT COVERS', '2023-05-09 09:40:31.598829'),
(6, 'CAR FLOOR MATS', 'CAR FLOOR MATS', '', 0, 0, 'CAR FLOOR MATS', 'CAR FLOOR MATS', 'CAR FLOOR MATS', 'CAR FLOOR MATS', '2023-05-09 09:40:54.752891'),
(7, 'CAR DASH MATS', 'CAR DASH MATS', '', 0, 0, 'CAR DASH MATS', 'CAR DASH MATS', 'CAR DASH MATS', 'CAR DASH MATS', '2023-05-09 09:41:24.176175'),
(8, 'CAR BOOT MATS & CARGO LINERS', 'CAR BOOT MATS & CARGO LINERS', '', 0, 0, 'CAR BOOT MATS & CARGO LINERS', 'CAR BOOT MATS & CARGO LINERS', 'CAR BOOT MATS & CARGO LINERS', 'CAR BOOT MATS & CARGO LINERS', '2023-05-09 09:41:45.080717'),
(9, 'CAR INTERIOR ACCESSORIES', 'CAR INTERIOR ACCESSORIES', '', 0, 0, 'CAR INTERIOR ACCESSORIES', 'CAR INTERIOR ACCESSORIES', 'CAR INTERIOR ACCESSORIES', 'CAR INTERIOR ACCESSORIES', '2023-05-09 09:42:05.622394'),
(10, 'STEERING WHEEL COVERS', 'STEERING WHEEL COVERS', '', 0, 0, 'STEERING WHEEL COVERS', 'STEERING WHEEL COVERS', 'STEERING WHEEL COVERS', 'STEERING WHEEL COVERS', '2023-05-09 09:42:30.703408'),
(11, 'SEAT BELT COVERS', 'SEAT BELT COVERS', '', 0, 0, 'SEAT BELT COVERS', 'SEAT BELT COVERS', 'SEAT BELT COVERS', 'SEAT BELT COVERS', '2023-05-09 09:43:11.113055'),
(12, 'EXTERIOR VEHICLE COVERS', 'EXTERIOR VEHICLE COVERS', '', 0, 0, 'EXTERIOR VEHICLE COVERS', 'EXTERIOR VEHICLE COVERS', 'EXTERIOR VEHICLE COVERS', 'EXTERIOR VEHICLE COVERS', '2023-05-09 09:43:37.688235'),
(13, 'CAR EXTERIOR ACCESSORIES', 'CAR EXTERIOR ACCESSORIES', '', 0, 0, 'CAR EXTERIOR ACCESSORIES', 'CAR EXTERIOR ACCESSORIES', 'CAR EXTERIOR ACCESSORIES', 'CAR EXTERIOR ACCESSORIES', '2023-05-09 09:43:59.978587'),
(14, 'CAR MIRRORS', 'CAR MIRRORS', 'uploads/230509172345SCA_167275_hi-res.png', 0, 0, 'CAR MIRRORS', 'CAR MIRRORS', 'CAR MIRRORS', 'CAR MIRRORS', '2023-05-09 09:44:31.706333'),
(15, 'BIKE CARRIERS AND ACCESSORIES', 'BIKE CARRIERS AND ACCESSORIES', '', 0, 0, 'BIKE CARRIERS AND ACCESSORIES', 'BIKE CARRIERS AND ACCESSORIES', 'BIKE CARRIERS AND ACCESSORIES', 'BIKE CARRIERS AND ACCESSORIES', '2023-05-09 09:46:14.384620');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) NOT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext DEFAULT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Đỗ', 'Minh Đức', 'dominhduc2411@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'VN', '72014', 2034.93, '72014', '', 'Pending', NULL, 'sharma961700555', '2023-05-12 09:07:54.607711', '2023-05-12 09:07:54.607711', 1),
(2, 'Đỗ', 'Minh Đức', 'dominhduc2411@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'VN', '72014', 342.98, '72014', '', 'Pending', NULL, 'sharma834828364', '2023-05-15 08:40:41.559792', '2023-05-15 08:40:41.559792', 17),
(3, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 1263.98, '72014', '', 'Pending', NULL, 'sharma659699428', '2023-06-03 03:56:35.954396', '2023-06-03 03:56:35.955394', 17),
(4, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 862.99, '72014', '', 'Pending', NULL, 'sharma985871440', '2023-06-07 17:56:44.042391', '2023-06-07 17:56:44.042391', 17),
(5, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 342.98, '72014', '', 'Pending', NULL, 'sharma980543220', '2023-06-07 18:00:46.303231', '2023-06-07 18:00:46.303231', 17),
(6, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 508.99, '72014', '', 'Pending', NULL, 'sharma257228999', '2023-06-07 18:02:54.864747', '2023-06-07 18:02:54.864747', 17),
(7, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 463.99, '72014', '', 'Pending', NULL, 'sharma483593641', '2023-06-07 18:05:04.332087', '2023-06-07 18:05:04.332087', 17),
(8, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 554.99, '72014', '', 'Pending', NULL, 'sharma112163966', '2023-06-07 18:06:54.805609', '2023-06-07 18:06:54.805609', 17),
(9, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 774, '72014', '', 'Pending', NULL, 'sharma927200602', '2023-06-07 18:11:24.726535', '2023-06-07 18:11:24.726535', 17),
(10, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 774, '72014', '', 'Pending', NULL, 'sharma872398169', '2023-06-07 18:13:15.462719', '2023-06-07 18:13:15.462719', 17),
(11, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 399, '72014', '', 'Pending', NULL, 'sharma574961387', '2023-06-07 18:14:29.786269', '2023-06-07 18:14:29.786269', 17),
(12, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'VN', '72014', 342.98, '72014', '', 'Pending', NULL, 'sharma434122459', '2023-06-14 02:40:51.679868', '2023-06-14 02:40:51.679868', 17),
(13, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 938.95, '72014', '', 'Pending', NULL, 'sharma639379200', '2023-06-23 06:17:47.029931', '2023-06-23 06:17:47.029931', 17),
(14, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 232.99, '72014', '', 'Pending', NULL, 'sharma465495645', '2023-06-23 06:19:50.153230', '2023-06-23 06:19:50.153230', 17),
(15, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 219.98, '72014', '', 'Pending', NULL, 'sharma945038557', '2023-06-23 06:23:33.225448', '2023-06-23 06:23:33.225448', 17),
(16, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 144.99, '72014', '', 'Pending', NULL, 'sharma234750401', '2023-06-23 06:27:15.927628', '2023-06-23 06:27:15.927628', 17),
(17, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 232.99, '72014', '', 'Pending', NULL, 'sharma367502286', '2023-06-23 06:28:17.567981', '2023-06-23 06:28:17.567981', 17),
(18, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 144.99, '72014', '', 'Pending', NULL, 'sharma378838084', '2023-06-23 06:30:35.669956', '2023-06-23 06:30:35.669956', 17),
(19, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 129.99, '72014', '', 'Pending', NULL, 'sharma910716429', '2023-06-23 06:31:53.722305', '2023-06-23 06:31:53.722305', 17),
(20, 'Nguyễn', 'Minh Đức', 'dominhduc1122@gmail.com', '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'Bangladesh', '72014', 64.99, '72014', '', 'Pending', NULL, 'sharma849712262', '2023-06-23 06:35:06.878245', '2023-06-23 06:35:06.878245', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 375, 3, 1, 9),
(2, 129.99, 7, 1, 6),
(3, 232.99, 1, 2, 3),
(4, 109.99, 1, 2, 4),
(5, 232.99, 2, 3, 3),
(6, 399, 2, 3, 8),
(7, 64.99, 1, 4, 7),
(8, 399, 2, 4, 8),
(9, 232.99, 1, 5, 3),
(10, 109.99, 1, 5, 4),
(11, 109.99, 1, 6, 4),
(12, 399, 1, 6, 8),
(13, 64.99, 1, 7, 7),
(14, 399, 1, 7, 8),
(15, 375, 1, 8, 9),
(16, 179.99, 1, 8, 10),
(17, 399, 1, 9, 8),
(18, 375, 1, 9, 9),
(19, 399, 1, 10, 8),
(20, 375, 1, 10, 9),
(21, 399, 1, 11, 8),
(22, 232.99, 1, 12, 3),
(23, 109.99, 1, 12, 4),
(24, 232.99, 3, 13, 3),
(25, 109.99, 1, 13, 4),
(26, 129.99, 1, 13, 6),
(27, 232.99, 1, 14, 3),
(28, 109.99, 2, 15, 4),
(29, 144.99, 1, 16, 5),
(30, 232.99, 1, 17, 3),
(31, 144.99, 1, 18, 5),
(32, 129.99, 1, 19, 6),
(33, 64.99, 1, 20, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `quantity`, `description`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`) VALUES
(3, 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 'uploads/230509172830Rola_Bike_Carrier_-_Fork_Mount_Extension_Suits_HD_Bars_RCBCF2.png', 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 0, 'Rola Bike Carrier - Fork Mount, Extension, Suits HD Bars, RCBCF2', 232.99, 232.99, 0, 0, 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Club Price Promise\r\nIf a product you purchase goes on sale within two weeks we\'ll automatically credit the difference to your Club account. *Club terms & conditions apply.', '2023-05-09 09:52:13.726816', 15),
(4, 'Bike Racks & Accessories', 'SCA 3 Clamp Single Pole Bike Carrier', 'uploads/230509172837Rola_Folding_Bike_Carrier_3_Bike_Hitch_Mount.png', 'SCA 3 Clamp Single Pole Bike Carrier', 3, 'Club Price Promise\r\nIf a product you purchase goes on sale within two weeks we\'ll automatically credit the difference to your Club account. *Club terms & conditions apply.', 109.99, 109.99, 0, 0, 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Club Price Promise\r\nIf a product you purchase goes on sale within two weeks we\'ll automatically credit the difference to your Club account. *Club terms & conditions apply.', '2023-05-09 09:54:07.873964', 15),
(5, 'Bike Racks & Accessories', 'Rola Folding Bike Carrier 3 Bike Hitch Mount', 'uploads/230509172812SCA_3_Clamp_Single_Pole_Bike_Carrier.png', 'Bike Racks & Accessories', 8, 'Carry your bikes with ease with the Rola TX 103 Bike Carrier. Designed to carry 3 bikes, this Bike Carrier’s integrated anti-theft locking cable will keep your bikes secure when you’re not around. The versatile wide cradles fit most bike frames, styles and sizes and can be moved along the arm to adjust the space between bikes. The dual arms and anti-sway rollers reduce bike movement during transit, keeping your bikes safe.', 144.99, 144.99, 0, 0, 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Carry your bikes with ease with the Rola TX 103 Bike Carrier. Designed to carry 3 bikes, this Bike Carrier’s integrated anti-theft locking cable will keep your bikes secure when you’re not around. The versatile wide cradles fit most bike frames, styles and sizes and can be moved along the arm to adjust the space between bikes. The dual arms and anti-sway rollers reduce bike movement during transit, keeping your bikes safe.', '2023-05-09 09:55:55.993456', 15),
(6, 'Bike Racks & Accessories', 'SCA 4 Clamp Single Pole Twist Bike Carrier', 'uploads/230509172802SCA_4_Clamp_Single_Pole_Twist_Bike_Carrier.png', 'Bike Racks & Accessories', 1, 'The SCA “Twist” 4 Bike Hook & Loop Wrap Bike Carrier is a fantastic product for competition or casual bike riders who wish to safely secure anything from larger frame mountain bikes to light weight carbon fibre race bikes for transport. The tow ball mount design of this bike carrier means it\'s suitable for all vehicles including four wheel drives with a rear mounted spare tyre. Manufactured from strong black powder coated steel this unit is resistant to corrosion and abrasion damage .', 129.99, 129.99, 0, 0, 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'The SCA “Twist” 4 Bike Hook & Loop Wrap Bike Carrier is a fantastic product for competition or casual bike riders who wish to safely secure anything from larger frame mountain bikes to light weight carbon fibre race bikes for transport. The tow ball mount design of this bike carrier means it\'s suitable for all vehicles including four wheel drives with a rear mounted spare tyre. Manufactured from strong black powder coated steel this unit is resistant to corrosion and abrasion damage.', '2023-05-09 09:57:37.921116', 15),
(7, 'Bike Racks & Accessories', 'Proack Bike Fork Mount Carrier PR3600', 'uploads/230509172735Rola_Bike_Carrier_-_Fork_Mount_Extension_Suits_HD_Bars_RCBCF2.png', 'Proack Bike Fork Mount Carrier PR3600', 7, 'Mount carrier onto existing roof racks (not included)\r\nHolds your bike via front forks, no contact with frame\r\nLightweight and durable aluminium construction\r\nQuick release handle for quick and easy use', 64.99, 64.99, 0, 0, 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Bike Racks & Accessories', 'Mount carrier onto existing roof racks (not included)\r\nHolds your bike via front forks, no contact with frame\r\nLightweight and durable aluminium construction\r\nQuick release handle for quick and easy use', '2023-05-09 09:59:15.863461', 15),
(8, 'Roof Racks', 'Rola Titan MK2 Roof Tray 1500 X 1200mm', 'uploads/230509172435SCA_594792_hi-res.png', 'Rola Titan MK2 Roof Tray', 1, 'Rola Titan Trays offer incredibly versatile roof storage solutions allowing you to mount accessories and cargo almost anywhere on the tray. Rola\'s exclusive accessory channels can be found running along each and every slat of the tray, including all 4 sides! The unique mounting system suits any brand of roof rack and enables 6 points of connection with up to 3 roof rack bars, providing up to 300kg of load limit; please check your vehicles roof load limit in your owners manual first. Being manufa', 399, 399, 0, 0, 'Roof Racks', 'Roof Racks', 'Roof Racks', 'Rola Titan Trays offer incredibly versatile roof storage solutions allowing you to mount accessories and cargo almost anywhere on the tray. Rola\'s exclusive accessory channels can be found running along each and every slat of the tray, including all 4 sides! The unique mounting system suits any brand of roof rack and enables 6 points of connection with up to 3 roof rack bars, providing up to 300kg of load limit; please check your vehicles roof load limit in your owners manual first. Being manufa', '2023-05-09 10:05:04.248575', 4),
(9, 'ROOF RACKS', 'Prorack Aero Bar Roof Racks Pair 1200mm S16', 'uploads/230509172358SCA_561756_hi-res.png', 'Prorack Aero Bar Roof Racks Pair', 4, 'Want a set of roof racks that don\'t make your car sound like a musical instrument? With up to 70% less wind drag than other roof racks, the Prorack Aero bar presents an unrivalled balance of strength and driver comfort. With a huge 75kg maximum load rating, these roof racks also give you a great range of flexibility for your next adventure. Coupled with a Prorack through bar fitting kit, these racks also become quick and easy to both attach, and remove.', 375, 375, 0, 0, 'Roof Racks', 'Roof Racks', 'Roof Racks', 'Want a set of roof racks that don\'t make your car sound like a musical instrument? With up to 70% less wind drag than other roof racks, the Prorack Aero bar presents an unrivalled balance of strength and driver comfort. With a huge 75kg maximum load rating, these roof racks also give you a great range of flexibility for your next adventure. Coupled with a Prorack through bar fitting kit, these racks also become quick and easy to both attach, and remove.', '2023-05-09 10:06:53.024843', 4),
(10, 'ROOF RACKS', 'XTM 4WD Car Awning 2.5 X 2.5m', 'uploads/230509171306SCA_167275_hi-res.png', 'XTM 4WD Car Awning', 9, 'The XTM 4x4 Awning is the ideal, compact shade solution for your next adventure day tripping, spectating at a sporting event, weekend camping or a lazy afternoon at the beach, this 4WD awning has you covered. It’s made from strong ripstop canvas with UPF50+ to help shield you and the family against harmful UV rays. Anodised aluminium alloy poles and reinforced yet flexible nylon knuckles allow for easy set up, whilst the heavy duty PVC storage bag ensures you can transport and store it away with', 179.99, 179.99, 0, 0, 'Roof Racks', 'Roof Racks', 'Roof Racks', 'The XTM 4x4 Awning is the ideal, compact shade solution for your next adventure day tripping, spectating at a sporting event, weekend camping or a lazy afternoon at the beach, this 4WD awning has you covered. It’s made from strong ripstop canvas with UPF50+ to help shield you and the family against harmful UV rays. Anodised aluminium alloy poles and reinforced yet flexible nylon knuckles allow for easy set up, whilst the heavy duty PVC storage bag ensures you can transport and store it away with', '2023-05-09 10:08:21.822981', 4),
(11, 'Roof Racks', 'Prorack Heavy Duty Roof Racks Pair 1375mm T17', 'uploads/230620115658SCA_295380_hi-res.jpg', 'This roof rack requires a fitting kit designed specific for your application, sold separately', 21, 'Driving even a short distance with a set of singing roof racks fixed to your vehicle can be a headache inducing ordeal, and long distance can be simply unbearable. For some tradesman however, this is a daily reality. Bu it doesn\'t have to be that way with the new Prorack HD Roof Racks. Designed to take all of the amazing aerodynamic properties of the consumer oriented Prorack S-Wing roof system, the HD has been redesigned for extra strength and practicality.', 400, 395, 0, 0, 'Prorack, Car, Roof Racks, fitting kit', 'Prorack Heavy Duty Roof Racks Pair 1375mm T17', 'Prorack, Car, Roof Racks, fitting kit', 'Driving even a short distance with a set of singing roof racks fixed to your vehicle can be a headache inducing ordeal, and long distance can be simply unbearable. For some tradesman however, this is a daily reality. Bu it doesn\'t have to be that way with the new Prorack HD Roof Racks. Designed to take all of the amazing aerodynamic properties of the consumer oriented Prorack S-Wing roof system, the HD has been redesigned for extra strength and practicality.', '2023-06-20 04:56:58.688404', 4),
(12, 'Roof Racks', 'Ridge Ryder Roof Tray Small Wire', 'uploads/230620120123SCA_366047_hi-res.jpg', 'Strong steel wire construction remains lightweight despite size', 16, 'This Ridge Ryder wire roof basket is a great way to pack away all your equipment and essentials on top of your car and give you more space inside your vehicle. This tray is handy size of 1250 x 950 x 120mm and is constructed from strong steel wire with a powder coated finish for superior corrosion and abrasion resistance. Ridge Ryder trays are easy to fit to most roof rack systems with the included universal fitting kit and it only weighs 14kg.', 249.99, 249.99, 0, 0, 'Roof Racks, Ridge Ryder, Wire', 'Ridge Ryder Roof Tray Small Wire', 'Roof Racks, Ridge Ryder, Wire', 'This Ridge Ryder wire roof basket is a great way to pack away all your equipment and essentials on top of your car and give you more space inside your vehicle. This tray is handy size of 1250 x 950 x 120mm and is constructed from strong steel wire with a powder coated finish for superior corrosion and abrasion resistance. Ridge Ryder trays are easy to fit to most roof rack systems with the included universal fitting kit and it only weighs 14kg.', '2023-06-20 05:01:23.680296', 4),
(13, 'Roof Racks', 'Cargo Guttermount Roof Racks Pair 1300mm SC13', 'uploads/230620120432SCA_134686_hi-res.jpg', '1300mm length crossbar with a roof clearance of 140mm, designed to fit vehicles with rain gutters', 5, 'If your vehicle has gutters, these Cargo Gutter mount Roof Racks are perfect for you. Once adjusted to suit your vehicle this system takes a mere 2 minutes to install and remove, simply slip the racks down over the gutters either side and tighten the thumbscrews making sure the racks are sitting flat; removal is the opposite. Manufactured from steel and powder coated for abrasion and corrosion protection these roof racks support up to 40kg.', 99.99, 49.99, 0, 0, 'Cargo, Roof Rack, Pair', 'Cargo Guttermount Roof Racks Pair 1300mm SC13', 'Cargo, Roof Rack, Pair', 'If your vehicle has gutters, these Cargo Gutter mount Roof Racks are perfect for you. Once adjusted to suit your vehicle this system takes a mere 2 minutes to install and remove, simply slip the racks down over the gutters either side and tighten the thumbscrews making sure the racks are sitting flat; removal is the opposite. Manufactured from steel and powder coated for abrasion and corrosion protection these roof racks support up to 40kg.', '2023-06-20 05:04:32.489593', 4),
(14, 'Roof Racks', 'XTM 4WD Awning Side Wall 4 Pack', 'uploads/230620120845SCA_598139_hi-res.jpg', 'XTM 4WD Awning Side Wall 4 Pack, 280gsm poly cotton canvas', 4, 'Keep out of the elements for your next off-road trip with the XTM Awning Side Wall 4 Pack. This 4-pack attaches to the XTM 270° awning to give you more cover and privacy. It comes complete with guy ropes, pegs, and reinforced tie down points.', 299.99, 249.99, 0, 0, 'XTM, Awning Side, Roof Rack', 'XTM 4WD Awning Side Wall 4 Pack', 'XTM, Awning Side, Roof Rack', 'Keep out of the elements for your next off-road trip with the XTM Awning Side Wall 4 Pack. This 4-pack attaches to the XTM 270° awning to give you more cover and privacy. It comes complete with guy ropes, pegs, and reinforced tie down points.', '2023-06-20 05:08:45.428562', 4),
(15, 'Roof Racks', 'Prorack Roof Rack Shovel Holder PR3204', 'uploads/230620121237SCA_347145_hi-res.jpg', 'Solid moulded nylon construction is lightweight and non-corroding, Frees up valuable vehicle storage space and makes your shovel easily accessible', 2, 'This Prorack Shovel Holder is a perfect addition for the avid off roader or camper that wants to keep dirt and grass out of their car and maximise their storage potential. The included brackets are of solid moulded nylon construction, ensuring durability and reliability in wet and salty conditions. This shovel holder fits most shovels with handles up to 40mm in diameter and fits to the Prorack S-Wing, Prorack HD, and Tradesman roof racks. Simply position the brackets where convenient and loosen', 64.99, 64.99, 0, 0, 'Prorack, Roof Rack, Holder', 'Prorack Roof Rack Shovel Holder PR3204', 'Prorack, Roof Rack, Holder', 'This Prorack Shovel Holder is a perfect addition for the avid off roader or camper that wants to keep dirt and grass out of their car and maximise their storage potential. The included brackets are of solid moulded nylon construction, ensuring durability and reliability in wet and salty conditions. This shovel holder fits most shovels with handles up to 40mm in diameter and fits to the Prorack S-Wing, Prorack HD, and Tradesman roof racks. Simply position the brackets where convenient and loosen', '2023-06-20 05:12:37.967132', 4),
(16, 'Roof Racks', 'Ridge Ryder 4WD Sliding Pantry', 'uploads/230620121556SCA_635837_hi-res.jpg', 'Universal design enables pantry to be mounted on the left or right side, tough durable black powder coated steel', 20, 'The Ridge Ryder pantry is a must have addition to your 4WD canopy set up. Ample storage for key cooking items like spices, utensils or 4WD recovery gear making it easier to access and keeps items tidy and secure. The universal design enables the side panel to be adjusted to a left or right configuration making it suitable for either side of your setup.', 599, 349, 0, 0, 'Ridge Ryder, Pantry, Roof Rack', 'Ridge Ryder 4WD Sliding Pantry', 'Ridge Ryder, Pantry, Roof Rack', 'The Ridge Ryder pantry is a must have addition to your 4WD canopy set up. Ample storage for key cooking items like spices, utensils or 4WD recovery gear making it easier to access and keeps items tidy and secure. The universal design enables the side panel to be adjusted to a left or right configuration making it suitable for either side of your setup.', '2023-06-20 05:15:56.717912', 4),
(17, 'Seat Covers', 'R.M.Williams Woven Seat Cover Combo', 'uploads/230620122029PS055.jpg', 'Front seat covers suitable for bucket seats with built-in headrests, with or without side air bags. Made from quality jacquard material', 23, 'This range of R.M.Williams seat covers will protect your car from harmful UV rays, spills, and other damage. Made to fit most modern vehicles, the range is made with quality materials to help protect your vehicle\'s interior and keep you comfortable and looking good at the same time!', 199.98, 157.98, 0, 0, 'R.M.Williams Woven, Seat Cover', 'R.M.Williams Woven Seat Cover Combo', 'R.M.Williams Woven, Seat Cover', 'This range of R.M.Williams seat covers will protect your car from harmful UV rays, spills, and other damage. Made to fit most modern vehicles, the range is made with quality materials to help protect your vehicle\'s interior and keep you comfortable and looking good at the same time!', '2023-06-20 05:20:29.554163', 5),
(18, 'Seat Covers', 'Dickies OG Logo Seat Cover Combo', 'uploads/230620123141PS020.jpg', 'Front seat covers suitable for bucket seats with built-in headrests, with or without side air bags. Made from polyester material with Dickes coloured logo design', 4, 'Protect your car from harmful UV rays, spills, and other damage with this new range of OG Logo branded seat covers, steering wheel covers and floor mats. Made to fit most modern vehicles, the range is quality made to help protect your vehicle\'s interior and keep you comfortable and looking good at the same time!', 212.97, 162.99, 0, 0, 'Dickies OG, Seat Cover', 'Dickies OG Logo Seat Cover Combo', 'Dickies OG, Seat Cover', 'Protect your car from harmful UV rays, spills, and other damage with this new range of OG Logo branded seat covers, steering wheel covers and floor mats. Made to fit most modern vehicles, the range is quality made to help protect your vehicle\'s interior and keep you comfortable and looking good at the same time!', '2023-06-20 05:31:41.916854', 5),
(19, 'Seat Covers', 'Cabin Crew Kids Padded Under Seat Protector Black', 'uploads/230620123517SCA_634383_hi-res.jpg', 'Extra padding provides protection for your vehicles seat, Reduces movement of the baby seat', 20, 'Acting as a divider between a baby\'s seat and the seat of a vehicle, this black Cabin Crew Padded Seat Protector is multi-purpose in design and can prove to be extremely beneficial to a parent or babysitter. Safety is the first priority, and this protector immediately aids as a stabilizer for a baby seat by reducing movement of the seat while the vehicle is in motion.', 38.99, 38.99, 0, 0, 'Cabin, Kid, Padded, Seat Cover', 'Cabin Crew Kids Padded Under Seat Protector Black', 'Cabin, Kid, Padded, Seat Cover', 'Acting as a divider between a baby\'s seat and the seat of a vehicle, this black Cabin Crew Padded Seat Protector is multi-purpose in design and can prove to be extremely beneficial to a parent or babysitter. Safety is the first priority, and this protector immediately aids as a stabilizer for a baby seat by reducing movement of the seat while the vehicle is in motion.', '2023-06-20 05:35:17.598604', 5),
(20, 'Seat Covers', 'Autometer Car Seat Cover - Black Built-In Headrest Size 60 Slip On Single', 'uploads/230620123801SCA_340649_hi-res.jpg', 'A single slip on seat cover suitable for bucket seats with either built-in or adjustable head rests and without air bags', 27, 'Easy to fit, these Autometer Car Seat Covers slide right over seats with both separate and built-in head rests quickly and conveniently. Sold individually, these convenient covers protect your seats from dirt, grease, spills and more, perfect for use in trade vehicles or in workshops to protect customers vehicles.', 31.99, 31.99, 0, 0, 'Seat Cover, Black, Autometer', 'Autometer Car Seat Cover - Black Built-In Headrest Size 60 Slip On Single', 'Seat Cover, Black, Autometer', 'Easy to fit, these Autometer Car Seat Covers slide right over seats with both separate and built-in head rests quickly and conveniently. Sold individually, these convenient covers protect your seats from dirt, grease, spills and more, perfect for use in trade vehicles or in workshops to protect customers vehicles.', '2023-06-20 05:38:01.248708', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_profile`
--

CREATE TABLE `store_profile` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_profile`
--

INSERT INTO `store_profile` (`id`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `created_at`, `user_id`) VALUES
(1, '0976073277', '103 Dương Khuê, P. Hiệp Tân', 'Hồ Chí Minh', 'HCM', 'VN', '72014', '2023-05-15 08:40:41.553551', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_wishlist`
--

CREATE TABLE `store_wishlist` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_wishlist`
--

INSERT INTO `store_wishlist` (`id`, `created_at`, `product_id`, `user_id`) VALUES
(14, '2023-05-30 15:27:36.678763', 4, 18);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `store_profile`
--
ALTER TABLE `store_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_wishlist_product_id_8af1333d_fk_store_product_id` (`product_id`),
  ADD KEY `store_wishlist_user_id_afcc4e88_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `store_profile`
--
ALTER TABLE `store_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `store_wishlist`
--
ALTER TABLE `store_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Các ràng buộc cho bảng `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);

--
-- Các ràng buộc cho bảng `store_profile`
--
ALTER TABLE `store_profile`
  ADD CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD CONSTRAINT `store_wishlist_product_id_8af1333d_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_wishlist_user_id_afcc4e88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
