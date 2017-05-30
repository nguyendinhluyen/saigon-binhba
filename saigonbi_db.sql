-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 30, 2017 lúc 10:37 PM
-- Phiên bản máy phục vụ: 5.6.35
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `saigonbi_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_control_user`
--

CREATE TABLE `admin_control_user` (
  `idadmin_control_user` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `type_of_user` varchar(255) DEFAULT NULL,
  `dateadd` int(11) DEFAULT NULL,
  `datemodify` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `checked_box_save` varchar(255) DEFAULT NULL,
  `user_name_visible` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads`
--

CREATE TABLE `ads` (
  `adver_id` int(11) NOT NULL,
  `adver_catalogue` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `adver_pos` int(11) NOT NULL,
  `adver_webname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description_ads` text COLLATE utf8_unicode_ci NOT NULL,
  `description_ads_en` text COLLATE utf8_unicode_ci NOT NULL,
  `adver_logo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `adver_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `adver_width` int(11) NOT NULL,
  `adver_height` int(11) NOT NULL,
  `adver_status` int(11) NOT NULL,
  `adver_order` int(11) NOT NULL,
  `date_added` int(11) NOT NULL,
  `date_modifile` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `categories_status` tinyint(3) NOT NULL DEFAULT '1',
  `date_added` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `recycle_bin` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_key`, `categories_description`, `keywords`, `description`, `parent_id`, `level`, `sort_order`, `categories_status`, `date_added`, `modified_date`, `language`, `recycle_bin`) VALUES
(339, 'Phòng thường', 'phong-thuong-339', '', '', '', 0, 1, 2, 1, 1433575147, 1434509949, 'vi', 0),
(340, 'Phòng VIP', 'phong-vip-340', '', '', '', 0, 1, 1, 1, 1433611564, 1433613129, 'vi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoriesadoption`
--

CREATE TABLE `categoriesadoption` (
  `categoriesadoption_id` int(11) NOT NULL,
  `categoriesadoption_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesadoption_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesadoption_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordsadoption` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionadoption` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentadoption_id` int(11) DEFAULT NULL,
  `leveladoption` int(11) DEFAULT NULL,
  `sortadoption_order` int(3) DEFAULT NULL,
  `categoriesadoption_status` tinyint(3) DEFAULT NULL,
  `dateadoption_added` int(11) DEFAULT NULL,
  `modifiedadoption_date` int(11) DEFAULT NULL,
  `languageadoption` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycleadoption_bin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorieshelp`
--

CREATE TABLE `categorieshelp` (
  `categorieshelp_id` int(11) NOT NULL,
  `categorieshelp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieshelp_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieshelp_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordshelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionhelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parenthelp_id` int(11) DEFAULT NULL,
  `levelhelp` int(11) DEFAULT NULL,
  `sorthelp_order` int(3) DEFAULT NULL,
  `categorieshelp_status` tinyint(3) DEFAULT NULL,
  `datehelp_added` int(11) DEFAULT NULL,
  `modifiedhelp_date` int(11) DEFAULT NULL,
  `languagehelp` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recyclehelp_bin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoriesintroduce`
--

CREATE TABLE `categoriesintroduce` (
  `categoriesintroduce_id` int(11) NOT NULL,
  `categoriesintroduce_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesintroduce_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesintroduce_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordsintroduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionintroduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentintroduce_id` int(11) DEFAULT NULL,
  `levelintroduce` int(11) DEFAULT NULL,
  `sortintroduce_order` int(3) DEFAULT NULL,
  `categoriesintroduce_status` tinyint(3) DEFAULT NULL,
  `dateintroduce_added` int(11) DEFAULT NULL,
  `modifiedintroduce_date` int(11) DEFAULT NULL,
  `languageintroduce` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycleintroduce_bin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorieslibary`
--

CREATE TABLE `categorieslibary` (
  `categorieslibary_id` int(11) NOT NULL,
  `categorieslibary_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categorieslibary_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categorieslibary_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywordslibary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptionlibary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parentlibary_id` int(11) NOT NULL,
  `levellibary` int(11) NOT NULL,
  `sortlibary_order` int(3) NOT NULL,
  `categorieslibary_status` tinyint(3) NOT NULL,
  `datelibary_added` int(11) NOT NULL,
  `modifiedlibary_date` int(11) NOT NULL,
  `languagelibary` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recyclelibary_bin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categorieslibary`
--

INSERT INTO `categorieslibary` (`categorieslibary_id`, `categorieslibary_name`, `categorieslibary_key`, `categorieslibary_description`, `keywordslibary`, `descriptionlibary`, `parentlibary_id`, `levellibary`, `sortlibary_order`, `categorieslibary_status`, `datelibary_added`, `modifiedlibary_date`, `languagelibary`, `recyclelibary_bin`) VALUES
(1, 'Ẩm Thực Bình Ba', 'am-thuc-binh-ba', '', '', '', 0, 1, 1, 1, 1436000040, 0, 'vi', 0),
(2, 'Hương vị biển', 'huong-vi-bien', '', '', '', 1, 2, 1, 1, 1436000080, 1436000086, 'vi', 0),
(3, 'Trải nghiệm Bình Ba', 'trai-nghiem-binh-ba', '', '', '', 0, 1, 2, 1, 1436004576, 0, 'vi', 0),
(4, 'Xinh đẹp Bình Ba', 'xinh-dep-binh-ba', '', '', '', 3, 2, 1, 1, 1436004601, 1436004608, 'vi', 0),
(5, 'Kinh nghiệm du lịch Bình Ba', 'kinh-nghiem-du-lich-binh-ba', '', '', '', 3, 2, 0, 1, 1436439407, 0, 'vi', 0),
(6, 'Phượt Bình Ba', 'phuot-binh-ba', '', '', '', 0, 1, 3, 1, 1437462323, 1437462334, 'vi', 0),
(7, 'Hướng dẫn phượt Bình Ba', 'huong-dan-phuot-binh-ba', '', '', '', 6, 2, 0, 1, 1437462353, 0, 'vi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_tours`
--

CREATE TABLE `categories_tours` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `categories_status` tinyint(3) NOT NULL DEFAULT '1',
  `date_added` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `recycle_bin` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories_tours`
--

INSERT INTO `categories_tours` (`categories_id`, `categories_name`, `categories_key`, `categories_description`, `keywords`, `description`, `parent_id`, `level`, `sort_order`, `categories_status`, `date_added`, `modified_date`, `language`, `recycle_bin`) VALUES
(343, 'Tour tham quan Bình Ba 3 ngày 2 đêm', 'tour-tham-quan-binh-ba-3-ngay-2-dem-343', '', '', '', 0, 1, 0, 1, 1433663791, 1436069247, 'vi', 0),
(353, 'Tour tham quan Bình Ba 2 ngày 1 đêm', 'tour-tham-quan-binh-ba-2-ngay-1-dem-353', '', '', '', 0, 1, 0, 1, 1433667413, 1435846858, 'vi', 0),
(355, 'Tour tham quan Bình Ba trong ngày', 'tour-tham-quan-binh-ba-trong-ngay-355', '', '', '', 0, 1, 0, 1, 1434390196, 1435846835, 'vi', 0),
(357, 'Tour Bình Ba Bình Hưng', 'tour-binh-ba-binh-hung-357', '', '', '', 0, 1, 0, 1, 1456903193, 0, 'vi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cats_adver`
--

CREATE TABLE `cats_adver` (
  `id` int(11) NOT NULL,
  `name_vi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `config_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8_unicode_ci,
  `date_added` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `config_name`, `config_value`, `date_added`) VALUES
(1, 'banner', 'banner_home.jpg', '0'),
(2, 'logo', 'logo.png', '0'),
(3, 'email', 'info@saigon-binhba.com', '0'),
(4, 'textcolor', '4D4040', '0'),
(5, 'active', '0', '0'),
(6, 'mail_host', 'saigon-binhba.com', '0'),
(7, 'mail_password', 'in2Lxe8D', '0'),
(8, 'mail_port', '80', '0'),
(9, 'themes', 'noel', '0'),
(10, 'header', '', '0'),
(11, 'body', '', '0'),
(12, 'mail_admin', 'contact@saigon-binhba.com', '0'),
(13, 'description', 'a', '0'),
(14, 'anti_spam', '1', '0'),
(15, 'MaxOnline', '142', '0'),
(16, 'timeMaxOnline', '1379745594', '0'),
(17, 'time_encourage', '', '0'),
(18, 'banner_2', 'bane_home_1_fix.jpg', '0'),
(19, 'banner_3', 'bane_home_2_fix.jpg', '0'),
(20, 'banner_4', '', '0'),
(21, 'banner_5', NULL, '0'),
(22, 'banner_left_1_1', 'binh_ba_2.jpg', '0'),
(23, 'banner_left_1_2', 'binh_ba_4.jpg', '0'),
(24, 'banner_left_1_3', NULL, '0'),
(25, 'banner_left_1_4', NULL, '0'),
(26, 'banner_left_1_5', NULL, '0'),
(27, 'banner_left_2_1', 'binh_ba_3.jpg', '0'),
(28, 'banner_left_2_2', 'dao_binh_ba_1.jpg', '0'),
(29, 'banner_left_2_3', NULL, '0'),
(30, 'banner_left_2_4', NULL, '0'),
(31, 'banner_left_2_5', '', '0'),
(36, 'pre_limit_product', '0', '2015-06-17'),
(39, 'pre_limit_product_tours', '0', '2015-06-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(4) NOT NULL DEFAULT '0',
  `ip` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `title`, `comment`, `address`, `phone`, `email`, `fax`, `company`, `date`, `status`, `ip`) VALUES
(281, 'Nguyễn Thái Sơn', 'đặt phòng VIP - ', 'đặt phòng VIP - sàn gỗ màu nâu đậm, hướng biển\r\nCheck in: 17/10/2015\r\nCheck out: 18/10/2015\r\nXin liên hệ vào giờ hành chính từ thứ 2 - thứ 6', '', '0988280726', 'kanadesensuke@gmail.com', '', '', 1438161500, 0, '117.6.79.218'),
(282, 'Nguyễn Hà', 'Đặt phòng 2 đê', 'Đặt phòng 2 đêm 7,8 tháng 11. Phòng VIP', '', '0904886776', 'Ha.nguyen@ukav.org', '', '', 1444747102, 0, '113.20.116.103'),
(283, 'Nguyễn Thị Mỹ Tuyền', 'Tôi có kế hoạc', 'Tôi có kế hoạch du lịch BB vào 23/10 và muốn hỏi KS của mình giá như thế nào và có dịch vụ gì hấp dẫn ko?\r\nMong sớm nhận được phản hồi.', '', '0927984056', 'mtuyen2512@gmail.com', '', '', 1445390647, 0, '203.126.118.152'),
(284, 'Huỳnh Hạnh', 'Tôi muốn đặt p', 'Tôi muốn đặt phòng gấp, mong có thể liên lạc sớm', '', '0905245908', 'huynhhanh.vn@gmail.com', '', '', 1445621367, 0, '14.165.230.130'),
(285, 'Nguyễn Trần Thu Lam', 'Dear anh/ chị,\r\n', 'Dear anh/ chị,\r\nEm muốn đặt tour 2 ngày 1 đêm cho 4 người ngày 2-3/11/2015. Anh/ chị vui lòng báo thông tin tour qua email giúp em.', '', '01269645670', 'thulam0709@gmail.com', '', '', 1445996930, 0, '222.255.66.154'),
(286, 'thai minh son', 'Tôi muốn book 1 p', 'Tôi muốn book 1 phòng VIP cho gia đình gồm 2 người lớn + 1 trẻ em\r\nXin vui lòng cho báo giá, giá phòng đã có ăn sáng hay chưa? có đón tại bến tàu hay không?\r\nView của phòng VIP nào đẹp nhất thì mình chọn phòng đó nhé', '', '0913652578', 'thaiminhson@yahoo.com', '', '', 1446183783, 0, '113.161.162.169'),
(287, 'thai minh son', 'Tôi muốn book 1 p', 'Tôi muốn book 1 phòng VIP cho gia đình gồm 2 người lớn + 1 trẻ em\r\nXin vui lòng cho báo giá, giá phòng đã có ăn sáng hay chưa? có đón tại bến tàu hay không?\r\nView của phòng VIP nào đẹp nhất thì mình chọn phòng đó nhé', '', '0913652578', 'thaiminhson@yahoo.com', '', '', 1446183859, 0, '113.161.162.169'),
(288, 'Đoàn Minh Tuấn', 'Em xin chào anh. Do', 'Em xin chào anh. Do em muốn book đi ngày tour của anh 2 ngày 1 đêm ( Ngày 01/01 - 02/01/2016).Em muốn anh xác nhận dùm em để anh giử phòng cho tụi em.Và cho em hỏi đi ngày đó giá tour có gì thay đổi hay không ? Cám ơn .', '', '0906277012', 'thichthothe@gmail.com', '', '', 1451017329, 0, '113.173.115.218'),
(289, 'Huyền Trang', 'Gia đình mình g', 'Gia đình mình gồm 4 người sẽ đi bình ba vào 25/3. Bạn cho mình xin giá phòng và suggest cho mình vài nơi có thể khám phá Bình Ba nhé. Khách sạn mình đi ra đảo Bình Lập cách bao nhiêu km vậy ?', '', '093.467.858', 'huyentrang14091992@gmail.com', '', '', 1452349340, 0, '113.22.125.25'),
(291, 'Nguyễn Thị Xuân Liễu', 'Chào anh/chị:\r\n', 'Chào anh/chị:\r\nEm cần đặt phòng loại thường ở vị trí hướng ra biển.\r\nNhận phòng: 20/02/2016\r\nTrả phòng: 21/02/2016\r\nCảm ơn.', '', '0905959402', 'Michaeljun233@gmail.com', '', '', 1455783545, 0, '14.185.194.221'),
(292, 'Trần T Trúc Trâm', 'Gửi giúp tôi hì', 'Gửi giúp tôi hình ảnh và giá cả khách sạn. Cám ơn nhiều !', '', '0908158152', 'tramtranctv@gmail.com', '', '', 1458547482, 0, '113.185.6.123'),
(293, 'Trần T Trúc Trâm', 'Tôi cần 4 phòng ', 'Tôi cần 4 phòng ngày 16/4', '', '0908158152', 'tramtranctv@gmail.com', '', '', 1458880632, 0, '113.185.18.3'),
(294, 'Nguyen Thu Trang', 'Tham khao thong tin ', 'Tham khao thong tin dat tour Saigon-Binh Hung-Binh Ba 03 ngay 2 dem.\r\nSo luong: 40 nguoi\r\nThoi gian: 19-21/05/2016', '', '0933816399', 'thu.trang@scancom.net', '', '', 1459131182, 0, '203.161.178.2'),
(295, 'Vũ Quỳnh Trang', 'Tôi muốn đặt p', 'Tôi muốn đặt phòng nhưng không liên lạc được với khách sạn. Mong hãy liên lạc lại với tôi. xin cảm ơn', '', '0917660191', 'quynhtrang030691@gmail.com', '', '', 1460974307, 0, '14.160.23.200'),
(296, 'Dang thi le hang', 'Dat 2 phong doi chec', 'Dat 2 phong doi check in 30/4, check out 1/5.', '', '0934131135', 'imlehang@yahoo.com', '', '', 1461082262, 0, '116.108.95.209'),
(309, 'Chí Bằng', 'Tôi làm bên báo,', 'Tôi làm bên báo, thời gian eo hẹp, cần book phòng Vip1 2đêm nhé: từ chiều 15/7 đến sáng 17/7 check out. \r\nGiờ giấc tàu bè đón như thế nào cho biết sớm nhé. \r\nTks!.', '', '0913410411', 'Chibang72@gmail.com', '', '', 1467002205, 0, '113.164.4.43'),
(307, 'Nguyễn Thị Ngát', 'Gia đình tôi mu', 'Gia đình tôi muốn đi Bình Ba. Tôi muốn đặt 2 phòng 2 người, ngày đến: 9/7/2016. Khách sạn báo giá cho tôi. Thanks', '', '0902991866', 'ngatnguyen7501@yahoo.com.vn', '', '', 1466943914, 0, '116.108.168.127'),
(308, 'Nguyễn Thị Ngát', 'Gia đình tôi mu', 'Gia đình tôi muốn đi Bình Ba. Tôi muốn đặt 2 phòng 2 người, ngày đến: 9/7/2016. Khách sạn báo giá cho tôi. Thanks', '', '0902991866', 'ngatnguyen7501@yahoo.com.vn', '', '', 1466943961, 0, '116.108.168.127'),
(306, 'Hoang Truc Long', 'Xin chao, toi muon d', 'Xin chao, toi muon dat 1 phong vip vao ngay 3/8 va 4/8, vo chong toi di cung 1 chau be 11 tuoi. Xin hoi khach san co con phong trong vao 2 dem nay khong a, va gia phong la bao nhieu moi dem? Mong som nhan duoc tra loi tu khach san, cam on rat nhieu.', '', '+491606215551', 'truclong1966@gmail.com', '', '', 1465845826, 0, '77.12.3.62'),
(310, 'Chí Bằng', 'Hôm qua tôi có bo', 'Hôm qua tôi có book phòng Vip 2đêm từ chiều 15/7 đến sáng 17/7 check out... Đã call cho mr.Thông rồi...nhưng chưa thấy KS hồi âm.\r\n\r\nGiờ tôi chốt lại chỉ ở trên đảo được 1 đêm thôi => book lại như sau: trưa 16/7 check in, sáng-trưa 17 check out\r\nTks!.', '', '0913410411', 'Chibang72@gmail.com', '', '', 1467083151, 0, '113.164.4.43'),
(311, 'Le tran cam tien', 'Đăt 2 phòng ngày', 'Đăt 2 phòng ngày 19/8', '', '0902183650', 'Tienle241095@gmail.com', '', '', 1469261255, 0, '101.99.57.150'),
(312, 'xuan anh', 'mình muốn book 1 ', 'mình muốn book 1 phòng 4 ,1 phòng 3 và 1 phòng dành cho 2 người giá thế nào báo mình với, mình đi vào ngày 10', '', '0902130991', 'xuananh.dongautourist@gmail.com', '', '', 1469954169, 0, '103.199.32.165'),
(315, 'Hà Thúy Vi', 'Mình muốn thuê p', 'Mình muốn thuê phòng 2 người, in 31/10 - out 1/11.\r\nKS có đón khách tại cảng hay không? Mình có cho thuê xe máy không, tính tiền theo khung giờ ra sao?\r\nKS có thễ hỗ trợ liên hệ giúp với những người tổ chức câu cá, câu đêm hay không?', '', '0938110791', 'ha.windy90@gmail.com', '', '', 1477788556, 0, '101.53.5.234'),
(314, 'Nguyễn Ngọc Phụng', 'Chào anh !\r\nEm c', 'Chào anh !\r\nEm có gửi mail cho khách sạn anh ! Anh vui lòng check mail và trả lời em sớm nha ! \r\nEm cám ơn ạ !\r\nPhung.', '', '0933953867', 'phungnguyen135@gmail.com', '', '', 1472660075, 0, '14.169.60.153'),
(316, 'nguyên văn Hải', 'Đặt phòng tết ', 'Đặt phòng tết âm lịch', '', '0916394175', 'nguyenhai052014@gmail.com', '', '', 1479304583, 0, '115.79.162.24'),
(317, 'Phạm thị kiều', 'Xin chào! E muốn ', 'Xin chào! E muốn đặc phòng vào ngày 31/12 đen 2/1/2017 e trả phòng, ko biết bên mình còn phòng ko ạ? E cần 2 phòng, e xin cảm ơn', '', '0979094944', 'Migoi3pe@gmail.com', '', '', 1479825288, 0, '171.226.101.203'),
(318, 'Trần Hải Anh', 'Em muốn đặt ph', 'Em muốn đặt phòng cho đoàn 7 người ở Bình Ba, 01 đêm ngày 3/12/2016.\r\nEm muốn xin giá phòng và các dịch vụ bên mình cung cấp (ăn uống, xe máy, ca nô...)\r\nEm cảm ơn và mong sớm nhận được hồi âm.\r\nP.S: Em gọi vào hai số hotline nhiều lần mà không được.', '', '01689643468', 'tranhaianh89@gmail.com', '', '', 1480077835, 0, '125.235.13.147'),
(319, 'Đoàn Thị Thu Ngân', 'Cần đặt phòng ', 'Cần đặt phòng gấp cho couple ngày 31/12/2016 - 01/01/2017', '', '0977212380', 'ngan.doan@breakthroughpower.com.vn', '', '', 1482655481, 0, '118.68.155.143'),
(320, 'Ho van tai', 'Cho hỏi Ks minh co', 'Cho hỏi Ks minh co may loài phòng va gia the nao , đoàn muon nghi 1 đem thu7 . Vui Long bao dùm minh nhe.', '', '0913632201', 'hovantai1002@yahoo.com', '', '', 1488192150, 0, '42.119.215.252'),
(321, 'Ho van tai', 'Cho hỏi Ks minh co', 'Cho hỏi Ks minh co may loài phòng va gia the nao , đoàn muon nghi 1 đem thu7 . Vui Long bao dùm minh nhe.', '', '0913632201', 'hovantai1002@yahoo.com', '', '', 1488196819, 0, '42.119.215.252'),
(322, 'Tran Van Quan', 'Đat phong 01 đêm ', 'Đat phong 01 đêm tối nay 01 giường đôi. Vui lòng xác nhận. Trần Văn Quân', '', '0906355839', 'Quanvianh@gmail.com', '', '', 1489697198, 0, '171.233.167.75'),
(323, 'le the hung', 'Vao 2ngay 30/4, 1/5 ', 'Vao 2ngay 30/4, 1/5 ksan con 5 phong doi kg?Gia 1phong/1 ngay dem la bao nhieu?', '', '0913477001', 'lethehunglt@gmail.com', '', '', 1490925825, 0, '113.185.22.178'),
(324, 'DOaArVlE', '1FPKAa http://www.Ln', '1FPKAa http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', '', 'YzdXZGjeUaBo', 'jimos4581rt1@hotmail.com', '', '', 1491005784, 0, '5.188.211.21'),
(325, 'eQrEyIgMZpwKnYWOu', 'ZzuiT0 http://www.Ln', 'ZzuiT0 http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', '', 'sMvAzmLFRFYLKza', 'jimos4581rt1@hotmail.com', '', '', 1491005784, 0, '5.188.211.21'),
(326, 'Nguyen Ngoc Luan', 'Đặt 3 phòng ngà', 'Đặt 3 phòng ngày 29/4 và 30/4', '', '0909289909', 'Ngocluan4119@gmail.com', '', '', 1492441523, 0, '100.98.15.168'),
(327, 'Nguyen Ngoc Luan', 'Đặt 3 phòng ngà', 'Đặt 3 phòng ngày 29/4 và 30/4', '', '0909289909', 'Ngocluan4119@gmail.com', '', '', 1492441533, 0, '100.98.15.168'),
(328, 'Le thi hong', 'Ngay 14-7 2017 Doan ', 'Ngay 14-7 2017 Doan chung toi  Khoang 30 nguoi     Theo  Hanh Trinh chung toi muon o  lai đao 2đem 3ngay  va muốn nghi tai khách san sai gon - binh ba  xin cho toi một so thống tin cu the ve   Phong o va gia ca', '', '004915772043463', 'Le thi hong312@ yahoo.de', '', '', 1493985258, 0, '178.3.165.20'),
(329, 'Phi', 'Tôi cần đặt kh', 'Tôi cần đặt khoảng 3 phòng từ ngày 3/6/2017 đến ngày 6/6/2017. Xin cho biết Ks có chương trình khuyến mãi gì không?', '', 'không cần gọi', 'hn.babyboy3@gmail.com', '', '', 1495095922, 0, '14.165.169.201'),
(330, 'RgKSIxHgSQSBVIqnoy', 'V78dy2 http://www.Ln', 'V78dy2 http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', '', 'EzFYuQYHIWQaaWT', 'jimos45812rt1@hotmail.com', '', '', 1495250530, 0, '5.188.211.10'),
(331, 'yQzjmDSUmXcLi', 'slguTZ http://www.Ln', 'slguTZ http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', '', 'GpHuFWBAdSzG', 'jimos45812rt1@hotmail.com', '', '', 1495250542, 0, '5.188.211.10'),
(332, 'Le thi hong', 'vào dem14-7-2017Chu', 'vào dem14-7-2017Chung toi muốn đặt phòng tại khách sạn  sài gòn -binh ba.    . Doan của tôi 20 người lon và 10 trẻ em    . Muốn dat 8 phòng ngủ lon dành cho 4 người 1 phòng . Vậy cho chúng tôi them thông tin của khách sạn', '', '.00491572043463', 'Lethihong312@yahoo.de', '', '', 1495256843, 0, '93.193.178.210');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `content_id` int(11) NOT NULL,
  `content_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contents`
--

INSERT INTO `contents` (`content_id`, `content_key`, `content_name`, `content_value`, `language`) VALUES
(26, 'contact', 'Thông tin liên hệ', '<div id=\"company_name\"><font size=\"3\"><b></b></font></div><span style=\"font-weight: normal; font-style: normal; text-decoration: none; color: rgb(255, 0, 0); background-color: rgb(255, 0, 0); letter-spacing: 0px; \"><div id=\"company_name\"><font size=\"3\"><b></b></font></div></span><span style=\"background-color: rgb(255, 0, 0); \"><span style=\"background-color: rgb(255, 0, 0); \"><font face=\"Arial\"><div id=\"company_name\" style=\"font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); font-weight: normal; text-align: left; \"><b><font size=\"4\">        NanaPet Online Shop</font></b></div><div id=\"company_name\"><br></div><div id=\"company_name\"><br><font size=\"3\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; \">Bắt đầu</span><span class=\"Apple-tab-span\" style=\"background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; white-space: pre; \">		</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; \"><b>2010</b></span></font></div><div id=\"company_name\" style=\"font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); text-align: left; \"><span style=\"color: rgb(105, 105, 105); line-height: 19px; background-color: rgb(255, 255, 255); \"><font size=\"3\">Hotline<span class=\"Apple-tab-span\" style=\"white-space:pre\">		</span><b>0933.103.203</b></font></span></div><div id=\"company_name\" style=\"font-style: normal; letter-spacing: 0px; text-decoration: none; text-align: left; \"><font color=\"#696969\" size=\"3\"><span style=\"line-height: 19px;\">Email<span class=\"Apple-tab-span\" style=\"white-space:pre\">		</span><b>support@nanapet.com</b></span></font></div><div id=\"company_name\" style=\"font-style: normal; letter-spacing: 0px; text-decoration: none; text-align: left; \"><font color=\"#696969\" size=\"3\"><span style=\"line-height: 19px;\">Website<span class=\"Apple-tab-span\" style=\"white-space:pre\">		</span><a href=\"http://nanapet.com/index.htm\"><b>nanapet.com</b></a></span></font></div><div id=\"company_name\" style=\"font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); text-align: left; \"><span style=\"color: rgb(105, 105, 105); line-height: 19px; background-color: rgb(255, 255, 255); \"><br></span></div></font></span></span><div id=\"company_name\"><span style=\"background-color: rgb(255, 255, 255); \"><font face=\"Arial\" size=\"3\"><div style=\"text-align: right; \"><font style=\"color: rgb(105, 105, 105); \"><b style=\"line-height: 19px; \"><br></b></font></div><div style=\"line-height: 19px; text-align: left; \"><font style=\"color: rgb(105, 105, 105); \">Business hours<b> </b></font><b>09:00 - 20:00</b><font style=\"color: rgb(105, 105, 105); \"> các ngày trong tuần</font></div><div style=\"line-height: 19px; text-align: left; \"><font style=\"color: rgb(105, 105, 105); \"><br></font></div><div style=\"line-height: 19px; text-align: left; \"><font color=\"#696969\"><br></font></div></font></span></div><div id=\"company_name\"><div style=\"text-align: left;\"><strong><font color=\"#696969\" face=\"Arial\" size=\"3\"><br></font></strong></div><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"text-align: left; line-height: 19px; background-color: rgb(255, 255, 255); width: 366px; height: 101px; \"><tbody><tr><td width=\"317\" valign=\"top\"><font color=\"#696969\" face=\"Arial\"><br></font></td><td width=\"317\" valign=\"top\"><font color=\"#696969\" face=\"Arial\"><br><br></font></td></tr></tbody></table></div>', 'vi'),
(24, 'footer', 'Chân trang', '<div id=\"company_name\"><font color=\"#4f4f4f\" face=\"Arial, Helvetica, sans-serif\"><span style=\"font-size: 12px; line-height: 19px;\"><br></span></font></div>', 'vi'),
(25, 'header', 'Đầu trang', '<div id=\"company_name\"><br></div>', 'vi'),
(27, 'gioithieu', 'Giới thiệu', 'Giới thiệu', 'vi'),
(28, 'thanhtoan', 'Thanh Toán', '<div><font color=\"#00bfff\" face=\"Arial\" size=\"2\"><b><br></b></font></div>', 'vi'),
(29, 'huongdan', 'Hướng Dẫn', 'Hướng Dẫn', 'vi'),
(30, 'contact', 'Thông tin liên hệ', '<div id=\"company_name\">Engineering Co., Ltd Planet (DC Tech)</div><span id=\"result_box\" class=\"\" lang=\"en\"><span style=\"\" title=\"\">Address: 64 Street No. 12, Ward 11, Go Vap, Ho Chi Minh.<br></span><span style=\"\" title=\"\">Phone: (08) 39965737 - Fax: (08) 39212189<br></span><span style=\"\" title=\"\">Hotline: 0903 723303 - 0127 3993678</span></span>', 'en'),
(31, 'footer', 'Chân trang', '<span id=\"result_box\" class=\"\" lang=\"en\"><span style=\"\" title=\"\">Business license number: 0103013839, where the issue: HCMC Department of Industry and Commerce, issued on 21/09/2010<br></span><span style=\"\" title=\"\">License establish websites on the Internet some 90/GP-BC, issued on 07/17/2010</span></span>', 'en'),
(32, 'header', 'Đầu trang', '<div id=\"company_name\">Engineering Co., Ltd Planet (DC Tech)</div><span id=\"result_box\" class=\"\" lang=\"en\"><span style=\"\" title=\"\">Address: 64 Street No. 12, Ward 11, Go Vap, Ho Chi Minh.<br></span><span style=\"\" title=\"\">Phone: (08) 39965737 - Fax: (08) 39212189<br></span><span style=\"\" title=\"\">Hotline: 0903 723303 - 0127 3993678</span></span>', 'en'),
(44, 'gioithieu', 'Giới thiệu', 'about us<br>', 'en'),
(36, 'thanhtoan', 'Thanh Toán', 'payment', 'en'),
(37, 'huongdan', 'Hướng Dẫn', 'Guides', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id_coupon` int(11) NOT NULL,
  `code_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_cost_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_cost_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_coupon` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_coupon` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deadline_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `file_download` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link_download` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `count_download` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_add` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groupmember`
--

CREATE TABLE `groupmember` (
  `idGroupMember` int(11) NOT NULL,
  `NameGroupMember` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisCount` int(10) DEFAULT '0',
  `Date` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guest_comment`
--

CREATE TABLE `guest_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `browse` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sendmail` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product`
--

CREATE TABLE `image_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product_tours`
--

CREATE TABLE `image_product_tours` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_galary`
--

CREATE TABLE `img_galary` (
  `galary_id` int(11) NOT NULL,
  `galary_district_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_begin_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_end_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_fee` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_status` int(11) DEFAULT NULL,
  `galary_sort` int(11) DEFAULT NULL,
  `_delete` int(11) DEFAULT '0',
  `galary_date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ip_based_access`
--

CREATE TABLE `ip_based_access` (
  `id` int(11) NOT NULL,
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `page_id` int(11) NOT NULL,
  `page_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`page_id`, `page_key`, `page_title`, `title`, `keywords`, `description`, `language`) VALUES
(1, 'home', 'Trang chủ', 'SaiGonBinhBa', 'nanapet', 'nanapet', 'vi'),
(7, 'gioithieu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'vi'),
(8, 'huongdan', 'Hướng dẫn', 'Hướng dẫn', 'Hướng dẫn', 'Hướng dẫn', 'vi'),
(9, 'thanhtoan', 'Thông tin thanh toán', 'Thông tin thanh toán', 'Thông tin thanh toán', 'Thanh toán', 'vi'),
(10, 'contact', 'Liên hệ', 'Liên hệ', 'Liên hệ', 'Liên hệ', 'vi'),
(19, 'thanhtoan', 'Thông tin thanh toán', 'Payment', 'Payment', 'Payment', 'en'),
(15, 'search', 'Tìm kiếm', 'Tìm kiếm', 'Tìm kiếm', 'Tìm kiếm', 'vi'),
(17, 'gioithieu', 'Giới thiệu', 'About us', 'About us', 'About us', 'en'),
(18, 'huongdan', 'Hướng dẫn', 'Guies', 'Guies', 'Guies', 'en'),
(25, 'search', 'Tìm kiếm', 'Search', 'Search', 'Search', 'en'),
(20, 'contact', 'Liên hệ', 'Contact', 'Contact', 'Contact', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kindhelp`
--

CREATE TABLE `kindhelp` (
  `idKindHelp` int(11) NOT NULL,
  `nameKindHelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `flag` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `kindhelp`
--

INSERT INTO `kindhelp` (`idKindHelp`, `nameKindHelp`, `flag`) VALUES
(30, 'Phương thức vận chuyển', 1),
(31, 'Cách thức thanh toán', 1),
(32, 'Câu hỏi thường gặp', 1),
(33, 'Hướng dẫn mua hàng', 1),
(34, 'Khác ...', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lag_config`
--

CREATE TABLE `lag_config` (
  `id` int(11) NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lag_config`
--

INSERT INTO `lag_config` (`id`, `key_name`, `value`, `language`) VALUES
(102, 'service', 'SERVICE', 'en'),
(101, 'service', 'DỊCH VỤ', 'vi'),
(100, 'payment', 'Payment', 'en'),
(99, 'payment', 'Thanh toán', 'vi'),
(98, 'delivery', 'Delivery', 'en'),
(97, 'delivery', 'Giao hàng', 'vi'),
(96, 'htorder', 'Cách đặt hàng', 'vi'),
(95, 'htorder', 'How to Order', 'en'),
(94, 'promotions', 'Promotions', 'en'),
(93, 'promotions', 'Thông tin khuyến mãi', 'vi'),
(92, 'knowledge', 'Kiến thức cho mẹ và bé', 'vi'),
(91, 'knowledge', 'Knowledge for mother and baby', 'en'),
(90, 'addcart', 'Add cart', 'en'),
(89, 'addcart', 'Thêm vào giỏ hàng', 'vi'),
(88, 'detail', 'Detail', 'en'),
(87, 'detail', 'Chi tiết', 'vi'),
(86, 'new_product', 'New product', 'en'),
(85, 'new_product', 'Sản phẩm mới', 'vi'),
(84, 'findnotfile', 'Find not file', 'en'),
(83, 'findnotfile', 'Không tìm thấy file', 'vi'),
(82, 'del_all_poduct', 'All product of catalogue will delete all', 'en'),
(81, 'del_all_poduct', 'Tất cả sản phẩm thuộc danh mục này sẽ bị xóa hết\r\n', 'vi'),
(80, 'root_cats', 'Root catalogue', 'en'),
(79, 'root_cats', 'Danh mục gốc', 'vi'),
(78, 'err_size', 'File size is more than ', 'en'),
(77, 'err_size', 'Dung lượng file vượt quá mức cho phép', 'vi'),
(76, 'err_checkExtent', 'File extention in ', 'en'),
(75, 'err_checkExtent', 'Chỉ chấp nhận file', 'vi'),
(74, 'err_product_detail_short', 'Product detail is short', 'en'),
(73, 'err_product_detail_short', 'Chi tiết sản phẩm quá ngắn', 'vi'),
(72, 'err_product_name_short', 'Product name is short', 'en'),
(71, 'err_product_name_short', 'Tên sản phẩm quá ngắn', 'vi'),
(70, 'update_product', 'Update product', 'en'),
(69, 'update_product', 'Cập nhật sản phẩm', 'vi'),
(68, 'error', 'Error', 'en'),
(67, 'error', 'Lỗi', 'vi'),
(66, 'product_detail', 'Product detail', 'en'),
(65, 'product_detail', 'Chi tiết sản phẩm', 'vi'),
(64, 'decription', 'Decription', 'en'),
(63, 'decription', 'Mô tả', 'vi'),
(62, 'product_of_catalogue', 'Catalogue', 'en'),
(61, 'product_of_catalogue', 'Thuộc danh mục', 'vi'),
(60, 'price', 'Price', 'en'),
(59, 'price', 'Giá', 'vi'),
(58, 'add_product', 'Add product', 'en'),
(57, 'add_product', 'Thêm sản phẩm', 'vi'),
(56, 'image', 'Image', 'en'),
(55, 'image', 'Hình ảnh', 'vi'),
(54, 'product_name', 'Product name', 'en'),
(53, 'product_name', 'Tên sản phẩm', 'vi'),
(52, 'product_manager', 'Product manager', 'en'),
(51, 'product_manager', 'Quản lý sản phẩm', 'vi'),
(50, 'updatecat', 'Catalogue update', 'en'),
(49, 'updatecat', 'Cập nhật danh mục', 'vi'),
(48, 'addcat', 'Add catalogue', 'en'),
(47, 'addcat', 'Thêm danh mục', 'vi'),
(46, 'date_modifiled', 'Last modifiled', 'en'),
(45, 'date_modifiled', 'Lần sửa cuối', 'vi'),
(44, 'err_cat_name_valid', 'Catalogories is valid', 'en'),
(43, 'err_cat_name_valid', 'Danh mục này đã có trong CSDL', 'vi'),
(42, 'err_cat_name_short', 'Catalogories name is short ', 'en'),
(41, 'err_cat_name_short', 'Tên danh mục quá ngắn', 'vi'),
(40, 'update_cat', 'Catalogories update ', 'en'),
(39, 'update_cat', 'Cập nhật danh mục', 'vi'),
(38, 'update', 'Update', 'en'),
(37, 'update', 'Cập nhật', 'vi'),
(36, 'reset', 'Reset', 'en'),
(35, 'reset', 'Làm lại', 'vi'),
(34, 'add', 'Add new', 'en'),
(33, 'add', 'Thêm mới', 'vi'),
(32, 'show', 'Hiển thị', 'vi'),
(31, 'show', 'Show', 'en'),
(30, 'hidden', 'Đang ẩn', 'vi'),
(29, 'hidden', 'Hidden', 'en'),
(28, 'del_confirm', 'Are you sure delete', 'en'),
(27, 'del_confirm', 'Bạn có chắc chắn là muốn xoá', 'vi'),
(26, 'add_cat', 'Add cats', 'en'),
(25, 'add_cat', 'Thêm danh mục', 'vi'),
(24, 'del_check', 'Detele check', 'en'),
(23, 'del_check', 'Xoá chọn', 'vi'),
(22, 'page', 'Page', 'en'),
(21, 'page', 'Trang', 'vi'),
(20, 'date_added', 'Add date', 'en'),
(19, 'date_added', 'Ngày thêm', 'vi'),
(18, 'status', 'Status', 'en'),
(17, 'status', 'Trạng thái', 'vi'),
(16, 'order', 'Order', 'en'),
(15, 'order', 'Sắp xếp', 'vi'),
(14, 'cat_name', 'Catalogue name', 'en'),
(13, 'cat_name', 'Tên danh mục', 'vi'),
(12, 'edit', 'Edit', 'en'),
(11, 'edit', 'Sửa', 'vi'),
(10, 'del', 'Delete', 'en'),
(9, 'del', 'Xoá', 'vi'),
(8, 'cat_manage', 'Catalogue manage', 'en'),
(7, 'cat_manage', 'Quản lý danh mục', 'vi'),
(6, 'home', 'Trang chủ', 'vi'),
(5, 'home', 'Home', 'en'),
(4, 'contact', 'Liên hệ', 'vi'),
(3, 'contact', 'Contact', 'en'),
(2, 'product', 'Tên sản phẩm', 'vi'),
(1, 'product', 'Product name', 'en'),
(103, 'productSell', 'selling products', 'en'),
(104, 'productSell', 'Sản phẩm bán chạy', 'vi'),
(105, 'updating', 'Đang cập nhật', 'vi'),
(106, 'updating', 'updating', 'en'),
(107, 'cart1', 'Bạn đang có', 'vi'),
(108, 'cart1', 'You have', 'en'),
(109, 'cart2', 'items', 'en'),
(110, 'cart2', 'sản phẩm', 'vi'),
(111, 'cart', 'Giỏ hàng', 'vi'),
(112, 'cart', 'Cart', 'en'),
(113, 'not_find_product', 'Không tìm thấy sản phẩm này', 'vi'),
(114, 'not_find_product', 'Product not found', 'en'),
(115, 'code', 'Mã', 'vi'),
(116, 'code', 'Code', 'en'),
(117, 'addcart2', 'Đặt hàng', 'vi'),
(118, 'addcart2', 'Add Cart', 'en'),
(119, 'product2', 'SẢN PHẨM', 'vi'),
(120, 'product2', 'PRODUCT', 'en'),
(121, 'productcat', 'DANH MỤC SẢN PHẨM', 'vi'),
(122, 'productcat', 'CATEGORIES', 'en'),
(123, 'product3', 'Product', 'en'),
(124, 'product3', 'Sản phẩm', 'vi'),
(127, 'entertainment', 'ENTERTAINMENT', 'en'),
(128, 'entertainment', 'GIẢI TRÍ VỚI BÉ YÊU', 'vi'),
(129, 'contact2', 'LIÊN HỆ', 'vi'),
(130, 'contact2', 'CONTACT', 'en'),
(131, 'amount', 'Số lượng', 'vi'),
(132, 'amount', 'Amount', 'en'),
(133, 'delete', 'Xóa', 'vi'),
(134, 'delete', 'Delete', 'en'),
(135, 'info_cus', 'Thông tin khách hàng', 'vi'),
(136, 'info_cus', 'Custommer info', 'en'),
(137, 'contact_fullname', 'Họ và tên', 'vi'),
(138, 'contact_fullname', 'Full name', 'en'),
(139, 'contact_address', 'Address', 'en'),
(140, 'contact_address', 'Địa chỉ', 'vi'),
(141, 'contact_phone', 'Phone', 'en'),
(142, 'contact_phone', 'Điện thoại', 'vi'),
(143, 'com_other', 'Yêu cầu khác', 'vi'),
(144, 'com_other', 'Comment', 'en'),
(145, 'lagtotal', 'Tổng', 'vi'),
(146, 'lagtotal', 'Total', 'en'),
(147, 'send_cart', 'Đặt hàng', 'vi'),
(148, 'send_cart', 'Send', 'en'),
(149, 'cart_is_empty', 'Chưa có sản phẩm nào trong giỏ hàng', 'vi'),
(150, 'cart_is_empty', 'Cart is empty', 'en'),
(151, 'sure_del', 'Bạn có chắc chắn là muốn xóa ?', 'vi'),
(152, 'sure_del', 'Are you sure ?', 'en'),
(153, 'cart_send_ok', 'Đã gởi giỏ hàng.', 'vi'),
(154, 'cart_send_ok', 'Send cart successfull', 'en'),
(155, 'no_info', 'Bạn chưa nhập đủ thông tin liên lạc', 'vi'),
(156, 'no_info', 'You have not entered enough information contact', 'en'),
(157, 'total_traffic', 'Total traffic', 'en'),
(158, 'total_traffic', 'Tổng lượt truy cập', 'vi'),
(159, 'search', 'Tìm kiếm\r\n', 'vi'),
(160, 'search', 'Search', 'en'),
(161, 'com_other2', 'Nội dung', 'vi'),
(162, 'com_other2', 'Comment', 'en'),
(163, 'error_email', 'Email nhập không chính xác!', 'vi'),
(164, 'error_email', 'Email is correct!', 'en'),
(165, 'nameisshort', 'Tên quá ngắn', 'vi'),
(166, 'nameisshort', 'Name is short', 'en'),
(167, 'emailisshort', 'Email quá ngắn', 'vi'),
(168, 'emailisshort', 'Email is short', 'en'),
(169, 'addressisshort', 'Địa chỉ quá ngắn', 'vi'),
(170, 'addressisshort', 'Address is short', 'en'),
(171, 'phoneisshort', 'Số điện thoại quá ngắn', 'vi'),
(172, 'phoneisshort', 'Phone is short', 'en'),
(173, 'messisshort', 'Nội dung quá ngắn', 'vi'),
(174, 'messisshort', 'Comment is short', 'en'),
(175, 'sendmailerror', 'Không thể send mail,vui lòng thử lại sau !', 'vi'),
(176, 'sendmailerror', 'Can\'t send mail.Try againt !', 'en'),
(177, 'notfind', 'Không tìm thấy sản phẩm nào', 'vi'),
(178, 'notfind', 'Product find is empty', 'en'),
(179, 'newsOther', 'Các bản tin khác', 'vi'),
(180, 'newsOther', 'News other', 'en'),
(181, 'order_manage', 'Quản lý đơn hàng', 'vi'),
(182, 'order_manage', 'Order manager', 'en'),
(183, 'selectcontent', 'Select content', 'en'),
(184, 'selectcontent', 'Chọn nội dung', 'vi'),
(185, 'content', 'Nội dung', 'vi'),
(186, 'content', 'Content', 'en'),
(187, 'move', 'Chuyển', 'vi'),
(188, 'move', 'Move', 'en'),
(189, 'infowebsite', 'Information website', 'en'),
(190, 'infowebsite', 'Thông tin chung website', 'vi'),
(191, 'viewastree', 'View as tree', 'en'),
(192, 'viewastree', 'Xem dạng cây', 'vi'),
(193, 'ofcatalogue', 'Catalogue', 'en'),
(194, 'ofcatalogue', 'Thuộc danh mục', 'vi'),
(195, 'shi', 'Ẩn/hiện', 'vi'),
(196, 'shi', 'Show/hide', 'en'),
(197, 'viewlist', 'View as list', 'en'),
(198, 'viewlist', 'Xem dạng danh sách', 'vi'),
(199, 'cat_managertree', 'Quản lý danh mục - dạng cây', 'vi'),
(200, 'cat_managertree', 'Catalogue manager tree', 'en'),
(201, 'expand', 'Mở rộng', 'vi'),
(202, 'expand', 'Expand', 'en'),
(203, 'collapse', 'Collapse', 'en'),
(204, 'collapse', 'Thu gọn', 'vi'),
(205, 'ppromotions', 'Product Promotions', 'en'),
(206, 'ppromotions', 'Sản phẩm bán chạy', 'vi'),
(207, 'pnew', 'Sản phẩm mới', 'vi'),
(208, 'pnew', 'Product new', 'en'),
(209, 'sellers', 'Sellers', 'en'),
(210, 'sellers', 'Sản phẩm bán chạy', 'vi'),
(211, 'enternameproduct', 'Enter product name', 'en'),
(212, 'enternameproduct', 'Nhập tên sản phẩm', 'vi'),
(213, 'err_select_cat', 'You have not selected product categories', 'en'),
(214, 'err_select_cat', 'Bạn chưa chọn danh mục sản phẩm', 'vi'),
(215, 'newsmanager', 'Quản lý tin tức', 'vi'),
(216, 'newsmanager', 'News manager', 'en'),
(217, 'title', 'Title', 'en'),
(218, 'title', 'Tiêu đề', 'vi'),
(219, 'addnews', 'Thêm tin', 'vi'),
(220, 'addnews', 'Add news', 'en'),
(221, 'detailnews', 'Detail', 'en'),
(222, 'detailnews', 'Chi tiết tin tức', 'vi'),
(223, 'upnews', 'Cập nhật tin tức', 'vi'),
(224, 'upnews', 'News update', 'en'),
(225, 'onlinename', 'Online name', 'en'),
(226, 'onlinename', 'Tên trực tuyến', 'vi'),
(227, 'phone', 'Điện thoại', 'vi'),
(228, 'phone', 'Phone', 'en'),
(229, 'add', 'Thêm mới', 'vi'),
(230, 'add', 'Add', 'en'),
(231, 'supportCus', 'Customer Support', 'en'),
(232, 'supportCus', 'Hỗ trợ khách hàng', 'vi'),
(233, 'linkman', 'Management link', 'en'),
(234, 'linkman', 'Quản lý liên kết', 'vi'),
(235, 'addlink', 'Add link', 'en'),
(236, 'addlink', 'Địa chỉ liên kết', 'vi'),
(237, 'uplink', 'Cập nhật liên kêt', 'vi'),
(238, 'uplink', 'Link update', 'en'),
(239, 'err_select_file', 'You have not selected file', 'en'),
(240, 'err_select_file', 'Bạn chưa chọn file', 'vi'),
(241, 'delivery', 'Delivery', 'en'),
(242, 'delivery', 'Giao hàng', 'vi'),
(243, 'detailorder', 'Chi tiết đơn hàng', 'vi'),
(244, 'detailorder', 'Order detail', 'en'),
(245, 'colorweb', 'Màu chữ', 'vi'),
(246, 'colorweb', 'Color', 'en'),
(247, 'configweb', 'Cấu hình chung cho website', 'vi'),
(248, 'configweb', 'Config website', 'en'),
(249, 'note_change_admin', 'Khuyến cáo khách hàng không nên sử dụng tên truy cập và mật khẩu quá dễ đoán. Tránh dùng tên admin hoặc tên website công ty làm mật khẩu.', 'vi'),
(250, 'note_change_admin', 'Advised customers not to use the username and password too easy to guess. Avoid using the name admin or company name website as a password.', 'en'),
(251, 'new', 'Mới', 'vi'),
(252, 'new', 'New', 'en'),
(253, '5char', 'Minimum 5 characters', 'en'),
(254, '5char', 'Tối thiểu 5 ký tự', 'vi'),
(255, 'psecurity', 'Point security', 'en'),
(256, 'psecurity', 'Điểm bảo mật', 'vi'),
(257, 'point', 'Point', 'en'),
(258, 'point', 'Điểm', 'vi'),
(259, 'reEnterpass', 'Re-enter password', 'en'),
(260, 'reEnterpass', 'Nhập lại mật khẩu', 'vi'),
(261, 'changacc', 'Thay đổi thông tin', 'vi'),
(262, 'changacc', 'Change account', 'en'),
(263, 'err_enter_pass', 'Bạn chưa nhập mật khẩu truy cập', 'vi'),
(264, 'err_enter_pass', 'Your password is required', 'en'),
(265, 'err_user_is_short', 'Tên đăng nhập mới quá ngắn', 'vi'),
(266, 'err_user_is_short', 'Login name is short', 'en'),
(267, 'err_reenter_pass', 'Mật khẩu nhập lại chưa đúng', 'vi'),
(268, 'err_reenter_pass', 'Enter the correct password', 'en'),
(269, 'err_pass_is_short', 'Mật khẩu mới quá ngắn', 'vi'),
(270, 'err_pass_is_short', 'New password is short', 'en'),
(271, 'err_pass_not', 'Mật khẩu truy cập không đúng', 'vi'),
(272, 'err_pass_not', 'Password incorrect', 'en'),
(273, 'last_login_admin', 'Lần đăng nhập gần đây nhất của bạn là', 'vi'),
(274, 'last_login_admin', 'Last login', 'en'),
(275, 'hello', 'Hello', 'en'),
(276, 'hello', 'Xin chào', 'vi'),
(277, 'note_admin', 'Nơi lưu ghi chú của admin', 'vi'),
(278, 'note_admin', 'Where to save notes admin', 'en'),
(279, 'hislogin', 'Lịch sử đăng nhập', 'vi'),
(280, 'hislogin', 'Login history', 'en'),
(281, 'information', 'Information', 'en'),
(282, 'information', 'Thông tin chung', 'vi'),
(283, 'navpro', 'Navigation - Products', 'en'),
(284, 'navpro', 'Danh mục - Sản phẩm', 'vi'),
(285, 'newsmanger', 'Quản lý tin tức', 'vi'),
(286, 'newsmanger', 'News manager', 'en'),
(287, 'news', 'News', 'en'),
(288, 'news', 'Tin tức', 'vi'),
(289, 'custommer', 'Khách hàng', 'vi'),
(290, 'custommer', 'Custommer', 'en'),
(291, 'ads', 'Quảng cáo', 'vi'),
(292, 'ads', 'Ads', 'en'),
(293, 'config', 'Cấu hình', 'vi'),
(294, 'config', 'Config', 'en'),
(295, 'logout', 'Đăng xuất', 'vi'),
(296, 'logout', 'Logout', 'en'),
(297, 'order2', 'Order', 'en'),
(298, 'order2', 'Đơn hàng', 'vi'),
(299, 'view', 'Xem', 'vi'),
(300, 'view', 'View', 'en'),
(301, 'logout_conf', 'Bạn có chắc chắn muốn thoát', 'vi'),
(302, 'logout_conf', 'Are you sure logout', 'en'),
(303, 'about', 'Giới thiệu', 'vi'),
(304, 'about', 'About us', 'en'),
(305, 'payment', 'Payment', 'en'),
(306, 'payment', 'Thanh Toán', 'vi'),
(307, 'guides', 'Guides', 'en'),
(308, 'guides', 'Hướng dẫn', 'vi'),
(309, 'pp', 'Sản phẩm bán chạy', 'vi'),
(310, 'pp', 'Products Promotional', 'en'),
(311, 'fp', 'Featured products', 'en'),
(312, 'fp', 'Sản phẩm đặc trưng', 'vi'),
(313, 'np', 'New Products', 'en'),
(314, 'np', 'Hàng mới về', 'vi'),
(315, 'call', 'Liên hệ', 'vi'),
(316, 'call', 'Call', 'en'),
(317, 'op', 'OTHER PRODUCTS', 'en'),
(318, 'op', 'SẢN PHẨM CÙNG LOẠI', 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_catalogue` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci NOT NULL,
  `news_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `news_shortcontent` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `date_added` int(11) NOT NULL,
  `last_modified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_ordered` int(11) NOT NULL DEFAULT '0',
  `news_view` int(11) NOT NULL,
  `news_wait` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu` int(11) DEFAULT '0',
  `help_flag` int(2) NOT NULL,
  `resource` text COLLATE utf8_unicode_ci,
  `author` text COLLATE utf8_unicode_ci,
  `translator` text COLLATE utf8_unicode_ci,
  `title_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relax` int(11) DEFAULT NULL,
  `upgrade_news_catalogue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_publisher` text COLLATE utf8_unicode_ci,
  `flag_publisher` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(672, '', '', 0, 'Ẩm thực Bình Ba Nha Trang - Mặn mòi hương vị biển', 'am-thuc-binh-ba-nha-trang-man-moi-huong-vi-bien', 'p-am-thuc-binh-ba-man-moi-huong-vi-bien-672.jpg', 1, 'Đến với Bình Ba, bạn không chỉ được tận hưởng không khí biển mát mẻ, những bãi tắm trong vắt mà còn được đắm chìm trong muôn vàn món ăn hải sản ngon không thể cưỡng lại.', '<HTML><head><style type=\"text/css\">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:\"lucida grande\", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}\r\n.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f8;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3a5795;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{max-height:590px;min-height:590px;max-width:500px;min-width:500px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #2f477a;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f8;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}\r\n.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}</style><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><style type=\"text/css\">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:\"lucida grande\", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}\r\n.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f8;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3a5795;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{max-height:590px;min-height:590px;max-width:500px;min-width:500px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #2f477a;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f8;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}\r\n.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}</style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify;\"><font size=\"2\"><b><font color=\"#ff1493\">1. Tôm hùm</font></b><br></font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_15.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\">Tại Bình Ba có 3 loại tôm hùm nổi tiếng đó là giống tôm đỏ, tôm xanh, tôm bông. Các loài này nuôi nhanh lớn lại có giá trị xuất khẩu cao, đem đến nguồn lợi chính cho người dân nơi đây. Tôm hùm thường chế biến rất đơn giản như hấp, nướng hay nấu cháo… nhưng cũng đủ làm say lòng thực khách với hương vị vừa béo ngọt vừa thơm phức. Đối với những tín đồ ẩm thực thì chích lấy huyết tôm hùm đem pha với rượu tạo nên mùi vị rất đặc biệt và hấp dẫn.</span><font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><b><br></b></span></font></font></p><p style=\"text-align: justify;\"><font size=\"2\" color=\"#ff1493\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><b>2. Nhum (Cầu Gai – Nhím Biển)</b></span></font></p><p style=\"text-align: center;\"><font size=\"2\"><font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><img src=\"/upload/bai_viet_1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"350\"></span></font></font></p><p style=\"text-align: justify;\"><font size=\"2\">Cầu Gai rất dễ chế biến, dùng để ăn sống với mùi tạt, tái chanh, đem nướng với bơ hoặc mỡ hành. Đặc biệt là món cháo Cầu Gai là sự kết hợp hoàn hảo giữa các sắc màu, mùi vị của các thực phẩm tạo nên một món ăn bổ dưỡng và là bài thuốc bồi bổ sức khỏe hữu hiệu. Cầu Gai còn được ví là nhâm sâm của biển.</font></p><p style=\"text-align: justify;\"><b style=\"line-height: 21px;\"><font size=\"2\" color=\"#ff1493\">3. Ốc Vú Nàng</font></b></p><p style=\"text-align: center;\"><font size=\"2\"><font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><img src=\"/upload/bai_viet_2.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"></span></font></font></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\">Ngoài tôm hùm, Cầu Gai, đảo Bình Ba còn có một món ăn đầy hình ảnh “gợi cảm” đó là ốc “Vú Nàng”. Ngồi ở bãi Nồm lộng gió, thưởng thức từng con ốc vàng thơm phức được nướng chín với mỡ hành, chấm với muối tiêu chanh Bình Ba… Than ôi. Tuyệt hảo! Thịt ốc không quá béo, không dai như nghêu, sò, không nhỏ dáng như hàu mà vừa ngọt, vừa giòn và có mùi thơm rất đặc trưng.</span></font></p><p style=\"text-align: justify;\"><b style=\"line-height: 21px;\"><font size=\"2\" color=\"#ff1493\">4. Cá Dzò (Kình)</font></b></p><p style=\"text-align: center;\"><font size=\"2\"><font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><img src=\"/upload/bai_viet_3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></span></font></font></p><p style=\"text-align: justify;\"><font size=\"2\">Nói về cá thì có lẽ gây ấn tượng nhất đó là món cá Dzò đem nướng lửa than, cuốn bánh tráng với một ít rau tươi và xoài sống, chấm với nước mắm chanh thì ắt hẳn sẽ làm bạn “quên lối về”.</font></p><p style=\"text-align: justify;\"><font size=\"2\" color=\"#ff1493\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><b>5. Cua Huỳnh Đế</b></span></font></p><p style=\"text-align: center;\"><font size=\"2\"><font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\"><img src=\"/upload/bai_viet_4.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></span></font></font></p><p style=\"text-align: justify;\"><font size=\"2\">Cách chế biến bánh xèo hải sản ở đây không khác nhiều so với bánh xèo ở khác vùng miền khác. Ngoài nhân hải sản cực kỳ tươi ngon với tôm, mực, nghêu, sò chín tới còn giữ nguyên được độ ngọt, điểm khác biệt nữa làm món bánh xèo hải sản Bình Ba trở nên đặc biệt là bánh vừa nhỏ, hơi giòn, hơi vàng, rất ít dầu mỡ nên ăn không ngán. Bởi thế, nhiều du khách đến thăm đảo, ghé lại phố ăn vặt Bình Ba, thưởng thức món bánh xèo hải sản ở đây hoài mà không biết chán.</font></p><p style=\"text-align: center;\"><b><font size=\"3\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\">Xem thông tin Tour Bình Ba tại đây.</a></font></b></p><p style=\"text-align: justify;\"><font size=\"2\"></font></p><div id=\"fb-root\" class=\" fb_reset fb_reset fb_reset\"><div style=\"position: absolute; top: -10000px; height: 0px; width: 0px;\"><div><iframe name=\"fb_xdm_frame_http\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_http\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"http://static.ak.facebook.com/connect/xd_arbiter/xRlIuTsSMoE.js?version=41#channel=f3b8289b84&origin=http%3A%2F%2Fwww.saigon-binhba.com\" style=\"border: none;\"></iframe><iframe name=\"fb_xdm_frame_https\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_https\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"https://s-static.ak.facebook.com/connect/xd_arbiter/xRlIuTsSMoE.js?version=41#channel=f3b8289b84&origin=http%3A%2F%2Fwww.saigon-binhba.com\" style=\"border: none;\"></iframe></div></div><div style=\"position: absolute; top: -10000px; height: 0px; width: 0px;\"><div></div></div><div style=\"position: absolute; top: -10000px; height: 0px; width: 0px;\"><div><iframe name=\"fb_xdm_frame_http\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_http\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"http://static.ak.facebook.com/connect/xd_arbiter/PqAPbTuc2cR.js?version=41#channel=f34598a138&origin=http%3A%2F%2Fsaigon-binhba.com\" style=\"border: none;\"></iframe><iframe name=\"fb_xdm_frame_https\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_https\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"https://s-static.ak.facebook.com/connect/xd_arbiter/PqAPbTuc2cR.js?version=41#channel=f34598a138&origin=http%3A%2F%2Fsaigon-binhba.com\" style=\"border: none;\"></iframe></div></div><div style=\"position: absolute; top: -10000px; height: 0px; width: 0px;\"><div></div></div><div style=\"position: absolute; top: -10000px; height: 0px; width: 0px;\"><div><iframe name=\"fb_xdm_frame_http\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_http\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"http://static.ak.facebook.com/connect/xd_arbiter/PqAPbTuc2cR.js?version=41#channel=f16fc673fc&origin=http%3A%2F%2Fsaigon-binhba.com\" style=\"border: none;\"></iframe><iframe name=\"fb_xdm_frame_https\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" id=\"fb_xdm_frame_https\" aria-hidden=\"true\" title=\"Facebook Cross Domain Communication Frame\" tabindex=\"-1\" src=\"https://s-static.ak.facebook.com/connect/xd_arbiter/PqAPbTuc2cR.js?version=41#channel=f16fc673fc&origin=http%3A%2F%2Fsaigon-binhba.com\" style=\"border: none;\"></iframe></div></div></div><script id=\"facebook-jssdk\" src=\"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3\"></script><script>(function(d, s, id) {  var js, fjs = d.getElementsByTagName(s)[0];  if (d.getElementById(id)) return;  js = d.createElement(s); js.id = id;  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3\";  fjs.parentNode.insertBefore(js, fjs);}(document, \'script\', \'facebook-jssdk\'));</script><p></p><p></p><p></p><p></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436001882, '1440325237', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn - Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'sài gòn bình ba, du lịch bình ba, hải sản bình ba', 'Sài Gòn - Bình Ba', 'Ẩm thực Bình Ba - Mặn mòi hương vị biển', 'thăm qua du lịch bình ba, thưởng thức hải sản bình ba', 'sài gòn bình ba, du lịch bình ba, hải sản bình ba', 0, ',2,', '', 1),
(673, '', '', 0, 'Đầu hè nhớ hòn đảo xinh đẹp Bình Ba Nha Trang', 'dau-he-nho-hon-dao-xinh-dep-binh-ba-nha-trang', 'p-dau-he-nho-hon-dao-xinh-dep-binh-ba-673.jpg', 1, 'Những tưởng hòn đảo phải dữ dằn, mạnh mẽ như ý nghĩa tên gọi, nhưng nơi đây lại ấn tượng bởi nét đẹp của sự dịu dàng, tình người, cùng giai điệu “La isla bonita” ngân nga mãi.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Những tưởng hòn đảo phải dữ dằn, mạnh mẽ như ý nghĩa tên gọi, nhưng nơi đây lại ấn tượng bởi nét đẹp của sự dịu dàng, tình người, cùng giai điệu “La isla bonita” ngân nga mãi.</font></span></p><p style=\"text-align: center;\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><img src=\"/upload/bai_viet_7.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></font></span></p><p style=\"text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><span style=\"text-align: center;\"><font size=\"2\">Giao thông đến Bình Ba rất thuận tiện. Nếu bạn đi từ TP.HCM chỉ cần đón xe khách và qua một đêm là đến. Còn bạn đi từ Hà Nội sẽ đón máy bay vào Cam Ranh, thêm 30 phút đi taxi đến cảng Ba Ngòi, lênh đênh một tiếng trên biển là đến được hòn đảo xinh đẹp này. Thời gian lý tưởng nhất cho chuyến khám phá Bình Ba là 3 ngày 2 đêm. Đây là hình ảnh đầu tiên về Bình Ba khi tàu sắp cập đảo.</font></span></span></p><p style=\"text-align: center;\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_5.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"><br></font></span></p><p></p><p></p><p><span><font size=\"2\">Cảnh tượng đẹp nhất về Bình Ba chắc chắn là biển. Nơi đây có 3 bãi biển với những đặc điểm khác nhau. Bãi Nhà Cũ nhỏ, yên bình, cát rất trắng và sạch. Du khách nghỉ ngơi ngắm trời ngắm đất, cảm nhận cát và nước biển xô vào người sau thời gian vừa bơi vừa lặn ngắm san hô. Trong ảnh là tàu chờ phía xa bãi Nhà Cũ.</font></span></p><p></p><div style=\"text-align: center;\"><img src=\"/upload/bai_viet_8.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" style=\"font-size: small;\"></div><p style=\"text-align: justify;\"><span><font size=\"2\">Rộng, đẹp, bao la, nhiều sóng nhất ở Bình Ba là bãi Nồm. Đến đây, khách thường phải đi xe máy. Địa điểm này được chắn hai đầu bởi hai cánh cung núi cao, khó có gì tuyệt vời hơn với du khách khi được nhảy sóng, hóng gió, nghịch cát dưới cái nắng, gió, sóng, cát nguyên sơ, hoang dã.</font></span></p><div style=\"text-align: center;\"><img src=\"/upload/bai_viet_9.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><p style=\"text-align: justify;\"><span><font size=\"2\">Gần nhà dân, bình yên nhất trong 3 bãi tắm là bãi Chướng. Sóng ở bãi biển này lặng nên là địa điểm lý tưởng cho những trò chơi trên biển như bóng nước, thi bơi ban ngày và đốt lửa trại, lắng nghe tiếng rì rào của biển ban đêm.</font></span></p><font size=\"2\"><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_8.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></div></font><span style=\"text-align: center;\"><div style=\"font-size: small; text-align: justify;\"><br></div><div style=\"font-size: small; text-align: justify;\">Rời Bình Ba, tạm biệt sự nồng hậu của những người dân trên đảo, khách du lịch nhất định đều đã mang về những ngụm nước biển lỡ uống khi lặn ngắm san hô, ấn tượng không thể phai mờ về cảnh sắc trời, biển, về gió, nắng, sóng nơi này. Đặc biệt nhất là đồ ăn. Bạn đừng quên mang về những con tôm hùm to, cá biển tươi ngon và những con ốc ngon nhất vì Bình Ba luôn sẵn sàng dành cho bạn những điều tuyệt vời.</div><p style=\"text-align: center;\"><font size=\"3\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\"><b>Xem thông tin Tour Bình Ba tại đây.</b></a></font></p></span><p></p><p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436003155, '1440325161', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div style=\"text-align: justify;\"><font size=\"3\">Sài Gòn Bình Ba</font></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 'Sài Gòn - Bình Ba', 'Đầu hè nhớ hòn đảo xinh đẹp Bình Ba', 'du lịch bình ba và thăm quan vẻ đẹp kỳ diệu của bình ba', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 0, ',4,', '', 1),
(674, '', '', 0, 'Đảo Bình Ba - Điểm đến cho những ai độc thân', 'dao-binh-ba-diem-den-cho-nhung-ai-doc-than', 'p-dao-binh-ba-diem-den-thu-vi-cho-nguoi-doc-than-674.jpg', 1, 'Việt Nam có khá nhiều bờ biển đẹp với các khu du lịch nổi tiếng như Đà Nẵng, Nha Trang, Phan Thiết, Long Hải… nhưng hiếm có nơi nào biển có cảnh đẹp hữu tình, say đắm với nhiều trải nghiệm kỳ lạ và thú vị như ở Bình Ba – một hòn đảo biệt lập, thuộc tỉnh Cam Ranh, Khánh Hòa, cách TP.Hồ Chí Minh hơn 300km.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Việt Nam có khá nhiều bờ biển đẹp với các khu du lịch nổi tiếng như Đà Nẵng, Nha Trang, Phan Thiết, Long Hải… nhưng hiếm có nơi nào biển có cảnh đẹp hữu tình, say đắm với nhiều trải nghiệm kỳ lạ và thú vị như ở Bình Ba – một hòn đảo biệt lập, thuộc tỉnh Cam Ranh, Khánh Hòa, cách TP.Hồ Chí Minh hơn 300km.</font></span></p><p style=\"text-align: justify; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><font size=\"2\">Chỉ có ở Đảo Bình Ba du khách mới có thể lang thang trên một hòn đảo với hơn 3000 dân sinh sống, nằm dài trên những bè cá nổi nuôi tôm hùm trên biển, đắm mình trong biển xanh trong, bắt cá hay ngắm san hô thỏa thích.</font></p><p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_4.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font><font size=\"2\"><b><br></b></font></p><p style=\"text-align: justify;\"><font size=\"2\" color=\"#ff1493\"><b>Thưởng thức hải sản</b></font></p><p style=\"text-align: justify;\"><font size=\"2\">Ở Bình Ba du khách sẽ được thưởng thức hải sản ngay tại các bè nuôi tôm cá của ngư dân. Hải sản tươi sống được chế biến đơn giản nhưng vẫn giữ được hết cái vị ngon ngọt của thịt cá, thơm của ốc, sò và ngậy của tôm. Nước chấm đơn giản là chén muối ớt xanh, giã thiệt nhuyễn, thêm chút bột ngọt, đường cho dịu rồi chút chua chua của chanh, món ăn đã hoàn thành. Chỉ cần đưa gần miệng, mùi thơm lành của cá đã kích thích vị giác, đưa đến đầu lưỡi, nước miếng đã ứa ra, cảm nhận vị thanh, ngọt và tươi của cá từ biển. Ngoài ra, du khách còn có thể thưởng thức tôm hùm được nuôi ngay tại bè với thực đơn phong phú nhưng món tôm hùm nướng trên bếp than đỏ rực vẫn được ưa thích nhất.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: justify;\"><font size=\"2\" color=\"#ff1493\"><b>Bắt cá, lặn ngắm san hô</b></font></p><p></p><p style=\"text-align: justify; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><font size=\"2\">Đã từng lặn ngắm ở nhiều bãi biển, nhưng lặn ngắm ở Bình Ba vẫn có nhiều trải nghiệm vô cùng khác lạ, đơn giản vì biển ở đây quá hoang sơ, san hô còn nhiều màu sắc rực rỡ chứ không nhàn nhạt, trắng trắng, mờ mờ một màu như ở những bãi biển khác. Kết hợp trong chuyến đi lặn ngắm san hô, du khách còn có thể tự mình câu cá, câu mực dưới sự giúp sức của ngư dân địa phương, bạn sẽ không khỏi ngạc nhiên vì mình có thể tay không bắt cá, mực, bạch tuộc ngay dưới biển.</font></p><div><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_27.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></font></p><p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"></p><div style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"></div><p></p><p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><font size=\"2\" color=\"#ff1493\"><b>Tắm biển</b></font><font size=\"2\" style=\"font-family: Arial; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(0, 0, 0); font-weight: normal;\"><br></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Có lẽ một hoạt động không thể bỏ qua khi đến với Bình Ba đó là tắm biển. Tắm biển ở Bình Ba không phải là nhảy sóng, vì biển Bình Ba vốn không nhiều sóng như ở Nha Trang hay Phan Thiết mà êm đềm, dịu nhẹ vì được che chắn bởi các dãy núi đá lớn. Du khách có thể nhảy ùm xuống biển từ trên bè hay trên thuyền vì biển ở đây phẳng lặng và trong xanh tuyệt đối.</font></p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_17.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\" color=\"#ff1493\"><b>Kết nối</b></font></p><p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\">Và dù cho nơi bạn đến tuyệt vời đến thế nào đi chăng nữa thì chuyến đi cũng sẽ bớt đi sự trọn vẹn nếu hành trình thiếu đi những người bạn cùng chia sẻ. Có ai đó đã từng nói, nơi bạn đến không quan trọng bằng bạn đi cùng ai có lẽ cũng một phần nói lên sự quan trọng của những người bạn đồng hành.</p><div style=\"text-align: center; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\"><b><font size=\"3\">Xem thông tin Tour Bình Ba tại đây.</font></b></a></div></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436005717, '1440325087', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Binh Ba</font><style>BODY { font-family:Arial;font-size:12px; } </style><style>BODY { font-family:Arial;font-size:12px; } </style>\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 'Sài Gòn - Bình Ba', 'Đảo Bình Ba - Điểm đến thú vị cho người độc thân', 'du lịch bình ba và thăm quan vẻ đẹp kỳ diệu của bình ba', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 0, ',4,', '', 1),
(675, '', '', 0, 'Một lần đến đảo Bình Ba, Khánh Hòa', 'mot-lan-den-dao-binh-ba-khanh-hoa', 'p-mot-lan-den-dao-binh-ba-khanh-hoa-675.jpg', 1, 'Bạn đã quá quen với Sài Gòn, Hà Nội nhộn nhịp đông đúc. Bạn cũng thường đến những điểm du lịch phổ biến, dịch vụ khá nhiều và chuyên nghiệp. Bạn có muốn trải nghiệm một chuyến du lịch khác biệt hơn không? Cuối tuần tới, hãy thử cùng bạn bè trốn cái nóng oi bức của Sài Gòn, cái chật chội của Hà Nội, hãy thử du lịch đảo Bình Ba (Cam Ranh, Khánh Hòa) để tận hưởng cái không khí mát mẻ của trời và biển. Bạn sẽ cảm nhận sự tinh khiết, nguyên sơ đến tận cùng.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p></p><p style=\"text-align: justify;\"><font size=\"2\">Bạn đã quá quen với Sài Gòn, Hà Nội nhộn nhịp đông đúc. Bạn cũng thường đến những điểm du lịch phổ biến, dịch vụ khá nhiều và chuyên nghiệp. Bạn có muốn trải nghiệm một chuyến du lịch khác biệt hơn không? Cuối tuần tới, hãy thử cùng bạn bè trốn cái nóng oi bức của Sài Gòn, cái chật chội của Hà Nội, hãy thử <font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\">du lịch đảo Bình Ba</span></font> <font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\">(Cam Ranh, Khánh Hòa)</span></font> để tận hưởng cái không khí mát mẻ của trời và biển. Bạn sẽ cảm nhận sự tinh khiết, nguyên sơ đến tận cùng.<br>Nằm cách thành phố Nha Trang khoảng 60km về phía nam, <a title=\"Khám phá thành phố Cam Ranh\" href=\"https://www.ivivu.com/blog/2013/06/kham-pha-thanh-pho-cam-ranh/\" style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; transition: all 0.2s ease 0s; -webkit-transition: all 0.2s ease 0s; outline: 0px;\">vịnh Cam Ranh</a> trải dài như một dải lụa xanh thẳm đẹp đến mê hồn, quanh năm nắng ấm chan hòa, bầu trời trong xanh tạo cho mặt vịnh một màu xanh rất dễ chịu.</font></p><p></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_18.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"250\" border=\"0\"></font><font size=\"2\"><br></font></p><div><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline;\"><font size=\"2\"><strong style=\"line-height: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; vertical-align: baseline;\"><font color=\"#ff1493\">Du lịch đảo Bình Ba</font></strong><font color=\"#111111\"> còn khá mới đối với dân hay đi du lịch theo tour, nhưng đối với dân phượt thì đây là một địa điểm vô cùng hấp dẫn. Là một đảo nhỏ nằm trên vịnh Cam Ranh, Bình Ba che chắn phong ba, bão táp cho vùng vịnh, giang rộng vòng tay bảo vệ tàu thuyền về trú ngụ khi gặp bão ngoài khơi. Chính vì vậy mà người dân nơi đây gọi tên đảo là Bình Ba.</font></font></p><p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\"><span id=\"more-4063\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"></span></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\">Từ cảng Ba Ngòi (càng Cam Ranh), bạn đi thuyền ra đảo khoảng 1 giờ đồng hồ. Ngồi trên tàu, bạn có thể thỏa thích ngắm cảnh trong vịnh. Thiên nhiên nơi đây đẹp gần như còn nguyên sơ: những bãi cát trắng vàng, trải dài mịn màng như chưa bao giờ có dấu chân người, đẹp nhất vẫn là những quần thể ghềnh đá granit do sự xâm thực của gió, của nước biển đã tạo nên những hình thù chồng chất kỳ lạ.</font></p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\">Gần đến đảo Bình Ba, bạn sẽ thấy có sự thay đổi về màu xanh của nước, mặt nước lúc này êm đềm, phẳng lặng, gió gần như không còn thổi, cảm giác nôn nao hiện lên khi bạn nhìn thấy xa xa những căn nhà mái ngói, những chiếc bè nuôi tôm hùm, thú vị nhất là khi tàu chạy ngang qua những chiếc bè mấy chú chó trên bè sủa inh ỏi, một cảm giác háo hức, mong chờ dâng lên trong lòng bạn.</font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\">Tàu gần cập bến, bạn sẽ ngỡ ngàng trước nước biển nơi đây, nước xanh trong vắt, nếu may mắn bạn có thể bắt gặp một đàn cá đang bơi lội xung quanh tàu. Đây sẽ là một tấm hình kỷ niệm mà bạn không thể nào quên được.</font></p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><div style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 21px; vertical-align: baseline; color: rgb(17, 17, 17);\"><font size=\"2\">Để xua tan cái mệt nhọc sau chặng đường dài, bạn có thể đến nhà người dân xin ở tạm, nghỉ ngơi thư giãn, sau đó hãy đừng quên khám phá đảo vào một buổi sáng tinh mơ nhé!</font><p style=\"text-align: center;\"><b><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\" target=\"_self\"><font size=\"3\">Xem thông tin Tour Bình Ba tại đây</font></a></b></p></div></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436006701, '1437495135', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, tour Bình Ba, khách sạn Bình Ba, ẩm thực Bình Ba', 'Sài Gòn - Bình Ba', 'Một lần đến đảo Bình Ba, Khánh Hòa', 'Du lịch Bình Ba và thăm quan vẻ đẹp kỳ diệu của Bình Ba', 'du lịch Bình Ba, tour Bình Ba, khách sạn Bình Ba, ẩm thực Bình Ba', 0, ',4,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(676, '', '', 0, 'Cắm trại và lặn biển ở Bình Ba', 'cam-trai-va-lan-bien-o-binh-ba', 'p-cam-trai-va-lan-bien-o-binh-ba-676.jpg', 1, 'Bạn sẽ hiểu, vì sao việc ngắm mặt trời lên hay lặng mình dưới bầu trời chi chít sao, bơi cùng những rặng san hô... lại có cảm giác hạnh phúc đến vậy.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div class=\"clearfix\" style=\"outline: none; border: 0px; margin: 0px; padding: 0px;\"><p style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"></p><p style=\"text-align: justify;\"><font size=\"2\">Bạn sẽ hiểu, vì sao việc ngắm mặt trời lên hay lặng mình dưới bầu trời chi chít sao, bơi cùng những rặng san hô... lại có cảm giác hạnh phúc đến vậy.</font></p><font size=\"2\"><div style=\"text-align: justify;\">Bình Ba - mới nhắc đến hai từ đấy thôi là bạn có thể thấy trái tim mình như ấm lại. Không chỉ bởi âm điệu nghe thật thân thương, mà giờ đây, Bình Ba đã trở nên quen thuộc hơn hết với mỗi người trẻ. Nhắm mắt lại và nhắc đến hai từ này, bạn có nhìn thấy biển xanh, thấy cát trắng, thấy nắng ấm vàng rực và thấy những chợ cá liêu xiêu?</div><div style=\"text-align: justify;\">Thật kỳ lạ khi chỉ sau khoảng 2 năm, Bình Ba bỗng vụt sáng và trở thành một trong những điểm đến được các bạn trẻ yêu thích nhất. Bình Ba hoang sơ và xinh đẹp. Những bãi biển dài với bờ cát trắng phau phau, nước biển xanh trong như ngọc lục bảo với những con sóng trắng như mây trên trời thả xuống. Nhưng điều người ta yêu hơn cảnh đẹp như tranh ở Bình Ba, đó là sự thanh bình của hòn đảo này. Chưa được ngành dịch vụ \"động chạm\", Bình Ba vẫn giữ nguyên nhịp sống bình lặng của một vùng quê biển. Tức là, đến Bình Ba, bạn sẽ phải sống... \"khổ\" một chút, sẽ phải chịu nóng một chút, chịu mệt một chút, thế nhưng bù lại, bạn sẽ được Bình Ba yêu thương ôm vào lòng và vỗ về với những trải nghiệm đáng đánh đổi nhất. Có lẽ bởi vậy mà ngay cả những kẻ vốn chỉ ưa nằm ườn bên bể bơi trong những resort hạng sang, cũng phải tò mò và tìm đến Bình Ba một lần cho biết.</div></font><p></p><p></p><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><iframe width=\"640\" height=\"360\" id=\"vcmedia_fr_794e0830e65a479691833d9773896e21\" name=\"vcmedia_fr_794e0830e65a479691833d9773896e21\" src=\"https://vscc-kenh14-hosting.vcmedia.vn/embed/794e0830e65a479691833d9773896e21?layout=&mouseauto=true\" frameborder=\"0\" allowfullscreen=\"\" scrolling=\"no\"></iframe></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Đến Bình Ba, bạn có thể chọn hoặc ở trong nhà nghỉ, hoặc mang theo một chiếc lều và cắm trại ngay ngoài bãi biển. Đó là một trải nghiệm rất tuyệt vời, bởi nó không chỉ cho bạn thấy được biển đêm và bầu trời sao đẹp đến thế nào, mà nó còn cho bạn thấy, bạn có thể hạnh phúc và vô lo ra sao khi vứt hết những mối lo ở đằng sau và chỉ hoà mình vào cảnh biển. </font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_0087-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\" style=\"cursor: none;\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6984-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\" style=\"cursor: none;\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_0117-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><div style=\"text-align: justify;\"><font size=\"2\">Ngắm những màu sắc rực rỡ của buổi bình minh là món quà đẹp nhất cho những trái tim yêu xê dịch.</font></div></span><div style=\"text-align: justify;\"><font size=\"2\">Và nếu đã ở Bình Ba, cũng đừng quên thử lặn biển, bởi màu biển xanh trong nơi này là lý tưởng nhất để bạn có thể ngắm những rặng san hô đẹp tuyệt. Bạn có thể mang sẵn đồ lặn đi hoặc thuê với giá 50k ở ngay tại đây. Hãy đi cano hoặc thuyền ra vùng biển có nhiều san hô và nhảy xuống làn nước trong vắt ấy, bạn sẽ hiểu rằng, tại sao có những người sẵn sàng từ bỏ tiện nghi để khoác ba lô lên đường và phiêu lưu.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6901-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\" style=\"cursor: none;\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6906-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Nước biển trong vắt màu ngọc và bãi cát trắng phau là \"đặc sản\" số 1 của Bình Ba khi đón tiếp khách du lịch tới thăm. </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6911-e975f.jpg\" w=\"1000\" h=\"1500\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Bạn làm thế nào để cưỡng lại vẻ quyến rũ này? </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6919-e975f.jpg\" w=\"1000\" h=\"1500\" alt=\"\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6920-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6926-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Bình Ba vẫn còn hoang sơ, tuy nhiên, dịch vụ bắt đầu len lỏi vào hòn đảo đầy tiềm năng này. </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6927-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6931-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6940-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Tạm gạt bỏ những khu resort tiện nghi hay các điểm du lịch đã quen tên, chắc chắn Bình Ba sẽ là một trải nghiệm rất đẹp và sống động cho những trái tim tươi trẻ. </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6968-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Nghiêm túc đấy, làm sao mà trái tim bạn có thể bình tĩnh khi nhìn thấy bãi biển này? </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_6972-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><span style=\"outline: none; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; padding: 0px;\"><font size=\"2\"><div style=\"text-align: justify;\">Màu nước trong vắt như thế này? </div><div style=\"text-align: justify;\"><br></div></font></span><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_7028-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\" style=\"cursor: none;\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://k14.vcmedia.vn/thumb_w/600/Xls9MZZojlbLEGjuOd6JdQvTycccc/Image/2015/06/bb/IMG_7029-e975f.jpg\" w=\"1000\" h=\"667\" alt=\"\" style=\"cursor: none;\"></font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Và một bãi biển hoang sơ mà đẹp đến nhường này?</font></div><div style=\"text-align: center;\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\" target=\"_self\"><b><font size=\"2\">Xem thông tin Tour Bình Ba tại đây</font></b></a></div><p></p><p></p></div>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436074400, '1437461284', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><a href=\"http://kenh14.vn/doi-song/cam-trai-va-lan-bien-o-binh-ba-trai-nghiem-tuyet-dinh-nen-thu-mot-lan-trong-doi-20150618104852504.chn\" target=\"_blank\"><font size=\"3\">Kênh 14</font></a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba', 'Kênh 14', 'Cắm trại và lặn biển ở Bình Ba', 'Tất cả các điểm đến trên hành trình đến Bình Ba', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba', 0, ',4,', '', 1),
(678, '', '', 0, 'Tôm hùm Bình Ba Nha Trang', 'tom-hum-binh-ba-nha-trang', 'p-tom-hum-binh-ba-dac-san-vung-bien-dao-binh-ba-678.jpg', 1, 'Từ những năm gần đây đảo Bình Ba, còn có biệt danh là đảo Tôm Hùm thu hút khách du lịch từ các vùng miền trên cả nước đến tham quan khá đông. Bình Ba cuốn hút con người ta không chỉ ở nơi thiên nhiên hoang dã, các bãi tắm còn nguyên sơ trong trẻo, những con đường đồi ngoằn ngèo xanh ngát mây trời, những người dân chân chất hiếu khách, dể mến...', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><font size=\"2\">Từ những năm gần đây <span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><a href=\"http://saigon-binhba.com\" title=\"đảo Bình Ba\">đảo Bình Ba</a></span><span style=\"margin: 0px; padding: 0px; border: 0px;\">, còn có biệt danh là </span><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><a href=\"http://saigon-binhba.com\" title=\"đảo tôm hùm\">đảo Tôm Hùm</a></span><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"> thu hút khách du lịch từ các vùng miền trên cả nước đến tham quan khá đông. </span><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">Bình Ba</span><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"> cuốn hút con người ta không chỉ ở nơi thiên nhiên hoang dã, các bãi tắm còn nguyên sơ trong trẻo, những con đường đồi ngoằn ngèo xanh ngát mây trời, những người dân chân chất hiếu khách, dễ mến... Mà hải sản nơi đây là vô cùng tươi ngon và phong phú, cộng thêm cái văn hóa ẩm thực riêng nơi đây là khá hấp dẫn và cuốn hút, khiến ai một lần đến đây không khỏi tắm tắc, xít xoa. Thứ nhất phải kể đến món hải sản đặc trưng đầu tiên của xứ đảo </span><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">Bình Ba</span><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"> đó là </span><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">tôm Hùm</span></font></p><p style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"></span></font></p><p></p><div style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" style=\"font-size: small;\"></div><div style=\"text-align: center;\"><br></div><font size=\"2\"><div style=\"text-align: justify;\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">Tôm hùm Bình Ba </span><span style=\"margin: 0px; padding: 0px; border: 0px;\">được bà con đánh bắt về nuôi theo truyền thống lồng, bè. Sử dụng nguồn thức ăn sẵn có tại địa phương như cá, cua, só, ốc, hến, cầu gai, mực... là thức ăn chủ yếu cũa tôm hùm. Quy trình nuôi kéo dài từ 18 đến 20 tháng mới cho xuất thịt.</span></div><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><div style=\"text-align: justify;\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">Tôm hùm </span><span style=\"margin: 0px; padding: 0px; border: 0px;\">ngộp hay còn gọi là tôm chết. Riêng loại tôm này cũng được chia ra nhiều loại khá rõ với các bảng giá khác nhau: Loại tôm chưa chết nhưng vì người nuôi thấy thể trạng của nó không tốt nên bắt lên bán theo giá tôm chết, riêng loại tôm này là ngon nhất, khoảng 99% so với thịt tôm sống. Loại tôm mới vừa chết không lâu, không vì các chứng bệnh truyền nhiểm do vi khuẩn gây ra, nên thịt còn khá ngon, khoảng 80% so với thịt tôm Hùm sống. Loại chết vì các căn bệnh nhiểm khuẩn như: đục thân, thối chân. loại này nếu có con tuy mới chết nhưng chỉ được thu mua giá rẻ hơn vì thịt không còn thơm ngon nữa. Loại tôm chết khi còn mềm thân vì mới lột vỏ nhưng thể trạng yếu không làm cứng vỏ lại được nên chết. Loại này ăn khá ngon và lợi thịt. Loại tôm Hùm chết khá lâu, có bắt mùi thối, thịt tôm bở không còn vị ngọt... loại này các bạn thường được thấy chào bán tại các chợ trôi nổi trong thành phố, các bà gánh hàng rong, luột hoặc nướng sẳn. Có điều họ đã có xử lý thuốc khử mùi đặc biệt nào đó để qua mặt khách hàng. Lời khuyên không nên mua dùng những nơi như thế này vì có khi tiền mất tật mang đấy.</span></div></span><span style=\"text-align: start;\"><div style=\"text-align: justify;\">Thông thường <span style=\"border-style: initial; border-color: initial; background-color: rgb(255, 255, 255);\">tôm hùm Bình Ba </span>chỉ được các thương lái chuyên xuất hàng qua Trung Quốc đến thu mua tập trung theo từng đợt với số lượng lớn nên bà con phải tranh thủ bắt tôm bán vào các ngày này để tranh thủ xuống giống mới cho đợt tôm sau.</div><div style=\"text-align: justify;\"><br></div></span><div style=\"text-align: center;\"><img src=\"/upload/tom-hum-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><div style=\"text-align: justify;\"><br></div><span style=\"text-align: start;\"><div style=\"text-align: justify;\">Tổng quát lại như chúng ta đã biết thịt tôm Hùm là loại thực phẩm cao cấp khá đắc giá, nhất là khi các bạn phải đi ăn tại các nhà hàng. Trên thực tế giá tại các nhà hàng tương đối khá cao hơn giá gốc vì nhiều nguyên nhân khác nhau. Tuy nhiên các bạn vẩn có thể liên hệ để mua tôm hùm với giá gốc rồi làm tiệc tại nhà vui vẻ cùng người thân và bạn bè, cùng thưởng thức vị tươi ngon thơm lừng của <span style=\"border-style: initial; border-color: initial; background-color: rgb(255, 255, 255);\">tôm hùm Bình Ba </span>trứ danh như câu ca dao:</div></span><span style=\"text-align: -webkit-center;\"><div style=\"text-align: center;\"><font color=\"#ff1493\">Yến Sào Hòn Nội Vịt lội Nình Hòa <span style=\"border-style: initial; border-color: initial; background-color: rgb(255, 255, 255);\">Tôm Hùm Bình Ba</span> Nai khô Duyên Khánh Cá Trầu Vỏ Cạnh Sò Huyết THủy Triều Đời anh cay đắng đã nhiều Từ đây ngọt sớm ngon chiều cùng </font></div><div style=\"text-align: center;\"><br></div></span><div style=\"text-align: center;\"><img src=\"/upload/tom-hum-2.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></div></font><p></p><p style=\"text-align: center;\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\" target=\"_self\"><b><font size=\"4\">Xem thông tin Tour Bình Ba tại đây</font></b></a></p><p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436353075, '1440325031', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Sài Gòn Bình Ba</span></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'tôm hùm Bình Ba, du lịch Bình Ba, đi phượt Bình Ba', 'Sài Gòn - Bình Ba', 'Tôm hùm Bình Ba đặc sản đảo Bình Ba', 'thưởng thức tôm hùm Bình Ba', 'tôm hùm Bình Ba, du lịch Bình Ba, đi phượt Bình Ba', 0, ',2,', '', 1),
(679, '', '', 0, 'Du lịch Bình Ba vào ngày hè nắng nóng', 'du-lich-binh-ba-vao-ngay-he-nang-nong', 'p-du-lich-binh-ba-cho-ngay-he-nang-nong-679.jpg', 1, 'Đảo Bình Ba là một hòn đảo đẹp nằm cách đất liền khoảng 20km, nằm trong khu vực Vịnh Cam Ranh thuộc xã Cam Bình, TP. C.Ranh, tỉnh Khánh Hòa (Cách Nha Trang 60km, cách sân bay 15 km). Đảo được ví với cái tên gọi thân thuộc là Đảo Tôm Hùm, bởi nơi đây nổi tiếng với những con Tôm Hùm to và ngon. Biển ở đây cũng không ồn ào, xô bồ và đô thị hóa như các khu vực lân cận: Nha Trang, Mũi Né, nó vẫn còn nét đẹp hoang sơ mà đất trời đã tạo hóa.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"margin: 0px 0px 14px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; word-wrap: break-word;\"><font size=\"2\"><span style=\"text-align: justify;\">Đảo Bình Ba là một hòn đảo đẹp nằm cách đất liền khoảng 20km, nằm trong khu vực </span><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-align: justify;\">Vịnh Cam Ranh</span><span style=\"text-align: justify;\"> thuộc xã Cam Bình, TP. C.Ranh, tỉnh Khánh Hòa (Cách Nha Trang 60km, cách sân bay 15 km). Đảo được ví với cái tên gọi thân thuộc là Đảo Tôm Hùm, bởi nơi đây nổi tiếng với những con Tôm Hùm to và ngon. Biển ở đây cũng không ồn ào, xô bồ và đô thị hóa như các khu vực lân cận: Nha Trang, Mũi Né, nó vẫn còn nét đẹp hoang sơ mà đất trời đã tạo hóa với 2 bãi: Bãi Nồm cát trắng và Bãi Chướng đầy san hô lộng lẫy. Đi </span><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; outline: 0px; -webkit-transition-duration: 0.2s; transition-duration: 0.2s; -webkit-transition-timing-function: ease; transition-timing-function: ease; text-align: justify;\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\" title=\"Du lịch Cam Ranh\">Du lịch đảo Bình Ba</a></span><span style=\"text-align: justify;\"> rất dễ dàng và thuận tiện. Một số thông tin dưới đây sẽ giúp bạn có một chuyến đi hoàn hảo.<br></span></font></p><p style=\"text-align: justify;\"><font size=\"2\"><b>- Đi Đảo Bình Ba</b></font></p><p style=\"text-align: justify;\"></p><ul style=\"margin: 0px 0px 15px 30px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; list-style: none; text-align: justify;\"><li style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; list-style: square;\"><font size=\"2\">Máy bay: Hàng ngày có rất nhiều chuyến bay từ Hà Nội và Tp. HCM đi Nha Trang. Sau khi xuống sân bay bạn có thể dễ dàng bắt taxi đến cảng Ba Ngòi (điểm xuất phát tàu đi đảo Bình Ba) cách sân bay C.Ranh 15km.</font></li></ul><ul style=\"margin: 0px 0px 15px 30px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; list-style: none; text-align: justify;\"><li style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; list-style: square;\"><font size=\"2\">Xe khách: Từ Tp.Hồ Chí Minh có nhiều hãng xe đi Nha Trang như: Phương Trang, Phương Nam, Mai Linh, Tôi Đi vẫn khuyên các bạn nên đi Phương Trang. Các bạn nhớ dặn lái xe cho xuống Bưu điện <span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline; outline: 0px; transition-duration: 0.2s; -webkit-transition-duration: 0.2s; transition-timing-function: ease; -webkit-transition-timing-function: ease;\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\" title=\"Du lịch Cam Ranh\">Cam Ranh</a></span> cách cảng Ba Ngòi 3km hoặc tại bến xe C.Ranh cách 5km.</font></li></ul><b><font size=\"2\">- Bến xe Cam Ranh</font></b><p></p><p style=\"text-align: justify;\"><font size=\"2\">Điện thoại: (058).952519 – 854119</font></p><p style=\"text-align: justify;\"><b><font size=\"2\">- Tàu đi đảo Bình Ba</font></b></p><p style=\"text-align: justify;\"><font size=\"2\">Từ bến xe Cam Ranh bạn có thể đi xe ôm ra bến đò Ba Ngòi với giá khoảng 15k. Hàng ngày đều có Đò khởi hành ra đảo lúc 10 giờ sáng với giá 20k/hành khách. Đò từ đảo về đất liền có 2 chuyến: Chuyến sáng sớm lúc 5h và chuyến 12h trưa</font></p><p style=\"text-align: justify;\"><b><font size=\"2\">- Nhà nghỉ trên đảo Bình Ba</font></b></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"text-align: justify;\">Ngay bãi Nồm có một số hotel để nghỉ. Bạn có thểm thảm khảo tại <b><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Sài Gòn - Bình Ba</a></b> hotel</span></font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"800\"></font></p><p style=\"text-align: justify;\"><b><font size=\"2\">- Thăm quan trên Đảo</font></b></p><p></p><p></p><div><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Có nhiều cách di chuyển đến Cam Ranh, bạn có thể đi xe khách hoặc máy bay. Thông thường các bạn sẽ chọn đi xe khách cho tiện và giá rẻ.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-align: justify;\"><font size=\"2\"><span id=\"more-1137\" style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"></span></font></p><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Địa chỉ: Đường Lê Duẩn , phường Cam Lộc, thị xã C.Ranh – tỉnh Khánh Hòa<br></font></p></div><div><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Khi đi <span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline; outline: 0px; transition-duration: 0.2s; -webkit-transition-duration: 0.2s; transition-timing-function: ease; -webkit-transition-timing-function: ease;\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\" title=\"Kinh nghiệm du lịch Phượt\">du lịch</a></span> đảo Bình Ba bạn nên dậy sớm ngắm Bình Minh, đây cũng là một trong số những hòn đảo đón bình minh sớm nhất tại Việt Nam. Có nhiều thắng cảnh và bãi biển đẹp tại đảo Bình Ba: Các di tích từ thời Pháp thuộc: lô cốt, bệ súng thần công, đường hầm xuyên núi. Hai bãi tắm ngay tại khu vực đảo: Bãi Nồm, Bãi Chướng. Rất nhiều các bãi tắm khác xung quanh đảo và các nơi có thể lặn ngắm san hô: bãi Nhà Cũ, bãi Bồ Đề, bãi Rạn, hòn Rùa, hòn Me….</font></p><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\">Bãi Nồm:</span> bãi này là bãi cát, nhưng có chỗ có đá ngầm, đa số người dân địa phương và du khách tắm biển ở đây, biển rất sạch, trong.</font></p><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\">Bãi Chướng</span>: bãi này có nhiều đá và san hô chết, bãi này chủ yếu ra ngắm cảnh và bát Hải Sản. Ngoài ra nếu thuê tàu đi 1 số các bãi tắm khác thì rất tuyệt vời như bãi Rạn, bãi Hỏm.</font></p><p style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\">Câu cá, mực: liên hệ các chủ bè để tận hưởng dịch vụ này. </span>Câu cá ngoài bè, thường câu vào lúc sáng sớm, câu mực thì về đêm, ngay tại bè mực cũng ăn mồi. Ngoài ra bạn có thể thuê thuyền đi câu cá, có khá nhiều loại: cá mú, cá nhái, cá bè.</font></p><p style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\"><b><font size=\"4\">Xem thông tin tour Bình Ba tại đây.</font></b></a></p></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436439748, '1440324984', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba\r\n\r\n\r\n\r\n\r\n</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Du lịch Bình Ba vào ngày hè nắng nóng', 'Hướng dẫn du lịch Bình Ba cho ngày hè', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',5,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(680, '', '', 0, '7 lý do phải một lần đến đảo Bình Ba', '7-ly-do-phai-mot-lan-den-dao-binh-ba', 'p-7-ly-do-phai-mot-lan-den-dao-binh-ba-680.jpg', 1, 'Và nếu đã một lần trải nghiệm cuộc sống tuyệt vời tại đảo Bình Ba, không ít người muốn trở lại thêm nhiều lần nữa.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p><span style=\"text-align: justify;\"><font size=\"2\">Thuộc thành phố Cam Ranh (tỉnh Khánh Hòa), đảo Bình Ba nổi tiếng với tên ví von “đảo tôm hùm” cùng sự trù phú của vùng đảo tuy nhỏ và còn khá hoang sơ. Thêm vào đó, Bình Ba đang dần phát triển thành vùng du lịch hút khách. Vài năm nay, người dân trên đảo đã quen thấy những du khách từ phương xa háo hức đặt chân lên bến cảng, say mê khám phá từng ưu điểm tuyệt vời của vùng đảo hoang sơ.</font></span></p><div>    \r\n<p></p><div style=\"text-align: center;\"><img src=\"/upload/IMG_6008.JPG\" alt=\"\" align=\"\" border=\"0\" width=\"600\" height=\"400\" style=\"font-size: small;\"></div><font size=\"2\"><div style=\"text-align: center;\"><img src=\"/upload/binh-ba1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" style=\"line-height: 20px; text-align: justify; color: rgb(34, 34, 34);\"></div><span style=\"border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-align: justify; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><div><font size=\"2\"><span style=\"border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-align: justify; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><br></span></font></div>Đi tàu: mất khoảng hơn 1 giờ lênh đênh trên biển. Mỗi ngày có các chuyến đò cố định từ Cam Ranh sang Bình Ba: 10h00 sáng và 4h00 chiều, từ Bình Ba về Cam Ranh: 5 giờ sáng và 12h30 trưa, giá tàu khoảng 30</span><span style=\"border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-align: justify; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"> nghìn đồng. Ngoài ra vào dịp cuối tuần hay dịp lễ sẽ có nhiều chuyến tàu hơn. <br></span><span style=\"border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-align: justify; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\">Đi cano: Nếu không muốn phải chờ đợi, bạ có thể lựa chọn đi cano cao tốc. Chỉ mất 15 phút vun vút trên biển, bạn sẽ nhanh chóng đến hòn đảo xinh đẹp này với chi phí vào khoàng 100 nghìn. Nếu bạn đi nhóm đông người, bạn có thể may mắn \"bao trọn chuyến\" luôn nhé!</span></font></div><div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><font size=\"2\"><div style=\"text-align: center;\"><img src=\"/upload/31.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><font color=\"#222222\"><div style=\"text-align: center;\"><img src=\"/upload/IMG_6011.JPG\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" style=\"line-height: 20px; text-align: justify;\"></div></font><font color=\"#222222\"><div style=\"text-align: center;\"><img src=\"/upload/296735620130509112944171.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" style=\"line-height: 20px; text-align: justify;\"></div></font></font><p></p></div><p><span style=\"text-align: justify;\"><font size=\"2\">Nếu chưa từng đến Bình Ba, có 7 lý do kéo bạn ra đảo mùa hè này:</font></span></p><p><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; text-align: justify; background: none 0px 0px repeat scroll rgb(249, 249, 249);\">1. Đi lại dễ dàng</span></font></p><p><font size=\"2\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-align: justify; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\">Cách cảng Cam Ranh khoảng 15 km, để đến hòn đảo nhỏ xinh này, từ cảng Đá Bạc bạn có 2 sự lựa chọn:<br></span></font></p><p style=\"text-align: justify;\"><font size=\"2\">2. Biển cực trong xanh</font></p><p><span style=\"text-align: justify;\"><font size=\"2\">Mang đặc điểm của vùng đảo hoang sơ, ở Bình Ba có rất nhiều bãi biển đẹp với cát trắng, nước trong veo, phản chiếu trời xanh ngắt. Vùng biển này cũng chưa được đưa vào khai thác dịch vụ du lịch nên mọi thứ đều nguyên sơ. Thiên nhiên trên đảo mang đến cảm giác bình yên, thư thả, vô cùng thích hợp để nghỉ ngơi, tránh khỏi sự xô bồ của thành thị. Đặc biệt, người dân ở đây rất có ý thức bảo vệ môi trường sống, các bãi biển, cầu cảng đều rất sạch và hiếm thấy rác.</font></span></p><p><span style=\"text-align: justify;\"><a href=\"http://www.saigon-binhba.com/tour-tham-quan-binh-ba-2-ngay-1-dem-353/tour-binh-ba-2-ngay-1-dem-4.htmls\" target=\"_blank\"><font size=\"4\"><b>Xem thêm tour Bình Ba 2 ngày 1 đêm</b></font></a></span></p><p><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; text-align: justify; background: none 0px 0px repeat scroll rgb(249, 249, 249);\">3. “Đổi biển” ngắm mặt trời</span></font></p><p style=\"text-align: justify;\"><font size=\"2\">3 bãi biển nổi tiếng ở Bình Ba là Bãi Chướng, Bãi Nồm và Bãi Nhà Cũ. Mỗi bãi đều có đặc điểm riêng để du khách khám phá tùy theo sở thích. Nếu như Bãi Chướng là nơi ngắm bình minh tuyệt đẹp, thì căng lều nằm thưởng thức cảnh hoàng hôn ở Bãi Nồm cũng là lựa chọn hay. Bãi Nhà Cũ được yêu thích bởi nước trong veo khá sâu, quang cảnh xung quanh thơ mộng. Bãi Nhà Cũ cũng được nhiều người chọn để lặn biển ngắm san hô, thử tài bắt hải sản.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/tour-tet-binh-ba-ivivu.com-8.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; text-align: justify; background: none 0px 0px repeat scroll rgb(249, 249, 249);\">4. Người dân làng chài thân thiện, hiền lành</span></font></p><p style=\"text-align: justify;\"><font size=\"2\">Các dịch vụ phục vụ khách du lịch ở Bình Ba hiện tại cũng chỉ do người dân nơi đây làm, từ cho thuê nhà ngủ lại, đến cho thuê tàu đánh cá chở vòng quanh các đảo, tham quan bè nuôi tôm hùm, hải sản, hướng dẫn lặn biển… Nhưng du khách đến đây đều yên tâm và hài lòng bởi sự chân chất, thân thiện của các “chủ nhà” này. Nếu bạn muốn tìm một người Sài Gòn chính hiệu dắt bạn đi lòng vòng quanh đảo thì Sài Gòn - Bình Ba là một sự lựa chọn sáng suốt nhé!</font></p><p style=\"text-align: justify;\"><a href=\"http://www.saigon-binhba.com/tour-tham-quan-binh-ba-trong-ngay-355/tour-binh-ba-3-ngay-2-dem-2.htmls\" target=\"_blank\"><b><font size=\"4\">Xem thêm tour Bình Ba 3 ngày 2 đêm</font></b></a></p><p style=\"text-align: justify;\"><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; background: none 0px 0px repeat scroll rgb(249, 249, 249);\">5. Hải sản tràn trề đủ loại</span></font></p><p style=\"text-align: center;\"><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; background: none 0px 0px repeat scroll rgb(249, 249, 249);\"><img src=\"/upload/tom-hum-binh-ba-nha-trang.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></span></font></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\">Sau một ngày thỏa thích chơi đùa, bạn có thể tha hồ thưởng thức tiệc nướng BBQ hải sản tươi ngon nơi đây. Mực lá dày và ngọt, nhum thì nhiều vô kể, sò láng, hào hương, sò mòng, cá đủ loại ngọt thịt… được chế biến thành nhiều món như nướng, hấp, làm gỏi. Và nhất định không thể bỏ qua món tôm hùm trứ danh làm nên thương hiệu của hòn đảo này với giá dao động từ 1.200.000 đến 2.300.000 nghìn/kg. </span><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\">Với hàng trăm bè tôm hùm khắp đảo, cũng là phương tiện sinh sống chính của nhiều hộ gia đình, giá tôm hùm ở Bình Ba được xem là “giá gốc”, với nhiều cách chế biến đúng chất dân chài, giữ độ ngon, dai, ngọt đáng giá của tôm hùm</span></font></p><p style=\"text-align: center;\"><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; background: none 0px 0px repeat scroll rgb(249, 249, 249);\"><img src=\"/upload/IMG_4949.JPG\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></span></font></p><p style=\"text-align: justify;\"><font color=\"#222222\" size=\"2\"><span style=\"border-style: initial; border-color: initial; line-height: 20px; background: none 0px 0px repeat scroll rgb(249, 249, 249);\">6. Thiên đường lặn ngắm san hô</span></font></p><p style=\"text-align: justify;\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><font size=\"2\">Nếu bạn đã từng đi lặn san hô ở bãi Nhà Cũ hay bãi Rùa,  chắc chắn bạn sẽ mê mẩn với thế giới dưới nước vô cùng đa dạng và phong phú nơi đây. Thảm thực vật dưới nước đa dạng cùng hàng ngàn loài cá tung tăng bơi lội bên cạnh khiến bạn có cảm tưởng mình đã lạc đến thủy cung thật rồi.</font></span></p><p style=\"text-align: center;\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><font size=\"2\"><img src=\"/upload/IMG_6005.JPG\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></span></p><p style=\"text-align: justify;\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><font size=\"2\"><br></font></span></p><p style=\"text-align: justify;\"><span style=\"border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-image: none; background-attachment: scroll; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: repeat;\"><font size=\"2\">7. Chi phí mềm</font></span></p><p style=\"text-align: justify;\"><font size=\"2\">Đến Bình Ba, với bất cứ ngân sách nào, bạn cũng có thể có 1 kì nghỉ vô cùng đáng nhớ. Nếu thích đi phượt, bạn có thể thử cắm trại tại bãi biển, tự tay đi chợ mua hải sản về chế biến và tiết kiệm tối đa ngân quỹ của mình. Nếu là người không giỏi lên kế hoạch cho chuyến đi, bạn có thể lựa chọn 1 tour trọn gói với tất cả các dịch vụ đi kèm để không phải lo ngại gì nữa. Và nếu có ngân sách rủng rỉnh 1 tí, bạn có thể chọn ở khách sạn, ăn uống thỏa thích tại bè nổi, thưởng thích BBQ hải sản, và tha hồ chơi motor nước cảm giác mạnh.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"800\" border=\"0\"></font></p><p style=\"text-align: center;\"><b><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\"><font size=\"4\">XEM THÊM CÁC TOUR BÌNH BA </font></a></b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1436860510, '1436975491', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>SÀI GÒN BÌNH BA\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'bình ba, du lịch bình ba, tour bình ba, phượt bình ba, kinh nghiệm bình ba, đảo bình ba', 'Sài Gòn - Bình Ba', '7 lý do phải một lần đến đảo Bình Ba', 'Du lịch đảo Bình Ba xinh đẹp ', 'du lịch bình ba, phượt bình ba, tour bình ba, kinh nghiệm bình ba, điểm đến bình ba, đảo bình ba', 0, ',5,', '', 1),
(681, '', '', 0, 'Trải Nghiệm Cuộc Sống Yên Bình Ở Bình Ba', 'trai-nghiem-cuoc-song-yen-binh-o-binh-ba', 'p-trai-nghiem-cuoc-song-yen-binh-tai-binh-ba-681.jpg', 1, 'Là đảo thuộc thành phố Cam Ranh, tỉnh Khánh Hòa, Bình Ba cách TP Nha Trang 60 km về phía nam, Sài Gòn 400 km và Hà Nội 1.320 km. Hiện nay, Bình Ba được khai thác quân sự nên chuyện quản lý ra vào đảo khá nghiêm ngặt. Bạn cần đem theo giấy tờ tùy thân, phổ biến nhất là CMND để được lên đảo.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div style=\"text-align: justify;\">Du khách có thể tránh cái nóng bức Sài Gòn hay sự chật chội khó chịu ở Hà Nội mà sà vào làn nước trong xanh tại Bình Ba cùng không khí mát lành của đất, trời và biển.</div><div style=\"text-align: justify;\">Là đảo thuộc thành phố Cam Ranh, tỉnh Khánh Hòa, Bình Ba cách TP Nha Trang 60 km về phía nam, Sài Gòn 400 km và Hà Nội 1.320 km. Hiện nay, Bình Ba được khai thác quân sự nên chuyện quản lý ra vào đảo khá nghiêm ngặt. Bạn cần đem theo giấy tờ tùy thân, phổ biến nhất là CMND để được lên đảo.</div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>Thời gian</b></div><div style=\"text-align: justify;\"><b><br></b></div><div><p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision; text-align: justify;\">Nên đi Bình Ba từ tháng 3 đến 10 dương lịch. Thời điểm này là mùa nắng đẹp, biển trong xanh thanh bình.</p><p class=\"subtitle\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b>Đồ dùng cần thiết</b></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\">Du khách chú ý mang theo kem chống nắng, mũ nón, thuốc say tàu xe, đồ bơi... Và không thể thiếu một chiếc máy ảnh ghi lại những khoảnh khắc tuyệt vời trên đảo.</p><p class=\"subtitle\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b>Lưu trú</b></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\">Có rất nhiều nhà nghỉ, homestay, khách sạn trên Bình Ba, giá phòng dao động từ 50.000 đến 400.000 đồng một đêm. Những ai quen ở khách sạn hạng sạng sẽ  khó lòng thỏa mãn với dịch vụ nơi đây. Buổi tối, trên đảo hầu như không có nhiều hoạt động, du khách yêu thích sự sôi động có thể cảm thấy buồn tẻ.</p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"800\"></p><p class=\"subtitle\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b>Điểm tham quan</b></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\">Bình Ba có vô số điểm dừng để du khách thỏa sức khám phá như Điện Quan Âm, Điện Địa Tạng, Tịnh Xá Ngọc Gia Hương, Lăng Nam Hải... Một số bãi tắm nổi tiếng trên đảo như Bãi Nồm, Bãi Chướng, Bãi Nhà Cũ. Bạn nên đăng ký tour lặn ngắm san hô kết hợp với tắm biển. Giá tour ở đây khá bình dân, khoảng 100.000 -150.000 đồng một người.</p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><img src=\"/upload/dao_binh_ba_5.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b>Ẩm thực</b></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\">Chợ Bình Ba bán rất nhiều món ăn đúng nghĩa ngon bổ rẻ nên du khách thỏa sức lựa chọn các món như bánh canh, bánh căn tôm mực, bánh căn trứng, ốc, bánh tráng mắm ruốc, cuốn nem..., giá dao động 3.000 - 20.000 đồng. Ngoài ra, các loại hải sản tươi ngon luôn có sẵn, đặc biệt là cá bốp, tôm hùm (giá khoảng 900.000 đến 1,2 triệu đồng một kg). Du khách nên mua hải sản ở chợ thay vì chọn mua tại các bãi tắm.</p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><img src=\"/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"></p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><img src=\"/upload/dao_binh_ba_11.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"700\" border=\"0\"></p><p class=\"Normal\" style=\"text-align: center; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><font size=\"4\" style=\"box-sizing: border-box;\">XEM THÊM CÁC TOUR BÌNH BA</font></a></b></p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\">Khám phá Bình Ba xong, bạn nên dành một buổi để thăm thú thành phố Cam Ranh trẻ trung. Rất nhiều món ngon tại đây để thưởng thức như bánh hỏi lòng heo, cháo lòng (ngay đường lên tượng đài liệt sĩ, bên cạnh siêu thị Coopmart), bánh canh cô Mười. Riêng món tôm nhảy hay còn gọi là tôm bay nằm ở trung tâm thành phố.</p><p class=\"Normal\" style=\"text-align: justify; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b style=\"text-align: left; box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</font><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><b style=\"font-family: Arial; text-align: justify; font-size: medium; box-sizing: border-box;\"><font color=\"#00bfff\" style=\"box-sizing: border-box;\">Thông (0905 56 53 11)</font></b><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</font></b></p></div>\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437410453, '1440324900', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Sài Gòn - Bình Ba</span></div>\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 'Sài Gòn - Bình Ba', 'Trải nghiệm cuộc sống yên bình tại Bình Ba xinh đẹp', 'Trải nghiệm cuộc sống yên bình tại Bình Ba xinh đẹp', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 0, ',5,', '', 1),
(682, '', '', 0, 'Kinh Nghiệm Du Lịch Đảo Bình Ba', 'kinh-nghiem-du-lich-dao-binh-ba', 'p-kinh-nghiem-du-lich-dao-binh-ba-682.jpg', 1, 'Đảo Bình Bà là một hòn đảo đẹp và hoang sơ, đảo Bình Ba còn gọi là đảo Tôm Hùm, vì nơi đây nổi tiếng là nuôi loại tôm hum chất lượng cao rất ngon. Đến với Bình Ba, bạn không chỉ được tận hưởng không khí biển mát mẻ, những bãi tắm trong vắt mà còn được đắm chìm trong muôn vàn món ăn hải sản ngon không thể cưỡng lại.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><div style=\"text-align: justify;\"><font size=\"2\">Đảo Bình Bà là một hòn đảo đẹp và hoang sơ, đảo Bình Ba còn gọi là đảo Tôm Hùm, vì nơi đây nổi tiếng là nuôi loại tôm hum chất lượng cao rất ngon.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div><div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/bai_viet_4.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></font></div>    \r\n<div><h3><font size=\"2\">Đảo Bình Ba nằm ở đâu ?</font></h3></div></div><div><font size=\"2\">Đảo Bình Ba nằm tại xã Cam Bình, thành phố Cam Ranh, tỉnh Khánh Hòa, Việt Nam. Đảo nằm trong Vịnh Cam Ranh có diện tích khoảng 3 km2, cách trung tâm thành phố Nha Trang khoảng 60km về phía Nam.</font></div><div><h3><font size=\"2\">Đi đảo Bình Ba vào tháng nào ?</font></h3></div><div><font size=\"2\">Thời gian lý tưởng nhất để đi du lịch là tháng 2 đến tháng 6 trong năm là thời gian tuyệt vời nhất nên đến đảo Bình Ba, vì thời gian này trời yên biển lặng, không có mưa, nếu đi đảo mà đi vào tháng mưa thì rất bất tiện và nguy hiểm nữa, nên chọn những tháng không có mưa và sóng êm đêm nhé, gặp sóng to cũng khó mà tắm biển lắm đó.</font></div><div><h3><font size=\"2\">Những điểm tham quan trên đảo Bình Ba</font></h3></div><div><div><font size=\"2\">- Ngắm bình minh: đảo Bình Ba là nơi ngắm bình mình tuyệt đẹp nên các bạn tranh thủ thức sớm để ngắm bình minh nhé.</font></div><div><a name=\"Những điểm tham quan trên đảo Bình Ba\"><font size=\"2\"><br></font></a></div><div><font size=\"2\">- Trên đỉnh đảo cũng có những lo cốt, súng thần công, đường hầm xuyên núi từ thời Pháp để lại, tham quan lăng Nam Hải nên các bạn có thể mướn xe chạy vi vu lên đỉnh ngắm toàn cảnh đảo Bình Ba và vịnh Cam Ranh tuyệt đẹp. Giá thuê xe khoảng 100k->120k/ngày trong nhà nghĩ có cho thuê hoặc hỏi người dân xung quanh.</font></div><div><font size=\"2\"><br></font></div><div><font size=\"2\">- Muốn tắm biển thì tốt nhất chọn bãi Nôm vì bãi biển cát trắng, sạch đẹp và độ an toàn cao. Bãi chướng có nhiều đá sỏi nên chỉ tham quan ngắm cảnh bắt hải sản thôi.</font></div></div><div><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_17.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></font></div><div><font size=\"2\"><br></font></div><div><font size=\"2\">Lặn ngắm san hô : cái này thì phải thuê tàu ra các bãi hoang ngắm san hô tuyệt đẹp, các bạn liên hệ người dân họ chỉ cho thuê tàu giá rẻ nhé khoảng 1tr/thuyền nhiều người chia ra cũng không bao nhiêu cả, có thời gian thì nên chọn Bãi Nhà Cũ nơi đây nước trong xanh, biển lặn, cát trắng, cảnh quang thơ mộng, san hô cách bờ chỉ 5m rất thích hợp lặn ngắm san hô nhé.</font></div><div><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_27.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></font></div><div><h3><font size=\"2\">Ẩm thực và đặc sản trên đảo Bình Ba ?</font></h3><div><font size=\"2\">Đặc sản số 1 nơi đâu thì chắc ai cũng biết rồi đó là Tôm Hùm, tôm hùm trên đảo Bình Chất chất lượng cao, tôm to thịt ngon, nướng, hấp, xào,..nói chung làm món nào có tôm hum là hết xẩy. Giá tôm hùm nơi đây mình thấy rẻ hơn hơn trong thị trường và các khách sạn 40%, tôm hùm chết ngộp tầm 2-3 con/kg có giá 400k->600k, còn sống thì 1tr4 -> 1tr8/kg. Mình thì toàn ăn tôm ngộp, ở đây tôm chết ngộp vẫn còn tươi rối nhé không phải hàng dạt,hàng thừa nhé, ăn thì cũng như tôm sống thôi.</font></div><div><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</font><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><b style=\"font-family: Arial; text-align: justify; font-size: medium; box-sizing: border-box;\"><font color=\"#00bfff\" style=\"box-sizing: border-box;\">Thông (0905 56 53 11)</font></b><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</font></b></div><div><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></div></div></div><div style=\"text-align: center;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><br></b></div><div style=\"text-align: center;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"4\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\">XEM THÊM CÁC TOUR BÌNH BA</a></font></b></div>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437411104, '1437494278', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba Test', 'Sài Gòn - Bình Ba', 'Kinh Nghiệm Du Lịch Đảo Bình Ba', 'Kinh Nghiệm Du Lịch Đảo Bình Ba', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba Test', 0, ',4,', '', 1),
(683, '', '', 0, 'Tôi yêu Bình Ba xinh đẹp', 'toi-yeu-binh-ba-xinh-dep', 'p-toi-yeu-binh-ba-683.jpg', 1, 'Khi đi du lịch đảo Bình Ba bạn nên dậy sớm ngắm Bình Minh, đây cũng là một trong số những hòn đảo đón bình minh sớm nhất tại Việt Nam. Có nhiều thắng cảnh và bãi biển đẹp tại đảo Bình Ba. Bãi Nồm: bãi này là bãi cát, nhưng có chỗ có đá ngầm, đa số người dân địa phương và du khách tắm biển ở đây, biển rất sạch, trong.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify;\"><span style=\"text-align: justify;\">Khi đi du lịch đảo Bình Ba bạn nên dậy sớm ngắm Bình Minh, đây cũng là một trong số những hòn đảo đón bình minh sớm nhất tại Việt Nam. Có nhiều thắng cảnh và bãi biển đẹp tại đảo Bình Ba:<br></span><span style=\"text-align: justify;\">Bãi Nồm: bãi này là bãi cát, nhưng có chỗ có đá ngầm, đa số người dân địa phương và du khách tắm biển ở đây, biển rất sạch, trong.<br></span><span style=\"text-align: justify;\">Bãi Chướng: bãi này có nhiều đá và san hô chết, bãi này chủ yếu ra ngắm cảnh. Ngoài ra nếu thuê tàu đi 1 số các bãi tắm khác thì rất tuyệt vời như bãi Rạn, bãi Hỏm, bãi miếu, bãi sa Quỳnh….<br></span><span style=\"text-align: justify;\">Câu cá, mực: liên hệ các chủ bè để tận hưởng dịch vụ này. Câu cá ngoài bè, thường câu vào lúc sáng sớm, câu mực thì về đêm, ngay tại bè mực cũng ăn mồi. Ngoài ra bạn có thể thuê thuyền đi câu cá, có khá nhiều loại: cá mú, cá nhái, cá bè.</span></p><p style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_6.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"600\" border=\"0\"></p><p style=\"text-align: justify;\"><span style=\"text-align: justify;\">Bạn có thể Thuê xe máy chạy lên đỉnh đồi, từ đỉnh bạn có thể nhìn toàn cảnh đảo Bình Ba, và 1 phần vịnh Cam Ranh, rất đẹp, và thăm quan mấy cái lô cốt thời Pháp thuộc.<br></span><span style=\"text-align: justify;\">Đặc sản ở đây bạn không thể bỏ qua đó là Tôm Hùm. Người dân Khánh Hòa có câu: “Yến sào Hòn Nội, vịt lội Ninh Hòa, tôm hùm Bình Ba, nai khô Diên Khánh” để kể về những đặc sản trứ danh của tỉnh này. Tôm Hùm ở đây giá rẻ hơn 30 – 60% so với giá trên các nhà hàng, có thể cao hơn nữa.</span></p><p style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p style=\"text-align: justify;\"><span style=\"text-align: justify;\">Đến Bình Ba, bạn có thể chọn hoặc ở trong nhà nghỉ, hoặc mang theo một chiếc lều và cắm trại ngay ngoài bãi biển. Đó là một trải nghiệm rất tuyệt vời, bởi nó không chỉ cho bạn thấy được biển đêm và bầu trời sao đẹp đến thế nào, mà nó còn cho bạn thấy, bạn có thể hạnh phúc và vô lo ra sao khi vứt hết những mối lo ở đằng sau và chỉ hoà mình vào cảnh biển.</span></p><p style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></p><p style=\"text-align: justify;\"><span style=\"text-align: justify;\">Bình Ba - mới nhắc đến hai từ đấy thôi là bạn có thể thấy trái tim mình như ấm lại. Không chỉ bởi âm điệu nghe thật thân thương, mà giờ đây, Bình Ba đã trở nên quen thuộc hơn hết với mỗi người trẻ. Nhắm mắt lại và nhắc đến hai từ này, bạn có nhìn thấy biển xanh, thấy cát trắng, thấy nắng ấm vàng rực và thấy những chợ cá liêu xiêu?</span></p><p style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_12.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"300\" border=\"0\"></p><p style=\"text-align: justify;\">Đã từng lặn ngắm ở nhiều bãi biển, nhưng lặn ngắm ở Bình Ba vẫn có nhiều trải nghiệm vô cùng khác lạ, đơn giản vì biển ở đây quá hoang sơ, san hô còn nhiều màu sắc rực rỡ chứ không nhàn nhạt, trắng trắng, mờ mờ một màu như ở những bãi biển khác. Kết hợp trong chuyến đi lặn ngắm san hô, du khách còn có thể tự mình câu cá, câu mực dưới sự giúp sức của ngư dân địa phương, bạn sẽ không khỏi ngạc nhiên vì mình có thể tay không bắt cá, mực, bạch tuộc ngay dưới biển.</p><p style=\"text-align: justify;\"><b style=\"text-align: left; box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</font><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><b style=\"font-family: Arial; text-align: justify; font-size: medium; box-sizing: border-box;\"><font color=\"#00bfff\" style=\"box-sizing: border-box;\">Thông (0905 56 53 11)</font></b><span style=\"font-family: Arial; font-weight: normal; text-align: justify; font-size: medium; box-sizing: border-box;\"> </span><font size=\"2\" style=\"font-family: Arial; font-weight: normal; text-align: justify; box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</font></b></p><p style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p style=\"text-align: center;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"4\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\">XEM THÊM CÁC TOUR BÌNH BA</a></font></b></p>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437411951, '1440324813', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba', 'Sài Gòn - Bình Ba', 'Tôi yêu Bình Ba', 'Tôi yêu Bình Ba', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba', 0, ',4,5,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(684, '', '', 0, 'Những điều nên biết khi du lịch Bình Ba', 'nhung-dieu-nen-biet-khi-du-lich-binh-ba', 'p-nhung-dieu-nen-biet-truoc-khi-du-lich-binh-ba-684.jpg', 1, 'Bình Ba là một đảo nhỏ, diện tích trên 3km2, thuộc xã Cam Bình, thành phố Cam Ranh, tỉnh Khánh Hòa. Cách Nha Trang 60 km, cách thành phố Hồ Chính Minh tầm 390km. Muốn đến Bình Ba, bắt buộc chúng ta phải đến cảng Ba Ngòi. Cảng Ba Ngòi cách sân bay Cam Ranh 15km, Bình Ba cách cảng Ba Ngòi cũng 15km.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"></p><div style=\"text-align: justify;\">Trước đây, Bình Ba là đảo quân sự, hạn chế dân ở ngoài vào đảo. Bây giờ, luật lệ đã được nới lỏng, nhưng vẫn cấm người ngoại quốc. Đây cũng là lý do, vì sao bây giờ đảo Bình Ba mới nổi tiếng! Ngoài ra, nếu không muốn bị đuổi khỏi đảo sớm, bạn cũng không nên tò mò đến những vùng bị quân đội cấm hoặc có những hành động gây rối, quá khích.</div><div style=\"text-align: justify;\">Bình Ba là một đảo nhỏ, diện tích trên 3km2, thuộc xã Cam Bình, thành phố Cam Ranh, tỉnh Khánh Hòa. Cách Nha Trang 60 km, cách thành phố Hồ Chính Minh tầm 390km. Muốn đến Bình Ba, bắt buộc chúng ta phải đến cảng Ba Ngòi. Cảng Ba Ngòi cách sân bay Cam Ranh 15km, Bình Ba cách cảng Ba Ngòi cũng 15km.</div><p></p><p style=\"text-align: center; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><img src=\"/upload/dao_binh_ba_21.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></p><p style=\"text-align: justify; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\">Bạn có thể <font color=\"#111111\" face=\"Open Sans, Helvetica Neue, Calibri, Droid Sans, Helvetica, Arial, sans-serif\"><span style=\"border-style: initial; border-color: initial; font-size: 14px; font-stretch: inherit; line-height: 21px;\">du lịch Bình Ba</span></font> lúc nào bạn muốn, nhưng lý tưởng nhất vẫn là từ tháng 3 đến tháng 9. Bên cạnh đó, bạn cũng nên cố gắng đến Bình Ba vào ngày thường, bởi ngày lễ tết lượng khách đổ về đây cực đông, làm bạn khó mà thưởng thức hết vẻ đẹp của đảo. Ngoài ra, để không phải chụp giật, bạn cũng nên dành ra khoảng trên 2 ngày ở trên đảo.</p><p style=\"text-align: center; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><img src=\"/upload/dao_binh_ba_8.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></p><p style=\"text-align: justify; margin: 0px 0px 10px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; text-rendering: optimizeLegibility;\"><font face=\"inherit\" size=\"2\"><span style=\"line-height: inherit; border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit;\"><b>Phương tiện di chuyển</b></span></font></p><div><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><span style=\"border-style: initial; border-color: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\"><font size=\"2\">Có 3 cách để du lịch Bình Ba: Máy bay, ô tô và xe máy.</font></span></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\"><b>Máy bay</b></span><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\"><b>:</b> Hàng ngày, có rất nhiều chuyến bay từ thành phố Hồ Chí Minh đi Nha Trang. Ngay khi vừa xuống máy bay, sẽ có hàng dài taxi đậu sẵn ở sân bay Cam Ranh để chở bạn đến cảng Ba Ngòi. Với 15km, bạn chỉ mất tầm hơn nửa tiếng để đến nơi.</span></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Lưu ý: bạn phải canh giờ máy bay, giờ tàu ra đảo sao cho hợp lý, để không xảy ra tình trạng đến cảng phải ngồi đợi mỏi mòn.</font></span></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\"><b>Ô tô: </b></span><span style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;\">Xe chất lượng cao, xe tour.</span></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\"><font size=\"2\"><b>Xe máy:</b></font></span></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Vì quãng đường tương đối xa, bạn nên cân nhắc cẩn thận tình trạng sức khỏe bản thân, thời tiết, tình trạng “chiến mã” để không xảy ra những điều đáng tiếc trên đường đi hoặc tới nơi mệt đứt hơi không còn sức chơi bời. Từ thành phố Hồ Chí minh chạy xe theo quốc lộ 1A (hướng Bắc). Trên đường đi sẽ đi ngang qua Phan Thiết (Bình Thuận), Phan Rang – Tháp Chàm (Ninh Thuận)…</font></p><p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-weight: inherit;\"></span></font></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline;\"><font size=\"2\">Tốt nhất, bạn nên gửi xe máy ở cảng Ba Ngòi, các bãi xe, hoặc người quen, rồi một mình thong dong ra đảo. Đầu tiên, muốn mang xe ra đảo, bạn phải thuê thuyền riêng. Sau nữa, đảo nhỏ, đi bộ vài vòng là hết. Còn nếu muốn khám phá nhiều ngóc ngách xa hơn, bạn có thể thuê xe máy.</font></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"box-sizing: border-box;\"><font size=\"2\"><b>Lưu trú</b></font></span></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\">Có rất nhiều nhà nghỉ, homestay, khách sạn trên Bình Ba, giá phòng dao động từ 50.000 đến 400.000 đồng một đêm. Những ai quen ở khách sạn hạng sạng sẽ khó lòng thỏa mãn với dịch vụ nơi đây. Buổi tối, trên đảo hầu như không có nhiều hoạt động, du khách yêu thích sự sôi động có thể cảm thấy buồn tẻ.</font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\">Chợ Bình Ba bán rất nhiều món ăn đúng nghĩa ngon bổ rẻ nên du khách thỏa sức lựa chọn các món như bánh canh, bánh căn tôm mực, bánh căn trứng, ốc, bánh tráng mắm ruốc, cuốn nem..., giá dao động 3.000 - 20.000 đồng.</font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_3.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"text-align: start;\"><font size=\"2\">Tuy nhiên, bạn không nên ăn nhiều quá, mà hãy dành tới tối. Nếu muốn tổ chức party kết hợp karaoke thì sẽ có người lo trọn gói. Nếu muốn “thử thách bản thân” một chút, thì bạn hãy tự đi chợ và tổ chức buffet hải sản cho chính mình. Tầm 4 – 5h chiều, bạn hãy ra khu vực bến tàu, đi dọc đó sẽ có nhiều nơi bán hải sản.</font></span></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"text-align: start;\"><font size=\"2\">Có rất nhiều từ tôm hùm, tôm xanh, các loại cá, ốc biển, hải sâm, bào ngư, hàu, mực,… Hãy đi hỏi giá và chọn cho mình những món phù hợp nhất, sau đó nhờ quán chế biến. Bạn có thể ngồi ăn ngay tại quán hoặc nhờ họ mang ra bãi Nồm để có thể ăn vừa ngắm biển. Họ sẽ cho bạn mượn hết từ lò, nồi cho đến chén đũa, việc của bạn chỉ là mượn một tấm bạt (hỏi nhà nghỉ) và tìm vị trí thích hợp nhất, rồi tự ăn uống hát hò thôi!</font></span></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_30.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"></font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><font size=\"4\" style=\"box-sizing: border-box;\">XEM THÊM CÁC TOUR BÌNH BA</font></a></b></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"text-align: start;\"><font size=\"2\">Ngoài ra, còn có nhiều hàng quán bán nhiều món rất ngon và rẻ như bánh canh/bún chả cá (chiên hoặc hấp), bún thịt nướng, mì, nui, hủ tíu, sinh tố, bánh tráng nướng… Giá các món này chỉ từ 10k – 20k, quá hấp dẫn phải không? Hoặc ở nhà nghỉ cũng sẽ nhận nấu cơm cho bạn nếu bạn yêu cầu, nhưng giá 1 phần cơm như thế thì khá đắt (80k -90k/phần) so với chất lượng mà cũng không có gì nổi bật lắm.</font></span></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"text-align: start;\"><font size=\"2\">Vào mỗi sáng sớm, khoảng từ 5h30 – 7h sẽ có họp chợ ở ngay bến tàu. Các tàu đi đánh cá, câu mực sẽ về và có nhiều người bày bán hải sản ngay trên đó, chủ yếu là cá và mực, giá khá rẻ. Còn muốn mua nhiều loại cá hơn, đặc biệt là cá bốp thì các bạn đợi đến 8h sáng cá sẽ lên thêm. Thường mọi người buổi sáng trước khi rời Bình Ba sẽ ra chợ để mua hải sản và đóng thùng để mang về. Ở đây có bán sẵn thùng giữ lạnh và bạn sẽ được người bán cho đá và ướp cá, đóng thùng giúp hết nhé.</font></span></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\" size=\"2\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</font><span style=\"font-size: medium; box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"> </span><b style=\"font-size: medium; box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><font color=\"#00bfff\" style=\"box-sizing: border-box;\">Thông (0905 56 53 11)</font></b><span style=\"font-size: medium; box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"> </span><font style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\" size=\"2\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</font></p></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437412929, '1440324695', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 'Sài Gòn - Bình Ba', 'Những điều nên biết trước khi du lịch Bình Ba', 'Những điều nên biết trước khi du lịch Bình Ba', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 0, ',5,', '', 1),
(685, '', '', 0, 'Tắm biển và ngắm san hô tại Bình Ba', 'tam-bien-va-ngam-san-ho-tai-binh-ba', 'p-tam-bien-va-ngam-san-ho-tai-binh-ba-xinh-dep-685.jpg', 1, 'Điều không thể bỏ qua khi du lịch Bình Ba là thuê tàu đi các bãi tắm và lặn biển xem san hô. Thường giá tàu đi trọn gói hết tất cả các bãi là 1tr – 1,2tr/chuyến tùy chỗ, do đó nếu đi đông thì sẽ tiết kiệm hơn. Nói là “lặn ngắm san hô” nhưng thực ra bạn không nhất thiết phải lặn, chỉ cần mặc áo phao và nằm trên phao, úp mặt xuống mặt biển là có thể xem được rồi, thế nên ai không biết bơi cũng đừng ngại mà hãy thử nhé! Nên mang theo kính bơi để dễ bơi và lặn.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p></p><div style=\"text-align: justify;\"><font size=\"2\">Điều không thể bỏ qua khi <font color=\"#111111\"><span style=\"border-style: initial; border-color: initial; font-stretch: inherit; line-height: 21px;\">du lịch Bình Ba</span></font> là thuê tàu đi các bãi tắm và lặn biển xem san hô. Thường giá tàu đi trọn gói hết tất cả các bãi là 1tr – 1,2tr/chuyến tùy chỗ, do đó nếu đi đông thì sẽ tiết kiệm hơn. Nói là “lặn ngắm san hô” nhưng thực ra bạn không nhất thiết phải lặn, chỉ cần mặc áo phao và nằm trên phao, úp mặt xuống mặt biển là có thể xem được rồi, thế nên ai không biết bơi cũng đừng ngại mà hãy thử nhé! Nên mang theo kính bơi để dễ bơi và lặn, vì kính lặn mang không quen sẽ hơi khó mang và khó chịu đấy.</font></div><font size=\"2\"><div style=\"text-align: justify;\">Thậm chí, bạn có thể không cần xuống nước mà vẫn ngắm san hô được. Thỉnh thoảng, ở bãi Nhà Cũ khi thủy triều xuống thấp, từng dải san hô đầy màu sắc sẽ phơi mình dưới ánh mặt trời, tha hồ cho bạn vừa đi vừa nhìn ngắm, sờ mó, thưởng thức.</div></font><p></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_27.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></font></p><p style=\"text-align: justify;\"><font size=\"2\">Có rất nhiều bãi, nhưng thường thì đi 7 bãi, trong đó có 3 bãi có thể đi bằng xe máy là bãi Nồm, bãi Chướng và bãi Nhà Cũ. Bãi Nồm: đây là một bãi cát rất rộng và có chỗ có đá ngầm. Đa số người dân địa phương và du khách tắm biển ở đây vì biển rất sạch, trong. Bãi Chướng: Nằm cách cầu cảng chừng 30 phút đi bộ. Đây là bãi biển duy nhất trên đảo ngắm được bình minh. Bãi Nhà Cũ: Bãi này có nhiều nhum (cầu gai) nên có thể bị đâm vào chân khi tắm. Tuy nhiên bãi này có thể nói là rất tuyệt vời về sự trong và sạch của nước biển.</font></p><p style=\"text-align: justify;\"><font size=\"2\">Vì vậy nếu có nhiều thời gian, các bạn chỉ nên thuê tàu đi 4 bãi còn lại thôi, thứ nhất là giá thuê tàu sẽ thấp xuống (còn khoảng 600k), thứ hai là có nhiều thời gian để tắm và xem san hô hơn ở mỗi nơi, nhớ yêu cầu đồ nghề (áo phao, phao, kính lặn) và người hướng dẫn để xem san hô đúng chỗ đẹp nhất nhé.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_19.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"><br></font></p><p></p><div style=\"text-align: justify;\"><font size=\"2\">Ngoài ra còn có dịch vụ cho ăn uống trên bè chung với thuê tàu (liên hệ mấy nơi tổ chức tour ở các nhà nghỉ gần bến tàu trên Bình Ba là có, hoặc hỏi bất kỳ người dân nào).</font></div><font size=\"2\"><div style=\"text-align: justify;\">Sau phần tắm, xem san hô thì phần thú vị không kém là thuê xe máy để đi khám phá đảo. Giá thuê xe là 100k/ngày, có rất nhiều chỗ cho thuê xe trên đảo và các nhà nghỉ đều có luôn dịch vụ này. Nên đi xe máy từ sáng sớm ra bãi Chướng để ngắm bình minh, sau đó chạy khám phá hết những đường đèo trên núi. Có nhiều chỗ sẽ cho bạn những tầm nhìn rất đẹp, đặc biệt là 3 điểm cao nhất ở 3 hướng Bắc, Nam và Đông. Bạn sẽ có cơ hội quan sát toàn cảnh vịnh Cam Ranh, ngắm hòn Rùa, tàu duyên hải tuần tra, các tàu đánh bắt nho nhỏ hay toàn cảnh khu dân cư của đảo đấy.</div></font><div style=\"text-align: center;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_9.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></div><p></p><p></p><div style=\"text-align: justify;\"><font size=\"2\">Hoạt động thú vị đầu tiên mà bạn nên thử là soi còng. Các bãi biển không có người ở quanh đảo Bình Ba có rất nhiều còng, các bạn có thể cầm đen pin đi soi và rượt còng vào buổi tối rất vui. Đặc biệt là bạn có thể tận hưởng món thịt còng chiên rất ngon sau đó.</font></div><p style=\"text-align: justify;\"><font size=\"2\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh <b><font color=\"#00bfff\">Thông (0905 56 53 11)</font></b> tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</font></p><p></p><p></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_14.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></font></div><div style=\"text-align: center;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><font size=\"2\"><br></font></b></div><div style=\"text-align: center;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><font style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" size=\"2\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">XEM THÊM CÁC TOUR BÌNH BA</a></font></b></div><p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437413649, '1440324643', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font><style>BODY { font-family:Arial;font-size:12px; } </style><style>BODY { font-family:Arial;font-size:12px; } </style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch bình ba, phượt bình ba, tour bình ba, bình ba nha trang, điểm đến bình ba', 'Sài Gòn - Bình Ba', 'Tắm biển và ngắm san hô tại Bình Ba xinh đẹp', 'Tắm biển và ngắm san hô tại Bình Ba xinh đẹp', 'du lịch bình ba, tour bình ba, khách sạn bình ba, ẩm thực bình ba', 0, ',4,5,', '', 1),
(686, '', '', 0, 'Vượt sóng gió ra đảo Bình Ba Nha Trang', 'vuot-song-gio-ra-dao-binh-ba-nha-trang', 'p-vuot-song-gio-ra-dao-binh-ba-686.jpg', 1, 'Gọi là Bình Ba vì đây chính là hòn đảo chắn sóng, giữ sự bình yên cho vịnh Cam Ranh. Theo người lớn tuổi đã có thâm niên sống ở Bình Ba (Cam Bình, Cam Ranh, Khánh Hòa), đảo này đã có người sống từ thời vua Gia Long. Nhưng mãi đến sau những năm 1975 thì cư dân trên đảo mới bắt đầu tấp nập. Mọi người đổ xô nhau lên đảo để làm ăn và đánh bắt.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\">Vào thời điểm này trong năm, biển dậy sóng, từng đợt gió bấc thổi mạnh nên thuyền đi từ đất liền ra đảo hơi chao đảo song vẫn khá an toàn. </font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\">Gọi là Bình Ba vì đây chính là hòn đảo chắn sóng, giữ sự bình yên cho vịnh Cam Ranh. Theo người lớn tuổi đã có thâm niên sống ở Bình Ba (Cam Bình, Cam Ranh, Khánh Hòa), đảo này đã có người sống từ thời vua Gia Long. Nhưng mãi đến sau những năm 1975 thì cư dân trên đảo mới bắt đầu tấp nập. Mọi người đổ xô nhau lên đảo để làm ăn và đánh bắt.</font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\"><br></font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\">Mỗi ngày, du khách có thể đến đảo Bình Ba từ cảng cá Ba Ngòi vào lúc 10 giờ sáng và 2 giờ chiều. Thời gian từ Ba Ngòi đến Bình Ba mất khoảng 2 tiếng. Trước khi đến đảo, du khách sẽ được chiêm ngưỡng vẻ đẹp tuyệt hảo của thiên nhiên với những bãi biển xanh trong vắt, bãi cát trắng trải dài, màu xanh của cây cỏ chen lẫn màu của đá, không gian tĩnh lặng...</font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\">Lên đảo còn thú vị hơn. Nếu bãi Nồm, bãi Nhà Cũ của đảo Bình Ba chỉ đẹp như tranh thì tại bãi Chướng có hai dòng nước nóng lạnh. Đứng ở điểm này sẽ bắt gặp dòng nước lạnh, nhưng chỉ cần nhích vài bước chân thì sẽ cảm nhận dòng nước ấm đang chảy qua. Đến đây, người thích mạo hiểm, có thể men theo sườn núi khám phá các di tích đã hoang phế như ụ đại pháo, lô cốt phòng thủ… Người thích thiên nhiên thì đi dọc theo bãi biển ngắm những vỏ ốc ngũ sắc tuyệt đẹp, những khối đá nhấp nhô dưới ghềnh, những vách đá dựng đứng cùng một số hang động gợi trí tò mò. </font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\"><br></font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\">Thú vị nhất khi đến Bình Ba là câu cá cùng sự hiếu khách của người dân nơi đây. Bất cứ lúc nào, hay lang thang khu vực nào của đảo, bạn đều nhận được lời mời đến bè cá tôm hay đến nhà để thưởng thức các món hải sản. Có lẽ cuộc sống ngư phủ khiến con người nơi đây phóng khoáng, hiếu khách. Ở đảo không có quán ăn hay dịch vụ phòng nghỉ nên du khách cần mang theo hành trang khi dã ngoại. Bạn có thể thoải mái nhóm một đống lửa rồi nghỉ qua đêm ngoài trời tại bãi Nồm hay có thể nghỉ nhờ qua đêm ở nhà dân. Theo Bưu điện Việt Nam Du lịch miền Trung Nha Trang.</font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\"><br></font></p><p style=\"text-align: center; margin: 0px;\"><font size=\"2\"><img src=\"/upload/31.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></p><p style=\"text-align: center; margin: 0px;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_4.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: center; margin: 0px;\"><font size=\"2\"><img src=\"/upload/dao_binh_ba_28.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></p><p style=\"text-align: justify; margin: 0px;\"><font size=\"2\"><br></font></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"box-sizing: border-box;\"><font size=\"2\"><b>Lưu trú</b></font></span></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\">Có rất nhiều nhà nghỉ, homestay, khách sạn trên Bình Ba, giá phòng dao động từ 50.000 đến 400.000 đồng một đêm. Những ai quen ở khách sạn hạng sạng sẽ khó lòng thỏa mãn với dịch vụ nơi đây. Buổi tối, trên đảo hầu như không có nhiều hoạt động, du khách yêu thích sự sôi động có thể cảm thấy buồn tẻ.</font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\">Chợ Bình Ba bán rất nhiều món ăn đúng nghĩa ngon bổ rẻ nên du khách thỏa sức lựa chọn các món như bánh canh, bánh căn tôm mực, bánh căn trứng, ốc, bánh tráng mắm ruốc, cuốn nem..., giá dao động 3.000 - 20.000 đồng.</font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_3.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><font style=\"box-sizing: border-box;\" size=\"2\">XEM THÊM CÁC TOUR BÌNH BA</font></a></b></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><span style=\"box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"box-sizing: border-box;\"> </span><span style=\"box-sizing: border-box;\"><font color=\"#00bfff\"><b>Thông (0905 56 53 11)</b></font></span><span style=\"box-sizing: border-box;\"> </span><span style=\"box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</span></font></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437453537, '1440324599', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Vượt sóng gió ra đảo Bình Ba', 'Vượt sóng gió ra đảo Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',7,', '', 1),
(687, '', '', 0, 'Bình Ba - Thiên đường du lịch', 'binh-ba-thien-duong-du-lich', 'p-binh-ba-thien-duong-hien-huu-687.jpg', 1, 'Hòn đảo chỉ rộng trên 3km2 nhưng người ta có thể dành cả tuần vẫn không thể trải nghiệm hết những điều tuyệt vời ở đây. Ngoài ba bãi tắm biển nổi tiếng nằm bên khu dân cư là Bãi Chướng, Bãi Nồm, và Bãi Nhà Cũ, Bình Ba còn có những bãi tắm kín đáo, hoang sơ, có thể làm động lòng bất cứ ai như Bãi Lau, Bãi Sa Huỳnh… Mỗi bãi biển có một sắc thái phong cảnh không thể thay thế.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"sapo\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 10px;\"><font size=\"2\">Hòn đảo chỉ rộng trên 3km2 nhưng người ta có thể dành cả tuần vẫn không thể trải nghiệm hết những điều tuyệt vời ở đây.</font></p><p style=\"text-align: center;\"></p><p style=\"text-align: center;\"></p><div style=\"text-align: justify;\"><font size=\"2\">Ngoài ba bãi tắm biển nổi tiếng nằm bên khu dân cư là Bãi Chướng, Bãi Nồm, và Bãi Nhà Cũ, Bình Ba còn có những bãi tắm kín đáo, hoang sơ, có thể làm động lòng bất cứ ai như Bãi Lau, Bãi Sa Huỳnh… Mỗi bãi biển có một sắc thái phong cảnh không thể thay thế.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_6.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"600\" border=\"0\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"></font></div><p></p><p style=\"text-align: center;\"></p><div style=\"text-align: justify;\"><font size=\"2\">Bãi Nồm, và Bãi Chướng là hai bãi biển nằm ngay rìa làng, được đặt tên theo hướng gió. Đó là những bãi biển xinh xắn như một tiền cảnh tự nhiên cho vẻ đẹp yên bình của ngôi làng miền biển. Từ phía biển nhìn vào, sau mặt nước xanh, sau bờ cát trắng là những nếp nhà êm đềm của ngư dân xóm đảo khép nép dưới rặng dừa hay những tán phi lao.</font></div><div style=\"text-align: justify;\"><font size=\"2\">Bãi Nhà Cũ, khuất nẻo hơn một chút, cái tên nhắc đến một phế tích của thời vàng son xa khuất. Bãi biển này được ngăn cách với khu dân cư bởi một rừng trâm xanh ngắt, vì thế mà trở nên riêng tư và tịch mịch.</font></div><div style=\"text-align: justify;\"><font size=\"2\">Đặc sản số 1 nơi đâu thì chắc ai cũng biết rồi đó là Tôm Hùm, tôm hùm trên đảo Bình Chất chất lượng cao, tôm to thịt ngon, nướng, hấp, xào,..nói chung làm món nào có tôm hum là hết xẩy. Giá tôm hùm nơi đây mình thấy rẻ hơn hơn trong thị trường và các khách sạn 40%, tôm hùm chết ngộp tầm 2-3 con/kg có giá 400k->600k, còn sống thì 1tr4 -> 1tr8/kg. Mình thì toàn ăn tôm ngộp, ở đây tôm chết ngộp vẫn còn tươi rối nhé không phải hàng dạt,hàng thừa nhé, ăn thì cũng như tôm sống thôi.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></font></div><p></p><div style=\"text-align: justify;\"><font size=\"2\">Đã từng lặn ngắm ở nhiều bãi biển, nhưng lặn ngắm ở Bình Ba vẫn có nhiều trải nghiệm vô cùng khác lạ, đơn giản vì biển ở đây quá hoang sơ, san hô còn nhiều màu sắc rực rỡ chứ không nhàn nhạt, trắng trắng, mờ mờ một màu như ở những bãi biển khác. Kết hợp trong chuyến đi lặn ngắm san hô, du khách còn có thể tự mình câu cá, câu mực dưới sự giúp sức của ngư dân địa phương, bạn sẽ không khỏi ngạc nhiên vì mình có thể tay không bắt cá, mực, bạch tuộc ngay dưới biển.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></div><p></p><p></p><div><div><p style=\"box-sizing: border-box; margin: 0px 0px 15px;\"></p><p style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 15px;\"><font size=\"2\">Bãi Nồm, Bãi Chướng, Bãi Nhà Cũ đều là những bãi biển tuyệt vời. Song, thiên đường tắm biển thực sự ở Bình Ba phải là bãi Sa Huỳnh. Anh Nghiêm Bá Hưng, một chuyên gia tư vấn phát triển, dù đã đặt chân đến hết các châu lục để tắm biển, nhưng khi đến đây đã phải thốt lên: </font><font color=\"#ff1493\" size=\"3\">“Đến đây, tôi mới thực sự biết thế nào là tắm biển!\"</font></p><p style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 15px;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_17.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></font></p></div></div><div style=\"text-align: center;\"><p class=\"subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 1em; color: rgb(51, 51, 51); line-height: 25px; text-align: justify; padding: 0px; text-rendering: geometricPrecision; background-color: rgb(255, 255, 255);\"><b style=\"box-sizing: border-box;\"><font size=\"2\">Lưu trú</font></b></p><p class=\"subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 1em; color: rgb(51, 51, 51); line-height: 25px; text-align: justify; padding: 0px; text-rendering: geometricPrecision; background-color: rgb(255, 255, 255);\"><font size=\"2\">Có rất nhiều nhà nghỉ, homestay, khách sạn trên Bình Ba, giá phòng dao động từ 50.000 đến 400.000 đồng một đêm. Những ai quen ở khách sạn hạng sạng sẽ khó lòng thỏa mãn với dịch vụ nơi đây. Buổi tối, trên đảo hầu như không có nhiều hoạt động, du khách yêu thích sự sôi động có thể cảm thấy buồn tẻ.</font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><p class=\"subtitle\" style=\"text-align: center; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\"><font style=\"box-sizing: border-box;\" size=\"3\">XEM THÊM CÁC TOUR BÌNH BA</font></a></b></p><p class=\"subtitle\" style=\"text-align: justify; box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; text-rendering: geometricPrecision;\"><span style=\"font-size: small; box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"font-size: small; box-sizing: border-box;\"> </span><b><font size=\"3\" color=\"#1e90ff\"><span style=\"box-sizing: border-box; line-height: 25px; background-color: rgb(255, 255, 255);\">Thông (0905 56 53 11)</span><span style=\"box-sizing: border-box;\"> </span></font></b><span style=\"font-size: small; box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</span></p></div>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437454668, '1440324569', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn - Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Bình Ba - Thiên đường hiện hữu', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',4,5,', '', 1),
(689, '', '', 0, 'Hình ảnh tuyệt đẹp đảo Bình Hưng - Bình Ba', 'hinh-anh-tuyet-dep-dao-binh-hung-binh-ba', 'p-hinh-anh-tuyet-dep-ve-dao-binh-hung-–-binh-ba-689.jpg', 1, 'Chuyến đi ngắn nhưng lại mang đến nhiều cảm xúc tuyệt vời trên cung đường đến với đảo Bình Hưng kết hợp Bình Ba, thuộc địa phận tỉnh Cam Ranh, Khánh Hòa. Men theo biển từ TP.Hồ Chí Minh qua Mũi Né, Phan Rang (Ninh Thuận) đến Cam Ranh (Khánh Hòa) là con đường rộng rãi, thoáng đãng dựa vào núi, uốn lượn theo biển vô cùng hữu tình.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p></p><div style=\"text-align: justify;\"><font size=\"2\">Chuyến đi ngắn nhưng lại mang đến nhiều cảm xúc tuyệt vời trên cung đường đến với đảo Bình Hưng kết hợp Bình Ba, thuộc địa phận tỉnh Cam Ranh, Khánh Hòa. Men theo biển từ TP.Hồ Chí Minh qua Mũi Né, Phan Rang (Ninh Thuận) đến Cam Ranh (Khánh Hòa) là con đường rộng rãi, thoáng đãng dựa vào núi, uốn lượn theo biển vô cùng hữu tình.</font></div><p></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/binh-hung-1.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></font></div><div style=\"text-align: center;\"><font size=\"2\"><br></font></div><font size=\"2\"><div style=\"text-align: justify;\">Tuyến đường nằm trong một phần dự án đường Bắc Nam ven biển và là một trong những tuyến đi đẹp nhất của Miền Trung.</div><div style=\"text-align: justify;\"><br></div></font><font size=\"2\"><div style=\"text-align: center;\"><img src=\"/upload/binh-hung-2.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></div></font><font size=\"2\"><div style=\"text-align: center;\"><img src=\"/upload/binh-hung-3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><div style=\"text-align: center;\"><br></div></font><font size=\"2\"><div style=\"text-align: justify;\">Bình Ba là một đảo lớn nằm trong vịnh Cam Ranh, hòn đảo xinh đẹp này trong những năm gần đây đã làm điên đảo khá nhiều du khách mê biển.</div><div style=\"text-align: justify;\"><br></div></font><font size=\"2\"><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/bai_viet_7.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></div><div style=\"text-align: center;\"><br></div></font><font size=\"2\"><div style=\"text-align: justify;\">Giao thông đến Bình Ba rất thuận tiện. Nếu bạn đi từ TP.HCM chỉ cần đón xe khách và qua một đêm là đến. Còn bạn đi từ Hà Nội sẽ đón máy bay vào Cam Ranh, thêm 30 phút đi taxi đến cảng Ba Ngòi, lênh đênh một tiếng trên biển là đến được hòn đảo xinh đẹp này. Thời gian lý tưởng nhất cho chuyến khám phá Bình Ba là 3 ngày 2 đêm. Đây là hình ảnh đầu tiên về Bình Ba khi tàu sắp cập đảo.</div></font><font size=\"2\"><div style=\"text-align: justify;\">Rộng, đẹp, bao la, nhiều sóng nhất ở Bình Ba là bãi Nồm. Đến đây, khách thường phải đi xe máy. Địa điểm này được chắn hai đầu bởi hai cánh cung núi cao, khó có gì tuyệt vời hơn với du khách khi được nhảy sóng, hóng gió, nghịch cát dưới cái nắng, gió, sóng, cát nguyên sơ, hoang dã.</div><div style=\"text-align: justify;\"><br></div></font><font size=\"2\"><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/bai_viet_9.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><div style=\"text-align: center;\"><br></div></font><p style=\"text-align: center;\"><font color=\"#1e90ff\" style=\"box-sizing: border-box; cursor: pointer; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" size=\"3\"><b><a href=\"http://saigon-binhba.com/danh-sach-tours.htmls\" style=\"box-sizing: border-box; cursor: pointer; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">Xem thông tin Tour Bình Ba tại đây.</a></b></font></p><font size=\"2\"><div style=\"text-align: justify;\">Bình Ba có nhiều bãi tắm đẹp quanh đảo như  Bãi Chướng, Bãi Nhà Cũ, Bãi Đào Hoa và đặc biệt là bãi tắm chính trên đảo: Bãi Nồm. Bãi tắm đã được người dân đầu tư và khai thác thêm nhiều dịch vụ như  lặn ngắm san hô, quán cafe ôm sát bờ biển, những cây dù nhỏ xinh tránh nắng, nhà nghỉ và dĩ nhiên là không thể thiếu các hàng quán hải sản với đủ loại món nướng tươi ngon.</div><div style=\"text-align: justify;\">Rời Bình Ba, tạm biệt sự nồng hậu của những người dân trên đảo, khách du lịch nhất định đều đã mang về những ngụm nước biển lỡ uống khi lặn ngắm san hô, ấn tượng không thể phai mờ về cảnh sắc trời, biển, về gió, nắng, sóng nơi này. Đặc biệt nhất là đồ ăn. Bạn đừng quên mang về những con tôm hùm to, cá biển tươi ngon và những con ốc ngon nhất vì Bình Ba luôn sẵn sàng dành cho bạn những điều tuyệt vời.</div><div style=\"text-align: justify;\"><br></div></font><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></div><div style=\"text-align: center;\"><br></div><font size=\"2\"><span style=\"box-sizing: border-box; cursor: pointer; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"box-sizing: border-box; cursor: pointer; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"> </span><span style=\"box-sizing: border-box; cursor: pointer; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span style=\"box-sizing: border-box;\"><b><font color=\"#1e90ff\">Thông (0905 56 53 11)</font></b></span></span><span style=\"box-sizing: border-box; cursor: pointer; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"> </span><span style=\"box-sizing: border-box; cursor: pointer; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</span></font><p></p><p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437456821, '1440324266', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Hình ảnh tuyệt đẹp về đảo Bình Hưng – Bình Ba', 'Hình ảnh tuyệt đẹp về đảo Bình Hưng – Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',4,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(688, '', '', 0, 'Du lịch Nha Trang - Đảo Tôm Hùm Bình Ba Nha Trang', 'du-lich-nha-trang-dao-tom-hum-binh-ba-nha-trang', 'p-du-lich-nha-trang-dao-tom-hum-binh-ba-688.jpg', 1, 'Được lòng du khách không chỉ ở vẻ đẹp của các bãi biển, đảo Bình Ba còn được biết đến bởi sự thân thiện, hiền hòa và chất phát của người dân nơi đây, bởi các món hải sản thật đặc sắc, đặc biệt là tôm hùm. Tôm hùm được người dân ở đây nuôi nhiều và cực ngon được chế biến thành nhiều món ăn phong phú và món rượu được pha với tiết của tôm hùm xanh thì thật là một hương vị khó quên khi một lần được thưởng thức.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\"><font size=\"2\">Đảo Bình Ba – Nằm cách thành phố Cam Ranh khoảng 2 giờ đi tàu, là hòn đảo chắn gió, gìn giữ sự bình yên cho vịnh Cam Ranh. Nhưng không chỉ vậy, chỉ một lần bạn vô tình đặt chân lên hòn đảo này sẽ ngay lập tức bị thu hút bởi vẻ đẹp hoang sơ đến không muốn rời đi.<br></font></span></p><p style=\"text-align: center;\"></p><div style=\"text-align: justify;\"><font size=\"2\">Được lòng du khách không chỉ ở vẻ đẹp của các bãi biển, đảo Bình Ba còn được biết đến bởi sự thân thiện, hiền hòa và chất phát của người dân nơi đây, bởi các món hải sản thật đặc sắc, đặc biệt là tôm hùm. Tôm hùm được người dân ở đây nuôi nhiều và cực ngon được chế biến thành nhiều món ăn phong phú và món rượu được pha với tiết của tôm hùm xanh thì thật là một hương vị khó quên khi một lần được thưởng thức. Vì vậy mà hòn đảo này còn có một cái tên rất đặc trưng là </font><font color=\"#ff1493\" size=\"3\">“đảo Tôm Hùm”</font><font size=\"2\">.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><font size=\"2\"><div style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_8.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></div></font><p></p><p style=\"text-align: justify;\"><font size=\"2\">Đi theo con đường ven biển Cam Ranh vào Nha Trang, đoàn dừng chân tại Bãi Dài, 1 trong những bãi tắm còn hoang sơ và phục vụ theo kiểu người dân địa phương phục vụ, tắm biển và tự do thưởng thức hải sản, đoàn dùng cơm trưa tại Bãi Dài.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_30.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"></font></p><p style=\"text-align: center;\"><img src=\"http://saigon-binhba.com/upload/tom-hum-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; color: rgb(51, 51, 51); font-family: OpenSans-Regular; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);\"></p><p><font size=\"2\">Buổi chiều, quý khách thoải mái khám phá vẻ đẹp tuyệt vời của bán đảo Bình Ba trong ánh tà dương rực rỡ bằng xe máy có sẵn trên đảo, tìm hiểu văn hóa, cuộc sống sinh hoạt biển đảo của ngư dân địa phương và thưởng thức những món ăn vặt hấp dẫn.<br>Đi bộ lên lưng chừng núi để ngắm toàn cảnh vẻ đẹp của Vịnh Cam Ranh và ngắm hoàng hôn trên đảo.<br>Quý khách còn có thể thắp hương, chụp ảnh cảnh đẹp của hai ngôi chùa do các phật tử quyên góp dựng nên: Tịnh thất Ngọc Gia Hương và điện Địa Tạng…<br>Nếu còn thời gian, quý khách sẽ ghé qua để vui đùa cùng làn nước biển xanh trong (Quý khách cũng có thể ngắm san hô nhưng phải lội ra xa bờ).</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_12.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"300\" border=\"0\"><span><br></span></font></p><p></p><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><font size=\"2\">Khởi hành đi Nha Trang, đoàn tham quan  <span style=\"line-height: 20.7999992370605px; border-style: initial; border-color: initial;\">làng gốm Bầu Trúc</span> của người dân tộc Chăm với các sản phẩm được làm từ đôi tay khéo léo,  <span style=\"line-height: 20.7999992370605px; border-style: initial; border-color: initial;\">làng dệt Thổ Cẩm</span>.</font></p><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><span><font size=\"2\">Ngoài ra, còn có nhiều hàng quán bán nhiều món rất ngon và rẻ như bánh canh/bún chả cá (chiên hoặc hấp), bún thịt nướng, mì, nui, hủ tíu, sinh tố, bánh tráng nướng… Giá các món này chỉ từ 10k – 20k, quá hấp dẫn phải không? Hoặc ở nhà nghỉ cũng sẽ nhận nấu cơm cho bạn nếu bạn yêu cầu, nhưng giá 1 phần cơm như thế thì khá đắt (80k -90k/phần) so với chất lượng mà cũng không có gì nổi bật lắm.<br></font></span></p><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><font size=\"2\"><br></font></p><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><span><font size=\"2\">Đến Bình Ba, bạn có thể chọn hoặc ở trong nhà nghỉ, hoặc mang theo một chiếc lều và cắm trại ngay ngoài bãi biển. Đó là một trải nghiệm rất tuyệt vời, bởi nó không chỉ cho bạn thấy được biển đêm và bầu trời sao đẹp đến thế nào, mà nó còn cho bạn thấy, bạn có thể hạnh phúc và vô lo ra sao khi vứt hết những mối lo ở đằng sau và chỉ hoà mình vào cảnh biển.</font></span></p><p style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><span><font size=\"2\"><br></font></span></p><p style=\"text-align: center; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><p style=\"text-align: center; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><font size=\"2\"><br></font></p><p style=\"text-align: center; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><font style=\"box-sizing: border-box; color: rgb(66, 139, 202); cursor: pointer; background: transparent;\" size=\"2\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background: transparent;\">XEM THÊM CÁC TOUR BÌNH BA</a></font></b></p><p style=\"text-align: left; margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style-type: none;\"><font size=\"2\"><span style=\"box-sizing: border-box; text-align: justify;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"box-sizing: border-box; text-align: justify;\"> </span><span style=\"box-sizing: border-box; line-height: 25px; text-align: justify; background-color: rgb(255, 255, 255);\"><b><font color=\"#00bfff\">Thông (0905 56 53 11)</font></b></span><span style=\"box-sizing: border-box; text-align: justify;\"> </span><span style=\"box-sizing: border-box; text-align: justify;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</span></font></p>    \r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437455594, '1440324539', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Du lịch Nha Trang - Đảo Tôm Hùm Bình Ba', 'Du lịch Nha Trang - Đảo Tôm Hùm Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',4,5,', '', 1),
(690, '', '', 0, 'Hướng dẫn cách phượt Bình Ba', 'huong-dan-cach-phuot-binh-ba', 'p-huong-dan-cach-di-phuot-binh-ba-690.jpg', 1, 'Đảo Bình Ba - Xã Cam Bình - TP Cam Ranh, Khánh Hòa là một hòn đảo nhỏ, giáp Vịnh Cam Ranh, cách cảng Cam Ranh 8 hải lý (15 km) về phía Đông. Từ cảng Đá Bạc – Cam Ranh đi Bình Ba khoảng 1h15 phút trên biển thì đến được đảo Bình Ba (1 ngày 4 chuyến đò từ Cam Ranh sang Bình Ba: 7h sáng 10h00 sáng 1h30 trưa và 4h00 chiều, từ Bình Ba sang Cam Ranh: 5 giờ sáng ,9h sáng , 12h30 trưa và 4h30 chiều, mỗi chuyến 25.000đ).', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Đảo Bình Ba - Xã Cam Bình - TP Cam Ranh, Khánh Hòa là một hòn đảo nhỏ, giáp Vịnh Cam Ranh, cách cảng Cam Ranh 8 hải lý (15 km) về phía Đông.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Từ cảng Đá Bạc – Cam Ranh đi Bình Ba khoảng 1h15 phút trên biển thì đến được đảo Bình Ba (1 ngày 4 chuyến đò từ Cam Ranh sang Bình Ba: 7h sáng, 10h00 sáng, 1h30 trưa và 4h00 chiều, từ Bình Ba sang Cam Ranh: 5 giờ sáng, 9h sáng, 12h30 trưa và 4h30 chiều, mỗi chuyến 25.000đ). Ngoài ra du khách có thể thuê phương tiện (tàu) riêng cho chuyến đi của mình nếu du khách không muốn phải chờ đợi lâu.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Với diện tích hơn 300 ha, với hơn 700 hộ dân, khoảng 5000 người sinh sống. Đảo Bình Ba là nơi tập trung của ngành nghề đánh bắt và nuôi trồng thủy sản, đặc biệt là <b><font color=\"#ff1493\">TÔM HÙM</font></b>.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Đời sống người dân tương đối yên bình. Cơ sở hạ tầng, nhà cửa khá khang trang. Có trạm y tế, trường học (cấp I và II). Có internet, được phủ sóng di động rộng rãi, 3G vào mạng nhanh, nước ngọt thì hơi nhiễm mặn.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Đảo Bình Ba đẹp, thơ mộng. Những bãi cát trắng trải dài. Làn nước trong xanh vào mùa không mưa (Bình Ba có 3 bãi biển đẹp: Bãi Chướng (đón mặt trời mọc), bãi này nhiều đá, nước trong xanh, Bãi Nồm cát trắng, sạch, là nơi dân ở đây tắm và tập thể dục rất đông, bãi này các bạn đi du lịch bụi có thể cắm lều để ngủ và Bãi Nhà Cũ (là bãi nơi mặt trời lặng) đẹp, sạch, tắm thì sướng nhưng lại có cầu gai đâm chân, không khí Bình Ba trong lành, hải sản tươi ngon, đồ ăn vặt thì miễn chê mà rẻ.</font></p><p style=\"text-align: center; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_5.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\"></font></p><p style=\"text-align: center; margin: 10px 0px; padding: 0px; border: 0px;\"><b style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: OpenSans-Regular; line-height: 25px; background-color: rgb(255, 255, 255);\"><font style=\"box-sizing: border-box; color: rgb(66, 139, 202); cursor: pointer; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" size=\"3\"><a href=\"http://www.saigon-binhba.com/danh-sach-tours.htmls\" target=\"_blank\" style=\"box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; cursor: pointer; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">XEM THÊM CÁC TOUR BÌNH BA</a></font></b></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Đi Bình Ba vào mùa trăng, trăng đổ xuống biển lóng lánh như ánh bạc, gió thì mát, sóng vỗ rì rào bên tai, nằm ngửa mặt lên trời nhìn trăng, hải sản tươi, nướng ăn liền, hát hò trên bãi với cây đàn ghita hoặc karaoke....</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"font-size: small;\">Có nhiều cách di chuyển đến Cam Ranh, bạn có thể đi xe khách hoặc máy bay. Thông thường các bạn sẽ chọn đi xe khách cho tiện và giá rẻ.</span></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\"><b>Máy bay:</b> Hàng ngày có rất nhiều chuyến bay từ Hà Nội và Tp. HCM đi Nha Trang. Sau khi xuống sân bay bạn có thể dễ dàng bắt taxi đến cảng Ba Ngòi (điểm xuất phát tàu đi đảo Bình Ba) cách sân bay C.Ranh 15km.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\"><b>Xe khách:</b> Từ Tp.Hồ Chí Minh có nhiều hãng xe đi Nha Trang như: Phương Trang, Phương Nam, Mai Linh.Tôi vẫn khuyên các bạn nên đi Phương Trang. Các bạn nhớ dặn lái xe cho xuống Bưu điện Cam Ranh cách cảng Ba Ngòi 3km hoặc tại bến xe C.Ranh cách 5km.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"border-style: initial; border-color: initial;\"><font size=\"2\"><b>Tàu đi đảo Bình Ba</b></font></span></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Từ bến xe Cam Ranh bạn có thể đi xe ôm ra bến đò Ba Ngòi với giá khoảng 15k. Hàng ngày đều có Đò khởi hành ra đảo lúc 7 giờ sáng, 10h sáng, 1h30 trưa và 4h chiều, với giá 30k/hành khách. Đò từ đảo về đất liền có 4 chuyến: Chuyến sáng sớm lúc 5h, 9h sáng, chuyến 12h trưa và 4h30 chiều.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"border-style: initial; border-color: initial;\"><font size=\"2\"><b>Nhà nghỉ trên đảo Bình Ba</b></font></span></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Ngay bãi Nồm có một số hotel để nghỉ. Tuy nhiên bạn có thể tham khảo thêm </font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Một địa chỉ cũng được nhiều bạn gợi ý đó là nhà nghĩ anh </font><b><font color=\"#1e90ff\" size=\"3\">Trung (0945 46 79 68)</font></b><font size=\"2\">. Nhà nghỉ rộng rãi mát mẻ, máy lạnh và tắm nóng. Ngoài ra bạn có thể đặt các loại Hải sản,đặt biệt Tôm Hùm tại đây với giá hợp lý.</font></p><p style=\"text-align: center; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px; background-color: rgb(255, 255, 255);\"><font size=\"2\">Ăn trưa tuỳ giá: ăn nhà dân hoặc ở chợ 30-50k/người, nếu ăn trên bè nổi được tắm biển, lặng ngắm san hô, vui chơi đàn ca hát nhau nghe trên bè nổi giá 90-100k/người, ăn được 5 món Hải sản bao gồm trái cây tráng miệng + thêm nước uống, ngoài ra bạn có thể câu mực hoặc cá tuỳ thích.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px; background-color: rgb(255, 255, 255);\"><font size=\"2\">Các bạn có nhu cầu đi Bình ba, bạn có thể gọi </font><font color=\"#1e90ff\" style=\"font-weight: bold;\" size=\"3\">Thông (<span style=\"line-height: 25px;\">0905 56 53 11</span>)</font><font size=\"2\">, chuyên nhận tour khách đoàn hoặc khách gia đình, với giá rẻ và được anh phục vụ rất chu đáo và tận tình,ngoài ra bạn có thể giao lưu văn nghệ.</font></p><p style=\"text-align: justify; margin: 10px 0px; padding: 0px; border: 0px;\"><font size=\"2\">Đặc sản ở đây bạn không thể bỏ qua đó là Tôm Hùm. Người dân Khánh Hòa có câu: “Yến sào Hòn Nội, vịt lội Ninh Hòa, tôm hùm Bình Ba, nai khô Diên Khánh” để kể về những đặc sản trứ danh của tỉnh này. Tôm Hùm ở đây giá rẻ hơn 30 – 60% so với giá trên các nhà hàng. Tôm Hùm ngộp giá dao động: 500 – 600k/kg, tôm sống: 1tr4 – 1tr8/kg. Mình thì toàn ăn tôm ngộp, mặc dù là ngộp nhưng hoàn toàn là tươi rói nhé, chứ không phải là tôm hàng dạt.</font></p><p style=\"text-align: center; margin: 10px 0px; padding: 0px; border: 0px;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437463092, '1440324235', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Hướng dẫn cách đi phượt Bình Ba', 'Hướng dẫn cách đi phượt Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',7,', '', 1),
(691, '', '', 0, 'Mực Lá Bình Ba', 'muc-la-binh-ba', 'p-muc-la-binh-ba-691.jpg', 1, 'Mực Lá là loại mực biển, sống đa dạng theo những tầng nước khác nhau. Khi còn nhỏ chúng sống trôi nổi dọc theo các ghềnh đá nước nông, khi lớn tùy theo khu vực kiếm ăn mà chúng có thể thích nghi theo từng mực nước nông sâu khác nhau.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial;\">Mực Lá</span> là loại mực biển, sống đa dạng theo những tầng nước khác nhau. Khi còn nhỏ chúng sống trôi nổi dọc theo các ghềnh đá nước nông, khi lớn tùy theo khu vực kiếm ăn mà chúng có thể thích nghi theo từng mực nước nông sâu khác nhau.<br></font></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/muc-la-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></div><p style=\"text-align: justify;\"><font size=\"2\">Đây là loại mực ngon nhất trong nhiều chủng loại mực khác nhau trên biển. Tuy nhiên theo nhiều thông tin thì loại mực này theo từng vùng miền mà độ ngon có khác nhau. Và theo kinh nghiệm của tôi thì mực Lá BÌnh Ba là rất ngon nếu không muốn nói là ngon nhất trong khu vực.</font></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/muc-la-3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></div><p></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"border-style: initial; border-color: initial;\">Mực Lá Bình Ba</span> đa phần được các ngư dân đánh bắt theo kiểu truyền thống, rê mực. Ngoài ra còn có một số ít đánh bắt bằng bẫy. Tối họ bắt đầu đến nữa đêm là trở về nên mực Lá Bình Ba 100% là còn tươi nguyên không chê vào đâu được.<br></font><font size=\"2\"><span style=\"border-style: initial; border-color: initial;\">Mực Lá BÌnh Ba</span> có vị ngọt thanh, khi ăn vào miệng lẩn thêm vị mặn của biển, độ dai, dòn, sực sực và mùi thơm đặc trưng, rất tuyệt.</font></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/muc-la-2.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></div><p></p><p style=\"text-align: justify;\"><font size=\"2\">Trong thế giới ẩm thực hiện tại, đa phần được chế biến rất nhiều gia vị và hương liệu. Vì thế nguyên liệu chúng ta thưởng thức không còn mùi vị đặc trưng và nguyên chất nữa. Theo truyền thống ẩm thực Bình Ba thì các loại hải sản Bình Ba chỉ được chế biến khá đơn giản, có chăng cũng chỉ một vài hương vị nhẹ nhẹ thôi như món hấp, nướng, chiên, gỏi, mù tạc... rất đặc trưng và hấp dẫn.<br></font><font size=\"2\">Ngoài ra mực lá được bà con <a href=\"http://dulichbinhba.com/du-lich-binh-ba/24-dao-binh-ba.html\" title=\"đảo Bình Ba\" style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">đảo Bình BA</a><span style=\"margin: 0px; padding: 0px; border: 0px;\"> chế tác thành khô mực một nắng rất ngon. Món này đã từ lâu thành món khoái khẩu của đa số dân nhậu vì chúng đơn giản, gọn nhẹ dễ dùng.<br></span></font><font size=\"2\"><span style=\"border-style: initial; border-color: initial; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">Mực lá Bình Ba</span><span style=\"margin: 0px; padding: 0px; border: 0px;\"> là món không thể thiếu trong tổng menu hải sản được ưa thích hàng đầu. Có rất nhiều du khách đến Bình Ba khi về đặt mua mực mang về đất liền. Giá gốc và chất lượng tại địa phương bao giờ cũng tốt hơn so với những nơi khác. Vì vậy khi đến Bình Ba các bạn đừng quên mang về một ít mực Lá làm quà cho người thân nhé!</span></font></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"> </span><span style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"><b style=\"box-sizing: border-box;\"><font color=\"#00bfff\" style=\"box-sizing: border-box;\">Thông (0905 56 53 11)</font></b></span><span style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\"> </span><span style=\"box-sizing: border-box; color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\">tổ chức party hải sản + karaoke </span><span style=\"color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(255, 255, 255);\">trên bãi biển thật hoành tráng.</span></font></p>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437464171, '1437495388', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Mực Lá Bình Ba', 'Mực Lá Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',2,', '', 1),
(692, '', '', 0, 'Cá Bò Hồm Bình Ba', 'ca-bo-hom-binh-ba', 'p-ca-bo-hom-binh-ba-692.jpg', 1, 'Đây là loại cá sống chủ yếu ở các vùng biển đảo, quanh các rặng san hô với mực nước khoảng 3 - 4 mét. Thức ăn chủ yếu là rong và tảo nên chúng rất chậm lớn nhưng đặc biệt là tuổi thọ của loài cá này rất cao mà có lẽ chính vì chúng chậm lớn và đặc tính chỉ ăn rong, tảo nên thịt chúng đặc biệt thơm ngon tuyệt. Nhờ lợi thế lớp da sừng cực dày, nên cá Bò Hồm đem đi nướng mọi trên than hồng thì rất tuyệt. Thịt sau khi bóc lớp da bên ngoài dậy lên mùi thơm phức.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify;\"><font size=\"2\">Đây là loại cá sống chủ yếu ở các vùng biển đảo, quanh các rặng san hô với mực nước khoãng 3 - 4 mét. Thức ăn chủ yếu là rong và tảo nên chúng rất chậm lớn nhưng đặc biệt là tuổi thọ của loài cá này rất cao.</font></p><p style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/ca-bo-hom-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"><br></font></p><p style=\"text-align: justify;\"><font size=\"2\">Mà có lẽ chính vì chúng chậm lớn và đặc tính chỉ ăn rong, tảo nên thịt chúng đặc biệt thơm ngon tuyệt.</font></p><p style=\"text-align: center;\"></p><div style=\"text-align: center;\"><font size=\"2\"><img src=\"/upload/ca-bo-hom-3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></font></div><font size=\"2\"><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Những ai đã một lần thưởng thức loại cá này thật không dễ gì quên cái hương vị độc đáo, đặc trưng của nó.</div><div style=\"text-align: justify;\">Trên thị trường hiện nay loại cá này dần bị cạn kiệt vì bản chất loại cá này sinh nở khá chậm, trong khi đó nhu cầu thưởng thức rất nhiều. </div><div style=\"text-align: justify;\">Tại <a href=\"http://dulichbinhba.com/du-lich-binh-ba/24-dao-binh-ba.html\" title=\"đảo Bình Ba\" style=\"margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial;\">đảo Bình Ba</a><span style=\"margin: 0px; padding: 0px; border: 0px;\"> khi du khách có nhu cầu, thường thì phải đặt trước, chúng tôi sẽ liên hệ với các thợ săn tại đây để săn chúng.</span></div><div style=\"text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px;\"><br></span></div><div style=\"text-align: center;\"><img src=\"/upload/ca-bo-hom-2.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\"></div><br></font><p></p><p></p><p style=\"text-align: justify;\"><font size=\"2\">Nhờ lợi thế lớp da sừng cực dày, nên cá Bò Hồm đem đi nướng mọi trên than hồng thì rất tuyệt. Thịt sau khi bóc lớp da bên ngoài dậy lên mùi thơm phức, thớ thịt trắng phau như thịt gà, thịt sau khi chấm vào muối ớt chanh đặc trưng xứ Bình Ba đưa vào miệng dai, thơm, ngọt vị thật khó tả.<br></font></p><p></p><p style=\"text-align: justify;\"><font size=\"2\">Cũng chính vì bản chất chúng thơm ngon và quý hiếm nên giá thành cũng khá đắc khoãng từ 500 đến 600k/kg. Tuy vậy các bạn nếu đủ điều kiện cũng nên một lần thưởng thức thử món cá này. Theo tôi nó cũng xứng được xếp vào mỹ vị nhân gian vậy.<br></font></p><p style=\"text-align: justify;\"><font size=\"2\"><span style=\"box-sizing: border-box;\">Buổi tối, nếu đi theo nhóm thì có thể liên hệ anh</span><span style=\"box-sizing: border-box;\"> </span><b style=\"text-align: center;\"><span style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box;\"><font color=\"#1e90ff\">Thông (0905 56 53 11)</font></span></span><span style=\"box-sizing: border-box; text-align: justify;\"> </span></b><span style=\"box-sizing: border-box;\">tổ chức party hải sản + karaoke trên bãi biển thật hoành tráng.</span></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437464720, '1437646418', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Cá Bò Hồm Bình Ba', 'Cá Bò Hồm Bình Ba', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',2,', '', 1),
(693, '', '', 0, 'Hải sản tuyệt ngon tại đảo TÔM HÙM Bình Ba', 'hai-san-tuyet-ngon-tai-dao-tom-hum-binh-ba', 'p-hai-san-tuyet-ngon-noi-693.jpg', 1, 'Đến đảo Bình Ba thuộc thành phố Cam Ranh, tỉnh Khánh Hòa giờ đây đã trở thành một xu hướng du lịch mới. Hòn đảo xinh đẹp này nổi tiếng với nhiều món hải sản tươi ngon, đặc biệt nuôi được giống tôm hùm to và ngon, hấp dẫn tới mức người ta còn gọi là “đảo tôm hùm”.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\"><font color=\"#ff1493\" size=\"4\"><b>1.</b></font> Đi du lịch đến đảo Bình Ba rất dễ dàng và thuận tiện do hòn đảo này nằm cách đất liền chỉ vỏn vẹn 20 km. Toàn hòn đảo chỉ rộng vỏn vẹn hơn 3 cây số vuông với khoảng 5.000 cư dân, nằm biệt lập và cách cảng Ba Ngòi khoảng 1 giờ tàu chạy.</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Biển ở đây cũng không ồn ào và xô bồ như các khu du lịch biển lân cận như Nha Trang hay Mũi Né, mà vẫn giữ được nét đẹp hoang sơ mà tạo hóa mang lại cùng hai bãi tắm tuyệt đẹp, Bãi Nồm cát trắng và Bãi Chướng đầy san hô thật lộng lẫy.</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Sáng sớm, sau khi thả bộ tập thể dục quanh bờ biển, chúng tôi lang thang ở chợ nhỏ để nhâm nhi ly cà phê và thưởng thức món bún cá đậm đà hương vị biển. Một tô bún giá chừng 25.000đ đồng gồm nhiều lát cá tươi, chả cá thu, rau xanh cùng nước mắm đặc biệt do người dân trên đảo tự chưng cất. Một hương vị rất \"Bình Ba\".</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Bước chân từ nhà trọ ra khu chợ \"chồm hổm\" ngay sát bờ cảng, du khách được \"no mắt\" với nhiều thứ hải sản tươi sống, bày trên rổ rá hay dưới mặt đất với cái giá (tất nhiên) rẻ hơn Sài Gòn rất nhiều. Chúng tôi hầu như ai cũng đặt trước vài ký hải sản để mang về thành phố.</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Những món hải sản tươi như ốc vú nàng, ốc nón, ốc mặt trăng, cá, mực các loại... ở các quán cóc dọc trên cảng và sát bờ biển luôn sẵn sàng phục vụ khách phương xa lai rai khi chiều về. Buổi tối, ngồi ở bờ biển hay gần cảng, vừa hóng gió mát từ biển lại vừa thưởng thức mấy món hải sản nướng thì còn gì bằng!</p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px;\"><img src=\"/upload/hai-san-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\"><b><font color=\"#ff1493\" size=\"4\">2.</font> </b>Chúng tôi tự tay lựa tôm hùm sống vừa bắt lên từ các lồng nuôi ngoài biển với giá khoảng 1 triệu đồng một ký. Nếu vào nhà hàng ở Sài Gòn, thực khách có thể đặt tôm hùm nguyên con làm nhiều món, nhưng chẳng thể nào biết chính xác đó là tôm sống 100%, hay tôm ngộp hoặc tôm bỏ thùng đá mấy ngày. Còn trên đảo Bình Ba, nhìn con tôm hùm còn nguyên cả hai râu, bắt trên tay vẫn giãy đành đạch, khách gật gù đồng ý giá cả và ngồi chờ nướng trên bếp than đỏ lửa.</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Lăn qua lăn lại trên bếp than đã nghe thơm lừng mùi tôm nướng, ăn ngay khi tôm vừa chín tới, còn bốc khói, chấm với muối ớt xanh \"tự chế\" của đảo, khách chỉ có nước xuýt xoa!</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Một chi tiết rất thú vị với chúng tôi là để nuôi tôm hùm, phải có môi trường thật sạch nên toàn bộ rác thải sinh hoạt của người dân nơi đây đều chở vào đất liền, người dân cũng rất có ý thức trong việc giữ gìn môi trường sạch sẽ.</p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px;\"><img src=\"/upload/hai-san-2.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\"><b><font size=\"4\"><font color=\"#ff1493\">3.</font> </font></b>Không chỉ lừng danh với những món hải sản tuyệt vời, Bình Ba còn có nhiều bãi tắm tuyệt đẹp với cát trắng, nước biển trong veo, phản chiếu cả một vùng trời xanh ngắt. Ba bãi biển được yêu thích nhất ở đây là Bãi Chướng, Bãi Nồm và Bãi Nhà Cũ. Mỗi bãi tắm đều có một nét rất riêng để du khách khám phá tùy theo sở thích. Ngắm bình minh ở Bãi Chướng, hoặc thưởng thức cảnh hoàng hôn buông xuống ở Bãi Nồm. Còn Bãi Nhà Cũ được nhiều người chọn để lặn biển ngắm san hô, thử tài bắt hải sản.</p><p style=\"text-align: justify; margin: 0px 0px 15px; padding: 0px;\">Vùng biển này cũng chưa được đưa vào khai thác dịch vụ du lịch nhiều, nên mọi thứ còn rất nguyên sơ. Không khí trong lành mang đến một cảm giác bình yên và thư thả, vô cùng thích hợp để nghỉ ngơi, tránh khỏi sự xô bồ của thành thị.</p><p style=\"text-align: center; margin: 0px 0px 15px; padding: 0px;\"><img src=\"/upload/hai-san-3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p style=\"text-align: justify; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; border-style: initial; border-color: initial;\"><span style=\"box-sizing: border-box;\"><b><font color=\"#1e90ff\">Nhà nghỉ trên đảo Bình Ba</font></b></span></span></p><p style=\"text-align: justify; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box;\"><font size=\"2\">Ngay bãi Nồm có một số hotel để nghỉ. Tuy nhiên bạn có thể tham khảo thêm</font></span></p><p style=\"text-align: justify; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box;\"><font size=\"2\">Một địa chỉ cũng được nhiều bạn gợi ý đó là nhà nghĩ anh </font><b><font color=\"#1e90ff\" size=\"3\">Trung (0945 46 79 68)</font></b><font size=\"2\">. Nhà nghỉ rộng rãi mát mẻ, máy lạnh và tắm nóng. Ngoài ra bạn có thể đặt các loại Hải sản, đặc biệt Tôm Hùm tại đây với giá hợp lý.</font></span></p><p style=\"text-align: center; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box;\"><img src=\"http://saigon-binhba.com/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\"></span></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1437465496, '1440321446', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\">Sài Gòn Bình Ba</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 'Sài Gòn - Bình Ba', 'Hải sản tuyệt ngon nơi đảo TÔM HÙM Bình Ba', 'Hải sản tuyệt ngon nơi ', 'du lịch Bình Ba, phượt Bình Ba, nhà nghỉ Bình Ba', 0, ',2,', '', 1),
(697, '', '', 0, 'Du lịch Bình Ba ăn tôm hùm giá rẻ', 'du-lich-binh-ba-an-tom-hum-gia-re', 'p-du-lich-binh-ba-an-tom-hum-gia-re-697.jpg', 1, 'Chưa ăn tôm hùm thì được xem như là bạn chưa trải nghiệm được hết nơi này. Do đó, du lịch Bình Ba và ăn tôm hùm giá rẻ được rất nhiều người yêu thích.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Bình\r\nBa đã trở nên rất nổi tiếng và quen thuộc đối với nhiều du khách, đặc biệt là\r\nnhững bạn trẻ. Bên cạnh những cảnh đẹp thiên nhiên hấp dẫn, cuốn hút thì Bình\r\nBa còn được biết đến với cái tên “đảo tôm hùm”. Sở dĩ được gọi như thế vì đặc\r\nsản nổi bật nhất nơi đây chính là tôm hùm. Chưa ăn tôm hùm thì được xem như là\r\nbạn chưa trải nghiệm được hết nơi này. Do đó, du lịch Bình Ba và ăn tôm hùm giá\r\nrẻ được rất nhiều người yêu thích.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Tôm\r\nhùm Bình Ba ngon có tiếng</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Được\r\nthiên nhiên ban cho nguồn biển xanh, sạch, Bình Ba đã phần nào hấp dẫn được\r\nkhách du lịch. Thế nhưng, thật là thiếu xót nếu chúng ta một món đặc sản nơi\r\nđây, đó chính là tôm hùm. Tôm hùm ở đây to, thịt chắc và ăn rất ngọt, râu tôm\r\ndài và vỏ cứng cáp. Ngoài ra, dưới bàn tay khéo léo và đảm đang của người dân\r\nBình Ba, tôm hùm được chế biến thành rất nhiều món ăn ngon. Điển hình là món\r\ntôm hùm hấp, tôm hùm nướng mọi, tôm hùm nướng muối ớt.</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Mỗi\r\ncon tôm ở Bình Ba thường nặng khoảng 300 gram đến nửa ký. Đây là kích thước\r\ntrung bình và mức giá của tôm loại này khá là phải chăng, khoảng 1 triệu 1 ký.\r\nVậy mỗi con chỉ tầm 300 đến 500 ngàn. Thế nhưng, một con tôm hùm có thể chế\r\nbiến ra thành nhiều món ăn khác nhau. Phần đầu thì được tháu nhỏ, đem xào với\r\nmì. Thịt thì để nguyên con, hoặc nếu du khách thích thì có thể chia ra để chế\r\nbiến thành nhiều món khác nhau.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Tìm\r\nmua tôm hùm Bình Ba ở đâu?</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đôi\r\nkhi, nếu như du lịch ở đây, bạn sẽ không biết mua tôm hùm ở nơi nào. Đặc biệt,\r\nnếu mua không đúng chỗ, bạn có thể mua hớ với giá mắc hơn mức giá chính ở nơi\r\nnày. Vì thế, bạn có những lựa chọn sau đây:</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-\r\n<b>Ăn tôm hùm ở quán</b>: tuy nhiên, điều lưu ý là trước khi vào ăn thì bạn phải hỏi\r\nkỹ giá cả cũng như khối lượng của tôm hùm. Thông thường, trên menu/ thực đơn sẽ\r\nđưa ra mức giá, nhưng thường giá thay đổi theo thời điểm, cũng như theo ngày\r\ntrong tuần (ngày thường thì giá rẻ hơn, cuối tuần hoặc lễ tết thì mức giá cao\r\nhơn).</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"/upload/tom-hum-binh-ba-1.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\"></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-\r\n<b>Mua tôm hùm ở chợ</b>: bạn có thể chọn tôm ở những chợ vào buổi sáng để mua được\r\ngiá gốc. Tuy nhiên, bạn chỉ được thưởng thức món tôm hấp, còn nếu muốn nướng\r\ntheo ý của mình thì bạn phải thêm một chút tiền.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-\r\n<b>Được ăn tôm hùm trong tour du lịch</b>: khi bạn tham gia tour du lịch, bạn sẽ được\r\nbao gồm một con tôm hùm trong bữa ăn của mình. Đây là cách tiện lợi nhất vì bạn\r\nvừa được vui chơi, bạn vừa được thưởng thức đủ loại hải sản ngon lành khác\r\nngoài tôm hùm như mực lá, ốc hương, nhum,...</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Liên hệ ngay với dịch vụ du lịch Sài Gòn – Bình\r\nBa qua số điện thoại của chúng tôi: 0905 56 53 11 (Anh Thông) hoặc 0945 46 79\r\n68 (Mr Trung). Bạn có thể tham khảo thêm giá cả và thông tin chi tiết ở\r\nwebsite: <span style=\"color:blue\"><a href=\"http://www.saigon-binhba.com/\">www.saigon-binhba.com</a></span></span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"700\" border=\"0\"></p>\r\n\r\n<p class=\"MsoNormal\"></p>\r\n\r\n\r\n\r\n</body></HTML>', 1448986308, '1452182017', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style><a href=\"http://saigon-binhba.com/\" target=\"_blank\">Khách sạn Sài Gòn - Bình Ba</a>\r\n</body></HTML>', 'tôm hùm bình ba, tôm hùm giá rẻ, hải sản bình ba', 'Sài Gòn - Bình Ba', 'Du lịch Bình Ba ăn tôm hùm giá rẻ', ' Chưa ăn tôm hùm thì được xem như là bạn chưa trải nghiệm được hết nơi này. Do đó, du lịch Bình Ba v', 'tôm hùm bình ba, tôm hùm giá rẻ, hải sản bình ba', 0, ',2,5,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(698, '', '', 0, 'Hải sản đảo Bình Ba hấp dẫn níu chân du khách', 'hai-san-dao-binh-ba-hap-dan-niu-chan-du-khach', 'p-hai-san-dao-binh-ba-hap-dan-niu-chan-du-khach-698.jpg', 1, 'Vậy chúng ta hãy cùng tìm hiểu xem những loại hải sản đảo Bình Ba hấp dẫn níu chân du khách như thế nào nhé.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Việt\r\nNam nổi tiếng với những món ăn ngon ở nhiều vùng miền làm nức lòng khách du\r\nlịch, và Bình Ba cũng không nằm ngoài số đó. Là một hòn đảo du lịch tuyệt đẹp\r\nvới bờ biển trong xanh và những bãi đá thiên nhiên, nơi đây đem đến không khí\r\ncực thoải mái và dễ chịu mà bạn khó có thể tìm thấy ở chốn thành thị. Không\r\nnhững thế, Bình Ba còn thu hút khách du lịch bởi những đặc sản nói chung và\r\nnhững loại hải sản nói riêng mà thiên nhiên nơi đây mang lại. Vậy chúng ta hãy\r\ncùng tìm hiểu xem những loại hải sản đảo Bình Ba hấp dẫn níu chân du khách như\r\nthế nào nhé.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Tôm\r\nhùm Bình Ba ngon tuyệt vời</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Bình\r\nBa nổi tiếng với món tôm hùm và còn được khách du lịch ưu ái đặt cho tên gọi\r\nkhác là “đảo tôm hùm”. Nếu như là một người yêu thích ẩm thực vùng biển, bạn\r\nchắc hẳn không thể bỏ qua những món được chế biến từ tôm hùm, tiêu biểu như:</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">- <i>Tôm\r\nhùm nướng muối ớt/ sa tế</i>: bạn sẽ cảm nhận được vị cay nồng của muối, của sa\r\ntế hòa chung với vị thịt ngon ngọt của tôm.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">- <i>Tôm\r\nhùm hấp</i>: đây có thể nói là món ăn thể hiện được tất cả những hương vị của\r\ntôm. Chỉ cần cắn một miếng tôm, vị ngọt cùng với hương biển sẽ hòa quyện và tan\r\ntrong miệng bạn. Thêm vào đó, chấm một miếng muối ớt xanh cay nồng để làm tăng\r\nhương vị của món ăn. Ôi nghe thật là hấp dẫn phải không nào?</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Cùng\r\nvới những món được chế biến từ tôm khác như đầu tôm xào chua ngọt, tôm hùm rang\r\nme,... Nơi đây là vùng đất biển nay đa số tôm hùm đều rất tươi sống và ngon,\r\nnên bạn sẽ rất an tâm về chất lượng của món ăn nơi đây.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Mực Bình Ba tươi ngon hấp dẫn<u1:p></u1:p></span></b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Một món ăn vô cùng tươi ngon nữa đươc giới\r\nthiệu với du khách, chính là món mực Bình Ba. Trong đó, nổi tiếng nhất là mực\r\nlá. Đây là loại mực khá to, kích thước lớn hơn lòng bàn tay người lớn, với thịt\r\nmực tươi và ngọt. Các món mực bạn có thể thưởng thức khi đến nơi này như:<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">- Mực lá nướng mọi: mực được làm sạch, bỏ\r\nlớp vỏ mực ở ngoài và được ướp với các gia vị. Sau đó, nướng trên bếp than hồng.\r\nTận hưởng khung cảnh vùng biển mát mẻ mà bạn thưởng thức món này thì không còn\r\ngì bằng.<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">- Mực một nắng: du khách thường xuyên\r\nmua món này về làm quà. Đây chính là món mực lá được phơi qua một nắng, bằng những\r\nkinh nghiệm vốn có của người dân nơi đây để canh chừng thời gian cho chuẩn.<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Thêm vào đó, có những món ăn từ mực lá rất\r\nthơm ngon khác như mực hấp gừng, mực xào chua ngọt, mực nướng muối ớt,... để bạn\r\ncó thể tự do lựa chọn theo sở thích của mình.<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Không chỉ như thế, có rất nhiều hải sản\r\nngon tuyệt vời, thơm nức mũi, hương vị quyến rũ khó quên và không thể bỏ qua\r\nnhư:<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"><b> </b></span><b>Sò\r\nláng<u1:p></u1:p></b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"> </span><b>Ốc\r\nhương</b><u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"> </span><b>Ghẹ</b><u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/cua-binh-ba.JPG\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\"></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"> </span><b>Hàu<u1:p></u1:p></b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"> </span><b>Nhum<u1:p></u1:p></b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-<span class=\"apple-converted-space\"> </span><b>Cá\r\nBò Hồm,...<u1:p></u1:p></b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Hãy đến ngay Bình Ba để có thể thưởng thức\r\nnhững món ăn ngon nơi đây nhé. Bình Ba luôn chào đón du khách khắp mọi nơi đến\r\ntận hưởng những giây phút thư giãn và thoải mái nhất.<u1:p></u1:p><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Lưu ý, để có chuyến đi vui vẻ nhất, bạn\r\ncó thể liên hệ với dịch vụ cung cấp khách sạn và tour của công ty Sài Gòn –\r\nBình Ba qua số điện thoại : 0905.56.53.11(Mr.Thông) hoặc 0945.46.79.68 (Mr\r\nTrung) hoặc xem thêm thông tin thêm tại<span class=\"apple-converted-space\"> </span><a href=\"http://saigon-binhba.com/index.htm\">http://saigon-binhba.com/index.htm</a>.\r\nChúc các bạn có chuyến đi thật vui vẻ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"500\" height=\"700\"></p>    \r\n\r\n\r\n\r\n\r\n</body></HTML>', 1449121759, '1452182061', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba    </a><style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    \r\n\r\n\r\n\r\n</body></HTML>', 'hải sản bình ba, tôm hùm bình ba, mực bình ba, hải sản ngon, tôm hùm ngon, ', 'Sài Gòn - Bình Ba', 'Hải sản đảo Bình Ba hấp dẫn níu chân du khách', 'Hãy cùng tìm hiểu xem những loại hải sản đảo Bình Ba hấp dẫn níu chân du khách như thế nào nhé.', 'hải sản bình ba, tôm hùm bình ba, mực bình ba, hải sản ngon, tôm hùm ngon, ', 0, ',2,', '', 1),
(699, '', '', 0, 'Cấm du lịch đảo Bình Ba, thực hư ra sao?', 'cam-du-lich-dao-binh-ba-thuc-hu-ra-sao', 'p-cam-du-lich-dao-binh-ba-thuc-hu-ra-sao-699.jpg', 1, 'Thực hư của việc cấm du lịch đảo Bình Ba là như thế nào? Chúng ta hãy cùng tìm hiểu', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đảo\r\nBình Ba là một đảo du lịch mới nổi lên trong những năm gần đây và đã thu hút\r\nrất nhiều du khách, đặc biệt là những bạn trẻ. Từ đó, dịch vụ du lịch ở nơi này\r\nngày càng phát triển, càng đa dạng để phục vụ nhu cầu của du khách. Thế nhưng,\r\nvào năm 2015, đã có những tin về việc cấm du lịch tại đảo Bình Ba, cũng như các\r\nđảo lân cận như Bình Hưng, Bình Lập. Vậy thực hư của việc cấm du lịch đảo Bình\r\nBa là như thế nào?</span><span style=\"font-size: 9pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Chỉ\r\ncấm phát triển du lịch ở đảo Bình Ba</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Thật\r\nra, không có luật nào cấm du khách không được bước chân tới Bình Ba, hoặc không\r\nđược tham quan và vui chơi ở nơi đây. Điều mà người ta cấm là cấm phát triển du\r\nlịch ở đảo Bình Ba. Tức là hiện nay, những khách sạn, khu resort nào đang xây\r\ndựng hoặc đang có ý định xây thì bị bị cấm và không được cấp phép. Lý do là\r\nđang có quá nhiều người đầu tư xây dựng, và cần phải giới hạn việc này lại.</span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/dao-binh-ba-3.jpg\" alt=\"Cấm du lịch đảo Bình Ba, thực hư ra sao? 1\" align=\"\" border=\"0px\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Times New Roman, serif\"><span style=\"font-size: 18.6667px; line-height: 28px;\"><i>Đảo Bình Ba, thiên đường xinh đẹp</i></span></font></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Do\r\nđó, du khách đến đảo Bình Ba du lịch thì có thể ở những phòng trong căn hộ mà\r\nngười dân cho thuê, hoặc đến khách sạn đã hoàn thiện và đã đi vào hoạt động.\r\nChính vì thế, bạn vẫn hoàn toàn có thể đến đây tham quan, với đầy đủ những dịch\r\nvụ giải trí như tắm biển, lặn biển, ăn hải sản, tôm hùm,...</span><span style=\"font-size: 9pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Vậy\r\nbạn còn chần chừ hay phân vân gì nữa mà không xách ba lô lên và đi khám phá vẻ\r\nđẹp thiên nhiên hoang sơ và vi diệu ở đảo Bình Ba đi nào!</span><span style=\"font-size: 9pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đến\r\nBình Ba bằng cách nào?</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Có\r\nlẽ bạn đã an tâm rằng Bình Ba vẫn có thể du lịch đúng không nào? Vậy thì tiếp\r\ntheo, bạn chắc hẳn sẽ thắc mắc rằng làm sao để đến Bình Ba.</span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/dao_binh_ba_33.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><i><span style=\"font-size: 14pt; line-height: 115%; font-family: \'Times New Roman\', serif;\">Hải sản đảo Bình Ba</span></i><span style=\"font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Bình\r\nBa nằm ở xã Cam Bình, thuộc tỉnh Cam Ranh, Khánh Hòa. Để đến đây, bạn cần phải\r\nđi tàu từ đảo Ba Ngòi và mất 1 tiếng để đến Bình Ba. Đảo Ba Ngòi cách sân bay\r\nCam Ranh khoảng 1 tiếng đi xe. Đặc biệt, những chuyến tàu ra đảo có lịch trình\r\ncố định và bạn rất dễ dàng đón tàu. Thông thường, có chuyến 7h sáng để chở\r\nkhách ra, và 5h chiều chở khách về đất liền.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Để\r\ncó được chuyến đi vui vẻ mà không phải mất nhiều thời gian tìm hiểu, hãy liên\r\nhệ ngay với dịch vụ du lịch Sài Gòn – Bình Ba qua số điện thoại 0905 56 53 11\r\n(Anh Thông) - 0945 46 79 68 (Anh Trung). Chúng tôi tự hào là khách sạn 2 sao\r\nduy nhất và lớn nhất ở bãi Nồm, Bình Ba. Bạn cũng có thể biết giá cụ thể và\r\nthông tin chi tiết tại website: <span style=\"color:blue\"><a href=\"http://www.saigon-binhba.com/\">www.saigon-binhba.com</a> </span>về các dịch vụ của chúng\r\ntôi:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-\r\nKhách sạn Sài Gòn – Bình Ba<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">-\r\nTour Bình Ba: trong ngày, 2 ngày 1 đêm, 3 ngày 2 đêm.</span></p>\r\n\r\n</body></HTML>', 1449319895, '1452182168', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><a href=\"http://saigon-binhba.com/\" target=\"_blank\"><font size=\"3\">Sài Gòn - Bình Ba</font></a><style>BODY { font-family:Arial;font-size:12px; } </style>\r\n\r\n</body></HTML>', 'cấm du lịch bình ba, du lịch bình ba, tour bình ba, hải sản bình ba', 'Sài Gòn - Bình Ba', 'Cấm du lịch đảo Bình Ba, thực hư ra sao?', 'Thực hư của việc cấm du lịch đảo Bình Ba là như thế nào? Chúng ta hãy cùng tìm hiểu', 'cấm du lịch bình ba, du lịch bình ba, tour bình ba, hải sản bình ba', 0, ',5,', '', 1),
(700, '', '', 0, 'Bốn đảo Bình nổi tiếng tại Khánh Hòa hấp dẫn', 'bon-dao-binh-noi-tieng-tai-khanh-hoa-hap-dan', 'p-bon-dao-binh-noi-tieng-tai-khanh-hoa-hap-dan-700.jpg', 1, 'Chúng ta cùng tìm hiểu xem bốn đảo Bình nổi tiếng tại Khánh Hòa hấp dẫn du khách như thế nào nhé.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Tại\r\nKhánh Hòa, có rất nhiều điểm du lịch hấp dẫn và thu hút khách, và chắc hẳn bạn\r\nkhông thể nào bỏ qua được bốn đảo Bình nổi tiếng tại nơi đây. Đó chính là bộ\r\ntứ: Bình Ba, Bình Hưng, Bình Lập, Bình Tiên. Trong đó, hầu như cảnh đẹp của các\r\nđảo đều tuyệt vời như nhau và bạn nên đến đây để trải nghiệm những hòn đảo vô\r\ncùng đặc biệt này. Chúng ta cùng tìm hiểu xem bốn đảo Bình nổi tiếng tại Khánh\r\nHòa hấp dẫn du khách như thế nào nhé.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đảo\r\nBình Ba</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Cách\r\nđất liền khoảng 1 tiếng đi tàu, Bình Ba là đảo được khai thác du lịch sớm nhất\r\nvà là một trong những đảo có lượng khách du lịch đông nhất. Lý do là vì vùng\r\nbiển nơi đây rất sạch đẹp, rộng lớn cùng với vô số loại hải sản lạ và ngon. Đặc\r\nbiệt, đảo còn được người dân ưu ái đặt cho tên gọi là “đảo tôm hùm” với những\r\ncon tôm thật to, thật tươi ngon và ngọt thịt.</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"/upload/dao_binh_ba_1.jpg\" alt=\"\" align=\"\" border=\"0px\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\"><i>Tàu đón khách ra đảo Bình Ba</i></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Thật\r\nlà sảng khoái khi bạn được hòa mình vào thiên nhiên, nghe tiếng sóng vỗ và tận\r\nhưởng những luồng gió biển mát lạnh. Cùng lúc đó là bạn vừa thưởng thức những\r\nloại hải sản tươi ngon, hấp dẫn vừa được bắt lên và được nướng ngay trên bếp\r\nthan để vẫn giữ được hương vị tuyệt vời.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Mách\r\nnhỏ với bạn, tại đảo Bình Ba, bãi Nồm là vùng nổi tiếng nhất và đẹp nhất, thu\r\nhút được nhiều người đến chụp hình và ngắm cảnh. Do đó, đây là địa điểm bạn\r\nkhông thể bỏ qua trong chuyến đi của mình.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 150%;\"><img src=\"/upload/bai_viet_8.jpg\" alt=\"\" align=\"\" border=\"0px\"></p><p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Times New Roman, serif\"><span style=\"font-size: 18.6667px; line-height: 28px;\"><i>Bãi Nồm tuyệt đẹp</i></span></font></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Có\r\nrất nhiều tour đi Bình Ba với nhiều loại như tour trong ngày, tour 2 ngày 1\r\nđêm, tour 3 ngày 2 đêm. Trong thời gian đó, các bạn sẽ được trực tiếp được đưa\r\nđi thăm những quang cảnh bằng xe điện, được thưởng thức hầu hết những món hải\r\nsản nổi tiếng nơi đây. Đặc biệt, bạn sẽ được dẫn đi lặn biển để ngắm san hô và\r\nnhững sinh vật khác. Thật tuyệt vời! Hãy đến ngay Bình Ba để thư giãn và thưởng\r\nthức cảnh đẹp ngay nhé.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đảo\r\nBình Lập</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Thuộc\r\nxã Bình Lập, huyện Cam Ranh, tỉnh Khánh Hòa, đảo này cách trung tâm Nha Trang\r\n90km và cách đất liền khoảng 2 tiếng đi tàu. Tuy nhiên, đây là hòn đảo còn khá\r\nhoang sơ, chưa được đầu tư nhiều về du lịch. Thế nhưng, phong cảnh tuyệt đẹp\r\nvới những bãi đá nhấp nhô, cùng những bụi cây hoang dại và bờ biển trong vắt là\r\nđiểm đến lý tưởng cho những ai thích du lịch bụi.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Do\r\nđó, bạn nên chuẩn bị đủ hành trang cũng như hỏi những người đã có kinh nghiệm\r\nđể chọn nơi ở phù hợp cho chuyến du lịch tới đảo Bình Lập nhé.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đảo\r\nBình Hưng</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đây\r\ncũng là một trong những đảo tiềm năng để khai thác du lịch ở nước ta. Bình Hưng\r\nthuộc xã Cam Bình, tỉnh Khánh Hòa. Nơi đây được ví như bức tranh thủy mặc, với\r\ncảnh non nước hữu tình, cùng những dãy núi huyền ảo trong sương sớm. Tại nơi này,\r\ncũng có rất nhiều loại hải sản ngon và hấp dẫn, khiến du khách không chỉ được\r\nngắm cảnh đẹp, mà còn được ăn ngon.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"http://sohatravel.vn/image/data/tin-tuc/dia-danh/1-tu-binh-7.jpg\" alt=\"\" align=\"\" border=\"0px\"></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Times New Roman, serif\"><span style=\"font-size: 18.6667px; line-height: 28px;\"><i>Đảo Bình Hưng</i></span></font></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Trong\r\nsố đó, bãi biển Ninh Chữ, vịnh Vĩnh Hy là điểm được nhiều người ghé thăm nhất.\r\nVí von như một thiên đường giữa biển, cùng với những người dân rất thân thiện\r\nvà hiếu khách, bạn cũng đừng nên bỏ qua nơi này khi đến Khánh Hòa.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><b><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đảo\r\nBình Tiên</span></b><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Đúng\r\nnhư tên gọi, đây được xem như là chốn bồng lai tiên cảnh ở đời thường. Đảo Bình\r\nTiên đẹp theo cách riêng của nó, cũng là chốn biển nhưng vẫn mang một nét rất\r\nđặc biệt. Cảnh vật nơi đây nên thơ, với không gian yên tĩnh đến nhẹ lòng. Bạn\r\nsẽ hoàn toàn quên đi những lo lắng, những bộn bề cuộc sống để hòa mình vào\r\nthiên nhiên, tận hưởng hương vị của biển xa.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Còn\r\nchần chừ gì nữa mà không đến ngay Khánh Hòa và du lịch tại bốn đảo Bình: Bình\r\nBa, Bình Lập, Bình Hưng, Bình Tiên và cảm nhận cảnh đẹp mà thiên nhiên đã ưu ái\r\nban tặng cho đất nước chúng ta.</span><span style=\"font-size: 9pt; line-height: 150%; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:150%\"><span style=\"font-size: 14pt; line-height: 150%; font-family: \'Times New Roman\', serif;\">Để\r\ntham quan và du lịch tại đảo Bình Ba, hãy liên hệ ngay cho chúng tôi qua số\r\nđiện thoại 0905.56.53.11(Mr.Thông) hoặc 0945.46.79.68 (Mr Trung) để đặt chỗ\r\nkhách sạn và tour đến Bình Ba với mức giá cực hấp dẫn nhé.</span></p>    \r\n</body></HTML>', 1449504476, NULL, '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body><font size=\"3\"><a href=\"www.saigon-binhba.com\">Khách sạn Sài Gòn - Bình Ba</a></font></body></HTML>', 'đảo bình ba, bốn đảo bình, du lịch bình ba', 'Sài Gòn - Bình Ba', 'Bốn đảo Bình nổi tiếng tại Khánh Hòa hấp dẫn', 'Chúng ta cùng tìm hiểu xem bốn đảo Bình nổi tiếng tại Khánh Hòa hấp dẫn du khách như thế nào nhé.', 'đảo bình ba, bốn đảo bình, du lịch bình ba', 0, ',5,', '', 1),
(701, '', '', 0, 'Bình Ba hoang dã mà thơ mộng', 'binh-ba-hoang-da-ma-tho-mong', 'p-binh-ba-hoang-da-ma-tho-mong-701.jpg', 1, 'Đảo Bình Ba vẫn luôn yên vị, luôn hân hoan chào đón những vị khách du lịch đến đây để cùng thưởng thức cảnh đẹp nơi này, một cảnh đẹp hoang dã mà thơ mộng.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family: \'Times New Roman\', serif; font-size: 14pt; line-height: 200%;\">Nằm ngay trung tâm của\r\nđất nước Việt Nam, Bình Ba bình yên mà đẹp đẽ đến mê hồn. Được thiên nhiên ưu\r\nái, hòn đảo được vây quanh bởi những vùng biển vắng, bởi những đại dương xanh\r\nvà những bờ cát trắng. Bình Ba như một cậu bé, tuy nhỏ nhưng tinh nghịch, tràn\r\nđầy sức sống, đồng thời luôn có những người bạn hải sản vây quanh mình. Dù là\r\nmùa hè nóng bức, hay mùa đông se lạnh, đảo Bình Ba vẫn luôn yên vị, luôn hân\r\nhoan chào đón những vị khách du lịch đến đây để cùng thưởng thức cảnh đẹp nơi\r\nnày, một cảnh đẹp hoang dã mà thơ mộng.</span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><img src=\"/upload/dao_binh_ba_5.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i>Trại nuôi tôm hùm </i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Chúng tôi đến Bình Ba\r\nvào một buổi sáng mùa hè tháng 8. Hòn đảo đón chào đoàn khách du lịch chúng tôi\r\nbằng thời tiết với bầu trời trong xanh, nắng dịu nhẹ cùng với những đợt gió biển\r\nmang những tình nghĩa chào mừng. Nơi đây thích hợp để thăm quanh năm, nhưng mùa\r\nhè là thời điểm tuyệt vời nhất. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Đầu tiên, chúng tôi được\r\ntàu đón ở đảo Ba Ngòi, và mất chỉ khoảng 50 phút để đến được đảo Bình Ba. Ấn tượng\r\nban đầu của chúng tôi là vẻ đẹp hoang dã của vùng này. Chưa có nhiều khách du lịch\r\nbiết đến đây, nên hầu như tất cả mọi vật như từng hòn đá, bãi biển vẫn giữ được\r\nvẻ mộc mạc mà khó có thể bắt gặp ở những nơi khác. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Sau đó, anh hướng dẫn\r\nviên của tour du lịch dẫn du khách đến vùng chợ nơi đây để thưởng thức bữa ăn\r\nsáng. Lúc này, tôi mới nhận ra được sự đơn giản, mộc mạc và thân thiện của người\r\ndân nơi này. Món bún chả cá là một trong những món đặc sản nơi đây, với cá tươi\r\nvừa được chiên lên. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><img src=\"/upload/bai_viet_6.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i>Bún chả cá rất ngon miệng</i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Tiếp theo, trải nghiệm\r\nlặn biển ở đảo Bình Ba là kỉ niệm không thể nào quên được. Dưới ánh nắng chói\r\nchang, những dụng cụ lặn được phát đầy đủ cho mọi người, cùng với những hướng dẫn\r\nchi tiết trước đó. Khi lặn xuống, bạn sẽ thấy vùng san hô tuyệt đẹp, lấp lánh\r\ndưới ánh nước. Thậm chí, bạn còn có thể chạm tay vào và cảm nhận được chúng. Thật\r\nlà tuyệt vời.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Sự hoang dã của Bình Ba\r\ncòn được biết đến nhờ những người dân nơi này. Tại những bãi cát vàng ươm, từng\r\nrặng mực được phơi khô, cùng với những chiếc lưới để ra khơi, tiếng sóng đập\r\nvào đá rì rào, tất cả cộng lại đem đến cảm giác thật bình yên đến dễ chịu. Nơi\r\nnày như tách biệt khỏi những ồn ào, mệt mỏi của cuộc sống đô thị và giúp bạn\r\nquên đi những mệt mỏi và căng thẳng thường ngày. Còn gì nhẹ nhàng hơn khi ngồi\r\ntrên mỏm đá, nhìn những đợt sóng vỗ, cùng với mùi hương biển đặc trưng và vô\r\ncùng gợi nhớ, tạo nên sự thơ mộng và êm đềm nơi này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"500\" height=\"600\" border=\"0\"></p>    \r\n\r\n\r\n\r\n</body></HTML>', 1452177873, '1452182293', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba</a></font></body></HTML>', 'bình ba, đảo bình ba, du lịch bình ba,', 'Sài Gòn - Bình Ba', 'Bình Ba hoang dã mà thơ mộng', 'Đảo Bình Ba vẫn luôn yên vị, luôn hân hoan chào đón những vị khách du lịch.', 'bình ba, đảo bình ba, du lịch bình ba,', 0, ',5,', '', 1),
(702, '', '', 0, 'Những điểm vui chơi hấp dẫn ở đảo Bình Ba', 'nhung-diem-vui-choi-hap-dan-o-dao-binh-ba', 'p-nhung-diem-vui-choi-hap-dan-o-dao-binh-ba-702.jpg', 1, 'Chúng ta hãy cùng tìm hiểu những điểm vui chơi hấp dẫn ở đảo Bình Ba nhé.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\">Có lẽ đảo Bình Ba đã\r\nkhông còn xa lạ gì với những du khách, đặc biệt là những người thích du lịch\r\nvùng biển đảo. Là một hòn đảo thuộc tỉnh Cam Ranh, Khánh Hòa, nơi này đang trở\r\nnên rất nổi tiếng bằng vùng biển rất trong xanh, bãi cát trắng thơ mộng và các\r\nloại hải sản vô cùng tươi ngon, trong đó tiêu biểu là món tôm hùm. Đặc biệt,\r\ntuy nhỏ nhưng có rất nhiều danh lam thắng cảnh đẹp ở nơi đây. Chúng ta hãy cùng\r\ntìm hiểu những điểm vui chơi hấp dẫn ở đảo Bình Ba nhé.</font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bãi\r\nNồm ở Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đây là bãi tắm lớn nhất\r\nvà đẹp nhất ở Bình Ba. Chính vì thế, nếu như đã tới Bình Ba, bạn không thể nào\r\nbỏ qua được nơi này. Ở đây có bãi biển xanh ngắt, với bờ cát trắng mịn, cùng\r\nchung với đó là những hòn đá sừng sững, nằm phơi mình qua tháng năm sương gió. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Thêm vào đó, bãi Nồm có\r\nsẵn những dịch vụ để phục vụ khách du lịch như ghế và dù, phao, áo tắm, áo\r\nphao. Đặc biệt, nếu như theo tour, bạn sẽ được hướng dẫn đi lặn biển với những\r\nthiết bị kèm theo như áo phao, ống thở, mắt kính,....<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/saigon-binhba-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"line-height: 37.3333px;\"><i><font size=\"3\">Bãi Nồm Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, nơi đây còn\r\nlà nơi buôn bán những loại hải sản ăn tại chỗ như mực, bạch tuộc nướng, ốc, ghẹ,...\r\ncũng như những loại khô như mực một nắng, cá phơi khô để mang về làm quà.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bãi\r\nChướng ở Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Tương tự như bãi Nồm,\r\nđây cũng là bãi tắm được nhiều người biết đến, nhưng không nổi tiếng bằng. Tại\r\nđây, khung cảnh biển cũng xinh đẹp, hiền hòa và dễ chịu, luôn hân hoan chào đón\r\ndu khách đến tham quan. Cùng với đó, con người nơi đây cũng hiền hòa, cởi mở\r\nnhư biển cả, luôn niềm nở và vui mừng khi có người đến thăm quê hương mình.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, có rất nhiều\r\nbãi tắm nhỏ khác như Bãi Nhà Cũ, Bãi Bồ Đề,... Điểm chung của vùng biển nơi này\r\nlà rất sạch, nước trong xanh. Hầu như, người dân ở đây rất ý thức và không có\r\ntình trạng xả rác ra biển. Nếu yêu thích biển, cũng như muốn có những tấm hình\r\nđẹp để chụp với cảnh biển hoang sơ nơi này, hãy xách ba lô lên và đến Bình Ba\r\nnào.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đảo\r\ncon Rùa<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đây là hòn đá nằm gần\r\nBình Ba và có hình dạng như một chú rùa. Chính vì thế mà mới có cái tên này. Du\r\nkhách có thể đứng từ núi trên đảo và nhìn ra để thấy, cũng có thể dễ dàng chụp\r\nlại những điều kỳ diệu mà thiên nhiên đã ban tặng cho chúng ta.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Lầu\r\nông Hoàng 2<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bình Ba có một cổng\r\nthành và tháp bằng đá, rất cao và rộng, do đó nên được người dân ở đây ví như Lầu\r\nông Hoàng 2. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/saigon-binhba.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Lầu ông Hoàng 2</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đây là tháp được người\r\nPháp xây vào cuối thể kỷ 19, trong thời gian xâm lược nước ta. Khi tham quan\r\nnơi này, bạn có thể cảm nhận được độ uy nghiêm và rất chắc chắn của công trình.\r\nDù đối mặt với gió mưa nhưng công trình vẫn trường tồn với thời gian.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, nơi này còn\r\ncó nhiều ngôi chùa nổi tiếng và đẹp, chính do người dân nơi đây xây dựng nên. Cùng\r\nvới đó là những nơi thờ linh thiêng như Lăng Ông, Đình Bình Ba, Tịnh Thất Ngọc\r\nGia Hương,....<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Với những địa điểm du lịch\r\ncực hấp dẫn này, hy vọng bạn sẽ có những phút giây thư giãn và tận hưởng thời\r\ngian yên bình ở đảo Bình Ba, một hòn đảo xinh đẹp và thơ mộng này nhé.</font></span></p><p class=\"MsoNormal\"><span times=\"\" new=\"\" roman\",\"serif\"\"=\"\" style=\"line-height: 24px;\"><font size=\"3\">Mọi chi tiết về chuyến du lịch đến đảo Sài Gòn - Bình Ba, cũng như khách sạn ở đây, bạn có thể liên hệ với anh Thông (0905 56 53 11) hoặc anh Trung (0945 46 79 68), và xem thông tin chi tiết qua website: </font></span><font size=\"3\"><span style=\"line-height: 24px;\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">www.saigon-binhba.com</a></span></font></p>    \r\n\r\n\r\n</body></HTML>', 1452178367, '1452182430', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\">Khách sạn Sài Gòn-Bình Ba</a></font>\r\n</body></HTML>', 'địa điểm bình ba, bình ba, đảo bình ba, vui chơi bình ba,', 'Sài Gòn - Bình Ba', 'Những điểm vui chơi hấp dẫn ở đảo Bình Ba', 'Chúng ta hãy cùng tìm hiểu những điểm vui chơi hấp dẫn ở đảo Bình Ba nhé.', 'địa điểm bình ba, bình ba, đảo bình ba, vui chơi bình ba,', 0, ',4,5,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(703, '', '', 0, 'Tìm khách sạn ở đảo Bình Ba sao cho đúng?', 'tim-khach-san-o-dao-binh-ba-sao-cho-dung', 'p-tim-khach-san-o-dao-binh-ba-sao-cho-dung-703.jpg', 1, 'Một câu hỏi được đặt ra là tìm khách sạn ở đảo Bình Ba như thế nào cho đúng?', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\">Có rất nhiều vùng biển đảo\r\nđẹp ở Việt Nam, điển hình như Côn Đảo, Cù Lao Chàm,... được nhiều du khách\r\ntrong và ngoài nước tham quan. Ngoài ra, du lịch biển đảo cũng được rất nhiều\r\nngười yêu thích, trong đó vào thời gian gần đây, đảo Bình Ba đang sở hữu một lượng\r\ndu khách đáng kể. Thế nhưng, Bình Ba chưa kịp đáp ứng nhu cầu đang tăng cao này\r\ncủa khách và việc tìm phòng nghỉ qua đêm là khá khó khăn. Do đó, một câu hỏi được\r\nđặt ra là tìm khách sạn ở đảo Bình Ba như thế nào cho đúng?</font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Dựa\r\ntrên tên tuổi khách sạn ở đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đảo Bình Ba được đưa\r\nvào du lịch ở những năm gần đây, thế nên chưa có nhiều khách sạn được kịp xây dựng.\r\nDo đó, bạn không thể dựa vào mức độ lâu năm của thương hiệu, mà dựa vào những\r\nnhận xét của khách du lịch đã từng đến nơi này. Đây là một trong những yếu tố\r\nquan trọng mà nhiều người thường làm.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/khach-san-binh-ba-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Phòng khách sạn Sài Gòn-Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Thêm vào đó, khi bạn biết\r\nmột tên của khách sạn nơi này, bạn có thể dựa vào những thông tin trên mạng mà\r\nkhách sạn đó cung cấp. Hoặc nếu nổi tiếng, sẽ có nhiều người đưa ra review về địa\r\nđiểm này. Chính vì thế, internet là công cụ đáng tin cậy để bạn dựa vào xem\r\nxét.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Trong đó, đến thời điểm\r\nhiện nay, chỉ có duy nhất khách sạn Sài Gòn – Bình Ba, nằm ở vị trí bãi Nồm là\r\nkhách sạn đầu tiên và duy nhất ở đảo Bình Ba. Do đó, tên tuổi của điểm này là\r\nviệc không còn phải bàn cãi, vì rất nhiều du khách đã đến đây và đưa ra những\r\nnhận xét cực kỳ tốt. Chính vì thế, không có gì tuyệt vời hơn khi chọn khách sạn\r\nnhư thế này.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Dựa\r\ntrên quy mô và thẩm mỹ của khách sạn ở đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Trước khi đến đây, bạn\r\ncó thể xem trên website hoặc trang riêng của khách sạn đó để xem những hình ảnh\r\nvề phòng, nội thất và những thứ liên quan đến nơi ở này. Nếu như những nội thất\r\nở đây sạch sẽ, phòng thoáng mát, rộng rãi và màu sắc vừa ý thì bạn hãy tự tin với\r\nsự lựa chọn của mình.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, bạn cũng có\r\nthể dựa vào quy mô của khách sạn. Thường là dựa vào số sao. Mách nhỏ là bạn nên\r\nchọn nơi từ 2 sao trở lên để có chất lượng phòng cũng như quy mô khách sạn rộng\r\nlớn hơn. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khách\r\nsạn Sài Gòn – Bình Ba tự hào là sự lựa chọn của khách hàng<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khách sạn Sài Gòn –\r\nBình Ba là khách sạn đầu tiên và duy nhất ở Bình Ba, cho đến thời điểm hiện\r\nnay. Khách sạn nằm ở bãi Nồm, cũng là bãi tắm lớn và thu hút khách bậc nhất nơi\r\nđây. Nơi đây có 25 phòng, bao gồm phòng thường và phòng VIP nhìn hướng ra biển.\r\nTrong đó, chúng tôi tự hào là tương đương với khách sạn 3 sao, với hệ thống\r\nphòng vô cùng thoáng mát và tiện nghi.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/khach-san-binh-ba-2.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">View nhìn từ khách sạn</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Do đó, bạn sẽ cảm thấy\r\nvô cùng yên tâm khi chọn địa điểm này. Đặc biệt, giá phòng được niêm yết cố định\r\nvà KHÔNG thay đổi vào cuối tuần, lễ hay tết. Ngoài ra, dịch vụ tour Bình Ba\r\ncũng được rất nhiều du khách yêu thích.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Liên hệ ngay với chúng\r\ntôi qua số điện thoại: 0905.56.53.11(Mr.Thông) hoặc 0945.46.79.68 (Mr Trung).\r\nHoặc bạn có thể xem thêm thông tin và giá cả tại <a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">www.saigon-binhba.com</a></font></span><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">.\r\nChúc các bạn có chuyến đi thật vui vẻ.</font><span style=\"font-size: 14pt;\"><o:p></o:p></span></span></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1452178936, '1452182598', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba</a></font>\r\n\r\n</body></HTML>', 'khách sạn bình ba, bình ba, đảo bình ba, du lịch bình ba,', 'Sài Gòn - Bình Ba', 'Tìm khách sạn ở đảo Bình Ba sao cho đúng?', 'Một câu hỏi được đặt ra là tìm khách sạn ở đảo Bình Ba như thế nào cho đúng?', 'khách sạn bình ba, bình ba, đảo bình ba, du lịch bình ba,', 0, ',2,', '', 1),
(704, '', '', 0, 'Kinh nghiệm du lịch Bình Ba mà bạn nên biết', 'kinh-nghiem-du-lich-binh-ba-ma-ban-nen-biet', 'p-kinh-nghiem-du-lich-binh-ba-ma-ban-nen-biet-704.jpg', 1, 'Kinh nghiệm du lịch Bình Ba mà bạn nên biết sẽ giúp ích bạn rất nhiều đấy.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\">Bình Ba là một trong những\r\nđảo du lịch đẹp nhất ở Việt Nam hiện nay. Không những có những đường bờ biển\r\ndài cực thu hút, mà cảnh vật hoang sơ nơi này cũng làm mê đắm lòng du khách.\r\nHơn thế nữa, đây là địa điểm rất thích hợp để bạn giải trí sau tuần làm việc\r\ncăng thẳng. Do đó, còn chần chừ gì nữa mà không đến đây thưởng ngoạn. Kinh nghiệm\r\ndu lịch Bình Ba mà bạn nên biết sẽ giúp ích bạn rất nhiều đấy.</font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Thời\r\nđiểm thích hợp để đến Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đảo Bình Ba phù hợp để\r\nđi du lịch quanh năm. Lý do là bởi vì dù thời tiết rơi ngay vào mùa mưa bão,\r\nthì nơi đây vẫn không bị ảnh hưởng, và đó là điểm nổi bật ở nơi này. Do đó, bạn\r\nhoàn toàn có thể chọn bất kỳ khoảng thời gian nào để du lịch sao cho phù hợp với\r\nlịch trình của bạn.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao-binh-ba.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Biển Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đặc biệt, thời gian cao\r\nđiểm mà khách đến Bình Ba là vào khoảng tháng 3 đến tháng 9. Do đó, nếu thích\r\nđông vui thì bạn có thể đến vào khoảng thời gian này. Còn nếu như muốn đi du lịch\r\nnghỉ dưỡng, thì tháng 9 tới tháng 2 năm sau là thời điểm hợp lý vì ít người đi,\r\nnên giá thành cũng rẻ hơn được một chút.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Phương\r\ntiện để đi đến đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đầu tiên, các bạn cần\r\nphải di chuyển đến Nha Trang. Dù bạn ở Sài Gòn hay Hà Nội, đều có những phương\r\ntiện đi đến đi đến Nha Trang- Cam Ranh như sau:<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Máy bay: đây là\r\nphương tiện nhanh nhất và tiện lợi nhất. Bạn chỉ mất khoảng 1 tiếng để đến ngay\r\ntrung tâm của Nha Trang. Tuy giá thành của phương tiện này khá đắt, nhưng bạn vẫn\r\ncó thể tìm mua những vé giá rẻ của những hãng máy bay khác nhau.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Tàu hỏa/ Xe lửa: bạn\r\nsẽ mất khoảng gần 1 ngày để đến Nha Trang. Thường thì bạn chọn mua vé đi vào buổi\r\nchiều, thì sáng hôm sau là bạn đã đến nơi. Giá vé tàu thuộc dạng trung bình chứ\r\nkhông quá đắt.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Xe khách: có rất nhiều\r\nhãng xe khách đi đến nơi đây. Bạn sẽ mất hơn 1 ngày để đến được Nha Trang. Bạn\r\ncũng nên đặt vé xe trước để không phải chờ đợi.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Tiếp theo, cách sân bay\r\nCam Ranh 15km là Cảng Ba Ngòi. Nơi đây, bạn sẽ được tàu của khách sạn Sài\r\nGòn-Bình Ba trực tiếp đón ra đảo Bình Ba. Mỗi ngày, tàu thường đón khách vào thời\r\nđiểm 7h, 10h và 12h trưa. Bạn nên liên hệ trước để được tàu chờ đón.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao-binh-ba-1.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\"><i><font size=\"3\">Tàu chở đến Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Nơi\r\nở tại đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Nơi đây là vùng đất mới\r\nđược khám phá và khai thác nên hầu hết nhà nghỉ còn rất ít. Đa số, người dân ở\r\nđây chia sẻ và cho du khách thuê phòng trong nhà của mình để ở. Ngoài ra, ở đây\r\nhiện đang có một khách sạn tiêu chuẩn 3 sao là khách sạn Sài Gòn- Bình Ba ở bãi\r\nNồm với giá thuê chỉ từ 500.000 đ một đêm cho 2 người. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Tuy nhiên, vào những dịp\r\ncuối tuần hay dịp lễ tết, các bạn nên đặt phòng trước để tránh trường hợp không\r\ncó chỗ để dừng chân nhé.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Những\r\nđịa điểm vui chơi ở đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Các nơi tham quan được\r\nmiêu tả cụ thể để bạn có thể biết được điểm cần đi khi tới Bình Ba, trong đó\r\ntiêu biểu như:<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Bãi Nồm: đây là bãi tắm\r\nlớn nhất và đẹp nhất ở Bình Ba. Những khu du lịch và các dịch vụ được mở ra nhằm\r\nđáp ứng nhu cầu cho du khách. Đặc biệt, tại đây có bán những loại hải sản sống\r\ntươi ngon, hấp dẫn và những chế phẩm khô để bạn có thể mua về làm quà.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Bãi Chướng: đây cũng\r\nlà bãi tắm nổi tiếng, nhưng cảnh đẹp ít hơn Bãi Nồm. Tuy nhiên, bạn hoàn toàn\r\ncó thể thư giãn và thoải mái khi đến nơi này.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Còn có những địa điểm\r\nkhác như Bãi Nhà Cũ, Bãi Bồ Đề, ... để các bạn tham quan và tận hưởng trong\r\nchuyến đi của mình.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Những\r\nđặc sản của đảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Các món ngon ở Bình Ba\r\nlà nhiều vô cùng, tiêu biểu nhất là hải sản. Chẳng hạn như:<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Tôm<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Cua huỳnh đế<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_20.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Mực một nắng</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Mực một nắng<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Cá các loại,...<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bạn có thể xem chi tiết\r\nvề từng món ngon ở Bình Ba để có sự lựa chọn khi đến nơi đây.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Để chuẩn bị cho chuyến\r\ndu lịch Bình Ba, bạn có thể liên hệ với khách sạn Sài Gòn – Bình Ba để đặt\r\nphòng cũng như chọn loại tour phù hợp nhất với thời gian của mình. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Địa chỉ liên hệ: 0905\r\n56 53 11 (Anh Thông) hoặc 0945 46 79 68 (Anh Trung). Hoặc vào website:\r\n<a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">www.saigon-binhba.com</a> để biết thêm chi tiết.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"500\" height=\"600\"></font></p>    \r\n\r\n\r\n\r\n\r\n</body></HTML>', 1452179563, '1452182871', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba    \r\n\r\n\r\n</a></font>\r\n\r\n</body></HTML>', 'khách sạn bình ba, kinh nghiệm bình ba, du lịch bình ba', 'Sài Gòn - Bình Ba', 'Kinh nghiệm du lịch Bình Ba mà bạn nên biết', 'Kinh nghiệm du lịch Bình Ba mà bạn nên biết sẽ giúp ích bạn rất nhiều đấy.', 'khách sạn bình ba, kinh nghiệm bình ba, du lịch bình ba', 0, ',2,5,', '', 1),
(705, '', '', 0, 'Top 5 hòn đảo nổi tiếng đẹp ở Việt Nam', 'top-5-hon-dao-noi-tieng-dep-o-viet-nam', 'p-top-5-hon-dao-noi-tieng-dep-o-viet-nam-705.jpg', 1, 'Top 5 hòn đảo nổi tiếng đẹp ở Việt Nam và được hàng ngàn du khách ghé thăm mỗi năm', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\">Việt Nam nổi tiếng trên\r\nkhắp thế giới với những danh lam thắng cảnh đẹp tuyệt vời, trong đó tiêu biểu\r\nlà những hòn đảo thiên nhiên. Đặc biệt, du lịch biển đảo đã góp phần đáng kể\r\ntrong việc phát triển ngành du lịch của Việt Nam. Mặc dù chưa có xếp hạng chính\r\nthức, nhưng sau đây là top 5 hòn đảo nổi tiếng đẹp ở Việt Nam và được hàng ngàn\r\ndu khách ghé thăm mỗi năm. Chúng ta hãy tìm hiểu xem những hòn đảo này là gì\r\nnhé!</font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">1.\r\nĐảo Phú Quốc<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đây là một trong những\r\nđảo lớn và thu hút du lịch bậc nhất hiện nay. Không chỉ ở Việt Nam, Phú Quốc\r\ncòn được lọt vào top những hòn đảo đẹp nhất châu Á. Do đó, nơi này đã thu hút\r\nđược rất nhiều du khách mỗi năm, cả trong và ngoài nước. Cảnh vật ở đây được ví\r\nnhư “thiên đường nhiệt đới”, vô cùng đẹp đẽ và thơ mộng. <o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/phu-quoc.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"line-height: 37.3333px;\"><i><font size=\"3\">Đảo Phú Quốc</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, có rất nhiều\r\nhoạt động du lịch nơi này như lặn biển, chèo thuyền,... để du khách tận hưởng\r\nvà hòa mình với thiên nhiên. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">2.\r\nĐảo Lý Sơn<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Lý Sơn là một huyện đảo\r\nthuộc tỉnh Quãng Ngãi, với đặc sản nổi bật nơi đây là tỏi Lý Sơn. Nơi đây có\r\nnhiều cảnh đẹp thiên nhiên như cổng Tò Vò, Quan Âm Đài, chùa Hang,... với vùng\r\nbiển thật trong xanh. Điển hình, đảo Bé là nơi được du khách ghé thăm nhiều nhất\r\nở đây.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đặc biệt, đây là một điểm\r\ndu lịch nổi tiếng và đem đến nguồn thu nhập cho những người dân Quãng Ngãi nói\r\nchung, và người dân miền Trung nói riêng. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">3.\r\nĐảo Côn Sơn (Côn Đảo)<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Côn Đảo không chỉ là một\r\nđảo du lịch, mà còn là một địa danh lịch sử gắn liền với truyền thống dân tộc.\r\nVì vậy, đây là niềm tự hào của vùng đảo nói riêng, và của Việt Nam nói chung. Bạn\r\ncó thể đi tàu hoặc máy bay để đến nơi này.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><font size=\"3\"><img src=\"http://vietnamtourism.gov.vn/images/2015/condao.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Côn Đảo</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đặc biệt, ở đây có đầy\r\nđủ những dịch vụ du lịch, được quản lý rất tốt bởi lãnh đạo nơi này. Cho nên, bạn\r\nkhông cần phải lo về việc có những tệ nạn nói thách giá, mọi món hàng đều được\r\nniêm yết và bán đúng giá.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\"> </font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">4.\r\nĐảo Nam Du<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Thuộc tỉnh Kiên Giang,\r\nNam Du được nhiều dân du lịch bụi thích thú và chọn làm điểm đến vì chi phí đến\r\nđây còn khá rẻ, cũng như những cảnh vật thiên nhiên vẫn còn hoang sơ vì chưa có\r\nsự can thiệp của con người. Tuy nhiên, những điều này lại trở thành điểm thu hút\r\nkhách du lịch.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Nơi đây nổi tiếng với\r\nbãi tắm Cây Mến, bãi Ngự, với dịch vụ đi thuyền ra những hòn đảo lân cận như\r\nhòn Mấu, hòn Ngang,...  Còn chần chừ gì nữa\r\nmà không trải nghiệm đảo Nam Du vào mùa hè này.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">5.\r\nĐảo Bình Ba<o:p></o:p></font></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đảo Bình Ba thuộc tỉnh\r\nCam Ranh, Khánh Hòa, cách 1 tiếng đi tàu từ đất liền và là một điểm du lịch nổi\r\ntiếng trong những năm gần đây. Tuy là mới nổi, nhưng Bình Ba thật sự đã chinh\r\nphục được mọi du khách với những cảnh biển trong xanh, những loại hải sản ngon\r\nđặc sắc. Do đó, một khi bạn đã đến đây, thì bạn không thể nào không ghé lại nơi\r\nnày.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/binh-ba.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"line-height: 37.3333px;\"><i><font size=\"3\">Đảo Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ngoài ra, ở đây có rất\r\nnhiều tour du lịch đến đây với nhiều sự lựa chọn cho bạn như: trong ngày, 2\r\nngày 1 đêm, 3 ngày 2 đêm. Đặc biệt, có rất nhiều dịch vụ du lịch hấp dẫn như lặn\r\nbiển ngắm san hô, ăn tôm hùm nướng, tắm biển, tham quan bằng xe điện... Hãy đến\r\nđảo Bình Ba để trải nghiệm những dịch vụ này nhé.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><font size=\"3\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Nếu muốn du lịch ở Bình\r\nBa, hãy liên hệ ngay với chúng tôi qua số điện thoại 0905 56 53 11 (Anh Thông)\r\nhoặc 0945 46 79 68 (Anh Trung), hoặc tham khảo website </span><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><a href=\"http://www.saigon-binhba.com/\">www.saigon-binhba.com</a></span></font><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">\r\nđể biết được giá cả và thông tin chi tiết.</font><span style=\"font-size: 14pt;\"><o:p></o:p></span></span></p>    \r\n\r\n\r\n\r\n</body></HTML>', 1452180034, '1452182954', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba    </a></font><style>BODY { font-family:Arial;font-size:12px; } </style>    \r\n\r\n\r\n</body></HTML>', 'đảo du lịch, du lịch đảo, đảo bình ba, du lịch bình ba', 'Sài Gòn - Bình Ba', 'Top 5 hòn đảo nổi tiếng đẹp ở Việt Nam', 'Top 5 hòn đảo nổi tiếng đẹp ở Việt Nam và được hàng ngàn du khách ghé thăm mỗi năm', 'đảo du lịch, du lịch đảo, đảo bình ba, du lịch bình ba', 0, ',2,5,', '', 1),
(706, '', '', 0, 'Du lịch Bình Ba trong ngày được không?', 'du-lich-binh-ba-trong-ngay-duoc-khong', 'p-du-lich-binh-ba-trong-ngay-duoc-khong-706.jpg', 1, 'MP TRINH đẹp gái dễ thương, Nhiều du khách thắc mắc rằng không biết liệu có thể du lịch đảo Bình Ba trong ngày được hay không,', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body style=\"\">    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\"><span style=\"line-height: 200%;\"><font size=\"3\">Bình Ba là một hòn đảo\r\ndu lịch n</font></span>ổi tiếng trong những năm gần đây và được nhiều người tìm đến để nghỉ\r\nngơi. Do đó, đây là một trong những vùng biển thu hút khách du lịch bậc nhất hiện\r\nnay. Cách tỉnh Cam Ranh, Khánh Hòa một giờ đi tàu, bạn có thể dễ dàng đến đây\r\nvà luôn có những chuyến tàu chạy ra đảo theo lịch trình cố định. Tuy nhiên, nhiều\r\ndu khách thắc mắc rằng không biết liệu có thể du lịch đảo Bình Ba trong ngày được\r\nhay không? Câu trả lời là hoàn toàn được và hãy tìm hiểu xem bạn có thể chơi gì\r\nở đây trong ngày nhé.</font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\"></font></span><br><span style=\"line-height: 200%;\"><font size=\"3\"><img alt=\"MPT đẹp gái\" src=\"http://www.saigon-binhba.com/upload/13103443_626960800793675_8891911415594380286_n.jpg\" height=\"696\" width=\"696\" align=\"absMiddle\" border=\"0px\"></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\"><span style=\"line-height: 200%;\"><br></span></font></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\"><br></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Buổi\r\nsáng ở Bình Ba<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Tốt nhất, bạn nên đón\r\nchuyến tàu đầu tiên để đi đến Bình Ba vào 7h sáng. Cano sẽ chở bạn đến bãi Nồm\r\nđể đón những ánh nắng đầu tiên trong ngày. Việc tiếp theo, hẳn là bạn lúc ấy đang\r\nrất đói bụng và muốn tìm cho mình một món ăn sáng tại vùng này đúng không nào.\r\nHiểu được điều đó, bạn có thể ra chợ truyền thống nơi này để thưởng thức các\r\nmón ngon, điển hình là món bún cá.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Sau khi ăn bạn nên nghỉ\r\nngơi chừng 30 phút và sau đó là thời gian tuyệt vời để đi lặn biển ngắm san hô.\r\nBãi Nồm là bãi tắm lớn nhất và nhiều du khách ghé thăm nhất, nên bạn nhất định\r\nphải đến nơi đây để trải nghiệm nhé. Sẽ có những người hướng dẫn, cũng như cho\r\nthuê dụng cụ để bạn có thể tự mình lặn biển và ngắm những loài san hô với nhiều\r\nmàu sắc sống động.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao-binh-ba.jpg\" alt=\"\" height=\"600\" width=\"600\" align=\"\" border=\"0px\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Biển Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Đặc biệt, còn có dịch vụ\r\nquay phim cho bạn trong quá trình bạn đi lặn. Những thước phim tuyệt vời này sẽ\r\nlưu giữ mãi về chuyến đi thú vị này.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Buổi\r\ntrưa ở Bình Ba<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Sau những giờ lặn và tắm\r\nbiển, hẳn là các bạn đã rất đói rồi phải không nào? Các món ăn nơi đây rất đa dạng\r\nvà phong phú để các bạn lựa chọn, điển hình như:<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Tả pí lù cá bớp<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Cá chiên xoài bằm<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Mực hấp<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Ốc hấp<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Tôm hùm<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">...<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao-binh-ba-1.jpg\" alt=\"\" height=\"600\" width=\"600\" align=\"\" border=\"0px\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Ghẹ Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khi tới đây, nhất định\r\nbạn phải thưởng thức hết những loại hải sản nơi này nhé. Trong đó, tôm hùm là đặc\r\nsản thường được du khách yêu thích. Bạn có thể ăn ở quán hoặc mua ở chợ hải sản\r\nvề để chế biến.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Sau đó bạn có thể về\r\nphòng nghỉ ngơi chừng 30 phút đến 1 tiếng. Trong thời gian này, một gợi ý hay\r\ncho bạn là có thể dạo quanh biển và chụp những bức hình thật đẹp với cảnh biển.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Buổi\r\nchiều ở Bình Ba<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khoảng 3 giờ chiều là\r\nthời điểm thích hợp để đi tham quan đảo bằng xe điện. Hoặc nếu là dân phượt, bạn\r\ncũng có thể thuê xe máy để tham quan nơi này. Bạn có thể đi lên núi để nhìn thấy\r\nđược toàn bộ cảnh biển ở vịnh Cam Ranh đẹp tuyệt vời này. Ngoài ra, có những địa\r\nđiểm nổi tiếng khác như:<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Đảo con Rùa: bạn có\r\nthể ngắm nhìn hòn đảo có hình dáng không khác gì chú rùa và lưu lại cho mình\r\nhòn đảo có hình dáng đặc biệt này.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Đồi cửa Bất<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Lầu ông Hoàng 2: đây\r\nlà tháp lô cốt được người Pháp xây dựng vào cuối thể kỷ 19, bạn có thể cảm nhận\r\nđộ uy nghiêm và chắc chắn của công trình nơi này.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao-binh-ba-2.jpg\" alt=\"\" height=\"600\" width=\"600\" align=\"\" border=\"0px\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"line-height: 37.3333px;\"><i><font size=\"3\">Lặn biển</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Bãi Chướng: bên cạnh\r\nBãi Nồm, đây là bãi biển cũng được nhiều khách ghé qua tham quan.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Các ngôi chùa....<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khoảng 6 giờ chiều, có\r\nchuyến cano để đưa khách trở về bãi Ngòi. Vậy là bạn đã kết thúc chuyến hành\r\ntrình của mình rồi. <o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Tuy trong một ngày ngắn\r\nngủi nhưng bạn đã trải nghiệm rất nhiều hoạt động ở đảo Bình Ba đúng không? Nào\r\nlà tắm biển, ăn hải sản (tôm hùm cực ngon), lặn biển ngắm san hô, tham quan cảnh\r\nbằng xe điện, đi cano. Thật là một ngày tham quan “đã con mắt, no nê bụng”! <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" height=\"600\" width=\"500\" align=\"\" border=\"0px\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Khách sạn Sài Gòn-Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Để tìm hiểu thêm về\r\ntour Bình Ba trong ngày , bạn có thể liên hệ anh Thông (số điện thoại: 0905 56\r\n53 11) để biết thêm chi tiết nhé.</font></span></p>    \r\n\r\n\r\n\r\n</body></HTML>', 1452180570, '1462081186', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body style=\"\">    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba    \r\n\r\n</a></font>\r\n\r\n</body></HTML>', 'tour bình ba, du lịch bình ba, tour bình ba 1 ngày,', 'Sài Gòn - Bình Ba', 'Du lịch Bình Ba trong ngày được không?', 'Nhiều du khách thắc mắc rằng không biết liệu có thể du lịch đảo Bình Ba trong ngày được hay không', 'MP TRINH đẹp gái dễ thương, tour bình ba, du lịch bình ba, tour bình ba 1 ngày,', 0, ',2,5,', '', 1);
INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(707, '', '', 0, '5 lý do nên đi Bình Ba ít nhất một lần trong đời', '5-ly-do-nen-di-binh-ba-it-nhat-mot-lan-trong-doi', 'p-5-ly-do-nen-di-binh-ba-it-nhat-mot-lan-trong-doi-707.jpg', 1, '5 lý do nên đi Bình Ba ít nhất một lần trong đời chắc chắn sẽ thuyết phục những du khách', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\"><font size=\"3\">Bình Ba được nằm trong\r\ndanh sách những đảo biển nên đến một lần trong đời. Trong đó, đây là địa điểm\r\ndu lịch mới nổi lên gần đây, với phong cảnh tuyệt đẹp cũng như rất thơ mộng. Do\r\nđó, Bình Ba thực sự là sự lựa chọn tuyệt vời cho gia đình bạn để đến đây vào dịp\r\nlễ, tết, nghỉ hè,… với mức giá vô cùng hợp lý. 5 lý do nên đi Bình Ba ít nhất một\r\nlần trong đời chắc chắn sẽ thuyết phục những du khách đến nơi này đấy.</font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bãi\r\nbiển tuyệt đẹp và đầy mộng mơ<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Mang đặc điểm của vùng\r\nđảo hoang sơ, ở Bình Ba có rất nhiều bãi biển đẹp với cát trắng, nước trong\r\nveo, phản chiếu trời xanh ngắt. Vùng biển này cũng chưa được đưa vào khai thác\r\ndịch vụ du lịch nên mọi thứ đều nguyên sơ. Thêm vào đó, những bãi tắm luôn nằm\r\nyên, như một cậu bé tinh nghịch, luôn tạo những đợt sóng đón chào những du\r\nkhách đến tham quan. <o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_34.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"line-height: 37.3333px;\"><i><font size=\"3\">Hoàng hôn ở Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Điểm quan trọng là, du\r\nkhách sẽ được tận hưởng những dòng nước mát lạnh ở bãi tắm Bình Ba, trong xanh\r\nnhất có thể. Cùng với đó là bãi cát trắng, nằm trải dài và mang một màu sắc thật\r\nyên bình, tao nhã, là nguồn cảm hứng cho nhiều người, cũng như là nơi thư giãn\r\ntuyệt vời nhất.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Hải\r\nsản nhiều vô kể<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Là một vùng biển, Bình\r\nBa cũng được thiên nhiên ưu ái mang đến những món ngon, hải sản phong phú.\r\nTrong đó, không những chất lượng tươi ngon, mà dưới bàn tay điêu luyện, tài\r\nhoa, những món ăn này trở nên vô cùng hấp dẫn. Điển hình và nổi bật nhất là: <o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Tôm hùm nướng/ hấp<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Nhum biển<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Mực lá con to<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_33.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Hải sản tươi ngon</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Cua/ ghẹ<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Các loại sò: sò huyết,\r\nsò lông, sò lụa,…<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">- Hàu<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Cùng với rất nhiều món\r\năn tươi ngon khác.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Trải\r\nnghiệm lặn biển<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Bạn sẽ được trải nghiệm\r\nhoạt động lặn biển ngắm san hô, thậm chí có thể đi mô tô biển để có thể cảm nhận\r\nđược cảm giác vi vu trên biển là như thế nào.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Khi lặn biển, những\r\ntrang thiết bị an toàn sẽ được phân phát và hướng dẫn thật kỹ lưỡng trước khi lặn.\r\nThêm vào đó, bạn còn có thể ghi lại những khoảng khắc dưới biển bằng dịch vụ chụp\r\nảnh và quay phim dưới nước, vô cùng hiện đại và tiện lợi.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/IMG_5735.JPG\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\"><i><font size=\"3\">Lặn biển Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Người\r\ndân rất văn minh<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Ở Bình Ba, mỗi người đều\r\ncó ý thức bảo vệ và giữ gìn vùng biển của họ. Do đó, biển ở đây rất sạch đẹp và\r\nhầu như không có rác thải. Thêm vào đó, người dân vô cùng thân thiện, hiếu\r\nkhách. Bạn sẽ được hướng dẫn tận tình khi muốn hỏi đường, hỏi địa điểm. Đồng thời,\r\nở đây không xảy ra tình trạng chặt chém du khách và những quán ăn hầu như chỉ\r\nphục vụ những món ăn tươi ngon, đảm bảo chất lượng.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Chi\r\nphí vô cùng hợp lý<o:p></o:p></font></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Chi phí du lịch ở Bình\r\nBa vô cùng rẻ. Nếu như không biết đường, bạn có thể mua tour du lịch trong\r\nngày, với cano đón bạn từ cảnh Ba Ngòi vào tới đảo, đi tham quan và vui chơi\r\ntoàn đảo, đồng thời thưởng thức những món ăn đặc sản nơi này.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Thêm vào đó, nếu như ở\r\nqua đêm, bạn có thể thuê khách sạn ở đây với giá chỉ từ 500 ngàn/1 đêm cho khách\r\nsạn 2 sao. Trong đó, phòng ở đây có thể từ 2 đến 3 người, vô cùng thoải mái và\r\nrộng rãi. <o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Chính vì thế, còn chần\r\nchừ gì nữa mà không du lịch ngay đến đảo Bình Ba, ít nhất là một lần nhé.<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><font size=\"3\"><img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"500\" height=\"600\"></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><i><font size=\"3\">Khách sạn Sài Gòn-Bình Ba</font></i></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"line-height: 200%;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\">Mọi chi tiết về chuyến\r\ndu lịch đến đảo Sài Gòn - Bình Ba, bạn có thể liên hệ với anh Thông (0905 56 53\r\n11) hoặc anh Trung (0945 46 79 68), và xem thông tin chi tiết qua website:\r\nh<a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">ttp://saigon-binhba.com/</a></font></span></p>    \r\n\r\n\r\n\r\n\r\n\r\n\r\n</body></HTML>', 1452181917, '1452222698', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><font size=\"3\"><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">Khách sạn Sài Gòn-Bình Ba    \r\n\r\n\r\n\r\n</a></font>\r\n\r\n\r\n</body></HTML>', 'hải sản bình ba, bình ba, du lịch bình ba, kinh nghiệm bình ba', 'Sài Gòn - Bình Ba', '5 lý do nên đi Bình Ba ít nhất một lần trong đời', '5 lý do nên đi Bình Ba ít nhất một lần trong đời chắc chắn sẽ thuyết phục những du khách ', 'hải sản bình ba, bình ba, du lịch bình ba, kinh nghiệm bình ba', 0, ',2,', '', 1),
(708, '', '', 0, 'Ăn tôm hùm ở đâu là ngon nhất?', 'an-tom-hum-o-dau-la-ngon-nhat', 'p-an-tom-hum-o-dau-la-ngon-nhat-708.jpg', 1, 'Ghi lại cẩm nang này để giúp cho bạn khi đi du lịch ở những vùng này thì nhớ tìm mua món tôm hùm nhé.', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Tại những điểm du lịch,\r\nđều có những món ăn đặc trưng cho vùng đất của mình. Chẳng hạn, miền Tây thì có\r\nnhững vườn trái cây, với những loại trái ngon, lạ miệng, Lý Sơn thì nổi tiếng bởi\r\ngiống tỏi ngon, Quảng Ngãi thì có đặc sản cá bống sông Trà,… Tương tự như vậy,\r\nmỗi món ăn đều đại diện cho một vùng khác nhau. Hôm nay, chúng ta sẽ tìm hiểu\r\nxem, tôm hùm thì ăn ở đâu là ngon nhất. Ghi lại cẩm nang này để giúp cho bạn\r\nkhi đi du lịch ở những vùng này thì nhớ tìm mua món tôm hùm nhé.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"font-size:14.0pt;line-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đảo\r\nBình Ba<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đây là một trong những\r\nđảo nổi tiếng về món tôm hùm. Thậm chí, nơi đây còn được mệnh danh là đảo tôm\r\nhùm nữa đấy. Thế nên, nếu đến Bình Ba mà chưa ăn tôm hùm thì xem như bạn chưa từng\r\nđến nơi này rồi. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Không giống như đến với\r\nnhững vùng biển khác, Bình Ba cuốn hút du khách với những trải nghiệm bình dị\r\nnhất. Những con tôm hùm được người dân ở đây tự tay nuôi ở vùng biển lân cận,\r\ncũng như đánh bắt những giống tốt về để nuôi thêm. Do đó, bạn sẽ cảm nhận được\r\nhương vị thơm ngon tuyệt vời, thịt tôm hùm Bình Ba thanh ngọt, đậm đà chan chứa\r\nnhư chính tấm lòng của những con người nơi này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><img src=\"/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\"></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><i>Tôm hùm Bình Ba</i></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Thêm vào đó, Bình Ba\r\ncòn có rất nhiều loại hải sản khác như mực lá, nhum, ốc, ghẹ, sò,… vô cùng đa dạng\r\nvà phong phú. Bạn sẽ được thưởng thức hải sản tươi ngon, dưới bàn tay chế biến\r\nđiêu luyện của đầu bếp nơi này, đã tạo món ăn thành những tác phẩm nghệ thuật\r\nvô cùng ngon miệng. Chính vì thế, bạn hãy đến ngay Bình Ba để khám phá nhé.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"font-size:14.0pt;line-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đảo\r\nCát Bà<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đảo này được ví như hòn\r\nngọc của vịnh Bắc Bộ, với những hang động, bãi biển và bãi cát trắng phau. Cùng\r\nvới đó là rất nhiều điểm tham quan thú vị và đẹp như đảo khỉ, bãi tắm, bãi Cò,…\r\nKhông những thế, đặc sản nơi này cũng góp phần níu chân du khách ở lại.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Với nhiều món ngon nổi\r\ntiếng từ hải sản như: sam 7 món, tu hài, hàu, cá song thì đảo Cát Bà cũng là điểm\r\nkhông mấy ngạc nhiên với món tôm hùm chắc thịt, ngọt thơm lừng.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:200%\"><b><span style=\"font-size:14.0pt;line-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đảo\r\nLý Sơn<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"line-height: 200%;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đến Lý Sơn, bạn không\r\nchỉ thích thú với đỉnh Thới Lới tràn ngập ánh bình minh, Ngắm hoàng hôn ở cổng\r\nTò Vò hay bạn có thể khám phá những cánh đồng tỏi<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><img src=\"/upload/tom-hum-binh-ba.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\"></p><p class=\"MsoNormal\" style=\"text-align: center; line-height: 200%;\"><i>Tôm hùm ngon lành</i></p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Đảo Lý Sơn được nhiều\r\nngười biết đến bởi có món tỏi nổi tiếng, thì một đặc sản làm du khách mê mẩn đó\r\nchính là hải sản, mà tiêu biểu là tôm hùm. Đây cũng là nơi nuôi tôm hùm để sử dụng\r\ntrong nước và còn xuất khẩu ra nước ngoài.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: 200%;\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-size:14.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Mọi chi tiết về chuyến\r\ndu lịch đến đảo Sài Gòn - Bình Ba, cũng như khách sạn ở đây, bạn có thể liên hệ\r\nvới anh Thông (0905 56 53 11) hoặc anh Trung (0945 46 79 68), và xem thông tin\r\nchi tiết qua website: <a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\">www.saigon-binhba.com</a><o:p></o:p></span></p>    \r\n\r\n\r\n</body></HTML>', 1452248588, '1452258087', '', 0, 0, 0, 'vi', 0, 0, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style><a href=\"http://saigon-binhba.com/index.htm\" target=\"_blank\"><font size=\"3\">Khách sạn Sài Gòn-Bình Ba</font></a>\r\n\r\n</body></HTML>', 'hải sản bình ba, tôm hùm bình ba, mực bình ba, hải sản ngon, tôm hùm ngon, ', 'Sài Gòn - Bình Ba', 'Ăn tôm hùm ở đâu là ngon nhất?', 'Ghi lại cẩm nang này để giúp cho bạn khi đi du lịch ở những vùng này thì nhớ tìm mua món tôm hùm nhé', 'hải sản bình ba, tôm hùm bình ba, mực bình ba, hải sản ngon, tôm hùm ngon, ', 0, ',2,', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_adoption`
--

CREATE TABLE `news_adoption` (
  `newsadoption_id` int(11) NOT NULL,
  `newsadoption_catalogue` int(11) DEFAULT NULL,
  `newsadoption_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newsadoption_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusadoption` tinyint(3) DEFAULT NULL,
  `newsadoption_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateadoption_added` int(11) DEFAULT NULL,
  `lastadoption_modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageadoption` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_catalogue`
--

CREATE TABLE `news_catalogue` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `categories_key` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `categories_order` int(11) NOT NULL,
  `categories_date_added` int(11) NOT NULL,
  `categories_modified_date` int(11) NOT NULL,
  `categories_status` int(11) NOT NULL DEFAULT '1',
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_category`
--

CREATE TABLE `news_category` (
  `idnews_category` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `news_category`
--

INSERT INTO `news_category` (`idnews_category`, `news_id`, `category_id`, `status`) VALUES
(85, 680, 5, '1'),
(160, 676, 4, '1'),
(214, 682, 4, '1'),
(226, 675, 4, '1'),
(232, 691, 2, '1'),
(235, 692, 2, '1'),
(237, 693, 2, '1'),
(239, 690, 7, '1'),
(240, 689, 4, '1'),
(241, 688, 4, '1'),
(242, 688, 5, '1'),
(243, 687, 4, '1'),
(244, 687, 5, '1'),
(245, 686, 7, '1'),
(246, 685, 4, '1'),
(247, 685, 5, '1'),
(248, 684, 5, '1'),
(249, 683, 4, '1'),
(250, 683, 5, '1'),
(251, 681, 5, '1'),
(253, 679, 5, '1'),
(254, 678, 2, '1'),
(255, 674, 4, '1'),
(256, 673, 4, '1'),
(257, 672, 2, '1'),
(282, 700, 5, '1'),
(300, 697, 2, '1'),
(301, 697, 5, '1'),
(302, 698, 2, '1'),
(303, 699, 5, '1'),
(304, 701, 5, '1'),
(307, 702, 4, '1'),
(308, 702, 5, '1'),
(311, 703, 2, '1'),
(316, 704, 2, '1'),
(317, 704, 5, '1'),
(318, 705, 2, '1'),
(319, 705, 5, '1'),
(325, 707, 2, '1'),
(328, 708, 2, '1'),
(331, 706, 2, '1'),
(332, 706, 5, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_introduce`
--

CREATE TABLE `news_introduce` (
  `newsintroduce_id` int(11) NOT NULL,
  `newsintroduce_catalogue` int(11) DEFAULT NULL,
  `newsintroduce_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newsintroduce_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusintroduce` tinyint(3) DEFAULT NULL,
  `newsintroduce_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateintroduce_added` int(11) DEFAULT NULL,
  `lastintroduce_modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageintroduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pet_profile`
--

CREATE TABLE `pet_profile` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` int(30) NOT NULL,
  `species` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(2) NOT NULL,
  `height` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `priceofunit`
--

CREATE TABLE `priceofunit` (
  `idPriceOfUnit` int(11) NOT NULL,
  `PriceScore` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `products_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image_first` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_second` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_third` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_fourth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `products_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_encourage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price_unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_type` text COLLATE utf8_unicode_ci NOT NULL,
  `p_unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_date_added` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `products_status` tinyint(3) NOT NULL DEFAULT '1',
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_description` longblob,
  `description_ads_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `product_detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `p_new` int(11) NOT NULL,
  `p_bestsell` int(11) NOT NULL,
  `p_encourage` int(11) NOT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `recycle_bin` int(11) NOT NULL,
  `species` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '00:null, 01: cho, 10:meo',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_detail_tacdung` longtext COLLATE utf8_unicode_ci,
  `product_detail_phuhopcho` longtext COLLATE utf8_unicode_ci,
  `product_detail_nguyenlieu_thanhphan` longtext COLLATE utf8_unicode_ci,
  `product_detail_phantichdambao` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdansudung` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdanbaoquan` longtext COLLATE utf8_unicode_ci,
  `product_detail_luuy` longtext COLLATE utf8_unicode_ci,
  `product_detail_khuyenkhich` longtext COLLATE utf8_unicode_ci,
  `product_detail_donggoi_thetich` longtext COLLATE utf8_unicode_ci,
  `product_detail_nhasanxuat` longtext COLLATE utf8_unicode_ci,
  `product_detail_xuatxu` longtext COLLATE utf8_unicode_ci,
  `upgrade_categories_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`products_id`, `keywords`, `description`, `products_key`, `products_name`, `products_image`, `products_image_first`, `products_image_second`, `products_image_third`, `products_image_fourth`, `view_count`, `products_price`, `product_encourage`, `price_unit`, `manufacturer`, `manufacturer_link`, `origin`, `p_type`, `p_unit`, `p_attribute`, `p_color`, `products_date_added`, `modified_date`, `products_status`, `products_ordered`, `products_description`, `description_ads_vi`, `product_detail`, `categories_id`, `p_new`, `p_bestsell`, `p_encourage`, `language`, `username`, `sort_order`, `recycle_bin`, `species`, `status`, `product_detail_tacdung`, `product_detail_phuhopcho`, `product_detail_nguyenlieu_thanhphan`, `product_detail_phantichdambao`, `product_detail_huongdansudung`, `product_detail_huongdanbaoquan`, `product_detail_luuy`, `product_detail_khuyenkhich`, `product_detail_donggoi_thetich`, `product_detail_nhasanxuat`, `product_detail_xuatxu`, `upgrade_categories_id`) VALUES
(1013, '', '', 'phong-loai-thuong-1013', 'Phòng thường', 'p-phong-thuong-huong-nhin-ra-nui-1013.jpg', 'p-phong-thuong-huong-nhin-ra-nui-1013-01.jpg', 'p-phong-thuong-huong-nhin-ra-nui-1013-02.jpg', 'p-phong-thuong-huong-nhin-ra-nui-1013-03.jpg', 'p-phong-thuong-huong-nhin-ra-nui-1013-04.jpg', 0, '500.000', '', 'VND', '', '', '', '', '', '', '', 1433693761, 1435338552, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e6720c491e1baa174207469c3aa7520636875e1baa96e20322073616f2e, '', '<p style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">Phòng gồm có máy lạnh, tủ quần áo, bàn ghế cao cấp, đèn ngủ. Phòng đạt tiêu chuẩn 2 sao.\r\n</font></p>', 339, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',339,'),
(1011, '', '', 'phong-loai-thuong-1011', 'Phòng thường', 'p-phong-thuong-huong-bien-co-ban-cong-1011.jpg', 'p-phong-thuong-huong-bien-co-ban-cong-1011-01.jpg', 'p-phong-thuong-huong-bien-co-ban-cong-1011-02.jpg', 'p-phong-thuong-huong-bien-co-ban-cong-1011-03.jpg', 'p-phong-thuong-huong-bien-co-ban-cong-1011-04.jpg', 0, '500.000', '', 'VND', '', '', '', '', '', '', '', 1433576503, 1435338579, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e6720c491e1baa174207469c3aa7520636875e1baa96e20322073616f2e, '', '<p>\r\n	\r\n	\r\n	\r\n	<span style=\"text-align: justify; background-color: rgb(250, 246, 237);\"><font face=\"Arial\" size=\"2\"><font color=\"#333333\">\r\n				<span style=\"line-height: 18.5714282989502px;\">Phòng gồm có máy lạnh, tủ quần áo, bàn ghế cao cấp, đèn ngủ. Phòng đạt tiêu chuẩn 2 sao.</span></font></font></span></p>', 339, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',339,'),
(1012, '', '', 'phong-loai-thuong-1012', 'Phòng thường', 'p-phong-thuong-huong-nhin-ra-bien-1012.jpg', 'p-phong-thuong-huong-nhin-ra-bien-1012-01.jpg', 'p-phong-thuong-huong-nhin-ra-bien-1012-02.jpg', 'p-phong-thuong-huong-nhin-ra-bien-1012-03.jpg', 'p-phong-thuong-huong-nhin-ra-bien-1012-04.jpg', 0, '500.000', '', 'VND', '', '', '', '', '', '', '', 1433576521, 1435338567, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e6720c491e1baa174207469c3aa7520636875e1baa96e20322073616f2e, '', '<p style=\"text-align: justify;\">\r\n	\r\n	\r\n	\r\n	\r\n	<font face=\"Arial\" size=\"2\">Phòng gồm có máy lạnh, tủ quần áo, bàn ghế cao cấp, đèn ngủ. Phòng đạt tiêu chuẩn 2 sao.</font></p>', 339, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',339,'),
(1046, '', '', 'phong-loai-thuong-1046', 'Phòng thường', 'p-phong-thuong-1046.jpg', 'p-phong-thuong-1046-01.jpg', 'p-phong-thuong-1046-02.jpg', 'p-phong-thuong-1046-03.jpg', 'p-phong-thuong-1046-04.jpg', 0, '500.000', '', 'VND', '', '', '', '', '', '', '', 1434432226, 1435338541, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e6720c491e1baa174207469c3aa7520636875e1baa96e20322073616f2e, '', 'Phòng gồm có máy lạnh, tủ quần áo, bàn ghế cao cấp, đèn ngủ. Phòng đạt tiêu chuẩn 2 sao.', 339, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',339,'),
(1047, '', '', 'phong-loai-vip-1047', 'Phòng VIP', 'p-phong-vip-huong-nhin-ra-bien-1047.jpg', 'p-phong-vip-huong-nhin-ra-bien-1047-01.jpg', 'p-phong-vip-huong-nhin-ra-bien-1047-02.jpg', 'p-phong-vip-huong-nhin-ra-bien-1047-03.jpg', 'p-phong-vip-huong-nhin-ra-bien-1047-04.jpg', 0, '700.000', '', 'VND', '', '', '', '', '', '', '', 1434433358, 1435338684, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074697669206dc3a06e2068c3ac6e68207068e1bab36e672c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e672072e1bb996e672072c3a3692c20746869e1babf74206be1babf207269c3aa6e67206269e1bb87742c2067c3b363206e68c3ac6e20c491e1bab9702068c6b0e1bb9b6e67206269e1bb836e2063c3b96e672073c3a06e2067e1bb972063616f2063e1baa5702e, '', '<p style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\">Phòng gồm có máy lạnh, tivi màn hình phẳng, tủ quần áo, bàn ghế cao cấp, đèn ngủ. </font>\r\n	<span style=\"font-family: Arial; font-size: small;\">Phòng rộng rãi, thiết kế riêng biệt, góc nhìn đẹp hướng biển cùng sàn gỗ cao cấp.</span></p>', 340, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',340,'),
(1048, '', '', 'phong-loai-vip-1048', 'Phòng VIP', 'p-phong-vip-huong-nhin-nui-1048.jpg', 'p-phong-vip-huong-nhin-nui-1048-01.jpg', 'p-phong-vip-1048-02.jpg', 'p-phong-vip-huong-nhin-nui-1048-03.jpg', 'p-phong-vip-1048-04.jpg', 0, '700.000', '', 'VND', '', '', '', '', '', '', '', 1434435798, 1440323363, 1, 0, 0x47e1bb936d2063c3b3206dc3a179206ce1baa16e682c2074697669206dc3a06e2068c3ac6e68207068e1bab36e672c2074e1bba7207175e1baa76e20c3a16f2c2062c3a06e206768e1babf2063616f2063e1baa5702c20c491c3a86e206e67e1bba72e205068c3b26e672072e1bb996e672072c3a3692c20746869e1babf74206be1babf207269c3aa6e67206269e1bb87742c2067c3b363206e68c3ac6e20c491e1bab9702068c6b0e1bb9b6e67206269e1bb836e2063c3b96e672073c3a06e2067e1bb972063616f2063e1baa5702e, '', '<p style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\">Phòng gồm có máy lạnh, tivi màn hình phẳng, tủ quần áo, bàn ghế cao cấp, đèn ngủ. Phòng rộng rãi, thiết kế riêng biệt, góc nhìn đẹp hướng biển cùng sàn gỗ cao cấp.</font></p>', 340, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',340,');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_tours`
--

CREATE TABLE `products_tours` (
  `products_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `products_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image_first` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_second` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_third` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_image_fourth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `products_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_encourage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price_unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_type` text COLLATE utf8_unicode_ci NOT NULL,
  `p_unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_date_added` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `products_status` tinyint(3) NOT NULL DEFAULT '1',
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_description` longblob,
  `description_ads_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `product_detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `p_new` int(11) NOT NULL,
  `p_bestsell` int(11) NOT NULL,
  `p_encourage` int(11) NOT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `recycle_bin` int(11) NOT NULL,
  `species` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '00:null, 01: cho, 10:meo',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_detail_tacdung` longtext COLLATE utf8_unicode_ci,
  `product_detail_phuhopcho` longtext COLLATE utf8_unicode_ci,
  `product_detail_nguyenlieu_thanhphan` longtext COLLATE utf8_unicode_ci,
  `product_detail_phantichdambao` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdansudung` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdanbaoquan` longtext COLLATE utf8_unicode_ci,
  `product_detail_luuy` longtext COLLATE utf8_unicode_ci,
  `product_detail_khuyenkhich` longtext COLLATE utf8_unicode_ci,
  `product_detail_donggoi_thetich` longtext COLLATE utf8_unicode_ci,
  `product_detail_nhasanxuat` longtext COLLATE utf8_unicode_ci,
  `product_detail_xuatxu` longtext COLLATE utf8_unicode_ci,
  `upgrade_categories_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_tours`
--

INSERT INTO `products_tours` (`products_id`, `keywords`, `description`, `products_key`, `products_name`, `products_image`, `products_image_first`, `products_image_second`, `products_image_third`, `products_image_fourth`, `view_count`, `products_price`, `product_encourage`, `price_unit`, `manufacturer`, `manufacturer_link`, `origin`, `p_type`, `p_unit`, `p_attribute`, `p_color`, `products_date_added`, `modified_date`, `products_status`, `products_ordered`, `products_description`, `description_ads_vi`, `product_detail`, `categories_id`, `p_new`, `p_bestsell`, `p_encourage`, `language`, `username`, `sort_order`, `recycle_bin`, `species`, `status`, `product_detail_tacdung`, `product_detail_phuhopcho`, `product_detail_nguyenlieu_thanhphan`, `product_detail_phantichdambao`, `product_detail_huongdansudung`, `product_detail_huongdanbaoquan`, `product_detail_luuy`, `product_detail_khuyenkhich`, `product_detail_donggoi_thetich`, `product_detail_nhasanxuat`, `product_detail_xuatxu`, `upgrade_categories_id`) VALUES
(2, '', '', 'tour-binh-ba-3-ngay-2-dem-2', 'Tour Bình Ba 3 Ngày 2 Đêm', 'p-tour-binh-ba-3-ngay-2-dem-2.jpg', 'p-tour-binh-ba-3-ngay-2-dem-2-01.jpg', 'p-tour-binh-ba-3-ngay-2-dem-2-02.jpg', 'p-tour-binh-ba-3-ngay-2-dem-2-03.jpg', 'p-tour-binh-ba-3-ngay-2-dem-2-04.jpg', 0, '1.980.000', '', 'VND', '', '', '', '', '', '', '', 1433696119, 1446910305, 1, 0, 0x4475206b68c3a163682073e1babd20c491c6b0e1bba363207472e1baa369206e676869e1bb876d207472e1bb8d6e2076e1bab96e206261206e67c3a07920767569206368c6a1692074e1baa1692042c3ac6e682042612078696e6820c491e1bab9702e2043616e6f20c491c6b061206b68c3a1636820c49169206ce1bab76e206e67e1baaf6d2073616e2068c3b42074e1baa1692062c3a369204e68c3a02043c5a92c2062c3a3692074e1baaf6d20c491e1bab970206e68e1baa5742074e1baa1692042c3ac6e682042612076e1bb9b6920c491612064e1baa16e67206368e1bba76e67206c6fe1baa1692073616e2068c3b42063c3b96e67206e68e1bbaf6e6720c491c3a06e2063c3a12074756e672074c4836e672062c6a169206ce1bb99692e204b68c3a16368207468616d207175616e2063c3b26e20c491c6b0e1bba363206e67e1baaf6d2076e1babb20c491e1bab9702063e1bba76120546869c3aa6e205468e1bba7792076c3a02074e1baad6e2068c6b0e1bb9f6e672062c3a369206269e1bb836e2074726f6e672078616e682e, '', '<p style=\"text-align: justify;\"><font face=\"Arial\" color=\"#1e90ff\" size=\"3\"><b>Ngày 1: Cảng Ba Ngòi – Bình Ba</b></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p style=\"text-align: justify;\">\r\n	<font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 7h00: </font></b>Đón khách tại cảng Ba Ngòi, cano cao tốc đưa khách sang đảo.</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; box-sizing: border-box; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_21.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"450\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Tự do tắm biển tại bãi Nồm (khách sạn nằm ngay bãi tắm).\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; box-sizing: border-box; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_6.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"500\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 11h30:</font></b> Ăn trưa trên bè. Sau đó di chuyển về khách sạn nghỉ ngơi. Thực đơn</font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>1.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Tả pí lù cá bớp<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				2.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cá chiên xoài bằm<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				3.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mực hấp<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				4.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Ốc hấp<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				5.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Trứng chiên<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				6.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cá kho tộ<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				7.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Canh chua cá bớp<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				8.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cơm trắng, rau sống<br />\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				9.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Trà đá, trái cây</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<div style=\"text-align: center;\"><font size=\"2\" face=\"Arial\">\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"http://saigon-binhba.com/upload/dao_binh_ba_22.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"350\" border=\"0\" /></font></div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<div style=\"text-align: center;\"><font size=\"2\" face=\"Arial\"><br />\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			</font></div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 15h00: </font></b>Tham quan 1 vòng đảo bằng xe điện, ngắm toàn bộ cảnh biển vịnh\r\nCam Ranh, chiêm ngưỡng đảo Rùa từ trên cao, tham quan bốt cửa bãi Nhà Cũ. Từ\r\nphía xa có thể thấy được những lô cốt, di tích từ thế kỉ 19. \r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"font-family: Arial; font-size: small;\">Sau đó khách về tắm biển tự do.</span></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; box-sizing: border-box; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_23.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"500\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 18h00:</font></b> Ăn buffet hải sản tại bãi Nồm</font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Thực đơn:</b>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n\r\n\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>1.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Tôm hùm nướng hoặc hấp (mỗi người nguyên con 250gr).</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>2.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Sò dương nướng mỡ hành</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>3.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Sò láng hấp sả ớt</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>4.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Ốc hương xào sả ớt</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>5.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mực lá nướng mọi</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>6.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Ghẹ hấp</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>7.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cháo hàu sữa (hoặc cháo cá bớp)</i></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"box-sizing: border-box; text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><i>8.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Trái cây</i></font></p></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div><font size=\"2\" face=\"Arial\" style=\"text-align: justify;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<div style=\"text-align: center;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"http://saigon-binhba.com/upload/dao_binh_ba_24.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\" /></div></font></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div><font size=\"2\" face=\"Arial\"><br />\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<div style=\"text-align: center;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"http://saigon-binhba.com/upload/dao_binh_ba_25.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\" /></div></font>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<div style=\"text-align: left;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\"><font face=\"Arial\" color=\"#1e90ff\" size=\"3\"><b>Ngày 2:</b></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-family: Arial;\"><font size=\"2\"><b><font color=\"#ff6347\">- 7h00:</font></b> Ăn bữa sáng tự do trong chợ, tiền ăn sáng bao gồm trong tour.</font></span></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"> \r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_20.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_3.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><b><font color=\"#ff6347\">- 9h00: </font></b>Đoàn tập trung tại cảng tàu, cano đưa khách đi tham quan bãi Rùa, lặn ngắm san hô tại\r\nbãi Nhà Cũ, bãi tắm đẹp nhất tại Bình Ba với đa dạng chủng loại san hô cùng những\r\nđàn cá tung tăng bơi lội.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p></div></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>\r\n	</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div style=\"text-align: center;\">\r\n		\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/dao_binh_ba_27.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\" style=\"font-family: Arial; font-size: small;\" /></div>\r\n	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div style=\"text-align: center;\"><br />\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n		</div><font face=\"Arial\" size=\"2\">\r\n		\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<div style=\"text-align: center;\">\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_28.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></div></font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> </p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<div style=\"text-align: start;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><b><font color=\"#ff6347\">- 11h30:</font></b> Ăn trưa tại bè. Sau đó di chuyển về khách sạn, nghỉ trưa.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_30.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"600\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\"><b><font color=\"#ff6347\">- 15h00: </font></b>Tham quan Thiên Thủy và tắm biển tự do\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_31.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"550\" border=\"0\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"text-indent: -0.25in;\"><font face=\"Arial\" size=\"2\"><b><font color=\"#ff6347\">- 18h00:</font></b> Ăn buffet hải sản.</font></span></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_32.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"800\" border=\"0\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_33.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"450\" border=\"0\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\"><b><font size=\"3\" color=\"#1e90ff\">Ngày 3: </font></b>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<font size=\"2\">\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					<o:p></o:p></font></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom: 10pt;\">\r\n\r\n</p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 4h30:</font></b> Đoàn dậy sớm, khởi hành đi ngắm bình minh tại bãi Chướng bằng xe\r\nđiện. Bình Ba là một trong một vài nơi được mệnh danh là nơi đón bình minh sớm\r\nnhất Việt Nam.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: center; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_34.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 6h00:</font></b> Tham quan khu di tích lịch sử Hòn Cò, tham quan bệ đỡ súng thần\r\ncông…\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<img src=\"/upload/dao_binh_ba_35.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\" /></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"text-indent: -0.25in;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 8h00: </font></b>Ăn sáng. Tắm biển tự do. Tự do mua sắm.\r\nTrả phòng trước 12h00. </font></span>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">Đoàn di chuyển ra cảng để đưa khách quay trở lại cảng\r\nBa Ngòi.</span></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font face=\"Arial\" color=\"#ff1493\" size=\"3\"><b>Chia\r\ntay quý khách. Chào tạm biệt. Hẹn gặp lại.</b></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Giá vé trên bao gồm: </b>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Chi phí vận chuyển cảng Ba Ngòi – cảng Bình Ba – cảng Ba Ngòi.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Cano tham quan, xe điện, xe máy.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Chi phí ở tại khách sạn 2 sao, tiêu chuẩn 2 người/phòng\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Ăn uống: 02 bữa sáng + 02 bữa tối + 2 bữa trưa\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Hướng dẫn viên địa phương.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Giá vé không bao gồm: </b>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Chi phí cá nhân và ăn uống riêng.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Giá vé cho trẻ em:</b>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Dưới 5 tuổi: miễn phí\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Từ 5-12 tuổi: 50% giá vé\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Trên 12 tuổi: 100% giá vé\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">Quy định: đặt cọc 50% tổng giá trị tour đối với khách đoàn.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Lưu ý:</b>\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Lịch trình tour có thể thay đổi tùy hoàn cảnh thực tế hoặc mong muốn của khách. Tuy nhiên, các điểm tham quan thì không thay đổi.</font></p>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-family: Arial; font-size: small;\">- Quý khách lưu ý mang đầy đủ CMND.</span></p></div></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div> </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div> </div>', 355, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',355,'),
(5, '', '', 'tour-binh-ba-trong-ngay-5', 'Tour Bình Ba Trong Ngày', 'p-tour-cano-5.jpg', 'p-tour-binh-ba-trong-ngay-5-01.jpg', 'p-tour-binh-ba-trong-ngay-5-02.jpg', 'p-tour-binh-ba-trong-ngay-5-03.jpg', 'p-tour-binh-ba-trong-ngay-5-04.jpg', 0, '500.000', '', 'VND', '', '', '', '', '', '', '', 1433771846, 1466007220, 1, 0, 0x4b68c3a16368207468616d207175616e206de1bb99742076c3b26e67206368e1bba32c2064c3b96e672063c3a163206dc3b36e20c4836e20c491e1bb8b61207068c6b0c6a16e6720c491e1bab7632073e1baa36e2063e1bba76120c491e1baa36f206e68c6b02062c3a16e682063c4836e2c2062c3a16e682078c3a86f2c2062c3ba6e2063c3a12e2e2e20c4826e2073c3a16e6720786f6e672c206b68c3a163682064692063687579e1bb836e20c491e1babf6e2062e1babf6e2063616e6f2c2063616e6f20c491c6b061206b68c3a16320c49169206ce1bab76e206e67e1baaf6d2073616e2068c3b420e1bb9f2062c3a369204e68c3a02043c5a92c206de1bb99742074726f6e67206e68e1bbaf6e672062c3a3692074e1baaf6d20c491e1bab9702076c3a020686f616e672073c6a1206e68e1baa5742042c3ac6e682042612e, '', '<p>\r\n	\r\n	\r\n	\r\n	</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">\r\n	<font face=\"Arial\" size=\"2\"><b><font color=\"#ff4500\">- 7h00:</font></b> Đón khách tại cảng Ba\r\nNgòi, cano cao tốc chở khách đến đảo Bình Ba.</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_1.jpg\" alt=\"saigonbinhba\" align=\"absMiddle\" width=\"600\" height=\"400\" border=\"0\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">- Khách tham quan một vòng chợ,\r\ndùng các món ăn địa phương đặc sản của đảo như bánh căn, bánh xèo, bún cá… \r\n	\r\n	\r\n		\r\n		(tiền ăn sáng mỗi người 30.000, bao gồm trong tour).</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_2.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"370\" border=\"0\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_3.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">- Ăn sáng xong, khách di chuyển đến bến cano, cano đưa khác đi\r\nlặn ngắm san hô ở bãi Nhà Cũ, \r\n	\r\n	\r\n		\r\n		một trong những bãi tắm đẹp và hoang sơ nhất Bình\r\nBa cùng những rặng san hô tuyệt đẹp và vô số loài cá khác nhau.</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_4.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">- Lặn biển xong, cano đưa khách dùng bữa trưa trên bè. \r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<o:p></o:p></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">- Thực đơn: </font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>1.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Gỏi cá mai cuốn bánh tráng</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>2.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cá sốt cà</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>3.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mực lá hấp gừng</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>4.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Tả pí lù</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>5.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Trứng chiên</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>6.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Canh chua cá bớp</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>7.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cơm trắng, rau sống</i></font></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><i><font face=\"Arial\" size=\"2\"></font></i></p>\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><i>8.\r\n		\r\n		\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Trà đá, trái cây</i></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_5.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\">- Sau khi dùng bữa, khách di\r\nchuyển đến tắm biển tại bãi Nồm.\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<o:p></o:p></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_6.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"500\" border=\"0\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><font color=\"#ff6347\"><b>- 15h00:</b></font> Khách tham quan một\r\nvòng đảo bằng xe điện. Xe đưa quý khách ngắm toàn bộ cảnh biển vịnh Cam Ranh, \r\n	\r\n	\r\n		\r\n		đảo con Rùa từ trên cao (hòn đảo với hình dáng như một chú rùa), tham quan đồi\r\ncửa Bất. \r\n	\r\n	\r\n		\r\n		Từ phía xa có thể thấy tháp lô cốt của người Pháp xây dựng từ cuối thế\r\nkỷ 19 mà người dân nơi đây quen gọi là Lầu Ông Hoàng 2, \r\n	\r\n	\r\n		\r\n		tham quan những ngôi\r\nchùa độc đáo trên đảo, tham quan bãi Chướng…</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_7.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" />\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_8.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"450\" border=\"0\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Arial\" size=\"2\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_9.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"300\" border=\"0\" /></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><font face=\"Arial\" size=\"2\"><font color=\"#ff6347\"><b>- 16h00:</b></font> Cano đưa khách trở về\r\ncảng Ba Ngòi.\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<o:p></o:p></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><font face=\"Arial\" color=\"#ff69b4\" size=\"3\"><b>Chia tay quý khách. Chào tạm biệt. Hẹn gặp lại.</b></font></p>', 355, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',355,');
INSERT INTO `products_tours` (`products_id`, `keywords`, `description`, `products_key`, `products_name`, `products_image`, `products_image_first`, `products_image_second`, `products_image_third`, `products_image_fourth`, `view_count`, `products_price`, `product_encourage`, `price_unit`, `manufacturer`, `manufacturer_link`, `origin`, `p_type`, `p_unit`, `p_attribute`, `p_color`, `products_date_added`, `modified_date`, `products_status`, `products_ordered`, `products_description`, `description_ads_vi`, `product_detail`, `categories_id`, `p_new`, `p_bestsell`, `p_encourage`, `language`, `username`, `sort_order`, `recycle_bin`, `species`, `status`, `product_detail_tacdung`, `product_detail_phuhopcho`, `product_detail_nguyenlieu_thanhphan`, `product_detail_phantichdambao`, `product_detail_huongdansudung`, `product_detail_huongdanbaoquan`, `product_detail_luuy`, `product_detail_khuyenkhich`, `product_detail_donggoi_thetich`, `product_detail_nhasanxuat`, `product_detail_xuatxu`, `upgrade_categories_id`) VALUES
(4, '', '', 'tour-binh-ba-2-ngay-1-dem-4', 'Tour Bình Ba 2 Ngày 1 Đêm', 'p-tour-binh-ba-2-ngay-1-dem-4.jpg', 'p-tour-binh-ba-2-ngay-1-dem-4-01.jpg', 'p-tour-binh-ba-2-ngay-1-dem-4-02.jpg', 'p-tour-binh-ba-2-ngay-1-dem-4-03.jpg', 'p-tour-binh-ba-2-ngay-1-dem-4-04.jpg', 0, '1.250.000', '', 'VND', '', '', '', '', '', '', '', 1433771081, 1466007044, 1, 0, 0xc4906fc3a06e207468616d207175616e206de1bb99742076c3b26e6720c491e1baa36f2062e1bab16e6720786520c49169e1bb876e2c20786520c491c6b061207175c3bd206b68c3a16368206e67e1baaf6d20746fc3a06e2062e1bb992063e1baa36e68206269e1bb836e2076e1bb8b6e682043616d2052616e682c20c491e1baa36f20636f6e2052c3b9612074e1bbab207472c3aa6e2063616f202868c3b26e20c491e1baa36f2076e1bb9b692068c3ac6e682064c3a16e67206e68c6b0206de1bb9974206368c3ba2072c3b961292c207468616d207175616e20c491e1bb93692063e1bbad612042e1baa5742e2054e1bbab207068c3ad612078612063c3b3207468e1bb83207468e1baa579207468c3a170206cc3b42063e1bb91742063e1bba761206e67c6b0e1bb9d69205068c3a1702078c3a2792064e1bbb16e672074e1bbab206375e1bb9169207468e1babf206be1bbb72031392c206e67c6b0e1bb9d692064c3a26e206ec6a16920c491c3a2792067e1bb8d69206cc3a0204ce1baa77520c3946e6720486fc3a06e6720322e, '', '<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"3\" color=\"#1e90ff\"><b>Ngày\r\n1: Cảng Ba Ngòi – Bình Ba</b></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 10pt;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 7h00:</font></b> Cano đón khách tại cảng Ba Ngòi. \r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	Sau khi đến đảo, khách nhận phòng tại khách sạn\r\nSài Gòn – Bình Ba.</font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin-bottom: 10pt;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"800\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Tự do tắm biển tại bãi Nồm (khách sạn nằm ngay bãi tắm).\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<o:p></o:p></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/dao_binh_ba_6.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"500\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 12h00:</font></b> Ăn trưa trên bè. Sau đó khách về phòng nghỉ ngơi. </font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><b style=\"font-family: Arial; font-size: small;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Thực đơn:</b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>1. </i><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">      Gỏi cá mai</i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>2.\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: normal; font-style: normal; font-stretch: normal;\">      </span>\r\n		<span style=\"font-stretch: normal; line-height: 14.95px;\">Mực lá hấp gừng</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\" size=\"2\" style=\"text-indent: -0.25in;\"><i>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n			<span class=\"Apple-tab-span\" style=\"line-height: 115%; white-space: pre;\">	</span>\r\n			<span style=\"line-height: 115%;\">3.\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				</span>\r\n			<span style=\"line-height: normal; font-style: normal; font-stretch: normal;\">      </span>\r\n			<span style=\"font-stretch: normal; line-height: 14.95px;\">Tả pí lù cá bớp</span></i></font></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>5.\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: normal; font-style: normal; font-stretch: normal;\">      </span>\r\n		<span style=\"font-stretch: normal; line-height: 14.95px;\">Cá thu sốt cà</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>6.\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: normal; font-style: normal; font-stretch: normal;\">      </span>\r\n		<span style=\"font-stretch: normal; line-height: 14.95px;\">Trứng chiên</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: 115%;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>7.\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-style: normal; font-stretch: normal; line-height: normal;\">     </span>\r\n			<span style=\"font-stretch: normal; line-height: normal;\"> Lẩu</span></span></i><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		<span style=\"line-height: 115%;\"> chua cá bớp</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: 115%;\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>8.\r\n				\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-style: normal; font-stretch: normal; line-height: normal;\">     \r\n</span></span></i>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		</span>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		</span><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: 115%;\">Cơm\r\ntrắng, rau sống</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in; line-height: 115%;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>9.\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"font-stretch: normal; line-height: normal;\">      </span></span>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		</span>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n		</span><i style=\"font-family: Arial; font-size: small; text-indent: -0.25in;\">\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: 115%;\">Trà đá, trái cây</span></i></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<font size=\"2\" face=\"Arial\">\r\n		\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p style=\"text-align: center;\">\r\n			\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_11.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"700\" border=\"0\" /></p></font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> </p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> </p>\r\n\r\n\r\n\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p style=\"text-align: center;\"><font size=\"2\" face=\"Arial\">Xem con nhum to chưa\r\nnè:D</font></p><font size=\"2\" face=\"Arial\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</font>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin: 0in 0in 10pt 4.5pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 14h00:</font> </b>Khách di chuyển ra bến xe điện. Đoàn\r\ntham quan 1 vòng đảo bằng xe điện, xe đưa quý khách ngắm toàn bộ cảnh biển vịnh Cam Ranh, đảo\r\ncon Rùa từ trên cao (hòn đảo với hình dáng như một chú rùa), tham quan đồi cửa\r\nBất. Từ phía xa có thể thấy tháp lô cốt của người Pháp xây dựng từ cuối thế kỷ\r\n19 mà người dân nơi đây quen gọi là Lầu Ông Hoàng 2, tham quan những ngôi chùa\r\nđộc đáo trên đảo như: Tịnh Thất Ngọc Gia Hương hay Điện Đạ Tạng. </font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin: 0in 0in 10pt 4.5pt;\">\r\n		\r\n		\r\n		\r\n		\r\n		<font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_12.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"300\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\">Xe điện\r\nđưa khách về bến. Khách di chuyển về khách sạn nghỉ ngơi, tắm biển tự do.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 18h00:\r\n</font></b>Dùng tiệc buffet BBQ tại Bãi Nồm.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpLast\" style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\"><b>Thực\r\nđơn:\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			</b>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>1.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Ốc hương xào sả ớt</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>2.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Sò dương nướng mỡ hành</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>3.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Hàu nướng phô mai</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>4.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Tôm hùm nướng hoặc hấp</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>5.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mực lá nướng mọi</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>6.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cá dò nướng giấy bạc</i></p>\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>7.\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Nhum nướng mỡ hành</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>8.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Cháo hải sản</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><i>9.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Trái cây tráng miệng + nước uống</i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/Suong_mieng_voi_cac_mon_oc_7.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"350\" /></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/tour-kham-pha-dao-binh-ba (15).jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"450\" /></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: center;\"><i><font size=\"2\" face=\"Arial\">\r\n			\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<span times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:=\"\" calibri;mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:=\"\" ar-sa\"=\"\">Tôm hùm tươi ngon, còn sống, nướng tại chỗ, mỗi người 1 con 250gr nhé!</span></font></i></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		<font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_16.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"750\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: center;\">\r\n		\r\n		\r\n		\r\n		\r\n		<font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_13.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 10pt;\"><font face=\"Arial\"><b><font size=\"3\" color=\"#1e90ff\">Ngày\r\n2: Bình Ba – cảng Ba Ngòi</font></b>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<font size=\"2\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></font></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 4h30:</font></b>\r\ndậy sớm khởi hành đi ngắm bình minh tại bãi Chướng. Bình Ba là một trong những\r\nnơi ngắm bình minh sớm nhất. Sau đó tham quan khu di tích Hòn Cò, bệ đỡ súng thần\r\ncông…\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_17.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"350\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_18.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"200\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_19.jpg\" alt=\"saigonbinhba\" align=\"\" width=\"600\" height=\"500\" border=\"0\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b dir=\"ltr\"><font color=\"#ff6347\">- 7h00:</font></b> Ăn sáng tại khu chợ với các món ăn địa phương trứ danh như: bánh\r\ncăn, bánh xèo, bún cá…\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_20.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b><font color=\"#ff6347\">- 8h30:</font></b> Khách tự di chuyển đến bến cano,\r\ncano đưa khác đi tham quan đảo Rùa, lặn ngắm san hô ở bãi Nhà Cũ, một trong những bãi tắm đẹp và\r\nhoang sơ nhất Bình Ba cùng những rặng san hô tuyệt đẹp và vô số loài cá khác\r\nnhau.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: center; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<img src=\"/upload/dao_binh_ba_4.jpg\" alt=\"saigonbinhba\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">Tự do mua sắm. Tự do tắm biển. Trả phòng trước 12h00. Đoàn di chuyển ra cảng, đi cano về lại cảng Ba Ngòi. </font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"margin-bottom:10.0pt;mso-add-space:auto; line-height:115%\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span style=\"line-height: 115%;\"><font size=\"3\" face=\"Arial\" color=\"#ff1493\"><b>Chia tay quý khách. Chào tạm biệt. Hẹn gặp lại.</b></font>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<span style=\"font-size: 14pt;\">\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				<o:p></o:p></span></span></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\"><b>Giá\r\nvé bao gồm: </b>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Chi phí vận chuyển cảng Ba Ngòi – cảng Bình Ba – cảng Ba Ngòi (bằng\r\ncano).\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Cano cao tốc tham quan, xe điện.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Chi phí ở tại khách sạn, tiêu chuẩn 2 sao, 2 người/phòng.\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<o:p></o:p></font></p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpFirst\" style=\"text-align: left; margin-bottom: 10pt;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<p class=\"MsoNormalCxSpMiddle\" style=\"text-align: justify; margin-bottom: 10pt;\"><font size=\"2\" face=\"Arial\">- Ăn uống: 1 bữa sáng + 1 bữa tối + 1 bữa trưa</font></p></div>', 353, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',353,');
INSERT INTO `products_tours` (`products_id`, `keywords`, `description`, `products_key`, `products_name`, `products_image`, `products_image_first`, `products_image_second`, `products_image_third`, `products_image_fourth`, `view_count`, `products_price`, `product_encourage`, `price_unit`, `manufacturer`, `manufacturer_link`, `origin`, `p_type`, `p_unit`, `p_attribute`, `p_color`, `products_date_added`, `modified_date`, `products_status`, `products_ordered`, `products_description`, `description_ads_vi`, `product_detail`, `categories_id`, `p_new`, `p_bestsell`, `p_encourage`, `language`, `username`, `sort_order`, `recycle_bin`, `species`, `status`, `product_detail_tacdung`, `product_detail_phuhopcho`, `product_detail_nguyenlieu_thanhphan`, `product_detail_phantichdambao`, `product_detail_huongdansudung`, `product_detail_huongdanbaoquan`, `product_detail_luuy`, `product_detail_khuyenkhich`, `product_detail_donggoi_thetich`, `product_detail_nhasanxuat`, `product_detail_xuatxu`, `upgrade_categories_id`) VALUES
(7, '', '', 'tour-binh-ba-va-binh-hung-2-ngay-1-dem-7', 'Tour Bình Ba và Bình Hưng 2 ngày 1 đêm', 'p-tour-binh-ba-va-binh-hung-sieu-tiet-kiem-7.jpg', 'p-tour-binh-ba-va-binh-hung-sieu-tiet-kiem-7-01.jpg', 'p-tour-binh-ba-va-binh-hung-sieu-tiet-kiem-7-02.jpg', 'p-tour-binh-ba-va-binh-hung-sieu-tiet-kiem-7-03.jpg', 'p-tour-binh-ba-va-binh-hung-2-ngay-1-dem-7-04.jpg', 0, '1.450.000', '', 'VND', '', '', '', '', '', '', '', 1456903170, 1457456514, 1, 0, 0x5175c3bd206b68c3a163682073e1babd20c491c6b0e1bba363207472e1baa369206e676869e1bb876d20746f757220c49169203220c491e1baa36f2042c3ac6e6820426120e280932042c3ac6e682048c6b06e672074726f6e672076c3b26e20672032206e67c3a079203120c491c3aa6d2076e1bb9b69206de1bba963206769c3a12063e1bbb163207068e1baa369206368c4836e673a20312e3435302e30303020c4912e, '', '<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Sài Gòn – Bình Ba xin\r\ngiới thiệu thêm một lịch trình tour vô cùng hấp dẫn và vô cùng tiết kiệm. Quý\r\nkhách sẽ được trải nghiệm tour đi 2 đảo Bình Ba – Bình Hưng trong vòng 2 ngày 1\r\nđêm với mức giá cực phải chăng: 1.450.000 đ. Lịch trình của Tour Bình Ba – Bình\r\nHưng như thế nào, chúng ta hãy cùng tìm hiểu nhé.\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n			\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font size=\"3\"><b>Ngày 1: Cảng Bình Hưng – Bình Ba\r\n				\r\n			\r\n			\r\n			\r\n			</b></font>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>5h30 –\r\n7h00 sáng</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	- Đón khách tại cảng Bình Hưng.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/daoBinhHung.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">Toàn cảnh Bình Hưng nhìn từ trên cao</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">- </span>\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Tàu đưa khách lên bè dùng bữa sáng (nhà\r\nbè lớn nhất tại Bình Hưng).</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/beBinhHung.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:calibri;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Khách dùng bữa tại nhà bè Bình Hưng quán</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	- Sau khi ăn sáng xong, tàu đưa khách đến\r\nbãi Cây Me và bãi Kinh, quý khách tự do tắm biển nơi đây.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/baitam.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Bãi tắm vô cùng trong xanh</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">- Trên đường tàu di chuyển 30 phút, du\r\nkhách có thể ngắm nhìn toàn cảnh biển đảo và cuộc sống của ngư dân nơi đây.\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n	<b>\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">11h00\r\ntrưa: </span>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	</b>\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">Du khách quay về nhà bè, tắm lại nước ngọt\r\nngay trên bè.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	<b>\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">12h00\r\ntrưa</span>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	</b>\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>: </b>Ăn\r\ntrưa</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Thực\r\nđơn:</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">1. Cá\r\nchiên xù</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">2. Mực\r\nxào chua ngọt</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">3. Cá\r\nbớp kho tộ</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">4. Trứng\r\nchiên</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">5. Rau\r\nxào</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">6. Lẩu\r\nchua cá bớp</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">7. Cơm\r\ntrắng, rau sống</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">8. Trà\r\nđá, trái cây</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>13h00\r\nchiều</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Dùng bữa trưa xong khách nghỉ ngơi tại\r\nbè, tham quan quy trình nuôi tôm hùm tại đây.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/nuoitomhum.JPG\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>14h00\r\nchiều</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Cano chở khách quay lại đảo Bình Ba.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Trên đường di chuyển, quý khách tha hồ\r\nchiêm ngưỡng những bãi biển hoang sơ đẹp nhất vịnh Cam Ranh như bãi Rùa, bãi\r\nChà Là, bãi Bồ Đề...</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/viewdepduongve.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	Các bãi tắm đẹp trên đường quay về đảo Bình Ba</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<b>\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">14h30\r\nchiều</span></b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";mso-bidi-font-family:=\"\" \"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">Đã tới đảo Bình Ba, quý khách\r\nnhận phòng và nghỉ ngơi tại khách sạn Sài Gòn – Bình Ba, khách sạn nằm ngay tại\r\ntrung tâm bãi Nồm, tiêu chuẩn 2 sao, 2 người/phòng.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";mso-bidi-font-family:=\"\" \"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<img src=\"/upload/dao_binh_ba_10.jpg\" alt=\"\" align=\"\" width=\"500\" height=\"600\" border=\"0\" /></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Khách tự do tắm biển</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<b>\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">18h00 tối</span>\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		</b>\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>: Dùng\r\ntiệc BBQ nướng tại bãi biển và tiết mục hát Karaoke.\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			</b>\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Thực\r\nđơn:</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">1. Ốc\r\nhương xào sả ớt</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">2. Mực\r\nlá nướng mọi</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">3. Hàu\r\nnướng phô mai</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">4. Tôm\r\nhùm nướng bơ tỏi hoặc hấp (1 con 200g/người)</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">5. Cá\r\ndò nướng giấy bạc</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">6. Sò\r\ndương nướng mỡ hành</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">7. Ốc\r\nnhảy hấp</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">8. Cháo\r\nnhum</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">9. Trái\r\ncây tráng miệng</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/tom-hum-binh-ba-nha-trang.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Tôm hùm Bình Ba vô cùng ngon miệng</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Chúc quý khách ngon miệng\r\nvà có những giây phút vui vẻ cùng âm nhạc!\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n			\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><b><font size=\"3\">Ngày 2: Bình Ba – cảng Ba Ngòi\r\n				\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					\r\n					</font></b>\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<b>\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">4h30\r\nsáng</span>\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">: </span> </b></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b></b>\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Khởi hành đi ngắm bình minh tại bãi Chướng.\r\nBình Ba là một trong những nơi ngắm bình minh sớm nhất tại nước ta.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<b>\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">7h00\r\nsáng</span>\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">:</span></b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Quay về ăn sáng tại khách sạn.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Xe đưa quý khách ngắm toàn bộ cảnh biển\r\nvịnh Cam Ranh, đảo con Rùa (hòn đảo với hình dáng như một chú rùa), bãi Nhà Cũ\r\ntừ trên cao xuống, tham quan bốt cửa, bãi Chướng, khu di tích Hòn Cò.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/binhba.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">Hòn Rùa nhìn từ trên cao</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">Sau đó đoàn di chuyển đến bãi Nhà Cũ để\r\nđi thúng và lặn ngắm san hô, hòa mình vào với thiên nhiên, chiêm ngưỡng những rặng\r\nsan hô tuyệt đẹp với hàng ngàn đàn cá xung quanh.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/bainhaCu.jpg\" alt=\"\" align=\"\" width=\"600\" height=\"400\" border=\"0\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		Bãi nhà Cũ đẹp thơ mộng</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<b>\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">11h00\r\ntrưa</span>\r\n	\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		</b>\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><b>: ăn\r\ntrưa tại bè.\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			</b>\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Thực\r\nđơn:</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">1. Gỏi\r\ncá mai</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">2. Cá\r\nchiên xoài bằm (hoặc cá sốt cà)</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">3. Cá\r\nbớp nướng muối ớt</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">4. Tả\r\npí lù</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">5. Canh\r\nchua cá rạng</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">6. Cơm\r\ntrắng, rau sống</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">7. Trà\r\nđá, trái cây</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: center;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<img src=\"/upload/ta-bi-lu-Cam-Ranh.jpg\" alt=\"\" align=\"\" border=\"0px\" width=\"600\" height=\"400\" /></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		Đặc sản \"tả bí lù\"</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Tự do mua sắm tại chợ địa phương. Trả\r\nphòng trước 12h00.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Đoàn di chuyển ra cảng, đi cano về lại cảng\r\nBa Ngòi.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Chia tay quý khách. Chào tạm biệt. Hẹn gặp\r\nlại.</span> </p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 0in;\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><b><font size=\"3\" color=\"#ff1493\">Giá tour: 1.450.000/người\r\n		\r\n			\r\n			\r\n			</font></b>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		<o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><b>Giá vé đã bao gồm những\r\nưu đãi sau:</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- </span>\r\n	<span style=\"text-indent: -0.25in;\">Chi phí di chuyển : bằng cano, xe điện, sử\r\ndụng xe máy</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Chi phí ở tại khách sạn tiêu chuẩn 2\r\nsao, 2 người/phòng.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span style=\"text-indent: -0.25in;\">- Ăn uống: 2 bữa sáng + 2 bữa trưa + 1 bữa\r\ntối.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\">\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	<span times=\"\" new=\"\" roman\",\"serif\"\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n		\r\n		<span times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:calibri;mso-fareast-theme-font:minor-latin;mso-bidi-theme-font:=\"\" minor-bidi;mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:=\"\" ar-sa\"=\"\">Mọi chi tiết về chuyến du lịch đến đảo Sài Gòn - Bình Ba, cũng như khách\r\nsạn ở đây, bạn có thể liên hệ với anh <font size=\"3\"><b>Thông (0905 56 53 11) </b></font>hoặc<b><font size=\"3\"> anh Trung\r\n(0945 46 79 68) </font></b>và xem thông tin chi tiết qua website:\r\n<a href=\"http://saigon-binhba.com/\" target=\"_self\"><font color=\"#ff1493\">http://saigon-binhba.com</font></a></span></span></p>', 357, 0, 0, 0, 'vi', '', 0, 0, '00', 'Co Hang', '', '', '', '', '', '', '', '', '', '', '', ',357,');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `idproduct_category` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`idproduct_category`, `product_id`, `category_id`, `status`) VALUES
(179, 1046, 339, '1'),
(180, 1013, 339, '1'),
(181, 1012, 339, '1'),
(182, 1011, 339, '1'),
(186, 1047, 340, '1'),
(196, 1048, 340, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category_tours`
--

CREATE TABLE `product_category_tours` (
  `idproduct_category` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_category_tours`
--

INSERT INTO `product_category_tours` (`idproduct_category`, `product_id`, `category_id`, `status`) VALUES
(158, 2, 355, '1'),
(187, 7, 357, '1'),
(188, 4, 353, '1'),
(189, 5, 355, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate_product`
--

CREATE TABLE `rate_product` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `rate` float NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rate_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rate_product`
--

INSERT INTO `rate_product` (`id`, `product_id`, `rate`, `user`, `rate_date`) VALUES
(157, 0, 0, '', 1435097360),
(158, 0, 0, '', 1435747503),
(159, 0, 0, '', 1439614105),
(160, 0, 0, '', 1439649183),
(161, 0, 0, '', 1441065298),
(162, 0, 0, '', 1442141842),
(163, 0, 0, '', 1442860142),
(164, 0, 0, '', 1444745586),
(165, 0, 0, '', 1446908303),
(166, 0, 0, '', 1450386920),
(167, 0, 0, '', 1451839732),
(168, 0, 0, '', 1456562338),
(169, 0, 0, '', 1456907697),
(170, 0, 0, '', 1458351385),
(171, 0, 0, '', 1464113669),
(172, 0, 0, '', 1465127271),
(173, 0, 0, '', 1469040881),
(174, 0, 0, '', 1470840705),
(175, 0, 0, '', 1472430690),
(176, 0, 0, '', 1490407851),
(177, 0, 0, '', 1490447419),
(178, 0, 0, '', 1490617985),
(179, 0, 0, '', 1490943188),
(180, 0, 0, '', 1491165106),
(181, 0, 0, '', 1492084965);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `records`
--

CREATE TABLE `records` (
  `recordID` int(11) NOT NULL,
  `recordText` varchar(255) DEFAULT NULL,
  `recordListingID` int(11) DEFAULT NULL,
  `img_galary_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `relation_news_product`
--

CREATE TABLE `relation_news_product` (
  `id_news_product` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scores`
--

CREATE TABLE `scores` (
  `id` int(10) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(10) NOT NULL,
  `honors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee4Ever` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `scorelevel` int(10) DEFAULT '0',
  `scoreaward` int(10) DEFAULT NULL,
  `scorebirthday` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support`
--

CREATE TABLE `support` (
  `providers_id` int(11) NOT NULL,
  `providers_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_im` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_status` tinyint(3) DEFAULT '1',
  `providers_order` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `providers_skype` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact_list`
--

CREATE TABLE `tbl_contact_list` (
  `id` int(11) NOT NULL,
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_favorite`
--

CREATE TABLE `tbl_favorite` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_favorite`
--

INSERT INTO `tbl_favorite` (`id`, `email`, `product_key`, `product_name`, `product_type`, `product_color`, `product_price`, `product_quantity`, `status`) VALUES
(207, '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_history_score`
--

CREATE TABLE `tbl_history_score` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `action_date` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `custommer_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_addtress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_phone` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_fax` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_comment` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `order_date` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `custommer_name_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_address_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_phone_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transport_district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_cash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_coupon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `birthday` int(30) NOT NULL,
  `linkactive` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_group` tinyint(4) NOT NULL DEFAULT '3',
  `avarta` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(30) NOT NULL,
  `last_login` int(30) NOT NULL,
  `date_delete` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `active_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_flag` int(2) NOT NULL DEFAULT '0',
  `birthday_flag` int(2) NOT NULL DEFAULT '0',
  `GroupMember` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usersonline`
--

CREATE TABLE `usersonline` (
  `id` int(11) NOT NULL,
  `user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `refurl` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_host` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usersonline`
--

INSERT INTO `usersonline` (`id`, `user`, `timestamp`, `ip_address`, `refurl`, `user_agent`, `user_host`) VALUES
(429722, '', 1496151509, '14.160.4.18', 'https://www.google.com.vn/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', '/thu-vien/top-5-hon-dao-noi-tieng-dep-o-viet-nam/'),
(429717, '', 1496148536, '171.245.205.81', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/lien-he'),
(429718, '', 1496149808, '115.76.119.238', 'https://www.google.com.vn/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_2 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A456 Safari/602.1', '/thu-vien/tam-bien-va-ngam-san-ho-tai-binh-ba/'),
(429719, '', 1496149856, '123.30.175.221', '', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '/thu-vien/trai-nghiem-binh-ba.htmls/page=3'),
(429537, '', 1496077140, '66.249.71.24', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/lien-he'),
(429684, '', 1496077773, '42.117.248.133', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/tour-tham-quan-binh-ba-2-ngay-1-dem-353/tour-binh-ba-2-ngay-1-dem-4.htmls'),
(429714, '', 1496140673, '123.20.61.40', 'android-app://com.google.android.googlequicksearchbox', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-G530H Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Mobile Safari/537.36', '/tour-tham-quan-binh-ba-2-ngay-1-dem-353/tour-binh-ba-2-ngay-1-dem-4.htmls'),
(429715, '', 1496140971, '116.100.146.86', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/lien-he'),
(429690, '', 1496104361, '180.76.15.159', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '/thu-vien/5-ly-do-nen-di-binh-ba-it-nhat-mot-lan-trong-doi/'),
(429692, '', 1496109023, '14.161.4.67', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/index.htm'),
(429695, '', 1496118706, '14.169.107.86', 'https://www.google.com.vn/', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G925F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/5.4 Chrome/51.0.2704.106 Mobile Safari/537.36', '/lien-he'),
(429716, '', 1496156053, '66.249.71.154', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/index.htm'),
(429726, '', 1496154479, '66.249.71.88', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/index.htm'),
(429721, '', 1496152263, '116.106.54.96', 'http://saigon-binhba.com/phong-vip-340/phong-loai-vip-1047.htm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/phong-thuong-339/phong-loai-thuong-1046.htm'),
(429727, '', 1496156199, '66.249.66.214', '', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/index.htm'),
(429689, '', 1496098094, '95.108.213.32', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '/index.htm'),
(429651, '', 1496131212, '207.46.13.107', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '/thu-vien/phuot-binh-ba/huong-dan-phuot-binh-ba'),
(429720, '', 1496149880, '123.30.175.218', '', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '/thu-vien/trai-nghiem-binh-ba/kinh-nghiem-du-lich-binh-ba'),
(429699, '', 1496120181, '14.162.119.132', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/index.htm'),
(429683, '', 1496075145, '51.255.65.6', '', 'Mozilla/5.0 (compatible; AhrefsBot/5.2; +http://ahrefs.com/robot/)', '/phong-vip-340/phong-loai-vip-1048.htm'),
(429701, '', 1496125053, '5.9.88.103', '', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)', '/thu-vien/vuot-song-gio-ra-dao-binh-ba-nha-trang/'),
(429702, '', 1496125618, '123.24.162.100', 'https://www.google.com.vn/', 'Mozilla/5.0 (Linux; Android 6.0.1; 2PS64 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36', '/lien-he'),
(429708, '', 1496134003, '66.249.79.90', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/thu-vien/hinh-anh-tuyet-dep-dao-binh-hung-binh-ba/'),
(429709, '', 1496134273, '171.25.193.78', 'http://www.saigon-binhba.com/index.htm', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)', '/index.htm'),
(429584, '', 1496153903, '157.55.39.215', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '/thu-vien/ca-bo-hom-binh-ba/'),
(429698, '', 1496119617, '115.78.237.32', 'http://saigon-binhba.com/lien-he', 'Mozilla/5.0 (Windows NT 6.1; rv:53.0) Gecko/20100101 Firefox/53.0', '/danh-sach-phong.htmls'),
(429729, '', 1496158499, '1.52.106.167', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/danh-sach-tours.htmls'),
(429706, '', 1496133459, '13.58.79.62', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '/index.htm'),
(429707, '', 1496133943, '27.77.121.160', 'http://coccoc.com/search', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/63.4.160 Chrome/57.4.2987.160 Safari/537.36', '/index.htm'),
(429713, '', 1496140064, '115.77.94.148', 'http://saigon-binhba.com/index.htm', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/lien-he'),
(429710, '', 1496135915, '113.161.39.95', 'http://www.saigon-binhba.com/danh-sach-tours.htmls', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/tour-binh-ba-binh-hung-357/tour-binh-ba-va-binh-hung-2-ngay-1-dem-7.htmls'),
(429711, '', 1496135160, '69.171.225.19', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '/phong-thuong-339/phong-loai-vip-1047.htm'),
(429696, '', 1496111440, '66.249.79.94', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/lien-he'),
(429723, '', 1496151517, '173.252.90.245', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '/thu-vien/top-5-hon-dao-noi-tieng-dep-o-viet-nam/'),
(429724, '', 1496151817, '123.21.66.78', 'android-app://com.google.android.googlequicksearchbox', 'Mozilla/5.0 (Linux; Android 5.0.2; Lenovo A7000-a Build/LRX21M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Mobile Safari/537.36', '/thu-vien/an-tom-hum-o-dau-la-ngon-nhat/'),
(429691, '', 1496106453, '117.2.17.110', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/index.htm'),
(429712, '', 1496137341, '180.76.15.156', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '/tour-tham-quan-binh-ba-trong-ngay-355/tour-binh-ba-3-ngay-2-dem-2.htmls'),
(429694, '', 1496149872, '123.30.175.219', '', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '/index.htm'),
(429688, '', 1496095433, '123.30.175.216', '', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '/thu-vien/am-thuc-binh-ba/huong-vi-bien'),
(429687, '', 1496121778, '157.55.39.117', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '/thu-vien/nhung-diem-vui-choi-hap-dan-o-dao-binh-ba/'),
(429685, '', 1496084950, '100.101.253.20', 'https://www.google.com.vn/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) GSA/23.0.147401934 Mobile/14E304 Safari/600.1.4', '/lien-he'),
(429686, '', 1496086727, '14.186.169.153', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) GSA/27.0.155813979 Mobile/13G36 Safari/601.1', '/index.htm'),
(429562, '', 1496101457, '66.249.71.26', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/lien-he'),
(429697, '', 1496113451, '183.91.2.131', 'http://saigon-binhba.com/lien-he', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '/danh-sach-phong.htmls'),
(429693, '', 1496110404, '123.30.175.220', '', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '/thu-vien/trai-nghiem-binh-ba/xinh-dep-binh-ba/page=2'),
(429725, '', 1496152186, '173.252.120.114', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '/phong-thuong-339/phong-loai-thuong-1046.htm'),
(429728, '', 1496156929, '66.249.71.156', '', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '/index.htm'),
(429681, '', 1496121758, '157.55.39.155', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '/lien-he'),
(429682, '', 1496073967, '115.79.202.172', 'https://www.google.fr/', 'Mozilla/5.0 (Linux; Android 7.0; SM-G935F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Mobile Safari/537.36', '/tour-tham-quan-binh-ba-2-ngay-1-dem-353/tour-binh-ba-2-ngay-1-dem-4.htmls'),
(429705, '', 1496129058, '150.70.173.10', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '/lien-he'),
(429700, '', 1496122706, '66.249.82.121', 'https://www.google.com.vn/', 'Mozilla/5.0 (Linux; Android 7.0; SM-N920C Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.132 Mobile Safari/537.36', '/tour-tham-quan-binh-ba-trong-ngay-355/tour-binh-ba-3-ngay-2-dem-2.htmls'),
(429703, '', 1496127075, '113.161.186.23', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/lien-he'),
(429704, '', 1496128957, '100.101.146.224', 'https://www.google.com.vn/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/lien-he');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_comment`
--

CREATE TABLE `user_comment` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_comment` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `color`) VALUES
(1, 'Admin', 'red'),
(3, 'Super Mod', 'green');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vipcustomer`
--

CREATE TABLE `vipcustomer` (
  `idVIPCustomer` int(11) NOT NULL,
  `NameVIPCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` int(10) DEFAULT NULL,
  `DisCount` int(10) DEFAULT NULL,
  `FeeLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitor`
--

CREATE TABLE `visitor` (
  `id` int(200) NOT NULL,
  `day` int(15) NOT NULL DEFAULT '0',
  `mon` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `visitor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `visitor`
--

INSERT INTO `visitor` (`id`, `day`, `mon`, `year`, `visitor`) VALUES
(1292, 15, 6, 2015, 3),
(1291, 14, 6, 2015, 1),
(1290, 13, 6, 2015, 1),
(1289, 12, 6, 2015, 1),
(1288, 11, 6, 2015, 1),
(1287, 10, 6, 2015, 1),
(1286, 9, 6, 2015, 1),
(1285, 8, 6, 2015, 1),
(1284, 7, 6, 2015, 1),
(1283, 6, 6, 2015, 1),
(1282, 5, 6, 2015, 1),
(1293, 16, 6, 2015, 12),
(1294, 17, 6, 2015, 16),
(1295, 18, 6, 2015, 8),
(1296, 19, 6, 2015, 5),
(1297, 20, 6, 2015, 10),
(1298, 21, 6, 2015, 12),
(1299, 22, 6, 2015, 10),
(1300, 23, 6, 2015, 34),
(1301, 24, 6, 2015, 25),
(1302, 25, 6, 2015, 9),
(1303, 26, 6, 2015, 8),
(1304, 27, 6, 2015, 10),
(1305, 28, 6, 2015, 11),
(1306, 29, 6, 2015, 8),
(1307, 30, 6, 2015, 14),
(1308, 1, 7, 2015, 16),
(1309, 2, 7, 2015, 17),
(1310, 3, 7, 2015, 15),
(1311, 4, 7, 2015, 24),
(1312, 5, 7, 2015, 18),
(1313, 6, 7, 2015, 10),
(1314, 7, 7, 2015, 12),
(1315, 8, 7, 2015, 15),
(1316, 9, 7, 2015, 30),
(1317, 10, 7, 2015, 28),
(1318, 11, 7, 2015, 31),
(1319, 12, 7, 2015, 17),
(1320, 13, 7, 2015, 42),
(1321, 14, 7, 2015, 62),
(1322, 15, 7, 2015, 40),
(1323, 16, 7, 2015, 37),
(1324, 17, 7, 2015, 39),
(1325, 18, 7, 2015, 25),
(1326, 19, 7, 2015, 27),
(1327, 20, 7, 2015, 32),
(1328, 21, 7, 2015, 44),
(1329, 22, 7, 2015, 40),
(1330, 23, 7, 2015, 44),
(1331, 24, 7, 2015, 34),
(1332, 25, 7, 2015, 29),
(1333, 26, 7, 2015, 19),
(1334, 27, 7, 2015, 44),
(1335, 28, 7, 2015, 21),
(1336, 29, 7, 2015, 24),
(1337, 30, 7, 2015, 45),
(1338, 31, 7, 2015, 29),
(1339, 1, 8, 2015, 20),
(1340, 2, 8, 2015, 30),
(1341, 3, 8, 2015, 28),
(1342, 4, 8, 2015, 29),
(1343, 5, 8, 2015, 35),
(1344, 6, 8, 2015, 29),
(1345, 7, 8, 2015, 23),
(1346, 8, 8, 2015, 25),
(1347, 9, 8, 2015, 34),
(1348, 10, 8, 2015, 51),
(1349, 11, 8, 2015, 61),
(1350, 12, 8, 2015, 99),
(1351, 13, 8, 2015, 58),
(1352, 14, 8, 2015, 53),
(1353, 15, 8, 2015, 31),
(1354, 16, 8, 2015, 34),
(1355, 17, 8, 2015, 48),
(1356, 18, 8, 2015, 40),
(1357, 19, 8, 2015, 45),
(1358, 20, 8, 2015, 58),
(1359, 21, 8, 2015, 35),
(1360, 22, 8, 2015, 35),
(1361, 23, 8, 2015, 40),
(1362, 24, 8, 2015, 42),
(1363, 25, 8, 2015, 33),
(1364, 26, 8, 2015, 38),
(1365, 27, 8, 2015, 51),
(1366, 28, 8, 2015, 48),
(1367, 29, 8, 2015, 29),
(1368, 30, 8, 2015, 48),
(1369, 31, 8, 2015, 65),
(1370, 1, 9, 2015, 39),
(1371, 2, 9, 2015, 27),
(1372, 3, 9, 2015, 32),
(1373, 4, 9, 2015, 44),
(1374, 5, 9, 2015, 30),
(1375, 6, 9, 2015, 37),
(1376, 7, 9, 2015, 44),
(1377, 8, 9, 2015, 39),
(1378, 9, 9, 2015, 41),
(1379, 10, 9, 2015, 33),
(1380, 11, 9, 2015, 53),
(1381, 12, 9, 2015, 32),
(1382, 13, 9, 2015, 21),
(1383, 14, 9, 2015, 41),
(1384, 15, 9, 2015, 49),
(1385, 16, 9, 2015, 28),
(1386, 17, 9, 2015, 42),
(1387, 18, 9, 2015, 37),
(1388, 19, 9, 2015, 29),
(1389, 20, 9, 2015, 35),
(1390, 21, 9, 2015, 42),
(1391, 22, 9, 2015, 31),
(1392, 23, 9, 2015, 20),
(1393, 24, 9, 2015, 16),
(1394, 25, 9, 2015, 41),
(1395, 26, 9, 2015, 28),
(1396, 27, 9, 2015, 18),
(1397, 28, 9, 2015, 42),
(1398, 29, 9, 2015, 24),
(1399, 30, 9, 2015, 35),
(1400, 1, 10, 2015, 42),
(1401, 2, 10, 2015, 34),
(1402, 3, 10, 2015, 29),
(1403, 4, 10, 2015, 21),
(1404, 5, 10, 2015, 43),
(1405, 6, 10, 2015, 44),
(1406, 7, 10, 2015, 33),
(1407, 8, 10, 2015, 39),
(1408, 9, 10, 2015, 37),
(1409, 10, 10, 2015, 37),
(1410, 11, 10, 2015, 26),
(1411, 12, 10, 2015, 36),
(1412, 13, 10, 2015, 39),
(1413, 14, 10, 2015, 36),
(1414, 15, 10, 2015, 38),
(1415, 16, 10, 2015, 34),
(1416, 17, 10, 2015, 46),
(1417, 18, 10, 2015, 48),
(1418, 19, 10, 2015, 49),
(1419, 20, 10, 2015, 45),
(1420, 21, 10, 2015, 46),
(1421, 22, 10, 2015, 49),
(1422, 23, 10, 2015, 48),
(1423, 24, 10, 2015, 40),
(1424, 25, 10, 2015, 31),
(1425, 26, 10, 2015, 33),
(1426, 27, 10, 2015, 56),
(1427, 28, 10, 2015, 47),
(1428, 29, 10, 2015, 34),
(1429, 30, 10, 2015, 44),
(1430, 31, 10, 2015, 31),
(1431, 1, 11, 2015, 35),
(1432, 2, 11, 2015, 21),
(1433, 3, 11, 2015, 35),
(1434, 4, 11, 2015, 24),
(1435, 5, 11, 2015, 36),
(1436, 6, 11, 2015, 33),
(1437, 7, 11, 2015, 29),
(1438, 8, 11, 2015, 33),
(1439, 9, 11, 2015, 39),
(1440, 10, 11, 2015, 33),
(1441, 11, 11, 2015, 30),
(1442, 12, 11, 2015, 26),
(1443, 13, 11, 2015, 29),
(1444, 14, 11, 2015, 34),
(1445, 15, 11, 2015, 26),
(1446, 16, 11, 2015, 36),
(1447, 17, 11, 2015, 30),
(1448, 18, 11, 2015, 25),
(1449, 19, 11, 2015, 43),
(1450, 20, 11, 2015, 31),
(1451, 21, 11, 2015, 36),
(1452, 22, 11, 2015, 20),
(1453, 23, 11, 2015, 75),
(1454, 24, 11, 2015, 55),
(1455, 25, 11, 2015, 36),
(1456, 26, 11, 2015, 35),
(1457, 27, 11, 2015, 25),
(1458, 28, 11, 2015, 33),
(1459, 29, 11, 2015, 22),
(1460, 30, 11, 2015, 38),
(1461, 1, 12, 2015, 32),
(1462, 2, 12, 2015, 33),
(1463, 3, 12, 2015, 45),
(1464, 4, 12, 2015, 37),
(1465, 5, 12, 2015, 32),
(1466, 6, 12, 2015, 24),
(1467, 7, 12, 2015, 26),
(1468, 8, 12, 2015, 38),
(1469, 9, 12, 2015, 30),
(1470, 10, 12, 2015, 31),
(1471, 11, 12, 2015, 15),
(1472, 12, 12, 2015, 27),
(1473, 13, 12, 2015, 27),
(1474, 14, 12, 2015, 30),
(1475, 15, 12, 2015, 33),
(1476, 16, 12, 2015, 34),
(1477, 17, 12, 2015, 20),
(1478, 18, 12, 2015, 32),
(1479, 19, 12, 2015, 25),
(1480, 20, 12, 2015, 42),
(1481, 21, 12, 2015, 23),
(1482, 22, 12, 2015, 28),
(1483, 23, 12, 2015, 29),
(1484, 24, 12, 2015, 39),
(1485, 25, 12, 2015, 14),
(1486, 26, 12, 2015, 30),
(1487, 27, 12, 2015, 29),
(1488, 28, 12, 2015, 37),
(1489, 29, 12, 2015, 31),
(1490, 30, 12, 2015, 18),
(1491, 31, 12, 2015, 28),
(1492, 1, 1, 2016, 29),
(1493, 2, 1, 2016, 33),
(1494, 3, 1, 2016, 12),
(1495, 4, 1, 2016, 33),
(1496, 5, 1, 2016, 26),
(1497, 6, 1, 2016, 27),
(1498, 7, 1, 2016, 41),
(1499, 8, 1, 2016, 53),
(1500, 9, 1, 2016, 33),
(1501, 10, 1, 2016, 26),
(1502, 11, 1, 2016, 37),
(1503, 12, 1, 2016, 40),
(1504, 13, 1, 2016, 55),
(1505, 14, 1, 2016, 21),
(1506, 15, 1, 2016, 65),
(1507, 16, 1, 2016, 34),
(1508, 17, 1, 2016, 50),
(1509, 18, 1, 2016, 39),
(1510, 19, 1, 2016, 40),
(1511, 20, 1, 2016, 45),
(1512, 21, 1, 2016, 84),
(1513, 22, 1, 2016, 71),
(1514, 23, 1, 2016, 48),
(1515, 24, 1, 2016, 42),
(1516, 25, 1, 2016, 60),
(1517, 26, 1, 2016, 43),
(1518, 27, 1, 2016, 46),
(1519, 28, 1, 2016, 36),
(1520, 29, 1, 2016, 24),
(1521, 30, 1, 2016, 36),
(1522, 31, 1, 2016, 18),
(1523, 1, 2, 2016, 37),
(1524, 2, 2, 2016, 27),
(1525, 3, 2, 2016, 26),
(1526, 4, 2, 2016, 28),
(1527, 5, 2, 2016, 39),
(1528, 6, 2, 2016, 42),
(1529, 7, 2, 2016, 23),
(1530, 8, 2, 2016, 29),
(1531, 9, 2, 2016, 34),
(1532, 10, 2, 2016, 42),
(1533, 11, 2, 2016, 41),
(1534, 12, 2, 2016, 28),
(1535, 13, 2, 2016, 32),
(1536, 14, 2, 2016, 20),
(1537, 15, 2, 2016, 35),
(1538, 16, 2, 2016, 46),
(1539, 17, 2, 2016, 32),
(1540, 18, 2, 2016, 32),
(1541, 19, 2, 2016, 51),
(1542, 20, 2, 2016, 49),
(1543, 21, 2, 2016, 35),
(1544, 22, 2, 2016, 48),
(1545, 23, 2, 2016, 56),
(1546, 24, 2, 2016, 46),
(1547, 25, 2, 2016, 48),
(1548, 26, 2, 2016, 40),
(1549, 27, 2, 2016, 32),
(1550, 28, 2, 2016, 86),
(1551, 29, 2, 2016, 56),
(1552, 1, 3, 2016, 49),
(1553, 2, 3, 2016, 115),
(1554, 3, 3, 2016, 65),
(1555, 4, 3, 2016, 54),
(1556, 5, 3, 2016, 46),
(1557, 6, 3, 2016, 47),
(1558, 7, 3, 2016, 41),
(1559, 8, 3, 2016, 58),
(1560, 9, 3, 2016, 46),
(1561, 10, 3, 2016, 50),
(1562, 11, 3, 2016, 28),
(1563, 12, 3, 2016, 30),
(1564, 13, 3, 2016, 38),
(1565, 14, 3, 2016, 35),
(1566, 15, 3, 2016, 46),
(1567, 16, 3, 2016, 45),
(1568, 17, 3, 2016, 55),
(1569, 18, 3, 2016, 58),
(1570, 19, 3, 2016, 49),
(1571, 20, 3, 2016, 51),
(1572, 21, 3, 2016, 57),
(1573, 22, 3, 2016, 55),
(1574, 23, 3, 2016, 51),
(1575, 24, 3, 2016, 52),
(1576, 25, 3, 2016, 60),
(1577, 26, 3, 2016, 36),
(1578, 27, 3, 2016, 43),
(1579, 27, 3, 2016, 43),
(1580, 28, 3, 2016, 43),
(1581, 29, 3, 2016, 39),
(1582, 30, 3, 2016, 49),
(1583, 31, 3, 2016, 43),
(1584, 1, 4, 2016, 44),
(1585, 2, 4, 2016, 45),
(1586, 3, 4, 2016, 42),
(1587, 4, 4, 2016, 41),
(1588, 5, 4, 2016, 64),
(1589, 6, 4, 2016, 47),
(1590, 7, 4, 2016, 58),
(1591, 8, 4, 2016, 59),
(1592, 9, 4, 2016, 63),
(1593, 10, 4, 2016, 41),
(1594, 11, 4, 2016, 70),
(1595, 12, 4, 2016, 56),
(1596, 13, 4, 2016, 65),
(1597, 14, 4, 2016, 40),
(1598, 15, 4, 2016, 52),
(1599, 16, 4, 2016, 52),
(1600, 17, 4, 2016, 43),
(1601, 18, 4, 2016, 60),
(1602, 19, 4, 2016, 55),
(1603, 19, 4, 2016, 55),
(1604, 20, 4, 2016, 58),
(1605, 21, 4, 2016, 50),
(1606, 22, 4, 2016, 54),
(1607, 23, 4, 2016, 38),
(1608, 24, 4, 2016, 44),
(1609, 25, 4, 2016, 46),
(1610, 26, 4, 2016, 40),
(1611, 27, 4, 2016, 42),
(1612, 28, 4, 2016, 46),
(1613, 29, 4, 2016, 42),
(1614, 30, 4, 2016, 49),
(1615, 1, 5, 2016, 43),
(1616, 2, 5, 2016, 54),
(1617, 3, 5, 2016, 59),
(1618, 4, 5, 2016, 61),
(1619, 5, 5, 2016, 46),
(1620, 6, 5, 2016, 45),
(1621, 7, 5, 2016, 51),
(1622, 8, 5, 2016, 36),
(1623, 9, 5, 2016, 71),
(1624, 10, 5, 2016, 63),
(1625, 11, 5, 2016, 65),
(1626, 12, 5, 2016, 81),
(1627, 13, 5, 2016, 85),
(1628, 14, 5, 2016, 49),
(1629, 15, 5, 2016, 74),
(1630, 15, 5, 2016, 74),
(1631, 15, 5, 2016, 74),
(1632, 16, 5, 2016, 89),
(1633, 17, 5, 2016, 59),
(1634, 18, 5, 2016, 78),
(1635, 19, 5, 2016, 79),
(1636, 20, 5, 2016, 70),
(1637, 21, 5, 2016, 66),
(1638, 22, 5, 2016, 59),
(1639, 23, 5, 2016, 78),
(1640, 24, 5, 2016, 70),
(1641, 25, 5, 2016, 79),
(1642, 26, 5, 2016, 114),
(1643, 27, 5, 2016, 86),
(1644, 28, 5, 2016, 66),
(1645, 29, 5, 2016, 66),
(1646, 30, 5, 2016, 59),
(1647, 31, 5, 2016, 61),
(1648, 1, 6, 2016, 73),
(1649, 2, 6, 2016, 80),
(1650, 3, 6, 2016, 90),
(1651, 4, 6, 2016, 88),
(1652, 5, 6, 2016, 57),
(1653, 6, 6, 2016, 92),
(1654, 7, 6, 2016, 65),
(1655, 8, 6, 2016, 65),
(1656, 9, 6, 2016, 70),
(1657, 10, 6, 2016, 71),
(1658, 11, 6, 2016, 49),
(1659, 12, 6, 2016, 80),
(1660, 13, 6, 2016, 79),
(1661, 14, 6, 2016, 84),
(1662, 15, 6, 2016, 70),
(1663, 16, 6, 2016, 59),
(1664, 17, 6, 2016, 66),
(1665, 18, 6, 2016, 47),
(1666, 19, 6, 2016, 48),
(1667, 20, 6, 2016, 67),
(1668, 21, 6, 2016, 66),
(1669, 22, 6, 2016, 68),
(1670, 23, 6, 2016, 70),
(1671, 24, 6, 2016, 56),
(1672, 25, 6, 2016, 58),
(1673, 26, 6, 2016, 62),
(1674, 27, 6, 2016, 60),
(1675, 28, 6, 2016, 54),
(1676, 29, 6, 2016, 62),
(1677, 30, 6, 2016, 60),
(1678, 1, 7, 2016, 83),
(1679, 2, 7, 2016, 57),
(1680, 3, 7, 2016, 52),
(1681, 4, 7, 2016, 74),
(1682, 5, 7, 2016, 70),
(1683, 6, 7, 2016, 65),
(1684, 7, 7, 2016, 39),
(1685, 8, 7, 2016, 54),
(1686, 9, 7, 2016, 78),
(1687, 10, 7, 2016, 43),
(1688, 11, 7, 2016, 53),
(1689, 12, 7, 2016, 75),
(1690, 13, 7, 2016, 66),
(1691, 14, 7, 2016, 66),
(1692, 15, 7, 2016, 77),
(1693, 16, 7, 2016, 64),
(1694, 17, 7, 2016, 62),
(1695, 18, 7, 2016, 47),
(1696, 19, 7, 2016, 61),
(1697, 20, 7, 2016, 53),
(1698, 21, 7, 2016, 65),
(1699, 22, 7, 2016, 44),
(1700, 23, 7, 2016, 67),
(1701, 24, 7, 2016, 60),
(1702, 25, 7, 2016, 59),
(1703, 26, 7, 2016, 39),
(1704, 27, 7, 2016, 76),
(1705, 28, 7, 2016, 51),
(1706, 29, 7, 2016, 47),
(1707, 30, 7, 2016, 60),
(1708, 31, 7, 2016, 46),
(1709, 1, 8, 2016, 68),
(1710, 2, 8, 2016, 50),
(1711, 3, 8, 2016, 60),
(1712, 4, 8, 2016, 77),
(1713, 5, 8, 2016, 60),
(1714, 6, 8, 2016, 40),
(1715, 7, 8, 2016, 36),
(1716, 8, 8, 2016, 66),
(1717, 9, 8, 2016, 50),
(1718, 10, 8, 2016, 76),
(1719, 11, 8, 2016, 63),
(1720, 12, 8, 2016, 59),
(1721, 13, 8, 2016, 57),
(1722, 14, 8, 2016, 69),
(1723, 15, 8, 2016, 88),
(1724, 16, 8, 2016, 74),
(1725, 17, 8, 2016, 67),
(1726, 18, 8, 2016, 49),
(1727, 19, 8, 2016, 67),
(1728, 20, 8, 2016, 69),
(1729, 21, 8, 2016, 76),
(1730, 22, 8, 2016, 94),
(1731, 23, 8, 2016, 88),
(1732, 24, 8, 2016, 82),
(1733, 25, 8, 2016, 85),
(1734, 26, 8, 2016, 88),
(1735, 27, 8, 2016, 75),
(1736, 28, 8, 2016, 82),
(1737, 29, 8, 2016, 72),
(1738, 30, 8, 2016, 56),
(1739, 31, 8, 2016, 71),
(1740, 1, 9, 2016, 72),
(1741, 2, 9, 2016, 78),
(1742, 3, 9, 2016, 84),
(1743, 4, 9, 2016, 65),
(1744, 5, 9, 2016, 94),
(1745, 6, 9, 2016, 69),
(1746, 7, 9, 2016, 58),
(1747, 8, 9, 2016, 74),
(1748, 9, 9, 2016, 59),
(1749, 10, 9, 2016, 53),
(1750, 11, 9, 2016, 25),
(1751, 12, 9, 2016, 47),
(1752, 13, 9, 2016, 56),
(1753, 14, 9, 2016, 61),
(1754, 15, 9, 2016, 59),
(1755, 16, 9, 2016, 58),
(1756, 17, 9, 2016, 61),
(1757, 18, 9, 2016, 49),
(1758, 19, 9, 2016, 86),
(1759, 20, 9, 2016, 98),
(1760, 21, 9, 2016, 81),
(1761, 22, 9, 2016, 48),
(1762, 23, 9, 2016, 68),
(1763, 24, 9, 2016, 38),
(1764, 25, 9, 2016, 37),
(1765, 26, 9, 2016, 47),
(1766, 27, 9, 2016, 47),
(1767, 28, 9, 2016, 64),
(1768, 29, 9, 2016, 51),
(1769, 30, 9, 2016, 64),
(1770, 1, 10, 2016, 63),
(1771, 2, 10, 2016, 30),
(1772, 3, 10, 2016, 59),
(1773, 4, 10, 2016, 54),
(1774, 5, 10, 2016, 80),
(1775, 6, 10, 2016, 59),
(1776, 7, 10, 2016, 47),
(1777, 8, 10, 2016, 30),
(1778, 9, 10, 2016, 57),
(1779, 10, 10, 2016, 44),
(1780, 11, 10, 2016, 47),
(1781, 12, 10, 2016, 41),
(1782, 13, 10, 2016, 72),
(1783, 14, 10, 2016, 54),
(1784, 15, 10, 2016, 36),
(1785, 16, 10, 2016, 30),
(1786, 17, 10, 2016, 42),
(1787, 18, 10, 2016, 66),
(1788, 19, 10, 2016, 51),
(1789, 20, 10, 2016, 29),
(1790, 21, 10, 2016, 43),
(1791, 22, 10, 2016, 39),
(1792, 23, 10, 2016, 35),
(1793, 24, 10, 2016, 44),
(1794, 25, 10, 2016, 35),
(1795, 26, 10, 2016, 28),
(1796, 27, 10, 2016, 34),
(1797, 28, 10, 2016, 33),
(1798, 29, 10, 2016, 40),
(1799, 30, 10, 2016, 37),
(1800, 31, 10, 2016, 53),
(1801, 1, 11, 2016, 44),
(1802, 2, 11, 2016, 16),
(1803, 3, 11, 2016, 30),
(1804, 4, 11, 2016, 31),
(1805, 5, 11, 2016, 29),
(1806, 6, 11, 2016, 21),
(1807, 7, 11, 2016, 30),
(1808, 8, 11, 2016, 26),
(1809, 9, 11, 2016, 33),
(1810, 10, 11, 2016, 33),
(1811, 11, 11, 2016, 24),
(1812, 12, 11, 2016, 47),
(1813, 13, 11, 2016, 41),
(1814, 14, 11, 2016, 49),
(1815, 15, 11, 2016, 37),
(1816, 16, 11, 2016, 50),
(1817, 17, 11, 2016, 44),
(1818, 18, 11, 2016, 43),
(1819, 19, 11, 2016, 42),
(1820, 20, 11, 2016, 51),
(1821, 21, 11, 2016, 36),
(1822, 22, 11, 2016, 45),
(1823, 23, 11, 2016, 37),
(1824, 24, 11, 2016, 37),
(1825, 25, 11, 2016, 29),
(1826, 26, 11, 2016, 42),
(1827, 27, 11, 2016, 50),
(1828, 28, 11, 2016, 55),
(1829, 29, 11, 2016, 35),
(1830, 30, 11, 2016, 35),
(1831, 1, 12, 2016, 28),
(1832, 2, 12, 2016, 36),
(1833, 3, 12, 2016, 29),
(1834, 4, 12, 2016, 37),
(1835, 5, 12, 2016, 43),
(1836, 6, 12, 2016, 75),
(1837, 7, 12, 2016, 46),
(1838, 8, 12, 2016, 48),
(1839, 9, 12, 2016, 59),
(1840, 10, 12, 2016, 25),
(1841, 11, 12, 2016, 23),
(1842, 12, 12, 2016, 37),
(1843, 13, 12, 2016, 28),
(1844, 14, 12, 2016, 48),
(1845, 15, 12, 2016, 50),
(1846, 16, 12, 2016, 41),
(1847, 17, 12, 2016, 34),
(1848, 18, 12, 2016, 26),
(1849, 19, 12, 2016, 40),
(1850, 20, 12, 2016, 41),
(1851, 21, 12, 2016, 52),
(1852, 22, 12, 2016, 47),
(1853, 23, 12, 2016, 41),
(1854, 24, 12, 2016, 47),
(1855, 25, 12, 2016, 58),
(1856, 26, 12, 2016, 48),
(1857, 27, 12, 2016, 57),
(1858, 28, 12, 2016, 56),
(1859, 29, 12, 2016, 63),
(1860, 30, 12, 2016, 62),
(1861, 31, 12, 2016, 45),
(1862, 1, 1, 2017, 52),
(1863, 2, 1, 2017, 65),
(1864, 3, 1, 2017, 43),
(1865, 4, 1, 2017, 65),
(1866, 5, 1, 2017, 39),
(1867, 6, 1, 2017, 52),
(1868, 7, 1, 2017, 37),
(1869, 8, 1, 2017, 69),
(1870, 9, 1, 2017, 32),
(1871, 10, 1, 2017, 45),
(1872, 11, 1, 2017, 36),
(1873, 12, 1, 2017, 41),
(1874, 13, 1, 2017, 32),
(1875, 14, 1, 2017, 32),
(1876, 15, 1, 2017, 26),
(1877, 15, 1, 2017, 26),
(1878, 16, 1, 2017, 25),
(1879, 17, 1, 2017, 40),
(1880, 18, 1, 2017, 46),
(1881, 19, 1, 2017, 30),
(1882, 20, 1, 2017, 39),
(1883, 21, 1, 2017, 31),
(1884, 22, 1, 2017, 47),
(1885, 23, 1, 2017, 40),
(1886, 24, 1, 2017, 32),
(1887, 25, 1, 2017, 33),
(1888, 26, 1, 2017, 35),
(1889, 27, 1, 2017, 37),
(1890, 28, 1, 2017, 32),
(1891, 29, 1, 2017, 34),
(1892, 30, 1, 2017, 13),
(1893, 1, 2, 2017, 16),
(1894, 2, 2, 2017, 57),
(1895, 3, 2, 2017, 79),
(1896, 4, 2, 2017, 49),
(1897, 5, 2, 2017, 39),
(1898, 6, 2, 2017, 51),
(1899, 7, 2, 2017, 45),
(1900, 8, 2, 2017, 52),
(1901, 9, 2, 2017, 51),
(1902, 10, 2, 2017, 52),
(1903, 11, 2, 2017, 48),
(1904, 12, 2, 2017, 52),
(1905, 13, 2, 2017, 54),
(1906, 14, 2, 2017, 47),
(1907, 15, 2, 2017, 58),
(1908, 16, 2, 2017, 59),
(1909, 17, 2, 2017, 51),
(1910, 18, 2, 2017, 39),
(1911, 19, 2, 2017, 47),
(1912, 20, 2, 2017, 52),
(1913, 20, 2, 2017, 52),
(1914, 20, 2, 2017, 52),
(1915, 21, 2, 2017, 52),
(1916, 22, 2, 2017, 59),
(1917, 23, 2, 2017, 58),
(1918, 24, 2, 2017, 59),
(1919, 25, 2, 2017, 60),
(1920, 26, 2, 2017, 55),
(1921, 27, 2, 2017, 66),
(1922, 28, 2, 2017, 62),
(1923, 1, 3, 2017, 65),
(1924, 2, 3, 2017, 59),
(1925, 3, 3, 2017, 41),
(1926, 4, 3, 2017, 33),
(1927, 5, 3, 2017, 35),
(1928, 6, 3, 2017, 48),
(1929, 6, 3, 2017, 48),
(1930, 7, 3, 2017, 51),
(1931, 8, 3, 2017, 58),
(1932, 9, 3, 2017, 48),
(1933, 10, 3, 2017, 46),
(1934, 11, 3, 2017, 45),
(1935, 12, 3, 2017, 47),
(1936, 13, 3, 2017, 62),
(1937, 14, 3, 2017, 64),
(1938, 15, 3, 2017, 70),
(1939, 16, 3, 2017, 62),
(1940, 17, 3, 2017, 55),
(1941, 18, 3, 2017, 47),
(1942, 19, 3, 2017, 42),
(1943, 20, 3, 2017, 49),
(1944, 21, 3, 2017, 67),
(1945, 22, 3, 2017, 60),
(1946, 23, 3, 2017, 46),
(1947, 24, 3, 2017, 45),
(1948, 25, 3, 2017, 52),
(1949, 26, 3, 2017, 40),
(1950, 27, 3, 2017, 43),
(1951, 28, 3, 2017, 71),
(1952, 29, 3, 2017, 47),
(1953, 30, 3, 2017, 49),
(1954, 31, 3, 2017, 52),
(1955, 1, 4, 2017, 48),
(1956, 2, 4, 2017, 43),
(1957, 3, 4, 2017, 58),
(1958, 4, 4, 2017, 71),
(1959, 5, 4, 2017, 39),
(1960, 6, 4, 2017, 53),
(1961, 7, 4, 2017, 61),
(1962, 8, 4, 2017, 52),
(1963, 9, 4, 2017, 48),
(1964, 10, 4, 2017, 48),
(1965, 11, 4, 2017, 79),
(1966, 12, 4, 2017, 46),
(1967, 13, 4, 2017, 35),
(1968, 14, 4, 2017, 42),
(1969, 15, 4, 2017, 44),
(1970, 16, 4, 2017, 38),
(1971, 17, 4, 2017, 59),
(1972, 18, 4, 2017, 63),
(1973, 19, 4, 2017, 49),
(1974, 20, 4, 2017, 47),
(1975, 21, 4, 2017, 47),
(1976, 22, 4, 2017, 40),
(1977, 23, 4, 2017, 27),
(1978, 24, 4, 2017, 47),
(1979, 25, 4, 2017, 62),
(1980, 26, 4, 2017, 35),
(1981, 27, 4, 2017, 42),
(1982, 28, 4, 2017, 46),
(1983, 29, 4, 2017, 39),
(1984, 30, 4, 2017, 39),
(1985, 1, 5, 2017, 49),
(1986, 2, 5, 2017, 51),
(1987, 3, 5, 2017, 45),
(1988, 4, 5, 2017, 56),
(1989, 5, 5, 2017, 50),
(1990, 6, 5, 2017, 43),
(1991, 7, 5, 2017, 30),
(1992, 8, 5, 2017, 53),
(1993, 12, 5, 2017, 44),
(1994, 13, 5, 2017, 56),
(1995, 14, 5, 2017, 39),
(1996, 15, 5, 2017, 66),
(1997, 16, 5, 2017, 73),
(1998, 17, 5, 2017, 59),
(1999, 18, 5, 2017, 53),
(2000, 19, 5, 2017, 81),
(2001, 20, 5, 2017, 51),
(2002, 21, 5, 2017, 49),
(2003, 22, 5, 2017, 61),
(2004, 23, 5, 2017, 55),
(2005, 24, 5, 2017, 78),
(2006, 25, 5, 2017, 80),
(2007, 26, 5, 2017, 67),
(2008, 27, 5, 2017, 53),
(2009, 28, 5, 2017, 40),
(2010, 29, 5, 2017, 55),
(2011, 30, 5, 2017, 53);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `website_decription` text COLLATE utf8_unicode_ci NOT NULL,
  `_order` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `typical` int(11) NOT NULL,
  `date_added` int(11) NOT NULL,
  `date_modifile` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word_replace`
--

CREATE TABLE `word_replace` (
  `id` int(11) NOT NULL,
  `word` text COLLATE utf8_unicode_ci NOT NULL,
  `_replace` text COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_control_user`
--
ALTER TABLE `admin_control_user`
  ADD PRIMARY KEY (`idadmin_control_user`);

--
-- Chỉ mục cho bảng `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`adver_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Chỉ mục cho bảng `categoriesadoption`
--
ALTER TABLE `categoriesadoption`
  ADD PRIMARY KEY (`categoriesadoption_id`);

--
-- Chỉ mục cho bảng `categorieshelp`
--
ALTER TABLE `categorieshelp`
  ADD PRIMARY KEY (`categorieshelp_id`);

--
-- Chỉ mục cho bảng `categoriesintroduce`
--
ALTER TABLE `categoriesintroduce`
  ADD PRIMARY KEY (`categoriesintroduce_id`);

--
-- Chỉ mục cho bảng `categorieslibary`
--
ALTER TABLE `categorieslibary`
  ADD PRIMARY KEY (`categorieslibary_id`);

--
-- Chỉ mục cho bảng `categories_tours`
--
ALTER TABLE `categories_tours`
  ADD PRIMARY KEY (`categories_id`);

--
-- Chỉ mục cho bảng `cats_adver`
--
ALTER TABLE `cats_adver`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id_coupon`);

--
-- Chỉ mục cho bảng `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groupmember`
--
ALTER TABLE `groupmember`
  ADD PRIMARY KEY (`idGroupMember`);

--
-- Chỉ mục cho bảng `guest_comment`
--
ALTER TABLE `guest_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_product_tours`
--
ALTER TABLE `image_product_tours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_galary`
--
ALTER TABLE `img_galary`
  ADD PRIMARY KEY (`galary_id`),
  ADD KEY `galary_id` (`galary_id`);

--
-- Chỉ mục cho bảng `ip_based_access`
--
ALTER TABLE `ip_based_access`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `kindhelp`
--
ALTER TABLE `kindhelp`
  ADD PRIMARY KEY (`idKindHelp`);

--
-- Chỉ mục cho bảng `lag_config`
--
ALTER TABLE `lag_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`,`news_key`);
ALTER TABLE `news` ADD FULLTEXT KEY `news_name` (`news_name`,`news_content`);
ALTER TABLE `news` ADD FULLTEXT KEY `news_name_2` (`news_name`);
ALTER TABLE `news` ADD FULLTEXT KEY `news_name_3` (`news_name`,`news_content`);
ALTER TABLE `news` ADD FULLTEXT KEY `news_content` (`news_content`,`news_name`);

--
-- Chỉ mục cho bảng `news_adoption`
--
ALTER TABLE `news_adoption`
  ADD PRIMARY KEY (`newsadoption_id`);

--
-- Chỉ mục cho bảng `news_catalogue`
--
ALTER TABLE `news_catalogue`
  ADD PRIMARY KEY (`categories_id`);

--
-- Chỉ mục cho bảng `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`idnews_category`);

--
-- Chỉ mục cho bảng `news_introduce`
--
ALTER TABLE `news_introduce`
  ADD PRIMARY KEY (`newsintroduce_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pet_profile`
--
ALTER TABLE `pet_profile`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `priceofunit`
--
ALTER TABLE `priceofunit`
  ADD PRIMARY KEY (`idPriceOfUnit`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Chỉ mục cho bảng `products_tours`
--
ALTER TABLE `products_tours`
  ADD PRIMARY KEY (`products_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`idproduct_category`);

--
-- Chỉ mục cho bảng `product_category_tours`
--
ALTER TABLE `product_category_tours`
  ADD PRIMARY KEY (`idproduct_category`);

--
-- Chỉ mục cho bảng `rate_product`
--
ALTER TABLE `rate_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`recordID`);

--
-- Chỉ mục cho bảng `relation_news_product`
--
ALTER TABLE `relation_news_product`
  ADD PRIMARY KEY (`id_news_product`);

--
-- Chỉ mục cho bảng `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`providers_id`);

--
-- Chỉ mục cho bảng `tbl_contact_list`
--
ALTER TABLE `tbl_contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_favorite`
--
ALTER TABLE `tbl_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_history_score`
--
ALTER TABLE `tbl_history_score`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `usersonline`
--
ALTER TABLE `usersonline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip_address`),
  ADD KEY `file` (`refurl`);

--
-- Chỉ mục cho bảng `user_comment`
--
ALTER TABLE `user_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `vipcustomer`
--
ALTER TABLE `vipcustomer`
  ADD PRIMARY KEY (`idVIPCustomer`);

--
-- Chỉ mục cho bảng `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`day`),
  ADD KEY `ip` (`visitor`);

--
-- Chỉ mục cho bảng `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `word_replace`
--
ALTER TABLE `word_replace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_control_user`
--
ALTER TABLE `admin_control_user`
  MODIFY `idadmin_control_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `ads`
--
ALTER TABLE `ads`
  MODIFY `adver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;
--
-- AUTO_INCREMENT cho bảng `categoriesadoption`
--
ALTER TABLE `categoriesadoption`
  MODIFY `categoriesadoption_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `categorieshelp`
--
ALTER TABLE `categorieshelp`
  MODIFY `categorieshelp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `categoriesintroduce`
--
ALTER TABLE `categoriesintroduce`
  MODIFY `categoriesintroduce_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `categorieslibary`
--
ALTER TABLE `categorieslibary`
  MODIFY `categorieslibary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `categories_tours`
--
ALTER TABLE `categories_tours`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;
--
-- AUTO_INCREMENT cho bảng `cats_adver`
--
ALTER TABLE `cats_adver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id_coupon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `groupmember`
--
ALTER TABLE `groupmember`
  MODIFY `idGroupMember` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `guest_comment`
--
ALTER TABLE `guest_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT cho bảng `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT cho bảng `image_product_tours`
--
ALTER TABLE `image_product_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `img_galary`
--
ALTER TABLE `img_galary`
  MODIFY `galary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT cho bảng `ip_based_access`
--
ALTER TABLE `ip_based_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT cho bảng `lag_config`
--
ALTER TABLE `lag_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;
--
-- AUTO_INCREMENT cho bảng `news_adoption`
--
ALTER TABLE `news_adoption`
  MODIFY `newsadoption_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `news_catalogue`
--
ALTER TABLE `news_catalogue`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT cho bảng `news_category`
--
ALTER TABLE `news_category`
  MODIFY `idnews_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT cho bảng `news_introduce`
--
ALTER TABLE `news_introduce`
  MODIFY `newsintroduce_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;
--
-- AUTO_INCREMENT cho bảng `pet_profile`
--
ALTER TABLE `pet_profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT cho bảng `priceofunit`
--
ALTER TABLE `priceofunit`
  MODIFY `idPriceOfUnit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;
--
-- AUTO_INCREMENT cho bảng `products_tours`
--
ALTER TABLE `products_tours`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `idproduct_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT cho bảng `product_category_tours`
--
ALTER TABLE `product_category_tours`
  MODIFY `idproduct_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT cho bảng `rate_product`
--
ALTER TABLE `rate_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT cho bảng `records`
--
ALTER TABLE `records`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT cho bảng `relation_news_product`
--
ALTER TABLE `relation_news_product`
  MODIFY `id_news_product` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1471;
--
-- AUTO_INCREMENT cho bảng `support`
--
ALTER TABLE `support`
  MODIFY `providers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT cho bảng `tbl_contact_list`
--
ALTER TABLE `tbl_contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT cho bảng `tbl_favorite`
--
ALTER TABLE `tbl_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT cho bảng `tbl_history_score`
--
ALTER TABLE `tbl_history_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2053;
--
-- AUTO_INCREMENT cho bảng `usersonline`
--
ALTER TABLE `usersonline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429730;
--
-- AUTO_INCREMENT cho bảng `user_comment`
--
ALTER TABLE `user_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT cho bảng `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `vipcustomer`
--
ALTER TABLE `vipcustomer`
  MODIFY `idVIPCustomer` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;
--
-- AUTO_INCREMENT cho bảng `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `word_replace`
--
ALTER TABLE `word_replace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
