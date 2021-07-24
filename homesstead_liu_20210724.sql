-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: homestead_liu
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (2,'dog','2','sdf','banners/April2021/iB5e3Qc6iparbiCplAGq.jpg',0,6,'2020-05-13 15:08:00',1,'2021-05-15 09:34:31',1,NULL,NULL),(3,'shoes','3','dsg','banners/April2021/u6DLFp7uvCuw5cToV71I.jpg',1,3,'2020-05-13 15:14:58',1,'2021-05-15 09:37:43',1,NULL,NULL),(4,'bubble','4','fg','banners/April2021/FtwpxqcRnL7rCXW7iwjJ.jpg',1,1,'2020-05-14 14:18:34',1,'2021-05-15 09:37:08',1,NULL,NULL),(8,'piano8','5','fds','banners/April2021/vUuh34QC4PXVFrXiCfOt.jpg',0,5,'2020-05-14 14:46:55',1,'2021-05-15 09:34:26',1,NULL,NULL),(9,'home','3','sf','banners/April2021/Ace5yCb00rnHgKiKWReq.jpg',1,4,'2020-05-17 08:16:30',1,'2021-05-15 09:37:48',1,NULL,NULL),(10,'house1','都市建築設計1','都市','banners/May2021/sToK0ZIJvVR7jmbDpDwK.jpg',1,0,'2021-05-15 09:35:41',1,'2021-05-15 09:36:37',1,'都市','都市');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `blog_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`,`category_id`),
  KEY `blog_categories_blog_id_index` (`blog_id`),
  KEY `blog_categories_category_id_index` (`category_id`),
  CONSTRAINT `blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blog_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,1);
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'兼具北歐風與禪風優點的極簡美學：11種設計實例，帶你了解JapanKi','2021','6','<p>過完年後的新春雜誌專題，我們要為讀者介紹一種這兩年在歐美悄悄吹起的新派設計：JapanKi。這是融合了斯堪地那維亞北歐風，以及日本禪風這兩種經典風格的設計。乍看之下，北歐風與禪風一西一東，文化差異極大，但其實在設計上頗有相通會融之處。JapanKi，就是結合了北歐風與禪風主張極簡乾淨，自然建材，以及恬淡寧靜的居住感受，但更突出之處在於，JapanKi融合了東方懂得欣賞留白樸拙的哲思，也展現了北歐喜愛日光的明亮愉悅，是令人耳目一新的現代融會。但相對地，如果你喜歡偏搶眼華麗，細節繁多的設計，可能尋覓其他設計風格會是更好的選擇。今天我們就結合台灣設計師的11張美圖實例，向大家簡單介紹JapanKi的設計特色。一起來看看吧。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. 禪風沉靜與北歐清亮的共生</p>\r\n<p>JapanKi融合了禪風和北歐風兩種室內設計風格。這兩種風格都強調簡約自然，但一般來說禪風更偏向表現大地色的濃郁沉穩，北歐風則喜好淡彩明亮，樂於嘗試輕盈與符合人體工學的金屬材質家具。此外禪風誕生於日本，也有強調小空間多功能收納的面向。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>2. 極簡與仛寂的默契設計</p>\r\n<p>JapanKi身為禪風和北歐風的混生fusion，乾淨極簡是最鮮明的美學特色。整個空間裝飾以實用、必要、重視結構線條的明淨為主，於大量留白創造寧靜典雅的沉澱感受。</p>','blogs/May2021/3ifTYU9j6fsaV4Ne1lai.jpg','王仁甫','[\"blogs/amir-hosseini-CtA-GClVlS0-unsplash.jpg\",\"blogs/amir-hosseini-IBfZ4laePSQ-unsplash (1).jpg\",\"blogs/joel-filipe-jfLEavCEMtw-unsplash.jpg\"]','JapanKi',1,'JapanKi','JapanKi','JapanKi',1,1,1,'2021-02-17 07:24:45','2021-07-24 11:39:41'),(2,'室內佈置：利用油水彩跳色，讓你的房間頓時成為焦點！','2020','12','<p>房間的牆面平凡無趣，但是你卻不知道該如何以省錢、省時、省事的方式妝點房間？若是如此的話你一定要認識油水彩水彩跳色的這種便宜又簡單的好方法！</p>\r\n<p>那麼，到底什麼樣的顏色才算是跳色？好看的跳色配搭又有哪些？今天就讓我們邊參考台灣設計師的作品邊學習吧。</p>\r\n<p>&nbsp;</p>\r\n<p>什麼是跳色？</p>\r\n<p>跳色的定義有分為兩種，第一種指的是泛指一些濃度高、亮度高而成鮮艷的顏色，比如說鮮紅、橘色、青色以及天藍色等。</p>\r\n<p>&nbsp;</p>\r\n<p>吸睛的牆面設計</p>\r\n<p>跳色的另一個意思就是能夠吸引我們目光、跟房間的主要色調不同的顏色，比如說一個個純白的簡約客廳裡有一個黑色的電視櫃，那麼黑色就會我們所說的跳色。簡單來說，能夠跟房間主色成強烈對比的顏色，我們也可以叫它為跳色。</p>\r\n<p>&nbsp;</p>\r\n<p>使用油水彩跳色做室內佈置有什麼好處？</p>\r\n<p>一般我們習慣以單一的顏色來完成室內裝潢佈置，比如說把牆面全部都粉刷成純白色。然而，這樣子的牆壁我們看久了也會生厭、也會覺得沉悶吧？因此，如果以油水彩跳色的方法來妝點牆面，整個空間瞬間就會活了起來！</p>\r\n<p>此外，把牆面重新上油水彩的程序不複雜，就算是自己在家也可以DIY，因此絕對是一個省時、省錢又省事的佈置方法喔！在選擇油水彩方面，目前市面上功能最全面的是乳膠漆。這是一種以清水為溶劑的塗料，因此安全度較高，而一些環保乳膠漆更沒有難聞刺鼻的氣味。除此以外，乳膠漆的漆膜比起其他的塗料（例如水性水泥漆、油性水泥漆和調和漆）都來得厚，而且防霉防水的效果以及耐用度都較佳。</p>\r\n<p>&nbsp;</p>\r\n<p>跳脫清新的綠色廚房</p>\r\n<p>寬闊的開放式廚房以黑白色的家具作為主要，再以鮮艷的綠色作為跳色，使空間頓時變得活潑清新。</p>\r\n<p>另外，天花板以黃色的烤漆玻璃組成，並設有時尚的小圓燈。</p>\r\n<p>&nbsp;</p>\r\n<p>開放式餐廳裡的橘色牆面</p>\r\n<p>一般而言，以跳色作為裝飾的占比最好不要超過10%，這包括利用跳色油水彩來妝點牆面，或者是一些顏色鮮艷突出的小物品或者飾品，例如抱枕。</p>\r\n<p>這一個開放式廚房連餐廳主要以白色和灰色來做主色，一邊的牆面印上世界地圖，另一邊是一面鮮橘色的裝飾牆，這樣子的跳色比例就剛剛好。</p>\r\n<p>&nbsp;</p>\r\n<p>色彩的心理暗示效果</p>\r\n<p>在此我們也想要告訴大家，其實顏色跟食慾是有很大的關係喔！如果你的餐廳會用到黃色、橋色這一類明亮的顏色的話，是有效刺激食慾的！相反，如果以冷色系（例如藍色）來妝點空間的話，我們一般的胃口就會變得不大好。</p>','blogs/April2021/TW76stHcNsEXcijjYEP4.jpg','王小明','[\"blogs/matt-reames-XmncTYEydb0-unsplash.jpg\",\"blogs/matt-reames-XXu47nUchNo-unsplash.jpg\",\"blogs/max-simonov-1phpK07MwsU-unsplash.jpg\"]','paint-ski',1,'paint-ski','paint-ski','paint-ski',2,1,1,'2021-02-26 06:04:23','2021-07-24 11:41:03'),(6,'開模即完工：清地模建築的特性、工法、優缺點','2020','12','<p>清地模建築因為展現出混凝土冷靜原始的質地，不僅堅固耐用，又能表露幾近匠人工藝的結構美感，從二十世紀初期就是十分受建築師注目與挑戰的經典建築形式。今天就讓我們一起針對清地模的特性、工法、優缺點等小知識，一窺清地模的特殊風貌。&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>一、 什麼是清地模建築？</p>\r\n<p>清地模建築（Architectural concrete, fair-faced concrete）指的是將混凝土一次澆注成型，「開模即完工」，後續不再有任何加工塗裝的建築。一般的混凝土會經過灌漿、澆置、硬固、外部塗裝等程序，但清地模是將混凝土澆置拆模後就不再動作，僅在事後為了避免日後被雨水侵蝕浸損，會噴上一層防水保護膜。清地模工法環環相扣且一氣呵成，比如灌漿不能中斷，水泥成分調配的比例，模板的分割、預留孔洞與支撐等，每個細節都不能疏忽馬虎，否則脫模後表面就會留疤、氣泡、不完整，是非常考驗建築師專業技術與合作精神的建築樣態。&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>二、清地模的現代建築精神</p>\r\n<p>由於清地模可以直接展現混凝土最原本的面貌，施作程序又相當複雜不容差錯，從質地與工法都具體而微反映了現代建築的設計精神。在質地上，清地模素淨不假雕飾的外觀給人鮮明的清潔感，用於原始風、工業風、日式北風等建築都能很到位地表現房子簡潔、寧靜卻又粗獷富個性的設計精神。</p>\r\n<p>&nbsp;</p>\r\n<p>清地模建築舉例</p>\r\n<p>在工法上，由於整套施工從計劃、用料、施作都需要長期的規劃與合作，更需要精準的設計理念，才能使最後的灌漿脫模一次到位，並不只是單靠建築師的專業或工人的個人經驗就能完工，而是需要有效的溝通與管理。比如只重視水泥工程，建築落成後可能毫無美感，但若只重視設計美學，同樣會使建物出現不可彌補的技術缺失。這樣的建築特性因此受到不少當代建築師如科嗄意（Le Corbusier）、安西尼雷蒙（Antonin Raymond）、安藤忠雄等人的喜愛。以亞洲最具知名度的安藤忠雄為例，安藤忠雄活用清地模細膩善於反映光影的特質，並結合玻璃、木料等增加光透感與自然感的建材，其所打造的「住吉の長屋」、「光之教堂」乃至台中的亞洲現代美術館，都是很有特色的清地模建築。&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>三、清地模建築的優點(1)</p>\r\n<p>清地模建築最大的優點就是表現混凝土簡鍊的美感與堅固耐久的特性。清地模的表面光滑堅硬，灰涼的外觀具有純粹耐看的現代美感，不需額外上漆，所以相對於需要塗飾的磚牆，清地模建築可以減省不少化學塗料的使用與花費，並展現物料工法本身之美。此外，因為清地模具有不易藏汙納垢的特性，平日僅需以清地擦拭清理，十分簡便，定期以專業護劑保養牆體甚至可以延續數百年的壽命。</p>\r\n<p>&nbsp;</p>\r\n<p>清地模建築的優點(2)</p>\r\n<p>另外，清地模房屋因表面有毛細孔，吸熱散熱快，在冬天有一定的蓄溫保暖效果。富個性美，用料簡潔，耐用且具氣溫調節度，都是清地模建築的優點。</p>\r\n<p>&nbsp;</p>\r\n<p>四、 清地模建築的缺點</p>\r\n<p>清地模因建築工法更為複雜精準，一但出錯是無法更改的，更需仰賴專家的經驗以掌握成色比例，施作難度比起其他的建材更高。若日後建築出現問題也不易拆除，必須動用怪手才能拆除。此外，清地模建築使用久了，也會有裂縫、劣化、落塵、潮濕生苔等問題，最好能定期搭配專用護劑進行牆壁護理。在施作與拆除兩方面皆需克服高難度、不可逆的建築工法所帶來的可能成本風險。&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>五、日本的清地模建築</p>\r\n<p>除了台中的北美現代美術館，台北的法鼓山農禪寺、八里十三行博物館、鶯歌陶瓷博物館、苗栗的三義木雕博物館、高雄的大東文化藝術中心等台灣知名公共建築，都可看到清地模的施用。</p>\r\n<p>&nbsp;</p>\r\n<p>清地模建築返璞歸真的自然感，反映了人對空間結構本質性的省思，也表現了人與自然的生命力，是一種至今仍歷久彌新的的建築樣態。</p>','blogs/April2021/F8BQoblSg5fPNud3JZ0H.jpg','吳美美','[\"blogs/thulfiqar-ali-AUsJ12zagA4-unsplash.jpg\",\"blogs/tom-podmore-pJX9a-vAWfc-unsplash.jpg\",\"blogs/wanja-njama-2xS41OWvTAI-unsplash.jpg\"]','clear-road',1,'clear-road','clear-road','clear-road',5,1,1,'2021-02-26 06:11:05','2021-07-24 11:47:00'),(7,'耐水耐用的無毒塗料：樹酯漆的特點與 DIY 步驟','2020','12','<p>如果你正思索著要用哪一種塗料來妝點牆壁，那麼你可以考慮無毒又美觀的樹酯漆！在眾多的外牆塗料之中，樹酯漆到底有什麼過人之處？它的價格又是多少？如果想要自己DIY的話，步驟會很多很麻煩嗎？在這一本點子簿裡我們將告訴你關於樹酯漆的一切，現在就趕快往下探索吧!</p>\r\n<p>&nbsp;</p>\r\n<p>1. 什麼是樹酯漆？適用於哪些地方？</p>\r\n<p>樹酯漆是一種常見的裝飾塗料，由各種顏色以及粒徑都不同的樹粉加上樹脂加工而成，能夠讓牆面產生像樹頭一樣耐水、耐磨以及硬度高的表層。</p>\r\n<p>&nbsp;</p>\r\n<p>樹酯漆是一種水性塗料，意思就是說它以水為溶劑，而非一般油漆會用到的有機溶劑（比如說甲苯、二甲苯、甲醛與丁醇等），因此樹酯漆不會有難聞刺鼻的臭味，對人體不會造成負擔。另外由於它具有滲透性，能夠滲透牆壁裡，使兩者牢固地結合在一起，因此很少會出現開裂或空鼓的情況。</p>\r\n<p>&nbsp;</p>\r\n<p>樹酯漆有著粗糙的外表，因此一般都會用來粉刷戶外牆壁，比如說花園裡的牆或者是陽台的部分。另外，樹酯漆也可以用來作為室內塗料使用，比如說用來妝點走工業風設計路線的客廳。</p>\r\n<p>&nbsp;</p>\r\n<p>2. 樹酯漆的優點</p>\r\n<p>安全無毒：剛才提到樹酯漆是以水作為溶劑，因此相比起一般以有機物為溶劑的油漆來說，樹酯漆無毒又比較安全。</p>\r\n<p>&nbsp;</p>\r\n<p>耐用耐水：新一代樹酯漆的原材料都是樹脂和樹材，使油漆本身擁有高硬度、耐磨的優點。在施工的時候，師傅一般都會以防水層打底，再以保護漆刷最表面的一層，因此也會使得樹酯漆有耐水的特質。</p>\r\n<p>&nbsp;</p>\r\n<p>樹酯漆妝點</p>\r\n<p>美觀：樹酯漆通常都會用來妝點戶外牆壁或者是配合工業風室內裝潢使用，這是因為它擁有極簡的外表，然而同時也擁有微微凹凸的質感，整體看起來低調卻有特色。</p>\r\n<p>&nbsp;</p>\r\n<p>施作容易：樹酯漆的施作容易，就算想要自己在家DIY動手做也可以！而有關於DIY的步驟，我們會在第4點提到喔！</p>\r\n<p>&nbsp;</p>\r\n<p>3. 樹酯漆的缺點</p>\r\n<p>有色差：樹酯漆的顏色取決於樹材本身的顏色，而樹材之間本來就會存在色差，這可能導致同一色系的樹酯漆會有深淺不一的問題。</p>\r\n<p>&nbsp;</p>\r\n<p>容易卡灰塵：樹酯漆含有細小的砂樹，導致油漆表面凹凸不平。換句話說，凹凸不平的地方就會特別容易卡灰塵。由於這種油漆不耐髒，因為當我們在選擇顏色的時候，應該以深色不顯髒的顏色為主。</p>\r\n<p>&nbsp;</p>\r\n<p>4. DIY樹酯漆</p>\r\n<p>如果大家喜歡自己動手做的話，那就應該要參考以下DIY的步驟：</p>\r\n<p>&nbsp;</p>\r\n<p>1) 先確保牆壁表面平整</p>\r\n<p>&nbsp;</p>\r\n<p>如果原先的牆面表面不平，例如有未完全剝落的漆面的話，那麼我們必須要先把舊漆面完全清除掉。如果壁面凹凸有破損，那麼就要進行補土。完成平整程序後，應確保牆面表面乾淨無灰塵。</p>\r\n<p>&nbsp;</p>\r\n<p>DIY樹酯漆</p>\r\n<p>2) 上防水漆</p>\r\n<p>&nbsp;</p>\r\n<p>雖然樹頭噴漆本身有耐水的特性，可是如果是用在戶外牆面上的話，我們還是應該先在底層塗上防水料，這樣子防水效果才能持久。在平整乾淨的牆壁上均勻塗上防水漆，並依照產品的指示重覆塗2-3層。在這邊要記得必須先等每一層都乾透後才上另外一層，不然的話水氣會留在牆壁內，有機會造成壁癌的問題喔！</p>\r\n<p>&nbsp;</p>\r\n<p>3) 上樹頭噴漆</p>\r\n<p>&nbsp;</p>\r\n<p>完成防水層後，我們可以用工匠專用的噴槍來把樹酯漆均勻地噴在牆壁上。在此要留意的是，不同品牌和由不同原材料組成的樹頭噴都有不同的施工要求，然而一般來說噴樹酯漆起碼有3道施工，由第一層的底漆、主材、到最外面的保護漆。</p>\r\n<p>&nbsp;</p>\r\n<p>5. 樹酯漆的規格與價格</p>\r\n<p>一桶樹酯漆重量約為<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">20</span>公斤（<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">15</span>公升），可噴<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">1-2</span>坪左右的面積，參考價格一般約為<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">NT 1200-1500</span>左右。然而不同品牌的塗料都會有不同的成份與品質，因此價格上也會有差異。如果你想要知道最新的價錢，歡迎你直接跟專家們查詢看看喔！</p>','blogs/March2021/LH6hHtFJmBWDmvPytLe0.jpg',NULL,'[\"blogs/parrish-freeman-58QVNWSB6qQ-unsplash.jpg\",\"blogs/parrish-freeman-9cxRcs3ntho-unsplash.jpg\",\"blogs/paul-hutton-8oovMwOeeP0-unsplash.jpg\"]','air-paint',1,'air-paint','air-paint','air-paint',3,1,1,'2021-02-26 06:14:43','2021-07-24 11:42:14'),(8,'書櫃設計：理想的書櫃尺寸和10款高顏值的本地設計','2020','12','<p>洗臉盆的款式一般有分為台上式以及下嵌式兩種，而對於空間比較小的房室來說，前者會比較合適。台上盆是一種安裝在房櫃台面之上的瓷質洗臉盆，安裝的程序比較容易，只要留意去水位即可。另外，台上盆不會影響房下櫃的收納空間，是為另一個最明顯的優點。</p>\r\n<p>&nbsp;</p>\r\n<p>圖中所展示的是一間套房裡的衛房空間 ，屋主以好整理為主要訴求。設計師利用黑、白色搭配展現俐落質感；並依照畸零牆面訂製收納櫃體，充分發揮空間坪效。孤形台上盆的設計簡單又實用，旁邊空置的台面更可以用來擺放盥洗用品。底下的收納櫃部分採用開放式設計，方便平常取放毛巾。</p>\r\n<p>&nbsp;</p>\r\n<p>4. 純白瓷質房室櫃</p>\r\n<p>純白的房室櫃台面與洗手台都由白陶瓷打造而成，另外牆上還有三個白色收納架子，整體設計一致。</p>\r\n<p>&nbsp;</p>\r\n<p>洗臉盆的材質可以有很多種，而當中以陶瓷的款式最普遍。陶瓷的表面光滑，清潔容易，而且防水性能良好。然而，如果平常使用或一開始安裝不當，日後可能會造成破裂。</p>\r\n<p>&nbsp;</p>\r\n<p>挑選陶瓷面盆主要看釉面和吸水率。釉面的質量關係到耐污性，愈光滑緻密的釉面，其耐用度會愈高。另外，吸水率愈低，面盆愈不容易開裂或變形。</p>\r\n<p>&nbsp;</p>\r\n<p>5. 時尚幹練的沉穩型房櫃</p>\r\n<p>屋主鐘愛自然，並且希望室內設計能夠保持簡潔，同時能讓各種天然素材呈現它們最原始的美感。因此在設計房室時，設計師採用了灰色色調的樹材面料來鋪設牆面和地板，讓石紋自然的點綴空間。</p>\r\n<p>&nbsp;</p>\r\n<p>為了突顯出牆面和地板之美，廚房櫃的設計相對來說就變得比較簡單，整體走沉穩路線，並且炭灰色為主色要調，再搭配白色洗手台來營造視覺上的對比。</p>\r\n<p>&nbsp;</p>\r\n<p>6. 古典奢華風的大理石房櫃</p>\r\n<p>大理石的紋理獨特，給人高貴典雅的感覺，因此很常見於各種室內設計之中。天然大理石表面有細孔，因此耐污會比其他的天然石材弱，所以我們看到的大理石台面其實表面都會經過拋光處理。經過處理的大理石台面手感很好，而且光滑的表面使日常清潔變得輕鬆容易。</p>\r\n<p>&nbsp;</p>\r\n<p>如果你房櫃台面是屬於大理石材質的話，記得要盡量保持台面乾爽，盥洗後應該用抹布把水漬擦乾，不然的話日子久了，水垢會比較難清理，這個時候就要用小蘇打粉或者專用清潔劑來解決問題。</p>\r\n<p>&nbsp;</p>\r\n<p>7. 粗曠又帶精緻的雙人房室櫃</p>\r\n<p>房室採用原始石皮為主題，設計師以水泥粉光、石材面料以及造型鐵件來營造出一種「粗曠中相異的精緻衝突美感」。房櫃本身綜合了木板與石材兩種視覺效果強烈的材質，並且採用了懸牆式設計，在底部留下縫隙。雙人洗手台的部分採用的是線條優美的白瓷，優雅的設計跟房室整體的粗糙感形成強烈對比，同時也讓人看得順眼。</p>\r\n<p>&nbsp;</p>\r\n<p>9. 雙人石質房室櫃</p>\r\n<p>石頭一向都是許多人最喜愛的材質，特別是如果你的家是走自然風或者北歐風路線的話，溫潤的石材絕對是不可或缺的一種材質。如果你的房室的抽濕功能夠好，平常也能保持乾爽的話，那麼一個由石頭打造而成的房室櫃絕對是一個好選擇。</p>\r\n<p>&nbsp;</p>\r\n<p>10. 典雅的復古風房室櫃</p>\r\n<p>線板一直以來都是歐美古典風的室內設計的必要元素之一。如果你希望打造出一個復古風房室的話，那麼你就應該選擇一個擁有線板櫃門金屬把手的房室櫃。</p>\r\n<p>&nbsp;</p>\r\n<p>為了使房室設計更具整體感，設計師甚至還以復古磚和花磚來鋪設房室櫃台面與牆面。不過如果你真的選擇以磚片來鋪設表面的話，記得要避面讓磚片長期碰到水，不然的話磚片很容易會變形或浮起，到時候就要重新鋪設整個表面。</p>','blogs/April2021/UZNjrU7HfVGMzwzt8Vij.jpg','林大白','[\"blogs/tom-podmore-IUaUKlLP4u8-unsplash.jpg\",\"blogs/vadim-morozov-iWc1teuZkV4-unsplash.jpg\",\"blogs/tom-podmore-pJX9a-vAWfc-unsplash.jpg\"]','room-cabinet-size',1,'room-cabinet-size','room-cabinet-size','room-cabinet-size',4,1,1,'2021-02-26 06:16:33','2021-07-24 11:44:22');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'建築設計','architectural-design','2020-05-01 10:53:21','2021-03-22 02:27:18'),(3,NULL,2,'室內設計','interior design','2021-02-03 14:22:10','2021-03-22 02:28:16');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','名稱',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',2),(3,1,'email','text','電子信箱',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|email|unique:users|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\",\"email\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u5fc5\\u9808\\u70ba\\u96fb\\u5b50\\u4fe1\\u7bb1\"}}}',3),(4,1,'password','password','密碼',1,0,0,1,1,0,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),(6,1,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(8,1,'avatar','image','頭像',0,1,1,1,1,1,'{}',8),(9,1,'user_belongsto_role_relationship','relationship','後台角色',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','後台角色群',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',12),(12,2,'id','number','ID',1,0,0,0,0,0,'{}',1),(13,2,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|unique:menus|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|unique:roles|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\"}}}',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',5),(21,1,'role_id','text','後台角色',0,1,1,1,1,1,'{}',9),(22,4,'id','number','ID',1,1,1,0,0,0,'{}',1),(23,4,'parent_id','select_dropdown','父標籤',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}},\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','number','排序',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|integer\",\"messages\":{\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\",\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":1}',3),(25,4,'name','text','名稱',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',4),(26,4,'slug','text','Slug (別名)',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"required|unique:categories,slug|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\"}}}',5),(27,4,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',6),(28,4,'updated_at','timestamp','更新時間',0,1,1,0,0,0,'{}',7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,'{}',1),(45,6,'author_id','text','Author',1,0,0,0,0,0,'{}',2),(46,6,'title','text','Title',1,1,1,1,1,1,'{}',3),(47,6,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',4),(48,6,'body','rich_text_box','Body',0,1,1,1,1,1,'{}',5),(49,6,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',0,1,1,1,1,1,'{}',7),(51,6,'meta_keywords','text','Meta Keywords',0,1,1,1,1,1,'{}',8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',10),(54,6,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',11),(55,6,'image','image','Page Image',0,1,1,1,1,1,'{}',12),(65,9,'id','text','ID',1,0,1,0,0,0,'{}',1),(67,9,'image','image','照片',1,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',3),(68,9,'seo_title','text','Seo 標題',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',5),(69,9,'status','select_dropdown','狀態',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"0\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',8),(70,9,'order','number','排序',0,1,1,0,0,0,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}},\"default\":\"1\"}',2),(71,9,'slug','text','Slug (別名)',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"required|unique:banners,slug|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\"}}}',9),(72,9,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',10),(73,9,'updated_at','timestamp','更新時間',0,0,1,0,0,0,'{}',11),(74,9,'banner_belongsto_user_relationship','relationship','建立者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"created_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(75,9,'created_by','number','建立者',1,0,0,0,0,0,'{}',12),(76,9,'banner_belongsto_user_relationship_1','relationship','更新者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"updated_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(77,9,'updated_by','number','更新者',0,0,0,0,0,0,'{}',14),(78,10,'id','text','ID',1,0,1,0,0,0,'{}',1),(79,10,'category_id','text','分類',0,0,0,0,0,0,'{}',15),(80,10,'created_by','number','建立者',1,0,0,0,0,0,'{}',19),(81,10,'updated_by','number','更新者',0,0,0,0,0,0,'{}',21),(82,10,'title','text','標題',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',3),(83,10,'seo_title','text','Seo 標題',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',10),(84,10,'body','rich_text_box','主旨',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',5),(85,10,'excerpt_image','image','摘要照片',1,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',6),(86,10,'image_sets','media_picker','照片集',0,1,1,1,1,1,'{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0},\"thumbnails\":[{\"type\":\"resize\",\"name\":\"medium\",\"width\":\"1000\"},{\"type\":\"resize\",\"name\":\"small\",\"width\":\"500\"},{\"type\":\"resize\",\"name\":\"cropped\",\"width\":\"300\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(87,10,'slug','text','Slug (別名)',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"required|unique:products,slug|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\"}}}',8),(88,10,'status','select_dropdown','狀態',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"0\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',9),(89,10,'meta_description','text','Meta Description(描述標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',11),(90,10,'meta_keywords','text','Meta Keywords(關鍵字標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',12),(91,10,'location','text','地標',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',4),(92,10,'start_year','year','動工年份',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|date_format:Y\",\"messages\":{\"date_format\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',13),(93,10,'finish_year','year','完工年份',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|date_format:Y\",\"messages\":{\"date_format\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',14),(94,10,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',17),(95,10,'updated_at','timestamp','更新時間',0,0,1,0,0,0,'{}',18),(96,10,'order','number','排序',0,1,1,0,0,0,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',2),(97,10,'product_belongsto_user_relationship','relationship','建立者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"created_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',20),(98,10,'product_belongsto_user_relationship_1','relationship','更新者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"updated_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',22),(99,10,'product_belongstomany_category_relationship','relationship','分類',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_categories\",\"pivot\":\"1\",\"taggable\":\"on\"}',16),(100,12,'id','text','ID',1,0,1,0,0,0,'{}',1),(101,12,'name','text','名稱',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',3),(102,12,'intro','rich_text_box','介紹',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',5),(103,12,'order','number','排序',0,1,1,0,0,0,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',2),(104,12,'status','select_dropdown','狀態',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"0\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',6),(105,12,'email','text','Email',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|email|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"email\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u5fc5\\u9808\\u70ba\\u96fb\\u5b50\\u4fe1\\u7bb1\"}}}',7),(106,12,'facebook','text','Facebook',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',8),(107,12,'instagram','text','Instagram',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',9),(108,12,'twitter','text','Twitter',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',10),(110,12,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',11),(111,12,'updated_at','timestamp','更新時間',0,0,1,0,0,0,'{}',12),(112,12,'photo','image','照片',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',4),(113,9,'meta_description','text','Meta Description(描述標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',6),(114,9,'meta_keywords','text','Meta Keywords(關鍵字標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',7),(115,13,'id','text','ID',1,0,0,0,0,0,'{}',1),(116,13,'title','text','標題',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',2),(117,13,'body','rich_text_box','主旨',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',3),(118,13,'show_partner','select_dropdown','顯示合作夥伴',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"1\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',5),(119,13,'show_partner_image','select_dropdown','顯示合作夥伴照片',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"1\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',6),(120,13,'show_partner_social','select_dropdown','顯示合作夥伴的社交連結',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"1\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',7),(121,13,'show_boss_image','select_dropdown','顯示負責人照片',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"1\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',8),(122,13,'boss_id','text','負責人',0,0,0,0,0,0,'{}',13),(123,13,'meta_description','text','Meta Description(描述標籤)',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',9),(124,13,'meta_keywords','text','Meta Keywords(關鍵字標籤)',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',10),(125,13,'seo_title','text','Seo 標題',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',12),(126,13,'office_intro_hasone_member_relationship','relationship','負責人',0,1,1,1,1,1,'{\"model\":\"\\\\App\\\\Member\",\"table\":\"members\",\"type\":\"belongsTo\",\"column\":\"boss_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),(127,13,'created_at','timestamp','建立時間',0,0,0,0,0,0,'{}',15),(128,13,'updated_at','timestamp','更新時間',0,0,0,0,0,0,'{}',16),(129,13,'office_intro_hasmany_member_relationship','relationship','合作夥伴',0,1,1,1,1,1,'{\"scope\":\"active\",\"model\":\"\\\\App\\\\Member\",\"table\":\"members\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"office_intro_members\",\"pivot\":\"1\",\"taggable\":\"0\"}',17),(130,14,'id','text','ID',1,0,1,0,0,0,'{}',1),(131,14,'title','text','標題',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',3),(134,14,'body','rich_text_box','主旨',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:65535\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',6),(135,14,'excerpt_image','image','摘要照片',1,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(136,14,'image_sets','media_picker','照片集',0,1,1,1,1,1,'{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0},\"thumbnails\":[{\"type\":\"resize\",\"name\":\"medium\",\"width\":\"1000\"},{\"type\":\"resize\",\"name\":\"small\",\"width\":\"500\"},{\"type\":\"resize\",\"name\":\"cropped\",\"width\":\"300\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',9),(137,14,'slug','text','Slug (別名)',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"required|unique:blogs,slug|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\",\"unique\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u503c\\u4e0d\\u53ef\\u91cd\\u8907\"}}}',10),(138,14,'status','select_dropdown','狀態',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"0\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',11),(139,14,'seo_title','text','Seo 標題',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',12),(140,14,'meta_description','text','Meta Description(描述標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',13),(141,14,'meta_keywords','text','Meta Keywords(關鍵字標籤)',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',14),(144,14,'order','number','排序',0,1,1,0,0,0,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"integer\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}},\"default\":\"1\"}',2),(145,14,'created_by','number','建立者',1,0,0,0,0,0,'{}',17),(146,14,'updated_by','number','更新者',0,0,0,0,0,0,'{}',19),(147,14,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',15),(148,14,'updated_at','timestamp','更新時間',0,0,1,0,0,0,'{}',16),(149,14,'blog_belongsto_user_relationship','relationship','建立者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"created_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',18),(150,14,'blog_belongsto_user_relationship_1','relationship','更新者',0,0,1,0,0,0,'{\"model\":\"\\\\App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"updated_by\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',20),(152,13,'facebook','text','事務所 Facebook',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:65535\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',11),(153,13,'show_patent','select_dropdown','顯示專利',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"1\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',4),(154,16,'id','text','ID',1,0,1,0,0,0,'{}',1),(155,16,'title','text','標題',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',3),(156,16,'image_sets','media_picker','照片集',0,1,1,1,1,1,'{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0},\"thumbnails\":[{\"type\":\"resize\",\"name\":\"medium\",\"width\":\"1000\"},{\"type\":\"resize\",\"name\":\"small\",\"width\":\"500\"},{\"type\":\"resize\",\"name\":\"cropped\",\"width\":\"300\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',4),(157,16,'desrc','text','專利敘述',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\",\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',5),(158,16,'order','number','排序',0,1,1,0,0,0,'{\"validation\":{\"rule\":\"nullable|integer\",\"messages\":{\"date_format\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',2),(159,16,'created_at','timestamp','建立時間',0,1,1,0,0,0,'{}',7),(160,16,'updated_at','timestamp','更新時間',0,0,1,0,0,0,'{}',8),(161,16,'status','select_dropdown','狀態',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"[:attribute] \\u70ba\\u5fc5\\u586b\\u9805\\u76ee\"}},\"default\":\"0\",\"options\":{\"0\":\"\\u505c\\u7528\",\"1\":\"\\u555f\\u7528\"}}',6),(162,13,'office_intro_belongstomany_patent_relationship','relationship','專利項目',0,1,1,1,1,1,'{\"scope\":\"active\",\"model\":\"\\\\App\\\\Patent\",\"table\":\"patents\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"office_intro_patents\",\"pivot\":\"1\",\"taggable\":\"0\"}',18),(163,9,'title','text','標題',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',4),(164,14,'photography','text','攝影師',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|max:255\",\"messages\":{\"max\":\"[:attribute] \\u6700\\u5927\\u9577\\u5ea6 :max\"}}}',8),(165,14,'year','year','年份',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|date_format:Y\",\"messages\":{\"date_format\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',4),(166,14,'month','month','月份',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable|date_format:m\",\"messages\":{\"date_format\":\"[:attribute] \\u8a72\\u9805\\u76ee\\u683c\\u5f0f\\u4e0d\\u6b63\\u78ba\"}}}',5),(167,1,'email_verified_at','timestamp','電子信箱認證時間',0,0,0,1,1,1,'{}',6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-05-01 10:53:20','2021-05-14 13:49:02'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-05-01 10:53:20','2021-05-14 17:17:31'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-05-01 10:53:20','2021-05-14 13:49:42'),(4,'categories','categories','分類','分類群','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-01 10:53:21','2021-05-14 17:48:14'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2020-05-01 10:53:21','2020-05-01 10:53:21'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-05-01 10:53:21','2021-02-17 01:36:07'),(9,'banners','banners','橫幅照片','橫幅照片群','voyager-photos','App\\Banner',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-13 13:35:07','2021-05-14 17:57:15'),(10,'products','products','作品','作品群','voyager-news','App\\Product',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-16 15:31:04','2021-07-24 08:50:16'),(12,'members','members','事務所成員','事務所成員群','voyager-people','App\\Member',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-22 14:24:48','2021-05-14 18:06:50'),(13,'office_intros','office-intros','事務所簡介','事務所簡介群','voyager-company','App\\OfficeIntro',NULL,'App\\Http\\Controllers\\OfficeIntros\\OfficeIntrosController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-22 14:42:00','2021-05-14 17:17:43'),(14,'blogs','blogs','日誌','日誌群','voyager-logbook','App\\Blog',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-26 12:58:47','2021-07-24 08:56:25'),(16,'patents','patents','專利','專利群','voyager-rocket','App\\Patent',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-02-18 02:29:47','2021-07-24 08:55:02');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'沈淑惠1','<p>又德問去灣光外生</p>\r\n<p>值什識顯環飛須。增景電再過</p>\r\n<p>病邊一團長學裡運得哥</p>\r\n<p>Line ID : 0988877333</p>\r\n<p>123</p>',NULL,1,'test@testmail.com','https://www.facebook.com/llleonlai/','https://www.instagram.com/?hl=zh-tw','https://twitter.com/explore','2020-05-23 08:44:00','2021-07-24 08:10:07','members/July2021/hTCcqwPmFMvrc9teVyrr.jpg'),(3,'吳孝尹','<p>個院<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;/&nbsp;</span>育年<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;/&nbsp;</span>自民黨<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;/&nbsp;</span>坡成<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;/</span>中因境</p>',NULL,1,'test@testmail.com','https://www.facebook.com/llleonlai/','https://www.instagram.com/?hl=zh-tw','https://twitter.com/explore','2020-05-23 08:53:44','2021-05-15 09:24:53','members/May2020/rSwL0RjN27yVe5VGq6vX.jpg'),(5,'無名氏','<div>上官少前生能民光</div>\r\n<div>我易成備事間布原人選新</div>\r\n<div>那記動接員再和品眾後</div>',6,1,'test@testmail.com','https://www.facebook.com/llleonlai/','https://www.facebook.com/llleonlai/','https://www.facebook.com/llleonlai/','2020-05-23 09:02:00','2021-05-15 11:18:43','members/May2020/Ea7mSKPihnyDDD1lAIeo.jpg');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-05-01 10:53:20','2020-05-01 10:53:20','voyager.dashboard',NULL),(2,1,'媒體','','_self','voyager-images','#000000',NULL,4,'2020-05-01 10:53:20','2021-02-19 06:03:44','voyager.media.index','null'),(3,1,'使用者','','_self','voyager-person','#000000',NULL,3,'2020-05-01 10:53:20','2021-02-19 02:02:27','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2020-05-01 10:53:20','2020-05-01 10:53:20','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2020-05-01 10:53:20','2021-02-19 02:01:07',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-05-01 10:53:20','2021-02-19 02:01:07','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-05-01 10:53:20','2021-02-19 02:01:07','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-05-01 10:53:20','2021-02-19 02:01:07','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-05-01 10:53:20','2021-02-19 02:01:07','voyager.bread.index',NULL),(10,1,'settings','','_self','voyager-settings','#000000',NULL,9,'2020-05-01 10:53:20','2021-02-19 02:08:03','voyager.settings.index','null'),(11,1,'分類','','_self','voyager-categories','#000000',NULL,7,'2020-05-01 10:53:21','2021-02-19 02:03:12','voyager.categories.index','null'),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-05-01 10:53:22','2021-02-19 02:01:07','voyager.hooks',NULL),(15,2,'作品','','_self',NULL,'#000000',NULL,2,'2020-05-03 13:24:37','2020-05-29 15:17:56','menu.product','null'),(18,1,'橫幅照片','','_self','voyager-photos','#000000',NULL,10,'2020-05-13 13:35:07','2021-02-19 02:06:04','voyager.banners.index','null'),(21,1,'作品','','_self','voyager-news','#000000',NULL,11,'2020-05-20 15:21:07','2021-02-19 02:01:07','voyager.products.index','null'),(22,1,'事務所成員','','_self','voyager-people','#000000',NULL,12,'2020-05-22 14:24:48','2021-02-19 02:01:07','voyager.members.index','null'),(23,1,'事務所簡介','','_self','voyager-company','#000000',NULL,13,'2020-05-22 14:42:00','2021-02-19 05:45:42','voyager.office-intros.index','{\"id\":1}'),(24,1,'日誌','','_self','voyager-logbook','#000000',NULL,14,'2020-05-26 12:59:31','2021-02-19 02:01:07','voyager.blogs.index','null'),(25,2,'日誌','','_self',NULL,'#000000',NULL,1,'2020-05-29 15:16:20','2020-05-29 15:16:35','menu.journal',NULL),(27,2,'事務所簡介','','_self',NULL,'#000000',NULL,21,'2020-05-29 15:17:37','2020-05-29 15:17:37','menu.company',NULL),(28,3,'Books','#','_self',NULL,'#000000',NULL,22,'2020-05-29 15:25:14','2020-05-29 15:25:14',NULL,''),(29,3,'Commercial','#','_self',NULL,'#000000',NULL,23,'2020-05-29 15:26:02','2020-05-29 15:26:02',NULL,''),(30,3,'Cultural','#','_self',NULL,'#000000',NULL,24,'2020-05-29 15:26:13','2020-05-29 15:26:13',NULL,''),(31,3,'Design','#','_self',NULL,'#000000',NULL,25,'2020-05-29 15:26:25','2020-05-29 15:26:25',NULL,''),(32,3,'Religious','#','_self',NULL,'#000000',NULL,26,'2020-05-29 15:26:36','2020-05-29 15:26:36',NULL,''),(33,3,'Residential','#','_self',NULL,'#000000',NULL,27,'2020-05-29 15:26:48','2020-05-29 15:26:48',NULL,''),(34,3,'Exhibitions','#','_self',NULL,'#000000',NULL,28,'2020-05-29 15:27:24','2020-05-29 15:27:24',NULL,''),(35,3,'Competitions','#','_self',NULL,'#000000',NULL,29,'2020-05-29 15:27:35','2020-05-29 15:27:35',NULL,''),(36,3,'Furniture','#','_self',NULL,'#000000',NULL,30,'2020-05-29 15:30:42','2020-05-29 15:30:42',NULL,''),(37,3,'Photography','#','_self',NULL,'#000000',NULL,31,'2020-05-29 15:32:04','2020-05-29 15:32:04',NULL,''),(38,3,'Hotel','#','_self',NULL,'#000000',NULL,32,'2020-05-29 15:32:18','2020-05-29 15:32:18',NULL,''),(40,1,'專利','','_self','voyager-rocket','#000000',NULL,15,'2021-02-18 02:29:47','2021-02-19 02:01:07','voyager.patents.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-05-01 10:53:20','2020-05-01 10:53:20'),(2,'front-menu','2020-05-03 13:23:07','2020-05-03 13:23:07'),(3,'product_search','2020-05-29 15:23:10','2020-05-29 15:23:10');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_01_01_000000_add_voyager_user_fields',1),(3,'2016_01_01_000000_create_data_types_table',1),(4,'2016_05_19_173453_create_menu_table',1),(5,'2016_10_21_190000_create_roles_table',1),(6,'2016_10_21_190000_create_settings_table',1),(7,'2016_11_30_135954_create_permission_table',1),(8,'2016_11_30_141208_create_permission_role_table',1),(9,'2016_12_26_201236_data_types__add__server_side',1),(10,'2017_01_13_000000_add_route_to_menu_items_table',1),(11,'2017_01_14_005015_create_translations_table',1),(12,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(13,'2017_03_06_000000_add_controller_to_data_types_table',1),(14,'2017_04_21_000000_add_order_to_data_rows_table',1),(15,'2017_07_05_210000_add_policyname_to_data_types_table',1),(16,'2017_08_05_000000_add_group_to_settings_table',1),(17,'2017_11_26_013050_add_user_role_relationship',1),(18,'2017_11_26_015000_create_user_roles_table',1),(19,'2018_03_11_000000_add_user_settings',1),(20,'2018_03_14_000000_add_details_to_data_types_table',1),(21,'2018_03_16_000000_make_settings_value_nullable',1),(22,'2019_08_19_000000_create_failed_jobs_table',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_intro_members`
--

