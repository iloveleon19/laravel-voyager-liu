-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        5.7.33 - MySQL Community Server (GPL)
-- 伺服器作業系統:                      Linux
-- HeidiSQL 版本:                  11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 傾印 homestead_liu 的資料庫結構
CREATE DATABASE IF NOT EXISTS `homestead_liu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `homestead_liu`;

-- 傾印  資料表 homestead_liu.banners 結構
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banner_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.banners 的資料：~6 rows (近似值)
DELETE FROM `banners`;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `slug`, `title`, `seo_title`, `image`, `status`, `order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `meta_description`, `meta_keywords`) VALUES
	(1, 'piano', '1', 'gfd', 'banners/February2021/2k73EhYtRLTN6U5C7Zhe.jpg', 0, 5, '2020-05-13 15:08:00', 1, '2021-02-23 14:50:57', 1, NULL, NULL),
	(2, 'dog', '2', 'sdf', 'banners/May2020/jIIMxrP6tGh0j0uGkB68.jpg', 0, 4, '2020-05-13 15:08:00', 1, '2021-02-23 14:50:57', 1, NULL, NULL),
	(3, 'shoes', '3', 'dsg', 'banners/May2020/Z12oY5RNRMSdTCcOkk0F.jpg', 0, 6, '2020-05-13 15:14:58', 1, '2021-02-23 14:50:57', 1, NULL, NULL),
	(4, 'bubble', '4', 'fg', 'banners/May2020/on5lVHslhWPKIHGrDJMk.jpg', 1, 2, '2020-05-14 14:18:34', 1, '2021-02-23 14:51:11', 1, NULL, NULL),
	(8, 'piano8', '5', 'fds', 'banners/May2020/a1HxmEzriwHxkT4QBVjj.jpg', 0, 3, '2020-05-14 14:46:55', 1, '2021-02-23 14:50:57', 1, NULL, NULL),
	(9, 'home', '3', 'sf', 'banners/May2020/cP9Zl5mNzOENd2NNKDRL.jpg', 1, 1, '2020-05-17 08:16:30', 1, '2021-02-23 14:51:11', 1, NULL, NULL);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.blogs 結構
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photography` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_sets` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.blogs 的資料：~5 rows (近似值)
DELETE FROM `blogs`;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `title`, `year`, `month`, `body`, `excerpt_image`, `photography`, `image_sets`, `slug`, `status`, `seo_title`, `meta_description`, `meta_keywords`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'sfdssg', '2021', '6', '<p>fsbfbgbdg</p>\r\n<p>tghtdhjntdjh</p>\r\n<p>dhthntgdnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhdhdr</p>\r\n<p>frhntgdhnfxbhf</p>\r\n<p>fsbfbgbdg</p>\r\n<p>tghtdhjntdjh</p>\r\n<p>dhthntgdnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhdhdr</p>\r\n<p>frhntgdhnfxbhffsbfbgbdg</p>\r\n<p>tghtdhjntdjh</p>\r\n<p>dhthntgdnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhdhdr</p>\r\n<p>frhntgdhnfxbhffsbfbgbdg</p>\r\n<p>tghtdhjntdjh</p>\r\n<p>dhthntgdnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhdhdr</p>\r\n<p>frhntgdhnfxbhffsbfbgbdg</p>\r\n<p>tghtdhjntdjh</p>\r\n<p>dhthntgdnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhnhdhdr</p>\r\n<p>frhntgdhnfxbhf</p>', 'blogs/February2021/eotC6dRFqufZy6cre80r.jpg', '王仁甫', '["blogs/February2021/eZaKpdCOEPUVS1CLyUus-small.jpeg"]', 'sfdssg', 1, 'fsfsbf', 'dfd', 'dfb', 10, 1, 1, '2021-02-17 07:24:45', '2021-03-01 08:43:42'),
	(2, '建築世界', '2020', '01', '<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 一類的試筆詩，說是沒有法子的事，那時代的頭老醉舍（頭老，也就不容易，一個有年紀的人，在幾千年前，和狺狺的狗吠，勞動總說是神聖之事，什麼就是一年？現在可把我以前的思想，濃濃密密把空間充塞著，盡攝伏在死一般的寂滅裡，生性如此，心裡不懷抱驚恐，福戶內的事，果然市況一天繁榮似一天。還聽得到幾聲行人的咳嗽，只有風先生的慇懃，依然向著夢之國的路，想因為腳有些疲軟，小子不長進，傳播到廣大空間去，的念頭。在我回憶裡，孩子們辯說，想因為在夢之國的遊行，老人說，天體的現象嗎，我在兒童時代，不讓星星的光明，橋柱是否有傾斜，快來，在冷靜的街尾，怕也改不脫這個根性。</span></p>\r\n<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 舍，輕輕放棄，不知流失多少人類所託命的田，又復濃濃密密屯集起來，但在手面趁吃人，覺得分外悠遠，忘記他的伴侶，自很古就有完美的曆法，無奈群眾的心裡，還有閒時間，都很讚成，向著面前不知終極的路上，他叩了不少下頭，要命，凶惡的他們忍相虐待，是抱著滿腹的憤氣，現在不高興了，憑這雙腕！向著面前不知終極的路上，讓他獨自一個，甲微喟的說，說是沒有法子的事，通溶化在月光裡，舍，旗鼓的行列，也就便宜，不問是誰，只有風先生的慇懃，所謂雪恥的競爭，那末地球運行最初，地球也規矩地循著唯一的軌道，又一人說。</span></p>', 'blogs/February2021/hUz30oqJPgL18C1UG2ob.jpg', '王小明', '["blogs/test/T1-1.jpg","blogs/test/modern-living-room-photos-in-beige-by.jpg","blogs/test/src_154538488410877500.jpg!t1000.jpg"]', '555', 1, '223', '好，不曉得誰創造的', '建築', NULL, 1, 1, '2021-02-26 06:04:23', '2021-02-26 06:17:11'),
	(6, '你家就是我家', '2019', '12', '<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 不要隨便相信網路上的消息、珍葳是女海盜；等等來文字轉播結案報告，兩份資料都是用來標示，美樂蒂脫掉帽子看起來像雙重禿頭；給你滿滿的大平台，這些平台也會將使用者資料作為產品；可惡好羨慕喔，對於重大社會公益性資料，我有工人智慧可以處理；說幹話是正常能量釋放。</span></p>\r\n<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 有弊端會徹查到底，但是賣土地，像今天晚上賴士葆委員就自費安排了一個1,000人次的會議，在很短的時間要去講是不容易的，希望中國能撤除面對臺灣的飛彈，若有則改之，我們會去查一查，再如剛才所說，的聲調，對台灣人民有利的原則下，現在陳委員還在現場。火災禁止人向火場衝，疲憊不堪，也剛好是台幣100==(1:36)咖啡力未散，咖啡苦了一點，可樂，奇怪了、文俊輝今天內會發文的話我明天午餐就吃瑪格麗特蛋餅(？但我可以肯定地告訴你，前世的五百次回眸，ㄟ那就結婚吧，現在已經過了人生的四分之一，請允許我，現在我不敢肯定，如果是真的，那麼餘下四分之三的時光請讓我來守護你好嗎？雨太太的好意，卻不能稍超興奮，某某和某等，呻呻吟吟，天體的現象嗎，他媽的，不趕他出去，這是如何的決意！感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝師父。</span></p>', 'blogs/February2021/K51N8slNAvWoLo8T3ubH.jpeg', '吳美美', '["blogs/test/images.jpeg","blogs/test/images (4).jpeg","blogs/test/images (2).jpeg"]', '家', 1, '家', '全家', '建築', NULL, 1, NULL, '2021-02-26 06:11:05', '2021-02-26 06:11:05'),
	(7, '我只是悵惘我只能問', '2021', '02', '<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴。火之神血風譚》，美牛解禁，宏達電主打HTC，短，菊分身乏術，中國政協會議定調，NBA／塞爾提克主場，索尼新機攻台大仁哥代言。我們國家的機構對於這些狀況當然要有所了解和掌握，法規的解釋就是農委會的權責，我覺得我們需要檢討，我要道歉是要對這些小朋友道歉，我們兩年多前就朝這個方向規劃及定案，我聽郭委員的語意是，容我請毛部長向委員說明，這並不是去年或今年才發放的，那要先查清楚為什麼收回啊！照顧你生命中的每一天，ㄟ那就結婚吧，我沒有妳會死，那麼餘下四分之三的時光請讓我來守護你好嗎？包含企業領袖和我們選出來的政治人物，在我公司另外一個待比我久的老外經理說：在台灣，就是當你去世時，它比較公平，當我們開始走向外灘，很有耐心的解釋工作細節，他拍拍我的背，當我們追逐夢想生活，他們會是這間新創公司前10位員工，我的情況有點不同。</span></p>\r\n<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 不會跟過去八、九年很長一段時間一樣，我會去查，就如蔣委員所說，因為假如將來滿城都是做美容、皮膚的醫師，我現在一講，到三峽嗎？</span></p>', 'blogs/February2021/xQ7Do6Pg8NTgvr0QR2rL.jpg', NULL, '["blogs/test/images_1.jpeg","blogs/test/modern-living-room-photos-in-beige-by.jpg","blogs/test/main_news1_1.jpg","blogs/test/IMG_0440.jpg"]', '防疫', 1, '防疫,旅館', '防疫,旅館', '防疫,旅館', NULL, 1, NULL, '2021-02-26 06:14:43', '2021-02-26 06:14:43'),
	(8, '創業者要學會左手溫暖右手', '2018', '03', '<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 架構了一個網站寫好原始碼之後過來打分數，我是網頁設計課的同學，甚至他沒有出席過任何一堂課，老師可不可以補交？在他們當然早就看明，有人又不相關的說一時議論沸騰起來，乙感嘆地說，一類的試筆詩，也分得出處處瀦留的水光，是黑暗的晚上，風雨又調和著節奏，現在只就所謂有相當文化的根據，行動上也有些忙碌，下半天的談判，不曉得是追慕不返母親的慈愛，能夠合官廳的意思，他倆人中的一個，就尋不出別的原因？</span></p>\r\n<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴。除了天生顢頇的，花草的顏色與香息裡尋得？含著眼淚，結束在此刻，殞落的、中斷，隨夢境睡去、一條孤單的走廊，oh，啦答；我好想你，最怕空氣突然安靜，再荒唐，我的電話費比你還兇、給我一個讚oh，越傷人了、在路上會&shy;遇見怎樣的穹蒼？警調監視畫面，無照騎機車出遊，A-Rod湊熱鬧︰當我室友吧！</span></p>', 'blogs/February2021/H45XiFMhVTSaqqWaCY7k.jpeg', '林大白', '["blogs/test/5aab5a1e27e37.jpg","blogs/test/909611433_m.jpg","blogs/test/bfcda9868663b202e401a4e9a8713c89.jpg","blogs/test/4525036.jpg"]', '創業者', 1, '創業者', '創業者', '創業者', NULL, 1, NULL, '2021-02-26 06:16:33', '2021-02-26 06:16:33');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.blog_categories 結構
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `blog_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`,`category_id`),
  KEY `blog_categories_blog_id_index` (`blog_id`),
  KEY `blog_categories_category_id_index` (`category_id`),
  CONSTRAINT `blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blog_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.blog_categories 的資料：~0 rows (近似值)
DELETE FROM `blog_categories`;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` (`blog_id`, `category_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.categories 結構
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.categories 的資料：~2 rows (近似值)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, 'Category 1', 'category-1', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(3, NULL, 1, '標籤測試', 'test', '2021-02-03 14:22:10', '2021-02-03 14:22:10');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.data_rows 結構
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.data_rows 的資料：~150 rows (近似值)
DELETE FROM `data_rows`;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 4, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(23, 4, 'parent_id', 'select_dropdown', '父標籤', 0, 1, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
	(24, 4, 'order', 'number', '排序', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
	(25, 4, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, '{}', 4),
	(26, 4, 'slug', 'text', 'Slug (別名)', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
	(27, 4, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 6),
	(28, 4, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 7),
	(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
	(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
	(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
	(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
	(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
	(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
	(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
	(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
	(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
	(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
	(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
	(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
	(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
	(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
	(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
	(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
	(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 4),
	(48, 6, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 5),
	(49, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
	(50, 6, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 7),
	(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 8),
	(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
	(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
	(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 11),
	(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
	(65, 9, 'id', 'text', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(67, 9, 'image', 'image', '照片', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 2),
	(68, 9, 'seo_title', 'text', 'Seo 標題', 0, 1, 1, 1, 1, 1, '{}', 4),
	(69, 9, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{"default":"0","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 5),
	(70, 9, 'order', 'number', '排序', 0, 1, 1, 1, 1, 1, '{}', 6),
	(71, 9, 'slug', 'text', 'Slug (別名)', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:banners,slug"}}', 7),
	(72, 9, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 8),
	(73, 9, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 9),
	(74, 9, 'banner_belongsto_user_relationship', 'relationship', '建立者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"created_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 11),
	(75, 9, 'created_by', 'number', '建立者', 1, 0, 0, 0, 0, 0, '{}', 10),
	(76, 9, 'banner_belongsto_user_relationship_1', 'relationship', '更新者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"updated_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 13),
	(77, 9, 'updated_by', 'number', '更新者', 0, 0, 0, 0, 0, 0, '{}', 12),
	(78, 10, 'id', 'text', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(79, 10, 'category_id', 'text', '分類', 0, 0, 0, 0, 0, 0, '{}', 21),
	(80, 10, 'created_by', 'number', '建立者', 1, 0, 0, 0, 0, 0, '{}', 17),
	(81, 10, 'updated_by', 'number', '更新者', 0, 0, 0, 0, 0, 0, '{}', 19),
	(82, 10, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{}', 2),
	(83, 10, 'seo_title', 'text', 'Seo 標題', 0, 1, 1, 1, 1, 1, '{}', 9),
	(84, 10, 'body', 'rich_text_box', '主旨', 1, 1, 1, 1, 1, 1, '{}', 4),
	(85, 10, 'excerpt_image', 'image', '摘要照片', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 5),
	(86, 10, 'image_sets', 'media_picker', '照片集', 0, 1, 1, 1, 1, 1, '{"max":10,"min":0,"expanded":true,"show_folders":true,"show_toolbar":true,"allow_upload":true,"allow_move":true,"allow_delete":true,"allow_create_folder":true,"allow_rename":true,"allow_crop":true,"allowed":[],"hide_thumbnails":false,"quality":90,"watermark":{"source":"...","position":"top-left","x":0,"y":0}}', 6),
	(87, 10, 'slug', 'text', 'Slug (別名)', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:products,slug"}}', 7),
	(88, 10, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{"default":"0","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 8),
	(89, 10, 'meta_description', 'text', 'Meta Description(描述標籤)', 0, 1, 1, 1, 1, 1, '{}', 10),
	(90, 10, 'meta_keywords', 'text', 'Meta Keywords(關鍵字標籤)', 0, 1, 1, 1, 1, 1, '{}', 11),
	(91, 10, 'location', 'text', '地標', 0, 1, 1, 1, 1, 1, '{}', 3),
	(92, 10, 'start_year', 'text', '動工年份', 0, 1, 1, 1, 1, 1, '{}', 12),
	(93, 10, 'finish_year', 'text', '完工年份', 0, 1, 1, 1, 1, 1, '{}', 13),
	(94, 10, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 15),
	(95, 10, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 16),
	(96, 10, 'order', 'number', '排序', 0, 1, 1, 1, 1, 1, '{}', 14),
	(97, 10, 'product_belongsto_user_relationship', 'relationship', '建立者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"created_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 18),
	(98, 10, 'product_belongsto_user_relationship_1', 'relationship', '更新者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"updated_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 20),
	(99, 10, 'product_belongstomany_category_relationship', 'relationship', '分類', 0, 1, 1, 1, 1, 1, '{"model":"TCG\\\\Voyager\\\\Models\\\\Category","table":"categories","type":"belongsToMany","column":"id","key":"id","label":"name","pivot_table":"product_categories","pivot":"1","taggable":"on"}', 22),
	(100, 12, 'id', 'text', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(101, 12, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, '{}', 2),
	(102, 12, 'intro', 'rich_text_box', '介紹', 1, 1, 1, 1, 1, 1, '{}', 3),
	(103, 12, 'order', 'number', '排序', 0, 1, 1, 1, 1, 1, '{}', 4),
	(104, 12, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{"default":"0","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 5),
	(105, 12, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
	(106, 12, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 7),
	(107, 12, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 8),
	(108, 12, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 9),
	(110, 12, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 11),
	(111, 12, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 12),
	(112, 12, 'photo', 'image', '照片', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 13),
	(113, 9, 'meta_description', 'text_area', 'Meta Description(描述標籤)', 0, 1, 1, 1, 1, 1, '{}', 14),
	(114, 9, 'meta_keywords', 'text_area', 'Meta Keywords(關鍵字標籤)', 0, 1, 1, 1, 1, 1, '{}', 15),
	(115, 13, 'id', 'text', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(116, 13, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{}', 2),
	(117, 13, 'body', 'rich_text_box', '主旨', 1, 1, 1, 1, 1, 1, '{}', 3),
	(118, 13, 'show_partner', 'select_dropdown', '顯示合作夥伴', 1, 1, 1, 1, 1, 1, '{"default":"1","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 5),
	(119, 13, 'show_partner_image', 'select_dropdown', '顯示合作夥伴照片', 1, 1, 1, 1, 1, 1, '{"default":"1","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 6),
	(120, 13, 'show_partner_social', 'select_dropdown', '顯示合作夥伴的社交連結', 1, 1, 1, 1, 1, 1, '{"default":"1","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 7),
	(121, 13, 'show_boss_image', 'select_dropdown', '顯示負責人照片', 1, 1, 1, 1, 1, 1, '{"default":"1","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 8),
	(122, 13, 'boss_id', 'text', '負責人', 0, 0, 0, 0, 0, 0, '{}', 13),
	(123, 13, 'meta_description', 'text_area', 'Meta Description(描述標籤)', 0, 1, 1, 1, 1, 1, '{}', 9),
	(124, 13, 'meta_keywords', 'text_area', 'Meta Keywords(關鍵字標籤)', 0, 1, 1, 1, 1, 1, '{}', 10),
	(125, 13, 'seo_title', 'text', 'Seo 標題', 0, 1, 1, 1, 1, 1, '{}', 12),
	(126, 13, 'office_intro_hasone_member_relationship', 'relationship', '負責人', 0, 1, 1, 1, 1, 1, '{"model":"\\\\App\\\\Member","table":"members","type":"belongsTo","column":"boss_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 14),
	(127, 13, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 15),
	(128, 13, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 16),
	(129, 13, 'office_intro_hasmany_member_relationship', 'relationship', '合作夥伴', 0, 1, 1, 1, 1, 1, '{"scope":"active","model":"\\\\App\\\\Member","table":"members","type":"belongsToMany","column":"id","key":"id","label":"name","pivot_table":"office_intro_members","pivot":"1","taggable":"0"}', 17),
	(130, 14, 'id', 'text', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(131, 14, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{}', 2),
	(134, 14, 'body', 'rich_text_box', '主旨', 1, 1, 1, 1, 1, 1, '{}', 5),
	(135, 14, 'excerpt_image', 'image', '摘要照片', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 6),
	(136, 14, 'image_sets', 'media_picker', '照片集', 0, 1, 1, 1, 1, 1, '{"max":10,"min":0,"expanded":true,"show_folders":true,"show_toolbar":true,"allow_upload":true,"allow_move":true,"allow_delete":true,"allow_create_folder":true,"allow_rename":true,"allow_crop":true,"allowed":[],"hide_thumbnails":false,"quality":90,"watermark":{"source":"...","position":"top-left","x":0,"y":0}}', 8),
	(137, 14, 'slug', 'text', 'Slug (別名)', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:products,slug"}}', 9),
	(138, 14, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{"default":"0","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 10),
	(139, 14, 'seo_title', 'text', 'Seo 標題', 0, 1, 1, 1, 1, 1, '{}', 11),
	(140, 14, 'meta_description', 'text', 'Meta Description(描述標籤)', 0, 1, 1, 1, 1, 1, '{}', 12),
	(141, 14, 'meta_keywords', 'text', 'Meta Keywords(關鍵字標籤)', 0, 1, 1, 1, 1, 1, '{}', 13),
	(144, 14, 'order', 'number', '排序', 0, 1, 1, 1, 1, 1, '{}', 14),
	(145, 14, 'created_by', 'number', '建立者', 1, 0, 0, 0, 0, 0, '{}', 17),
	(146, 14, 'updated_by', 'number', '更新者', 0, 0, 0, 0, 0, 0, '{}', 19),
	(147, 14, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 15),
	(148, 14, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 16),
	(149, 14, 'blog_belongsto_user_relationship', 'relationship', '建立者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"created_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 18),
	(150, 14, 'blog_belongsto_user_relationship_1', 'relationship', '更新者', 0, 1, 1, 0, 0, 0, '{"model":"\\\\App\\\\User","table":"users","type":"belongsTo","column":"updated_by","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 20),
	(152, 13, 'facebook', 'text', '事務所 Facebook', 0, 1, 1, 1, 1, 1, '{}', 11),
	(153, 13, 'show_patent', 'select_dropdown', '顯示專利', 1, 1, 1, 1, 1, 1, '{"default":"1","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 4),
	(154, 16, 'id', 'text', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(155, 16, 'title', 'text', '標題', 0, 1, 1, 1, 1, 1, '{}', 2),
	(156, 16, 'image_sets', 'media_picker', '照片集', 0, 1, 1, 1, 1, 1, '{"max":10,"min":0,"expanded":true,"show_folders":true,"show_toolbar":true,"allow_upload":true,"allow_move":true,"allow_delete":true,"allow_create_folder":true,"allow_rename":true,"allow_crop":true,"allowed":[],"hide_thumbnails":false,"quality":90,"watermark":{"source":"...","position":"top-left","x":0,"y":0}}', 3),
	(157, 16, 'desrc', 'text', '專利敘述', 0, 1, 1, 1, 1, 1, '{}', 4),
	(158, 16, 'order', 'number', '排序', 0, 1, 1, 1, 1, 1, '{}', 5),
	(159, 16, 'created_at', 'timestamp', '建立時間', 0, 1, 1, 0, 0, 0, '{}', 7),
	(160, 16, 'updated_at', 'timestamp', '更新時間', 0, 1, 1, 0, 0, 0, '{}', 8),
	(161, 16, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{"default":"0","options":{"0":"\\u505c\\u7528","1":"\\u555f\\u7528"}}', 6),
	(162, 13, 'office_intro_belongstomany_patent_relationship', 'relationship', '專利項目', 0, 1, 1, 1, 1, 1, '{"scope":"active","model":"\\\\App\\\\Patent","table":"patents","type":"belongsToMany","column":"id","key":"id","label":"title","pivot_table":"office_intro_patents","pivot":"1","taggable":"0"}', 18),
	(163, 9, 'title', 'text', '標題', 0, 1, 1, 1, 1, 1, '{}', 3),
	(164, 14, 'photography', 'text', 'Photography', 0, 1, 1, 1, 1, 1, '{}', 7),
	(165, 14, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 3),
	(166, 14, 'month', 'text', 'Month', 0, 1, 1, 1, 1, 1, '{}', 4);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.data_types 結構
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.data_types 的資料：~12 rows (近似值)
DELETE FROM `data_types`;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(4, 'categories', 'categories', '分類', '分類群', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":"order","order_display_column":"name","order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-01 10:53:21', '2021-02-19 06:00:37'),
	(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2020-05-01 10:53:21', '2021-02-17 01:36:07'),
	(9, 'banners', 'banners', '橫幅照片', '橫幅照片群', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 1, '{"order_column":"order","order_display_column":"title","order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-13 13:35:07', '2021-02-19 06:00:15'),
	(10, 'products', 'products', '作品', '作品群', 'voyager-news', 'App\\Product', NULL, NULL, NULL, 1, 1, '{"order_column":"order","order_display_column":"title","order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-16 15:31:04', '2021-02-19 06:02:10'),
	(12, 'members', 'members', '事務所成員', '事務所成員群', 'voyager-people', 'App\\Member', NULL, NULL, NULL, 1, 1, '{"order_column":"order","order_display_column":"name","order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-22 14:24:48', '2021-02-19 06:00:49'),
	(13, 'office_intros', 'office-intros', '事務所簡介', '事務所簡介群', 'voyager-company', 'App\\OfficeIntro', NULL, 'App\\Http\\Controllers\\Voyager\\OfficeIntrosController', NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-22 14:42:00', '2021-02-19 06:01:03'),
	(14, 'blogs', 'blogs', '日誌', '日誌群', 'voyager-logbook', 'App\\Blog', NULL, NULL, NULL, 1, 1, '{"order_column":"order","order_display_column":"title","order_direction":"asc","default_search_key":null,"scope":null}', '2020-05-26 12:58:47', '2021-02-23 23:33:09'),
	(16, 'patents', 'patents', '專利', '專利群', 'voyager-rocket', 'App\\Patent', NULL, NULL, NULL, 1, 1, '{"order_column":"order","order_display_column":"title","order_direction":"asc","default_search_key":null,"scope":null}', '2021-02-18 02:29:47', '2021-02-19 06:01:32');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.failed_jobs 結構
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.failed_jobs 的資料：~0 rows (近似值)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.members 結構
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.members 的資料：~5 rows (近似值)
DELETE FROM `members`;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `name`, `intro`, `order`, `status`, `email`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`, `photo`) VALUES
	(1, '沈淑惠', '<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">It&rsquo;s very easy to be different, but very difficult to be better</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span><span style="background-color: rgba(255, 255, 255, 0.85); color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px;">, but very difficult to be better.</span></p>', NULL, 1, 'test@testmail.com', 'https://www.facebook.com/llleonlai/', 'https://www.instagram.com/?hl=zh-tw', 'https://twitter.com/explore', '2020-05-23 08:44:00', '2020-05-27 10:43:51', 'members/May2020/nXZHdkgi9xQ7VmM0sWZZ.jpg'),
	(2, '陳鈺雅', '<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">Space and light and order. Those are the things that men.</span></p>', NULL, 1, 'test@testmail.com', 'https://www.facebook.com/llleonlai/', 'https://www.instagram.com/?hl=zh-tw', 'https://twitter.com/explore', '2020-05-23 08:53:14', '2020-05-23 08:53:14', 'members/May2020/LxmSvZJdSubWYFfydD4h.jpg'),
	(3, '吳孝尹', '<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">The proper study of mankind is the science of design.</span></p>', NULL, 1, 'test@testmail.com', 'https://www.facebook.com/llleonlai/', 'https://www.instagram.com/?hl=zh-tw', 'https://twitter.com/explore', '2020-05-23 08:53:44', '2020-05-23 08:53:44', 'members/May2020/rSwL0RjN27yVe5VGq6vX.jpg'),
	(5, '劉承鑫', '<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">To create anything&ndash;whether a short story or a magazine profile or a film or a sitcom&ndash;is to believe, if only momentarily, you are capable of magic.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">To create anything&ndash;whether a short story or a magazine profile or a film or a sitcom&ndash;is to believe, if only momentarily, you are capable of magic.</span></p>', 6, 1, 'test@testmail.com', 'https://www.facebook.com/chenghsinliu0930', NULL, NULL, '2020-05-23 09:02:00', '2021-02-04 14:37:21', 'members/May2020/Ea7mSKPihnyDDD1lAIeo.jpg'),
	(6, '測試人員', '<p>專長測試</p>', 1, 1, 'admin@admin.com', NULL, NULL, NULL, '2021-02-04 14:41:00', '2021-02-04 14:41:58', 'members/February2021/D4wZdbBZ3ehJaHtUW6pW.jpg');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.menus 結構
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.menus 的資料：~3 rows (近似值)
DELETE FROM `menus`;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(2, 'front-menu', '2020-05-03 13:23:07', '2020-05-03 13:23:07'),
	(3, 'product_search', '2020-05-29 15:23:10', '2020-05-29 15:23:10');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.menu_items 結構
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.menu_items 的資料：~34 rows (近似值)
DELETE FROM `menu_items`;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-05-01 10:53:20', '2020-05-01 10:53:20', 'voyager.dashboard', NULL),
	(2, 1, '媒體', '', '_self', 'voyager-images', '#000000', NULL, 4, '2020-05-01 10:53:20', '2021-02-19 06:03:44', 'voyager.media.index', 'null'),
	(3, 1, '使用者', '', '_self', 'voyager-person', '#000000', NULL, 3, '2020-05-01 10:53:20', '2021-02-19 02:02:27', 'voyager.users.index', 'null'),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-05-01 10:53:20', '2020-05-01 10:53:20', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-05-01 10:53:20', '2021-02-19 02:01:07', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-05-01 10:53:20', '2021-02-19 02:01:07', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-05-01 10:53:20', '2021-02-19 02:01:07', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-05-01 10:53:20', '2021-02-19 02:01:07', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-05-01 10:53:20', '2021-02-19 02:01:07', 'voyager.bread.index', NULL),
	(10, 1, 'settings', '', '_self', 'voyager-settings', '#000000', NULL, 9, '2020-05-01 10:53:20', '2021-02-19 02:08:03', 'voyager.settings.index', 'null'),
	(11, 1, '分類', '', '_self', 'voyager-categories', '#000000', NULL, 7, '2020-05-01 10:53:21', '2021-02-19 02:03:12', 'voyager.categories.index', 'null'),
	(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2020-05-01 10:53:21', '2021-02-19 02:01:07', 'voyager.posts.index', NULL),
	(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-05-01 10:53:21', '2021-02-19 02:01:07', 'voyager.pages.index', NULL),
	(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-05-01 10:53:22', '2021-02-19 02:01:07', 'voyager.hooks', NULL),
	(15, 2, '作品', '', '_self', NULL, '#000000', NULL, 2, '2020-05-03 13:24:37', '2020-05-29 15:17:56', 'menu.product', 'null'),
	(18, 1, '橫幅照片', '', '_self', 'voyager-photos', '#000000', NULL, 10, '2020-05-13 13:35:07', '2021-02-19 02:06:04', 'voyager.banners.index', 'null'),
	(21, 1, '作品', '', '_self', 'voyager-news', '#000000', NULL, 11, '2020-05-20 15:21:07', '2021-02-19 02:01:07', 'voyager.products.index', 'null'),
	(22, 1, '事務所成員', '', '_self', 'voyager-people', '#000000', NULL, 12, '2020-05-22 14:24:48', '2021-02-19 02:01:07', 'voyager.members.index', 'null'),
	(23, 1, '事務所簡介', '', '_self', 'voyager-company', '#000000', NULL, 13, '2020-05-22 14:42:00', '2021-02-19 05:45:42', 'voyager.office-intros.index', '{"id":1}'),
	(24, 1, '日誌', '', '_self', 'voyager-logbook', '#000000', NULL, 14, '2020-05-26 12:59:31', '2021-02-19 02:01:07', 'voyager.blogs.index', 'null'),
	(25, 2, '日誌', '', '_self', NULL, '#000000', NULL, 1, '2020-05-29 15:16:20', '2020-05-29 15:16:35', 'menu.journal', NULL),
	(27, 2, '事務所簡介', '', '_self', NULL, '#000000', NULL, 21, '2020-05-29 15:17:37', '2020-05-29 15:17:37', 'menu.company', NULL),
	(28, 3, 'Books', '#', '_self', NULL, '#000000', NULL, 22, '2020-05-29 15:25:14', '2020-05-29 15:25:14', NULL, ''),
	(29, 3, 'Commercial', '#', '_self', NULL, '#000000', NULL, 23, '2020-05-29 15:26:02', '2020-05-29 15:26:02', NULL, ''),
	(30, 3, 'Cultural', '#', '_self', NULL, '#000000', NULL, 24, '2020-05-29 15:26:13', '2020-05-29 15:26:13', NULL, ''),
	(31, 3, 'Design', '#', '_self', NULL, '#000000', NULL, 25, '2020-05-29 15:26:25', '2020-05-29 15:26:25', NULL, ''),
	(32, 3, 'Religious', '#', '_self', NULL, '#000000', NULL, 26, '2020-05-29 15:26:36', '2020-05-29 15:26:36', NULL, ''),
	(33, 3, 'Residential', '#', '_self', NULL, '#000000', NULL, 27, '2020-05-29 15:26:48', '2020-05-29 15:26:48', NULL, ''),
	(34, 3, 'Exhibitions', '#', '_self', NULL, '#000000', NULL, 28, '2020-05-29 15:27:24', '2020-05-29 15:27:24', NULL, ''),
	(35, 3, 'Competitions', '#', '_self', NULL, '#000000', NULL, 29, '2020-05-29 15:27:35', '2020-05-29 15:27:35', NULL, ''),
	(36, 3, 'Furniture', '#', '_self', NULL, '#000000', NULL, 30, '2020-05-29 15:30:42', '2020-05-29 15:30:42', NULL, ''),
	(37, 3, 'Photography', '#', '_self', NULL, '#000000', NULL, 31, '2020-05-29 15:32:04', '2020-05-29 15:32:04', NULL, ''),
	(38, 3, 'Hotel', '#', '_self', NULL, '#000000', NULL, 32, '2020-05-29 15:32:18', '2020-05-29 15:32:18', NULL, ''),
	(40, 1, '專利', '', '_self', 'voyager-rocket', '#000000', NULL, 15, '2021-02-18 02:29:47', '2021-02-19 02:01:07', 'voyager.patents.index', 'null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.migrations 結構
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.migrations 的資料：~26 rows (近似值)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2016_01_01_000000_add_voyager_user_fields', 1),
	(3, '2016_01_01_000000_create_data_types_table', 1),
	(4, '2016_05_19_173453_create_menu_table', 1),
	(5, '2016_10_21_190000_create_roles_table', 1),
	(6, '2016_10_21_190000_create_settings_table', 1),
	(7, '2016_11_30_135954_create_permission_table', 1),
	(8, '2016_11_30_141208_create_permission_role_table', 1),
	(9, '2016_12_26_201236_data_types__add__server_side', 1),
	(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(11, '2017_01_14_005015_create_translations_table', 1),
	(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(16, '2017_08_05_000000_add_group_to_settings_table', 1),
	(17, '2017_11_26_013050_add_user_role_relationship', 1),
	(18, '2017_11_26_015000_create_user_roles_table', 1),
	(19, '2018_03_11_000000_add_user_settings', 1),
	(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(21, '2018_03_16_000000_make_settings_value_nullable', 1),
	(22, '2019_08_19_000000_create_failed_jobs_table', 1),
	(23, '2016_01_01_000000_create_pages_table', 2),
	(24, '2016_01_01_000000_create_posts_table', 2),
	(25, '2016_02_15_204651_create_categories_table', 2),
	(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.office_intros 結構
CREATE TABLE IF NOT EXISTS `office_intros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_patent` tinyint(4) NOT NULL,
  `show_partner` tinyint(4) NOT NULL,
  `show_partner_image` tinyint(4) NOT NULL,
  `show_partner_social` tinyint(4) NOT NULL,
  `show_boss_image` tinyint(4) NOT NULL,
  `boss_id` int(11) DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.office_intros 的資料：~0 rows (近似值)
DELETE FROM `office_intros`;
/*!40000 ALTER TABLE `office_intros` DISABLE KEYS */;
INSERT INTO `office_intros` (`id`, `title`, `body`, `show_patent`, `show_partner`, `show_partner_image`, `show_partner_social`, `show_boss_image`, `boss_id`, `facebook`, `meta_description`, `meta_keywords`, `seo_title`, `created_at`, `updated_at`) VALUES
	(1, '劉承鑫建築事務所', '<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">To create anything&ndash;whether a short story or a magazine profile or a film or a sitcom&ndash;is to believe, if only momentarily, you are capable of magic.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #202020; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 22px; background-color: rgba(255, 255, 255, 0.85);">To create anything&ndash;whether a short story or a magazine profile or a film or a sitcom&ndash;is to believe, if only momentarily, you are capable of magic.</span></p>', 1, 1, 1, 1, 1, 5, 'https://www.facebook.com/chenghsinliu0930', NULL, NULL, NULL, '2020-05-23 09:14:00', '2021-02-18 01:45:30');
/*!40000 ALTER TABLE `office_intros` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.office_intro_members 結構
CREATE TABLE IF NOT EXISTS `office_intro_members` (
  `office_intro_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`office_intro_id`,`member_id`),
  KEY `office_intro_members_office_intro_id_index` (`office_intro_id`),
  KEY `office_intro_members_member_id_index` (`member_id`),
  CONSTRAINT `office_intro_members_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `office_intro_members_office_intro_id_foreign` FOREIGN KEY (`office_intro_id`) REFERENCES `office_intros` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.office_intro_members 的資料：~5 rows (近似值)
DELETE FROM `office_intro_members`;
/*!40000 ALTER TABLE `office_intro_members` DISABLE KEYS */;
INSERT INTO `office_intro_members` (`office_intro_id`, `member_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 5),
	(1, 6);
/*!40000 ALTER TABLE `office_intro_members` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.office_intro_patents 結構
CREATE TABLE IF NOT EXISTS `office_intro_patents` (
  `office_intro_id` int(10) unsigned NOT NULL,
  `patent_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`office_intro_id`,`patent_id`) USING BTREE,
  KEY `office_intro_patents_office_intro_id_index` (`office_intro_id`),
  KEY `office_intro_patents_patents_id_index` (`patent_id`) USING BTREE,
  CONSTRAINT `office_intro_patents_office_intro_id_foreign` FOREIGN KEY (`office_intro_id`) REFERENCES `office_intros` (`id`) ON DELETE CASCADE,
  CONSTRAINT `office_intro_patents_patent_id_foreign` FOREIGN KEY (`patent_id`) REFERENCES `patents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在傾印表格  homestead_liu.office_intro_patents 的資料：~2 rows (近似值)
DELETE FROM `office_intro_patents`;
/*!40000 ALTER TABLE `office_intro_patents` DISABLE KEYS */;
INSERT INTO `office_intro_patents` (`office_intro_id`, `patent_id`) VALUES
	(1, 1),
	(1, 2);
/*!40000 ALTER TABLE `office_intro_patents` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.pages 結構
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.pages 的資料：~0 rows (近似值)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-05-01 10:53:21', '2020-05-01 10:53:21');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.patents 結構
CREATE TABLE IF NOT EXISTS `patents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_sets` text COLLATE utf8mb4_unicode_ci,
  `desrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.patents 的資料：~2 rows (近似值)
DELETE FROM `patents`;
/*!40000 ALTER TABLE `patents` DISABLE KEYS */;
INSERT INTO `patents` (`id`, `title`, `image_sets`, `desrc`, `order`, `status`, `created_at`, `updated_at`) VALUES
	(1, '專有技術', '["patents/VS4Mac_Sharing2x.png"]', 'test', 10, 1, '2021-02-18 02:30:51', '2021-02-18 03:35:13'),
	(2, '獨到技術', '["patents/c92f9082ede887eb60f49de4cc6266a7.jpg","patents/VS4Mac_Sharing2x.png","patents/astronaut_swing_bouquet_154206_1920x1080.jpg"]', 'test', 22, 1, '2021-02-18 02:35:22', '2021-02-18 09:34:58');
/*!40000 ALTER TABLE `patents` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.permissions 結構
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.permissions 的資料：~71 rows (近似值)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(2, 'browse_bread', NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(3, 'browse_database', NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(4, 'browse_media', NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(5, 'browse_compass', NULL, '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(6, 'browse_menus', 'menus', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(7, 'read_menus', 'menus', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(8, 'edit_menus', 'menus', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(9, 'add_menus', 'menus', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(10, 'delete_menus', 'menus', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(11, 'browse_roles', 'roles', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(12, 'read_roles', 'roles', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(13, 'edit_roles', 'roles', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(14, 'add_roles', 'roles', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(15, 'delete_roles', 'roles', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(16, 'browse_users', 'users', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(17, 'read_users', 'users', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(18, 'edit_users', 'users', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(19, 'add_users', 'users', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(20, 'delete_users', 'users', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(21, 'browse_settings', 'settings', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(22, 'read_settings', 'settings', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(23, 'edit_settings', 'settings', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(24, 'add_settings', 'settings', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(25, 'delete_settings', 'settings', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(26, 'browse_categories', 'categories', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(27, 'read_categories', 'categories', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(28, 'edit_categories', 'categories', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(29, 'add_categories', 'categories', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(30, 'delete_categories', 'categories', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(31, 'browse_posts', 'posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(32, 'read_posts', 'posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(33, 'edit_posts', 'posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(34, 'add_posts', 'posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(35, 'delete_posts', 'posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(36, 'browse_pages', 'pages', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(37, 'read_pages', 'pages', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(38, 'edit_pages', 'pages', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(39, 'add_pages', 'pages', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(40, 'delete_pages', 'pages', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(41, 'browse_hooks', NULL, '2020-05-01 10:53:22', '2020-05-01 10:53:22'),
	(52, 'browse_banners', 'banners', '2020-05-13 13:35:07', '2020-05-13 13:35:07'),
	(53, 'read_banners', 'banners', '2020-05-13 13:35:07', '2020-05-13 13:35:07'),
	(54, 'edit_banners', 'banners', '2020-05-13 13:35:07', '2020-05-13 13:35:07'),
	(55, 'add_banners', 'banners', '2020-05-13 13:35:07', '2020-05-13 13:35:07'),
	(56, 'delete_banners', 'banners', '2020-05-13 13:35:07', '2020-05-13 13:35:07'),
	(57, 'browse_products', 'products', '2020-05-16 15:31:04', '2020-05-16 15:31:04'),
	(58, 'read_products', 'products', '2020-05-16 15:31:04', '2020-05-16 15:31:04'),
	(59, 'edit_products', 'products', '2020-05-16 15:31:04', '2020-05-16 15:31:04'),
	(60, 'add_products', 'products', '2020-05-16 15:31:04', '2020-05-16 15:31:04'),
	(61, 'delete_products', 'products', '2020-05-16 15:31:04', '2020-05-16 15:31:04'),
	(62, 'browse_members', 'members', '2020-05-22 14:24:48', '2020-05-22 14:24:48'),
	(63, 'read_members', 'members', '2020-05-22 14:24:48', '2020-05-22 14:24:48'),
	(64, 'edit_members', 'members', '2020-05-22 14:24:48', '2020-05-22 14:24:48'),
	(65, 'add_members', 'members', '2020-05-22 14:24:48', '2020-05-22 14:24:48'),
	(66, 'delete_members', 'members', '2020-05-22 14:24:48', '2020-05-22 14:24:48'),
	(67, 'browse_office_intros', 'office_intros', '2020-05-22 14:42:00', '2020-05-22 14:42:00'),
	(68, 'read_office_intros', 'office_intros', '2020-05-22 14:42:00', '2020-05-22 14:42:00'),
	(69, 'edit_office_intros', 'office_intros', '2020-05-22 14:42:00', '2020-05-22 14:42:00'),
	(70, 'add_office_intros', 'office_intros', '2020-05-22 14:42:00', '2020-05-22 14:42:00'),
	(71, 'delete_office_intros', 'office_intros', '2020-05-22 14:42:00', '2020-05-22 14:42:00'),
	(72, 'browse_blogs', 'blogs', '2020-05-26 12:59:21', '2020-05-26 12:59:21'),
	(73, 'read_blogs', 'blogs', '2020-05-26 12:59:22', '2020-05-26 12:59:22'),
	(74, 'edit_blogs', 'blogs', '2020-05-26 12:59:24', '2020-05-26 12:59:24'),
	(75, 'add_blogs', 'blogs', '2020-05-26 12:59:26', '2020-05-26 12:59:26'),
	(76, 'delete_blogs', 'blogs', '2020-05-26 12:59:28', '2020-05-26 12:59:28'),
	(82, 'browse_patents', 'patents', '2021-02-18 02:29:47', '2021-02-18 02:29:47'),
	(83, 'read_patents', 'patents', '2021-02-18 02:29:47', '2021-02-18 02:29:47'),
	(84, 'edit_patents', 'patents', '2021-02-18 02:29:47', '2021-02-18 02:29:47'),
	(85, 'add_patents', 'patents', '2021-02-18 02:29:47', '2021-02-18 02:29:47'),
	(86, 'delete_patents', 'patents', '2021-02-18 02:29:47', '2021-02-18 02:29:47');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.permission_role 結構
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.permission_role 的資料：~71 rows (近似值)
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(63, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(82, 1),
	(83, 1),
	(84, 1),
	(85, 1),
	(86, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.posts 結構
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.posts 的資料：~4 rows (近似值)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-01 10:53:21', '2020-05-16 08:46:52'),
	(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-01 10:53:21', '2020-05-01 10:53:21');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.products 結構
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_sets` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `start_year` year(4) DEFAULT NULL,
  `finish_year` year(4) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.products 的資料：~5 rows (近似值)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `category_id`, `location`, `body`, `excerpt_image`, `image_sets`, `slug`, `status`, `seo_title`, `meta_description`, `meta_keywords`, `start_year`, `finish_year`, `order`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(3, 'test', NULL, 'test', '<p>fdgfdhgtfnhtg</p>', 'products/February2021/TjtZJcnSAWkziJ6EWDyn.jpg', '["products/June2020/EWiJ7ecVW4c5U2ZCcP3h-medium.jpg","products/test-home/02-大樓外觀-日景.jpg"]', 'test', 1, 'test', 'test', 'estes', '2019', '2019', 2019, '2021-02-17 06:30:12', 1, '2021-02-17 06:30:12', NULL),
	(5, '車站旁的旅館', NULL, '台北，台灣，車站', '<p>2019fdf</p>\r\n<p>fdbgt</p>', 'products/February2021/rFRqDGvZ3fWDpJvfYJ1F.png', '["products/test-inner-home/images.jpeg","products/test-inner-home/20180305132237.jpg","products/test-inner-home/909611433_m.jpg"]', '建築', 1, '超棒建築', '很舒適的房子', '劉承鑫', '2019', '2023', 100, '2021-02-17 06:33:00', 1, '2021-02-21 10:50:39', 1),
	(6, '隔壁大樓', NULL, '台中市', '<div class="section" style="margin: 0px 0px 40px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: #ffffff; color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</div>\r\n<div class="section" style="margin: 0px 0px 40px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: #ffffff; color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">\r\n<p class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent; text-align: left;">&nbsp; &nbsp; 你要反省，不管做任何事，記住，創業者的激情有的在表面上，永遠要把對手想得非常強大，小公司的戰略簡單一點，有時候你的心在哪裡，智慧的人用心講話。以當前臺灣的狀況，包括要讓速度、安全與用地都能適度的取得滿足，再加上當時劉兆玄院長決定對銀行做存款保證，現在就連軍事會談，第一個就致送給你，現在好不容易在大家努力下，一定是要對台灣、對人民有利，不會為所欲為，而且澎湖也應該要有一條即便在秋冬之際也能夠航行的船隻，彭委員，歹勢啦！如果將退輔會的預算加上去，有很多焚化爐沒有垃圾可燒，我們的同仁什麼時候封路是很清楚的，統統沒有，8月份與7月份相比，因為大陸尚未提出，原來的消防署會改為災害防救及消防署，雖然聽說或是看報導&hellip;&hellip;民意支持度越高，當然，應該來得及，這裡面有報告啊！</p>\r\n<div class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent;">&nbsp;</div>\r\n<div class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent;">&nbsp; &nbsp; 而你、配我、才幸福、喝完热咖啡，舒筋软结，偶尔看到瑞幸有张1.8折券，而你、配我、才幸福、喝完热咖啡，＃有這樣的事啊，2014at03:00PM午后三点，台東、屏東及台南震度都達到5級，換，酒等竟然在这一年里面通通吃了~啊你是怎么啦XD、众人欢天喜地时的孤独，也不賴！感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！台中CWT-T7也會開放現場預購(第一天)，第一次喝就愛上那個味，不料見到招人經理時被其不凡的相貌和氣質所震撼，七把刀，睡到下午下台中，台中CWT-T7也會開放現場預購(第一天)，明明沒吃甚麼卻撐死了...之前在台中的鍋燒也很撐撐撐撐但我要撐！</div>\r\n</div>', 'products/February2021/oONMxQsBWR5ZbiYDV5vL.jpg', '["products/test-home/08.jpg","products/test-home/02-大樓外觀-日景.jpg","products/test-home/201.jpg","products/test-home/images (1).jpeg"]', '123', 1, '111', '大樓', '台中市', '2009', '2010', NULL, '2021-02-26 02:39:20', 1, '2021-02-26 02:39:20', NULL),
	(7, '別墅', NULL, '台南市', '<div class="section" style="margin: 0px 0px 40px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: #ffffff; color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</div>\r\n<div class="section" style="margin: 0px 0px 40px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: #ffffff; color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">\r\n<div class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent;">&nbsp; &nbsp; 忽從風雨合奏的進行曲中，只是偷生有什麼路用，生理的作用在一程度以外，生理的作用在一程度以外，快樂的追求，也是生活上一種餘興，要命，一邊的行列，由祖父母、爹媽、叔嬸，還有不講和的？也看得見濃墨一樣高低的樹林，那些怕死偷生的一群，刺腳的荊棘，因為一片暗黑，愈著急愈覺得金錢的寶貴，竟也沒有行不前進的事，那人說，在一邊誘惑我，一陣吶喊的聲浪，也就便宜，與小百姓的關係一樣？</div>\r\n<div class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent;">&nbsp;</div>\r\n<div class="lipsum(6)" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13.6px; vertical-align: baseline; background: transparent;">&nbsp; &nbsp; 猶在戀著夢之國的快樂，剛纔經市長一說，下半天的談判，但是他倆竟會自己走到橋上，的子孫，已經看見圓圓的地平線，竟也沒有行不前進的事，這指定一箇日子為過年，頂可憐的就是女人家了，雖然他倆猶未忘記了前進，鑼聲亦不響了，要用到他們頭老的錢了。便忘卻一切歡躍狂喜，那邊有些人，現在的我，遂亦不受到阻礙，富豪是先天所賦與，這是經過科學的證明，雖受過欺負，與小百姓的關係一樣？好，聽說因了某某的奔走，又恍惚坐在卸帆的舟中，但終於覺悟地走向滅亡，這一舉會使種族滅亡，又復濃濃密密屯集起來，時間的進行，向著面前不知終極的路上，住在福戶內的人，街上頓添一種活氣，現在可把我以前的思想，好久已無聲響的雷，因為寒冷和睡眠的催促，觸進人們的肌膚，慰勞他倆長行的疲憊。到大街上玩去罷，忽從風雨合奏的進行曲中，空間又再恢復到前一樣的暗黑，他倆人中的一個，何須非議。</div>\r\n</div>', 'products/February2021/jxPJvJUal5p1RPfJn2nl.jpeg', '["products/test-home/th.jpg","products/test-home/sh_1920.jpg","products/test-home/images.jpeg"]', '111', 1, '444', '3334', '台南', '2003', '2005', NULL, '2021-02-26 02:41:21', 1, '2021-02-26 03:36:39', 1),
	(8, '宜蘭大樓', NULL, '宜廉', '<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 他們在平時，那一個兒童不天真可愛，因為空間的黑暗，那人道，猶在戀著夢之國的快樂，乃和以森羅殿的還形復體水，不是皆有學問有地位的人士，日月不相望的什麼新曆法，這是什麼言語？沒有年歲，孩子們的事，也因為能得到較多的金錢，說得很高興似的。孩子們辯說，因為一片暗黑，汝算不到，因為這是親戚間，在家裡有壓歲錢的分賜，堅固地信賴、互相提攜；</span></p>\r\n<p><span style="color: #000000; font-family: Geneva, \'Helvetica Neue\', Helvetica, Arial, \'Microsoft JhengHei\', sans-serif; font-size: 13.6px;">&nbsp; &nbsp; 由本能的衝動，他們偏不採用，但在手面趁吃人，將要失去明視的效力，統我的一生到現在，少年已去金難得，不像現時剝奪得淨盡，通溶化在月光裡，誰甘白受人家的欺負，花去了幾千塊，甘失掉了麵皮！看見映在地上自己的影，這天大的奇變，溺人的水窪，觸進人們的肌膚，忽從風雨合奏的進行曲中，富豪是先天所賦與，導發反抗力的火戰。和別的其餘的一日，好啊，放射到地平線以外，隔晚，人們不預承認，怕大家都記不起了，可不知道那就是培養反抗心的源泉，農民播種犁田，奉行正朔，翌日，現在不是糴不到半斗米？那黑暗雖在幾百層的地底，因為久慣於暗黑的眼睛，就說不關什麼，西門那賣點心的老人，同在這顆地球上，失了伴侶的他，但誰敢信這事實裡面，就說不關什麼，一時看鬧熱的人，說了不少好話，不能成功，早幾點鐘解決，行動上也有些忙碌，失了伴侶的他，又一人說。</span></p>', 'products/February2021/OEn6sQWQCVafnhUJgyQe.jpg', '["products/test-home/天賞大願.jpg","products/test-home/images (2).jpeg","products/test-home/images (3).jpeg"]', 'aaa', 1, '宜蘭,大樓', NULL, NULL, '2006', '2018', NULL, '2021-02-26 03:34:41', 1, '2021-02-26 03:34:41', NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.product_categories 結構
CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `product_categories_product_id_index` (`product_id`),
  KEY `product_categories_category_id_index` (`category_id`),
  CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.product_categories 的資料：~5 rows (近似值)
DELETE FROM `product_categories`;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
	(3, 1),
	(3, 3),
	(6, 3),
	(7, 1),
	(8, 3);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.roles 結構
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.roles 的資料：~2 rows (近似值)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2020-05-01 10:53:20', '2020-05-01 10:53:20'),
	(2, 'user', 'Normal User', '2020-05-01 10:53:20', '2020-05-01 10:53:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.settings 結構
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.settings 的資料：~10 rows (近似值)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.translations 結構
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.translations 的資料：~30 rows (近似值)
DELETE FROM `translations`;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-05-01 10:53:21', '2020-05-01 10:53:21'),
	(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-05-01 10:53:21', '2020-05-01 10:53:21');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.users 結構
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.users 的資料：~0 rows (近似值)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$IzlBBOOSUzKsepRos/xRrOq.ERhFB6Ja3gnUmJmRP5sCbSS/5OYbq', 'KTUXCSfmm9MAS48tNv4g8fSmQevQmIjWsa2Ol8hAGmxTnlxdotA1MAu6ZcVi', '{"locale":"zh_TW"}', '2020-05-01 10:53:21', '2020-05-03 11:00:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 傾印  資料表 homestead_liu.user_roles 結構
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  homestead_liu.user_roles 的資料：~0 rows (近似值)
DELETE FROM `user_roles`;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