DROP TABLE IF EXISTS `office_intro_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_intro_members` (
  `office_intro_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`office_intro_id`,`member_id`),
  KEY `office_intro_members_office_intro_id_index` (`office_intro_id`),
  KEY `office_intro_members_member_id_index` (`member_id`),
  CONSTRAINT `office_intro_members_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `office_intro_members_office_intro_id_foreign` FOREIGN KEY (`office_intro_id`) REFERENCES `office_intros` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_intro_members`
--

LOCK TABLES `office_intro_members` WRITE;
/*!40000 ALTER TABLE `office_intro_members` DISABLE KEYS */;
INSERT INTO `office_intro_members` VALUES (1,1),(1,3),(1,5);
/*!40000 ALTER TABLE `office_intro_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_intro_patents`
--

DROP TABLE IF EXISTS `office_intro_patents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_intro_patents` (
  `office_intro_id` int(10) unsigned NOT NULL,
  `patent_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`office_intro_id`,`patent_id`) USING BTREE,
  KEY `office_intro_patents_office_intro_id_index` (`office_intro_id`),
  KEY `office_intro_patents_patents_id_index` (`patent_id`) USING BTREE,
  CONSTRAINT `office_intro_patents_office_intro_id_foreign` FOREIGN KEY (`office_intro_id`) REFERENCES `office_intros` (`id`) ON DELETE CASCADE,
  CONSTRAINT `office_intro_patents_patent_id_foreign` FOREIGN KEY (`patent_id`) REFERENCES `patents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_intro_patents`
--

LOCK TABLES `office_intro_patents` WRITE;
/*!40000 ALTER TABLE `office_intro_patents` DISABLE KEYS */;
INSERT INTO `office_intro_patents` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `office_intro_patents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_intros`
--

DROP TABLE IF EXISTS `office_intros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_intros` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_intros`
--

LOCK TABLES `office_intros` WRITE;
/*!40000 ALTER TABLE `office_intros` DISABLE KEYS */;
INSERT INTO `office_intros` VALUES (1,'無名氏建築事務所1','<p>國要前的全源到後；法電願的達自西理住書子這難許媽太理。</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #00ccff;\">委會1</span></p>\r\n<p>且到・現演・只時</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #00ccff;\">庭在1</span></p>\r\n<p>庭在眼長明人顯聯有</p>\r\n<p>都是一只，高病每是天中氣半意獲南</p>\r\n<p>女各平人考接票操到出細市解北望取達能強</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #00ccff;\">外有1</span></p>\r\n<p>外有止的地著確，</p>\r\n<p>那人在投很看：的劇遊</p>\r\n<p>又藥這功生電相團節們</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #ff6600;\">400 台中市中區公益路一街30號</span></p>\r\n<p><span style=\"color: #ff6600;\">Tel&nbsp; 04-23829999・Fax&nbsp; 04-23829999</span></p>\r\n<p><span style=\"color: #ff6600;\">abc@gmail.com</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #ff6600;\"><span style=\"color: #ff6600;\">https://www.facebook.com/llleonlai/</span></span></p>',1,1,1,1,1,3,NULL,'建築事務所','建築事務所','建築設計','2020-05-23 09:14:00','2021-05-15 09:33:07');
/*!40000 ALTER TABLE `office_intros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2020-05-01 10:53:21','2020-05-01 10:53:21');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patents`
--

DROP TABLE IF EXISTS `patents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_sets` text COLLATE utf8mb4_unicode_ci,
  `desrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patents`
--

LOCK TABLES `patents` WRITE;
/*!40000 ALTER TABLE `patents` DISABLE KEYS */;
INSERT INTO `patents` VALUES (1,'專有技術1','[\"patents/francesca-tosolini-KJFKCed0YKo-unsplash.jpg\",\"patents/francesca-tosolini-tHkJAMcO3QE-unsplash.jpg\",\"patents/goran-ivos-_gg5KnJIy7E-unsplash.jpg\",\"patents/hausphotomedia-vvah86ql8iM-unsplash.jpg\",\"patents/hutomo-abrianto-9mPl0Zo7_gQ-unsplash.jpg\",\"patents/hutomo-abrianto-X5BWooeO4Cw-unsplash.jpg\"]','台中室內設計、台中舊屋、台中系統家具1',2,1,'2021-02-18 02:30:51','2021-07-24 12:05:32'),(2,'獨到技術1','[\"patents/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg\"]','台中室內設計、台中舊屋、台中系統家具1',1,1,'2021-02-18 02:35:22','2021-07-24 12:03:01');
/*!40000 ALTER TABLE `patents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(82,1),(83,1),(84,1),(85,1),(86,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2020-05-01 10:53:20','2020-05-01 10:53:20'),(2,'browse_bread',NULL,'2020-05-01 10:53:20','2020-05-01 10:53:20'),(3,'browse_database',NULL,'2020-05-01 10:53:20','2020-05-01 10:53:20'),(4,'browse_media',NULL,'2020-05-01 10:53:20','2020-05-01 10:53:20'),(5,'browse_compass',NULL,'2020-05-01 10:53:20','2020-05-01 10:53:20'),(6,'browse_menus','menus','2020-05-01 10:53:20','2020-05-01 10:53:20'),(7,'read_menus','menus','2020-05-01 10:53:20','2020-05-01 10:53:20'),(8,'edit_menus','menus','2020-05-01 10:53:20','2020-05-01 10:53:20'),(9,'add_menus','menus','2020-05-01 10:53:20','2020-05-01 10:53:20'),(10,'delete_menus','menus','2020-05-01 10:53:20','2020-05-01 10:53:20'),(11,'browse_roles','roles','2020-05-01 10:53:20','2020-05-01 10:53:20'),(12,'read_roles','roles','2020-05-01 10:53:20','2020-05-01 10:53:20'),(13,'edit_roles','roles','2020-05-01 10:53:20','2020-05-01 10:53:20'),(14,'add_roles','roles','2020-05-01 10:53:20','2020-05-01 10:53:20'),(15,'delete_roles','roles','2020-05-01 10:53:20','2020-05-01 10:53:20'),(16,'browse_users','users','2020-05-01 10:53:20','2020-05-01 10:53:20'),(17,'read_users','users','2020-05-01 10:53:20','2020-05-01 10:53:20'),(18,'edit_users','users','2020-05-01 10:53:20','2020-05-01 10:53:20'),(19,'add_users','users','2020-05-01 10:53:20','2020-05-01 10:53:20'),(20,'delete_users','users','2020-05-01 10:53:20','2020-05-01 10:53:20'),(21,'browse_settings','settings','2020-05-01 10:53:20','2020-05-01 10:53:20'),(22,'read_settings','settings','2020-05-01 10:53:20','2020-05-01 10:53:20'),(23,'edit_settings','settings','2020-05-01 10:53:20','2020-05-01 10:53:20'),(24,'add_settings','settings','2020-05-01 10:53:20','2020-05-01 10:53:20'),(25,'delete_settings','settings','2020-05-01 10:53:20','2020-05-01 10:53:20'),(26,'browse_categories','categories','2020-05-01 10:53:21','2020-05-01 10:53:21'),(27,'read_categories','categories','2020-05-01 10:53:21','2020-05-01 10:53:21'),(28,'edit_categories','categories','2020-05-01 10:53:21','2020-05-01 10:53:21'),(29,'add_categories','categories','2020-05-01 10:53:21','2020-05-01 10:53:21'),(30,'delete_categories','categories','2020-05-01 10:53:21','2020-05-01 10:53:21'),(31,'browse_posts','posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(32,'read_posts','posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(33,'edit_posts','posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(34,'add_posts','posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(35,'delete_posts','posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(36,'browse_pages','pages','2020-05-01 10:53:21','2020-05-01 10:53:21'),(37,'read_pages','pages','2020-05-01 10:53:21','2020-05-01 10:53:21'),(38,'edit_pages','pages','2020-05-01 10:53:21','2020-05-01 10:53:21'),(39,'add_pages','pages','2020-05-01 10:53:21','2020-05-01 10:53:21'),(40,'delete_pages','pages','2020-05-01 10:53:21','2020-05-01 10:53:21'),(41,'browse_hooks',NULL,'2020-05-01 10:53:22','2020-05-01 10:53:22'),(52,'browse_banners','banners','2020-05-13 13:35:07','2020-05-13 13:35:07'),(53,'read_banners','banners','2020-05-13 13:35:07','2020-05-13 13:35:07'),(54,'edit_banners','banners','2020-05-13 13:35:07','2020-05-13 13:35:07'),(55,'add_banners','banners','2020-05-13 13:35:07','2020-05-13 13:35:07'),(56,'delete_banners','banners','2020-05-13 13:35:07','2020-05-13 13:35:07'),(57,'browse_products','products','2020-05-16 15:31:04','2020-05-16 15:31:04'),(58,'read_products','products','2020-05-16 15:31:04','2020-05-16 15:31:04'),(59,'edit_products','products','2020-05-16 15:31:04','2020-05-16 15:31:04'),(60,'add_products','products','2020-05-16 15:31:04','2020-05-16 15:31:04'),(61,'delete_products','products','2020-05-16 15:31:04','2020-05-16 15:31:04'),(62,'browse_members','members','2020-05-22 14:24:48','2020-05-22 14:24:48'),(63,'read_members','members','2020-05-22 14:24:48','2020-05-22 14:24:48'),(64,'edit_members','members','2020-05-22 14:24:48','2020-05-22 14:24:48'),(65,'add_members','members','2020-05-22 14:24:48','2020-05-22 14:24:48'),(66,'delete_members','members','2020-05-22 14:24:48','2020-05-22 14:24:48'),(67,'browse_office_intros','office_intros','2020-05-22 14:42:00','2020-05-22 14:42:00'),(68,'read_office_intros','office_intros','2020-05-22 14:42:00','2020-05-22 14:42:00'),(69,'edit_office_intros','office_intros','2020-05-22 14:42:00','2020-05-22 14:42:00'),(70,'add_office_intros','office_intros','2020-05-22 14:42:00','2020-05-22 14:42:00'),(71,'delete_office_intros','office_intros','2020-05-22 14:42:00','2020-05-22 14:42:00'),(72,'browse_blogs','blogs','2020-05-26 12:59:21','2020-05-26 12:59:21'),(73,'read_blogs','blogs','2020-05-26 12:59:22','2020-05-26 12:59:22'),(74,'edit_blogs','blogs','2020-05-26 12:59:24','2020-05-26 12:59:24'),(75,'add_blogs','blogs','2020-05-26 12:59:26','2020-05-26 12:59:26'),(76,'delete_blogs','blogs','2020-05-26 12:59:28','2020-05-26 12:59:28'),(82,'browse_patents','patents','2021-02-18 02:29:47','2021-02-18 02:29:47'),(83,'read_patents','patents','2021-02-18 02:29:47','2021-02-18 02:29:47'),(84,'edit_patents','patents','2021-02-18 02:29:47','2021-02-18 02:29:47'),(85,'add_patents','patents','2021-02-18 02:29:47','2021-02-18 02:29:47'),(86,'delete_patents','patents','2021-02-18 02:29:47','2021-02-18 02:29:47');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-05-01 10:53:21','2020-05-16 08:46:52'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-05-01 10:53:21','2020-05-01 10:53:21'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-05-01 10:53:21','2020-05-01 10:53:21'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-05-01 10:53:21','2020-05-01 10:53:21');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `product_categories_product_id_index` (`product_id`),
  KEY `product_categories_category_id_index` (`category_id`),
  CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (3,1),(5,3),(6,1),(7,1),(8,3);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'黑居 BHouse',NULL,'台中・南屯','<p>當南國強國畫地當權！</p>\r\n<p>招取時動好，一動天作汽不保主車己力這女麼</p>\r\n<p>不入間精就個車單再險大新不。立造或看裝往這腦上政！</p>','products/July2021/MJ6pCTfSNdJJeS6arTKk.jpg','[\"products/alessandro-porri--iUjU95IEqY-unsplash.jpg\",\"products/alexander-horl-rKiD0rCMerA-unsplash.jpg\",\"products/alfons-morales-yyql_hMRVBw-unsplash.jpg\"]','B-House',1,'B-House','B-House','B-House',2015,2015,1,'2021-02-17 06:30:12',1,'2021-07-24 11:51:40',1),(5,'北齊 NHouse',NULL,'台中・北齊','<p><span style=\"color: #000000;\">北齊 NHouse</span></p>','products/April2021/pPI8ATClumAvB8nAb3QC.jpg','[\"products/ralph-ravi-kayden-yJ7tyXKjVno-unsplash.jpg\",\"products/pierre-chatel-innocenti-Wm3DCN_ydR0-unsplash.jpg\",\"products/pierre-chatel-innocenti-YDarsL40neU-unsplash.jpg\",\"products/pierre-chatel-innocenti-ZjHG1Bhf-ro-unsplash.jpg\"]','N-House',1,'N-House','N-House','N-House',2005,2005,5,'2021-02-17 06:33:00',1,'2021-07-24 12:02:10',1),(6,'豐原 VHouse',NULL,'台中・豐原','<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 15px; line-height: normal; color: rgb(var(--color_15));\">不已記音電落觀求如是智到己利出進熱活。</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 15px; line-height: normal; color: rgb(var(--color_15));\">什看子都年立表爭。</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 15px; line-height: normal; color: rgb(var(--color_15));\">起紅嚴？樣一馬等軍答子期你德十開包後心醫那明應集只入！</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 15px; line-height: normal; color: rgb(var(--color_15));\">了而查而程&hellip;&hellip;巴於麼平：都服和保體快發加用老媽方主子適線成眼。</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 15px; line-height: normal; color: rgb(var(--color_15));\">治片產：三消了單現年我照教不的。</h6>','products/April2021/c9VrShL359fbuniFCCXj.jpg','[\"products/tamara-gak-KZwPLKmcSfw-unsplash.jpg\",\"products/thomas-chan-T7WegxlL6as-unsplash.jpg\",\"products/thulfiqar-ali-AUsJ12zagA4-unsplash.jpg\"]','V-House',1,'V-House','V-House','V-House',2008,2008,4,'2021-02-26 02:39:20',1,'2021-07-24 11:59:42',1),(7,'瑞宜居 GHouse',NULL,'台中','<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 16px; line-height: normal; color: rgb(var(--color_15));\">有吃無作解國，書著真持多找象車明選不登且你可吃部書看最，</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 16px; line-height: normal; color: rgb(var(--color_15));\">業的深生國產子火畫傳車點即否兒是正；年法錯優不以落。</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 16px; line-height: normal; color: rgb(var(--color_15));\">名模道微手飛際的智力著色自男步過有點、出定或環算有動創通！</h6>\r\n<h6 class=\"font_6\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; font-size: 16px; line-height: normal; color: rgb(var(--color_15));\">的重生列<span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \'Helvetica Neue\';\">&hellip;&hellip;</span>我文飛，像王統認顧告全路取至裝觀該歌樂大，轉公來正停益發是裡。</h6>','products/May2021/sRdxwqBDdxW3kyTP9ylE.jpg','[\"products/pierre-chatel-innocenti-djJ9XX8Sblo-unsplash.jpg\",\"products/pierre-chatel-innocenti-F4VHOj76D0o-unsplash.jpg\",\"products/pierre-chatel-innocenti-gPvqQOAOXCw-unsplash.jpg\"]','G-House',1,'G-House','G-House','G-House',NULL,2017,3,'2021-02-26 02:41:21',1,'2021-07-24 11:57:14',1),(8,'萬北  境單實品屋',NULL,'台中・南屯','<p>十都進們下道業龍主，花如是前世</p>','products/April2021/i99XxHfoD54eUigVYl8W.jpg','[\"products/annie-spratt-p5x4IKEkWSo-unsplash.jpg\",\"products/amir-hosseini-TZQM1Iz7b-I-unsplash.jpg\",\"products/anne-nygard-LeoUhvp_1X8-unsplash.jpg\"]','A-house',1,'A-house','A-house','A-house',2018,2018,2,'2021-02-26 03:34:41',1,'2021-07-24 11:50:45',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2020-05-01 10:53:20','2020-05-01 10:53:20'),(2,'user','Normal User','2020-05-01 10:53:20','2020-05-01 10:53:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','無名氏建築事務所','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-05-01 10:53:21','2020-05-01 10:53:21'),(2,'data_types','display_name_singular',6,'pt','Página','2020-05-01 10:53:21','2020-05-01 10:53:21'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-05-01 10:53:21','2020-05-01 10:53:21'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-05-01 10:53:21','2020-05-01 10:53:21'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-05-01 10:53:21','2020-05-01 10:53:21'),(6,'data_types','display_name_singular',3,'pt','Função','2020-05-01 10:53:21','2020-05-01 10:53:21'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-05-01 10:53:21','2020-05-01 10:53:21'),(8,'data_types','display_name_plural',6,'pt','Páginas','2020-05-01 10:53:21','2020-05-01 10:53:21'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-05-01 10:53:21','2020-05-01 10:53:21'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-05-01 10:53:21','2020-05-01 10:53:21'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-05-01 10:53:21','2020-05-01 10:53:21'),(12,'data_types','display_name_plural',3,'pt','Funções','2020-05-01 10:53:21','2020-05-01 10:53:21'),(13,'categories','slug',1,'pt','categoria-1','2020-05-01 10:53:21','2020-05-01 10:53:21'),(14,'categories','name',1,'pt','Categoria 1','2020-05-01 10:53:21','2020-05-01 10:53:21'),(15,'categories','slug',2,'pt','categoria-2','2020-05-01 10:53:21','2020-05-01 10:53:21'),(16,'categories','name',2,'pt','Categoria 2','2020-05-01 10:53:21','2020-05-01 10:53:21'),(17,'pages','title',1,'pt','Olá Mundo','2020-05-01 10:53:21','2020-05-01 10:53:21'),(18,'pages','slug',1,'pt','ola-mundo','2020-05-01 10:53:21','2020-05-01 10:53:21'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-05-01 10:53:21','2020-05-01 10:53:21'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-05-01 10:53:21','2020-05-01 10:53:21'),(21,'menu_items','title',2,'pt','Media','2020-05-01 10:53:21','2020-05-01 10:53:21'),(22,'menu_items','title',12,'pt','Publicações','2020-05-01 10:53:21','2020-05-01 10:53:21'),(23,'menu_items','title',3,'pt','Utilizadores','2020-05-01 10:53:21','2020-05-01 10:53:21'),(24,'menu_items','title',11,'pt','Categorias','2020-05-01 10:53:21','2020-05-01 10:53:21'),(25,'menu_items','title',13,'pt','Páginas','2020-05-01 10:53:21','2020-05-01 10:53:21'),(26,'menu_items','title',4,'pt','Funções','2020-05-01 10:53:21','2020-05-01 10:53:21'),(27,'menu_items','title',5,'pt','Ferramentas','2020-05-01 10:53:21','2020-05-01 10:53:21'),(28,'menu_items','title',6,'pt','Menus','2020-05-01 10:53:21','2020-05-01 10:53:21'),(29,'menu_items','title',7,'pt','Base de dados','2020-05-01 10:53:21','2020-05-01 10:53:21'),(30,'menu_items','title',10,'pt','Configurações','2020-05-01 10:53:21','2020-05-01 10:53:21');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$IzlBBOOSUzKsepRos/xRrOq.ERhFB6Ja3gnUmJmRP5sCbSS/5OYbq','abifrH45XZcD3tUh5oq17XHl1KR9W5hoG4noXwG7YuGGrFho0PTwDwTmdc5v','{\"locale\":\"zh_TW\"}','2020-05-01 10:53:21','2020-05-03 11:00:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-24 20:55:10
