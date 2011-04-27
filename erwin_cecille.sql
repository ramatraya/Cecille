-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2011 at 09:36 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erwin_cecille`
--

-- --------------------------------------------------------

--
-- Table structure for table `fs_groups`
--

CREATE TABLE IF NOT EXISTS `fs_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fs_groups`
--

INSERT INTO `fs_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `fs_meta`
--

CREATE TABLE IF NOT EXISTS `fs_meta` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `fb_id` varchar(100) DEFAULT NULL,
  `fb_oauth_token` varchar(255) NOT NULL,
  `twitter_id` varchar(255) NOT NULL,
  `twitter_username` varchar(255) NOT NULL,
  `twitter_oauth_token` varchar(255) NOT NULL,
  `twitter_oauth_token_secret` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fs_meta`
--

INSERT INTO `fs_meta` (`id`, `user_id`, `fullname`, `avatar`, `fb_id`, `fb_oauth_token`, `twitter_id`, `twitter_username`, `twitter_oauth_token`, `twitter_oauth_token_secret`) VALUES
(1, 1, 'Erwin Handoko', 'http://graph.facebook.com/1033747475/picture', NULL, '', '26401725', 'bhasunjaya', '26401725-w6GQhS6ovCVyMhJhXmQwNcPaZyteA2BeaBgWdqQ40', 'SxY92oQlv8EjLsdfGDo7FZ0NJKfQ2mWCxtBvP5CJw');

-- --------------------------------------------------------

--
-- Table structure for table `fs_twitter_accounts`
--

CREATE TABLE IF NOT EXISTS `fs_twitter_accounts` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `twitter_id` varchar(32) NOT NULL,
  `twitter_account_token` varchar(64) NOT NULL,
  `twitter_account_secret` varchar(64) NOT NULL,
  `twitter_userdata` text NOT NULL,
  `twitter_register_date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fs_twitter_accounts`
--

INSERT INTO `fs_twitter_accounts` (`id`, `twitter_id`, `twitter_account_token`, `twitter_account_secret`, `twitter_userdata`, `twitter_register_date`) VALUES
(1, '26401725', '26401725-w6GQhS6ovCVyMhJhXmQwNcPaZyteA2BeaBgWdqQ40', 'SxY92oQlv8EjLsdfGDo7FZ0NJKfQ2mWCxtBvP5CJw', 'O:8:"stdClass":37:{s:13:"friends_count";i:137;s:24:"profile_background_color";s:6:"000000";s:8:"location";s:7:"Jakarta";s:28:"profile_background_image_url";s:61:"http://a2.twimg.com/a/1303316982/images/themes/theme18/bg.gif";s:11:"description";s:20:"I am my own heroine.";s:6:"status";O:8:"stdClass":18:{s:4:"text";s:90:"I liked a @YouTube video http://youtu.be/WirEJbA14xA?a Canon in D - Sungha Jung (2nd time)";s:3:"geo";N;s:19:"in_reply_to_user_id";N;s:9:"truncated";b:0;s:6:"id_str";s:17:"62836392576815105";s:13:"retweet_count";i:0;s:9:"favorited";b:0;s:6:"source";s:107:"<a href="http://www.google.com/support/youtube/bin/answer.py?hl=en&answer=164577" rel="nofollow">Google</a>";s:10:"created_at";s:30:"Tue Apr 26 11:12:18 +0000 2011";s:23:"in_reply_to_screen_name";N;s:25:"in_reply_to_status_id_str";N;s:12:"contributors";N;s:9:"retweeted";b:0;s:23:"in_reply_to_user_id_str";N;s:21:"in_reply_to_status_id";N;s:2:"id";d:62836392576815104;s:5:"place";N;s:11:"coordinates";N;}s:13:"notifications";N;s:6:"id_str";s:8:"26401725";s:21:"default_profile_image";b:0;s:9:"following";N;s:8:"verified";b:0;s:16:"favourites_count";i:5;s:18:"profile_text_color";s:6:"4d6c78";s:21:"show_all_inline_media";b:0;s:11:"geo_enabled";b:1;s:10:"created_at";s:30:"Wed Mar 25 02:16:20 +0000 2009";s:26:"profile_sidebar_fill_color";s:6:"000000";s:17:"profile_image_url";s:74:"http://a3.twimg.com/profile_images/1321120091/your-avatar-sucks_normal.jpg";s:23:"profile_background_tile";b:0;s:19:"follow_request_sent";N;s:11:"screen_name";s:10:"bhasunjaya";s:15:"default_profile";b:0;s:14:"statuses_count";i:4048;s:9:"time_zone";s:7:"Jakarta";s:18:"profile_link_color";s:6:"8eb1c0";s:9:"protected";b:0;s:28:"profile_sidebar_border_color";s:6:"494c4c";s:15:"followers_count";i:215;s:4:"name";s:13:"Erwin Handoko";s:13:"is_translator";b:0;s:4:"lang";s:2:"en";s:3:"url";s:27:"http://erwinh.posterous.com";s:2:"id";i:26401725;s:12:"listed_count";i:10;s:20:"contributors_enabled";b:0;s:28:"profile_use_background_image";b:1;s:10:"utc_offset";i:25200;}', 1303840479);

-- --------------------------------------------------------

--
-- Table structure for table `fs_twitter_followers`
--

CREATE TABLE IF NOT EXISTS `fs_twitter_followers` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `twitter_id` varchar(32) NOT NULL,
  `follower_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fs_twitter_followers`
--


-- --------------------------------------------------------

--
-- Table structure for table `fs_twitter_users`
--

CREATE TABLE IF NOT EXISTS `fs_twitter_users` (
  `id` bigint(8) unsigned NOT NULL AUTO_INCREMENT,
  `twitter_id` varchar(64) NOT NULL,
  `screen_name` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `profile_image_url` varchar(255) NOT NULL,
  `update_timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `fs_twitter_users`
--

INSERT INTO `fs_twitter_users` (`id`, `twitter_id`, `screen_name`, `name`, `location`, `description`, `profile_image_url`, `update_timestamp`) VALUES
(1, '177208123', 'aching_yuma', 'Blitar, Indinesia', 'Blitar, Indinesia', 'someone who is always hurt by love', 'http://a2.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 1303846906),
(2, '81778409', 'thiarthea', 'Tangerang', 'Tangerang', 'Blogger yang doyan dengerin musik metal sambil nyruput kopi kental', 'http://a1.twimg.com/profile_images/1028676431/thiar_normal.jpg', 1303846906),
(3, '242283021', 'feby_astari', '', '', '? my besties @windy_lalena, @ria_risti\r\n? my BFF @gea_ghs, @ShifamBuLI', 'http://a0.twimg.com/profile_images/1326090871/203358_100002139492367_4340751_q_normal.jpg', 1303846906),
(4, '220396263', 'jerseyboyzzz', 'cumming, GA', 'cumming, GA', 'the best pizza in the world!!', 'http://a0.twimg.com/profile_images/1176961414/image_normal.jpg', 1303846906),
(5, '256967378', 'Marilynnsb', 'North Carolina', 'North Carolina', '', 'http://a2.twimg.com/profile_images/1253268111/DSC_0297_normal.jpg', 1303846906),
(6, '283861934', 'Kindrakaynandra', '', '', '', 'http://a3.twimg.com/sticky/default_profile_images/default_profile_6_normal.png', 1303846906),
(7, '226111600', 'ArunaVB08', 'Indonesia / Jakarta', 'Indonesia / Jakarta', 'Diny + Asyraf = Love, Develop to be a good Person & Coach   ', 'http://a1.twimg.com/profile_images/1318041145/eb789682db5400aa19f0067ed73e954d_normal.jpg', 1303846906),
(8, '177469093', 'kiki_luchu', 'Indonesia', 'Indonesia', 'I believe come true', 'http://a3.twimg.com/profile_images/1157392884/kiki_normal.jpg', 1303846906),
(9, '234335165', 'WauLuphata', 'Rangkasbitung Lebak Banten', 'Rangkasbitung Lebak Banten', 'be your self,\r\ndo the best,\r\ncare and help other.', 'http://a0.twimg.com/profile_images/1207429245/wau_normal.jpg', 1303846906),
(10, '138405970', 'Kayanadi', 'Jakarta', 'Jakarta', 'Kultivator n Jurnalist', 'http://a3.twimg.com/profile_images/1109588448/kayanadi_normal.jpg', 1303846906),
(11, '22582610', 'Leliwa', '', '', '', 'http://a2.twimg.com/profile_images/1143783373/193473583_normal.jpg', 1303846906),
(12, '15947185', 'TweetSmarter', 'Twin Cities, MN', 'Twin Cities, MN', 'Whether you need tips and tools, the latest Twitter news or tech support, we''re here to help anyone and everyone get the most out of Twitter. Tweet us anytime!', 'http://a3.twimg.com/profile_images/1324994281/spring-tweet-avatar-IV_normal.jpg', 1303846906),
(13, '211432294', 'amir_gazali', '', '', 'Identity By Needs', 'http://a1.twimg.com/profile_images/1196956143/Image024_normal.jpg', 1303846906),
(14, '248144345', 'Meyayang', '', '', '', 'http://a1.twimg.com/profile_images/1260187657/sakura21_normal.jpg', 1303846906),
(15, '251085382', 'kitty_disaster', 'Lala Land', 'Lala Land', 'Too many people says that I m snobbish..I m not kind that woman.just know me..I m easy going person!', 'http://a3.twimg.com/profile_images/1323148398/IMG00208-20110226-1756_normal.jpg', 1303846906),
(16, '252541849', 'kutoblitar', 'Blitar', 'Blitar', 'Seputar Informasi tentang Blitar, ekonomi, politik, sosial budaya, bisnis, dan berbagai hal yang menunjang kemajuan kota Blitar. Monggo di follow', 'http://a1.twimg.com/profile_images/1245049273/sukarno4_normal.jpg', 1303846906),
(17, '212217318', 'moukhtim', 'indonesia', 'indonesia', '', 'http://a0.twimg.com/profile_images/1193909217/SUPERMAN_normal.jpeg', 1303846906),
(18, '179382786', 'arisindonesia', '', '', '', 'http://a2.twimg.com/profile_images/1104730181/images_normal.jpg', 1303846906),
(19, '256407210', 'giee_uiee', 'Bandung', 'Bandung', 'selalu cinta kopi', 'http://a2.twimg.com/profile_images/1254659153/266964998_normal.jpg', 1303846906),
(20, '17093617', 'HootSuite', 'Vancouver, Canada', 'Vancouver, Canada', 'Updates about the award-winning social media dashboard for teams to broadcast across networks + monitor and analyze. See also: @HootSuite_Help & @HootWatch.', 'http://a0.twimg.com/profile_images/541333937/hootsuite-icon_normal.png', 1303846906),
(21, '228243001', 'SPARCGMS', 'inglewood ca', 'inglewood ca', '', 'http://a1.twimg.com/profile_images/1300897436/019_normal.jpg', 1303846906),
(22, '237179116', 'think9happiness', '', '', '', 'http://a1.twimg.com/profile_images/1326004438/happiness_by_wint3r88_normal.jpg', 1303846906),
(23, '17473754', 'playthebeat', '', '', 'Just PlayTheBeat!', 'http://a0.twimg.com/profile_images/1228009529/betti-pesva_normal.jpg', 1303846906),
(24, '256969859', 'Teresejia', 'South Carolina 	South Dakota', 'South Carolina 	South Dakota', '', 'http://a3.twimg.com/profile_images/1253272825/DSC_0034_normal.jpg', 1303846906),
(25, '11039092', 'vark', '', '', 'Aardvark discovers the perfect person in your network to answer any question in minutes.', 'http://a3.twimg.com/profile_images/276901935/vark-twitter_normal.jpg', 1303846906),
(26, '153837521', 'ifa_assegaf', '', '', '', 'http://a2.twimg.com/profile_images/1094476612/IFA_normal.jpg', 1303846906),
(27, '198792430', 'andreas420', 'gaprang kanigoro blitar', 'gaprang kanigoro blitar', 'dulu aku aja sekolah ngak pinter tapi ternyata aku bisa lulus tapi berkat nkerja keras dan semangat aku saat mengikuti ujianakhirnya amin nilaiku', 'http://a1.twimg.com/profile_images/1296856869/197190_148618308534592_100001592723443_296725_5439236_n_normal.jpg', 1303846906),
(28, '153292026', 'AA_VIKERZ', '', '', 'i''m simple person\r\n', 'http://a2.twimg.com/profile_images/1203936842/163957_171431299561932_100000851906052_328650_6615573_n_normal.jpg', 1303846906),
(29, '169684041', 'andio_Cr7', 'ÜT: -2.678395,118.893302', 'ÜT: -2.678395,118.893302', 'Special Man 4 Special Someone ;)', 'http://a0.twimg.com/profile_images/1247773644/Bontoala-20110110-00097_normal.jpg', 1303846906),
(30, '102738331', 'ewinggniwe', 'arround you', 'arround you', '', 'http://a2.twimg.com/profile_images/1194453128/Baby_Cue_Customer_Large_normal.jpg', 1303846906),
(31, '57589297', 'suryamaira', '', '', '', 'http://a0.twimg.com/profile_images/973207664/palestine11_normal.jpg', 1303846906),
(32, '56237214', 'Historyday', 'www.historybyday.com', 'www.historybyday.com', 'History Never Dies\r\nwww.historybyday.com\r\nFacebook Page: www.facebook.com/HistoryDay\r\nFacebook Me: www.facebook.com/Andrew.Vivier', 'http://a2.twimg.com/profile_images/310625237/h_normal.jpg', 1303846906),
(33, '269611325', 'ririnnovi', '', '', '', 'http://a3.twimg.com/profile_images/1323471048/Picture_022_normal.jpg', 1303846906),
(34, '272397757', 'forumBlitar', 'Blitar, Jawa Timur, Indonesia', 'Blitar, Jawa Timur, Indonesia', 'kirimkan info, pertanyaan, uneg2 tentang Blitar agar lebih bermanfaat untuk seluruh sesama', 'http://a3.twimg.com/profile_images/1287788942/FB_normal.jpg', 1303846906),
(35, '53312298', 'yuliznuraini', 'malang tercinta', 'malang tercinta', '', 'http://a2.twimg.com/profile_images/1323619058/287882542_normal.jpg', 1303846906),
(36, '64143410', 'JacquezHurt', '', '', 'I''m 24 years old. I am a film maker (writer, director, video editor, graphic designer, music composer, and more). ', 'http://a2.twimg.com/profile_images/1200570238/jock_normal.jpg', 1303846906),
(37, '219899514', 'andi_juni', '', '', '', 'http://a2.twimg.com/profile_images/1239284536/76465_102649843141945_100001907889346_19856_7876190_n_normal.jpg', 1303846906),
(38, '182046880', 'ShteyaGthedivaf', 'Boston, MA', 'Boston, MA', 'Writer, WAM!mer, feminist evangelist, straw-slut.', 'http://a2.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 1303846906),
(39, '183871867', 'affanmarchisio', 'denpasar-bali', 'denpasar-bali', 'newcomer', 'http://a3.twimg.com/profile_images/1112272558/4438_1094295682344_1375128046_30299295_7882033_n_normal.jpg', 1303846906),
(40, '131570863', 'resellerhotfile', 'Jakarta', 'Jakarta', 'Kami penyedia acc. premium HOTFILE.COM di Indonesia. Kunjungi link-link kami yang lain di: http://www.resellerhotfile.com/berita.php?id=27', 'http://a1.twimg.com/profile_images/1103487343/hotfile_02_normal.jpg', 1303846906),
(41, '198495724', 'bukukeliling', 'Indonesia', 'Indonesia', 'Program baca buku gratis untuk umum. Everyone''s welcome to join us. Read, volunteer or donate, your call :)', 'http://a3.twimg.com/profile_images/1175101364/LOGO_BUKU_KELILING-03_normal.jpg', 1303846906),
(42, '106700043', 'Fharisz', '', '', '', 'http://a0.twimg.com/profile_images/729512609/IMG_1291_normal.jpg', 1303846906),
(43, '256981522', 'Coleenmmg', 'Minnesota', 'Minnesota', '', 'http://a3.twimg.com/profile_images/1253300053/DSC_0195_normal.jpg', 1303846906),
(44, '99468855', 'wulankdm', '', '', '', 'http://a3.twimg.com/profile_images/761581702/41001-14444_normal.jpg', 1303846906),
(45, '17011799', 'harihoedojo', 'Indonesia', 'Indonesia', 'senior art director', 'http://a0.twimg.com/profile_images/1165191274/19185a802ad8f9aa7d0938d816953fd7_normal.jpg', 1303846906),
(46, '23243559', 'xdebug', 'London', 'London', 'Xdebug debugging extension for PHP', 'http://a1.twimg.com/profile_images/90008128/xdebug24_normal.png', 1303846906),
(47, '79770883', 'sebenx', 'Indonesia', 'Indonesia', 'Belajar belajar belajar...', 'http://a1.twimg.com/profile_images/1302150767/aa_normal.jpg', 1303846906),
(48, '241836814', 'scorpio_ariez', 'Indonesia', 'Indonesia', '', 'http://a1.twimg.com/profile_images/1223382304/pagemom_normal.jpg', 1303846906),
(49, '259996103', 'igiveubadadvice', '', '', '', 'http://a2.twimg.com/profile_images/1262136599/fork_outlet_normal.jpg', 1303846906),
(50, '83742926', 'ilyashin', '', '', '', 'http://a2.twimg.com/profile_images/480687070/Lailahaillallah_normal.jpg', 1303846906),
(51, '149087460', 'hersamin', 'ÜT: 13.758667,100.535294', 'ÜT: 13.758667,100.535294', 'cleaning service™', 'http://a1.twimg.com/profile_images/1243149431/koboy_normal.jpg', 1303846906),
(52, '256964951', 'Dreamavax', 'Indiana', 'Indiana', '', 'http://a3.twimg.com/profile_images/1253262529/DSC_0137_normal.jpg', 1303846906),
(53, '256969153', 'Vickeyvse', 'North Carolina', 'North Carolina', '', 'http://a2.twimg.com/profile_images/1253271713/DSC_0029_normal.jpg', 1303846906),
(54, '162146118', 'gladly_o', 'DKI Jakarta, Indonesia', 'DKI Jakarta, Indonesia', 'http://www.facebook.com/orompas', 'http://a3.twimg.com/profile_images/1200674609/SRV1_normal.jpg', 1303846906),
(55, '212979488', 'OCmakesomemoney', '', '', '', 'http://a2.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 1303846906),
(56, '264647938', 'shellyevasari', '', '', '', 'http://a3.twimg.com/profile_images/1269646673/seva.c0m_normal.jpg', 1303846907),
(57, '264432151', 'strikethenfl', '', '', '', 'http://a1.twimg.com/sticky/default_profile_images/default_profile_4_normal.png', 1303846907),
(58, '248003822', 'bibigita', '', '', '', 'http://a0.twimg.com/sticky/default_profile_images/default_profile_3_normal.png', 1303846907),
(59, '237065218', 'BrandonChelsea6', '', '', '', 'http://a0.twimg.com/profile_images/1257420465/7423191291213694_handycam_2_normal.jpg', 1303846907),
(60, '251658691', 'remanihuruk', '', '', '', 'http://a2.twimg.com/profile_images/1243225785/10424_1133356742699_1490721920_30390602_1811952_a_normal.jpg', 1303846907),
(61, '251049850', 'cologog', '', '', '', 'http://a2.twimg.com/profile_images/1242004359/182070_191621607524459_100000298632794_611380_1785104_n_normal.jpg', 1303846907),
(62, '179545493', 'big_baby_', 'Sunny Side', 'Sunny Side', '', 'http://a0.twimg.com/profile_images/1105020309/bigb_normal.jpg', 1303846907),
(63, '167265923', 'talklinkPR', 'ÜT: -6.244585,106.771886', 'ÜT: -6.244585,106.771886', 'We TALK through all the communication LINK both traditionally and digitally', 'http://a1.twimg.com/profile_images/1128109330/logo_talk_link-1_normal.jpg', 1303846907),
(64, '43781283', 'twavatars', 'Wherever YOU are.', 'Wherever YOU are.', 'A simple web app to write up to 10 characters on your twitter avatar. You can also change your twavatar via tweet from the web or mobile phone.', 'http://a2.twimg.com/profile_images/1133740788/avatar_normal.png', 1303846907),
(65, '207831370', 'hixotan', '', '', 'g taek2an', 'http://a2.twimg.com/profile_images/1152664827/tpti_-_Copy_normal.jpg', 1303846907),
(66, '93248833', 'serversidemag', 'Internet', 'Internet', 'A curated website hosting articles written about server-side technologies. Mainly PHP, Ruby, ASP.NET and Java.\r\n\r\nIt''s an open platform, anybody can contribute!', 'http://a1.twimg.com/profile_images/1231597821/profile-image3_normal.jpg', 1303846907),
(67, '225328269', 'emmasrihandayan', 'pontianak,kalimantan barat', 'pontianak,kalimantan barat', '', 'http://a1.twimg.com/profile_images/1279847519/DSC01614_normal.JPG', 1303846907),
(68, '228252993', 'Yogifird', 'Indonesia', 'Indonesia', '', 'http://a1.twimg.com/profile_images/1268643170/yogi_normal.jpg', 1303846907),
(69, '238942697', 'BillyGilbertK', 'Palu,Sulteng', 'Palu,Sulteng', '', 'http://a3.twimg.com/profile_images/1308782919/Foto0578_1__normal.jpg', 1303846907),
(70, '74940876', 'karatjuta', 'Malang, Indonesia', 'Malang, Indonesia', 'sudahlah ini memang saya..', 'http://a1.twimg.com/profile_images/511929029/edit2_normal.jpg', 1303846907),
(71, '122751125', 'nandari_nannan', 'Indonesia', 'Indonesia', 'a rare and odd girl in her own world', 'http://a1.twimg.com/profile_images/1250155005/Don-t-challenge-the-Skipper-penguins-of-madagascar-19048436-477-355_normal.jpg', 1303846907),
(72, '172693905', 'Aiiprasetyo', 'Indonesia', 'Indonesia', 'My Life, My Imagination ..', 'http://a1.twimg.com/profile_images/1321068193/edit_lomo_1_normal.jpg', 1303846907),
(73, '256979160', 'Leontinewkl', 'Maine', 'Maine', '', 'http://a2.twimg.com/profile_images/1253294219/DSC_0278_normal.jpg', 1303846907),
(74, '242774537', 'GrdanaGroznic', '', '', 'everything about everything especially something about anything', 'http://a0.twimg.com/profile_images/1254003374/Zombies_normal.gif', 1303846907),
(75, '148761812', 'FarisRamadan', 'Tulungagung ', 'Tulungagung ', 'Jurnalis 96.8 Mhz Radio Perkasa FM Tulungagung Jawa Timur. RADIO JUARA NASIONAL ', 'http://a3.twimg.com/profile_images/1252052807/186780_1471159266_4909665_q_normal.jpg', 1303846907),
(76, '256977047', 'Noreensx', 'Iowa', 'Iowa', '', 'http://a0.twimg.com/profile_images/1253289151/DSC_0072_normal.jpg', 1303846907),
(77, '96079745', 'samdonie', 'Malang', 'Malang', 'work hard, play harder, fvck hardest', 'http://a1.twimg.com/profile_images/1324488504/180079_1903056019125_1323454648_2178994_343494_n_normal.jpg', 1303846907),
(78, '256441258', 'eddysoeb', 'Indonesia', 'Indonesia', '', 'http://a2.twimg.com/profile_images/1252175327/SAM_1400_normal.JPG', 1303846907),
(79, '248984859', 'eriecha_respect', '', '', '..i ? bondan prakoso and fade black..\r\nthey always in my heart???mmmuach', 'http://a3.twimg.com/profile_images/1292372591/cats_normal.jpg', 1303846907),
(80, '256964639', 'Allynbet', 'Wisconsin', 'Wisconsin', '', 'http://a2.twimg.com/profile_images/1253262169/DSC_0235_normal.jpg', 1303846907),
(81, '284933887', 'pengkode', 'Jakarta', 'Jakarta', 'Pengkode sejati, keyboard sebagai pedangku, browser sebagai tamengku ', 'http://a3.twimg.com/profile_images/1319392043/771eab3a7288ea6f2dcdf594034b09ee_normal.jpg', 1303846907),
(82, '114401478', 'programkarbitan', '', '', '', 'http://a0.twimg.com/profile_images/1320828419/fecca17c59d7bb3f013e74aef38e6974_normal.jpg', 1303846907),
(83, '188743737', 'ndgndg', '', '', '', 'http://a1.twimg.com/sticky/default_profile_images/default_profile_0_normal.png', 1303846907),
(84, '70352338', 'Tordf', 'Kongsberg, Norway', 'Kongsberg, Norway', 'Embedded Software developer, Android enthusiast, Agile practitioner, blogger, loves technology.', 'http://a0.twimg.com/profile_images/391122046/twitter_normal.png', 1303846907),
(85, '176337269', 'echyaza', 'Indonesia', 'Indonesia', 'thankful .. that you love me -GOD- ', 'http://a2.twimg.com/profile_images/1305674147/mlm_20pantai_normal.jpg', 1303846907),
(86, '237283752', 'purwadhika', 'Jakarta Utara', 'Jakarta Utara', 'I''ve always been a lone wolf, but I enjoy being in a great pack. By RD', 'http://a1.twimg.com/profile_images/1316665682/save-arema_bigger_normal.jpg', 1303846907),
(87, '177277167', 'KirstenStakem21', '', '', '', 'http://a0.twimg.com/profile_images/1101530019/5345881491194844_alejandra_c__model_7_normal.jpg', 1303846907),
(88, '268694721', 'afiefblablabla', 'Bukittinggi, Indonesia', 'Bukittinggi, Indonesia', '? 27 Oct 1994 ?\r\n\r\nFollow me .. follback .. Just mention.. ??\r\n\r\nI woner if u think about me as much as i do about you..', 'http://a2.twimg.com/profile_images/1314242501/pagecc_normal.jpg', 1303846907),
(89, '54649894', 'EdenCafe', '', '', 'Sex. Sexuality. News. Humor. Politics. Community. Toys. Reviews. Life. Love. Events. Industry. GLBQT.', 'http://a3.twimg.com/profile_images/772674255/006g3cyr_normal.png', 1303846907),
(90, '263325210', 'NewMusicDaiIy', '', '', '', 'http://a2.twimg.com/profile_images/1267129230/Untitled-1_normal.jpg', 1303846907),
(91, '6207392', 'Korn', 'Bakersfield, CA', 'Bakersfield, CA', 'http://myspace.com/korn; http://facebook.com/korn', 'http://a1.twimg.com/profile_images/777337474/Korn_logo_normal.png', 1303846907),
(92, '202207490', 'monorule', 'Jakarta', 'Jakarta', '..monochrome..', 'http://a3.twimg.com/profile_images/1145046234/__Midori__2__normal.JPG', 1303846907),
(93, '150144083', 'ika_azaty', 'ÜT: -6.856611,107.570442', 'ÜT: -6.856611,107.570442', 'tukang bikin gosong masakan', 'http://a0.twimg.com/profile_images/1307712413/282926655_normal.jpg', 1303846907),
(94, '245711904', 'Meiyy_Meiyz', '', '', '', 'http://a1.twimg.com/sticky/default_profile_images/default_profile_4_normal.png', 1303846907),
(95, '243980775', 'wwwzamancoid', '', '', '', 'http://a0.twimg.com/sticky/default_profile_images/default_profile_3_normal.png', 1303846907),
(96, '69541548', '_MRizal', '', '', 'Don''t look at me, but look at that...', 'http://a0.twimg.com/profile_images/1147157844/BW2b_normal.jpg', 1303846907),
(97, '139021216', 'serpihankaca', '', '', '', 'http://a2.twimg.com/sticky/default_profile_images/default_profile_5_normal.png', 1303846907),
(98, '96686353', 'lidyaandari', 'SEOUL', 'SEOUL', '', 'http://a1.twimg.com/profile_images/1324378795/IMG_4271_normal.jpg', 1303846907),
(99, '5380672', 'threadless', 'Chicago, IL', 'Chicago, IL', 'Threadless is a community-based tee shirt company that prints awesome designs created and chosen by you!', 'http://a3.twimg.com/profile_images/1316104013/0418-TwitterIcon_normal.png', 1303846907),
(100, '230935536', 'n1e_yu4n4', '', '', '', 'http://a3.twimg.com/profile_images/1201532978/Pic_normal.jpg', 1303846907),
(101, '29254723', 'tinypug', 'San Francisco, CA', 'San Francisco, CA', 'Open source software to help marketers and product managers create scalable customer inquiry communities', 'http://a1.twimg.com/profile_images/124765986/tinypug_normal.jpg', 1303846907),
(102, '15241244', 'pinkparis', 'Jakarta', 'Jakarta', 'A project manager by profession. A blogger by hobby. A traveller by passion.', 'http://a3.twimg.com/profile_images/600502772/risna_normal.jpg', 1303846907),
(103, '17914496', 'mey_sashy', 'Alban''s Zone', 'Alban''s Zone', 'a mommy,, ? Alban so muchhhhhoooo', 'http://a2.twimg.com/profile_images/1316875964/image_normal.jpg', 1303846907),
(104, '18715581', 'antorio', 'Indonesia', 'Indonesia', 'Code Decipher & Semiotics Analyst. Don''t follow me I''m lost too. (Unless...) :) ', 'http://a1.twimg.com/profile_images/1298020703/53894418ebf6093dc9bc13e653ad6ec8_normal.jpg', 1303846907),
(105, '15453412', 'cocomatthew', 'Jakarta', 'Jakarta', 'i''m complicated person who live in simple world', 'http://a2.twimg.com/profile_images/1308876247/7bcc017471598dff9c7e4f12a1cfc8e2_normal.jpg', 1303846907),
(106, '54433986', 'missnajm', '', '', 'save me. i''m yours. ', 'http://a1.twimg.com/profile_images/1134757797/187085528_normal.jpg', 1303846907),
(107, '134615827', 'kopiluwakasli', 'Jakarta', 'Jakarta', 'Pusat Jual kopi luwak asli hubungi Dewanto purnomo 08176758758', 'http://a1.twimg.com/profile_images/1083728315/Kopi_luwak_Aseli__normal.jpg', 1303846907),
(108, '16202088', 'Infobright', 'Toronto, ON, Canada', 'Toronto, ON, Canada', 'Infobright''s analytic database delivers fast query response with no manual tuning and at less cost. Learn more at infobright.com and infobright.org', 'http://a1.twimg.com/profile_images/349754703/infobright_twitterlogo_normal.jpg', 1303846907),
(109, '15155952', 'thinkweb', 'ÜT: -6.230443,106.78716', 'ÜT: -6.230443,106.78716', '', 'http://a1.twimg.com/profile_images/55599461/logo-Think.Web_normal.gif', 1303846907),
(110, '165779647', 'theiphonedev', 'UK', 'UK', '', 'http://a2.twimg.com/sticky/default_profile_images/default_profile_5_normal.png', 1303846907),
(111, '16412621', 'dewikr', 'denpasar. jakarta. indonesia.', 'denpasar. jakarta. indonesia.', 'A mother of gorgeous boy, a wife of an amazing man. love books, beach and traveling. simple till confusing.', 'http://a3.twimg.com/profile_images/639496876/12638_185412858490_501823490_2880167_6905371_n_normal.jpg', 1303846907),
(112, '143426674', 'IM3Idol', 'ÜT: -6.239643,106.803795', 'ÜT: -6.239643,106.803795', 'official twitter IM3 IDOL for Indonesian Idol 2010. we share everything about contestant Indonesian idol 2010', 'http://a0.twimg.com/profile_images/899181374/image_dari_klien_normal.jpg', 1303846907),
(113, '39327047', 'Dougornick', 'Trinity, Florida', 'Trinity, Florida', 'Lithographic Sciences, Continuous Improvement, Imaging Technologist, Marketing, Enterprise-level Business Experience', 'http://a2.twimg.com/profile_images/314383552/_twit_normal.jpg', 1303846907),
(114, '13934902', 'PaulKinlan', 'Liverpool, England', 'Liverpool, England', 'A Software Developer from Liverpool. I created twollo.com, www.eweri.com, www.topicala.com, www.frienddeck.com and twe2.com', 'http://a1.twimg.com/profile_images/422955271/Photo_19_normal.jpg', 1303846907),
(115, '41313444', 'ajigoplek', 'Malang', 'Malang', '', 'http://a3.twimg.com/profile_images/1257320150/RCMT_normal.jpg', 1303846907),
(116, '93797918', 'bluecluethuck', 'jakarta', 'jakarta', '', 'http://a3.twimg.com/profile_images/954982437/Photo_20on_202010-04-20_20at_2019.46_normal.jpg', 1303846907),
(117, '91271157', 'vabulan', 'd''proudest city, MLG, Ind.', 'd''proudest city, MLG, Ind.', 'you describe me :)', 'http://a0.twimg.com/profile_images/535154774/DSC00133_normal.JPG', 1303846907),
(118, '12418412', 'aryoxp', 'Indonesia', 'Indonesia', 'Programmer who always failed to make a diet program', 'http://a1.twimg.com/profile_images/1325498499/foto_normal.jpg', 1303846907),
(119, '132571725', 'cloudigniter', 'Milky Way, Orion Arm, Earth.', 'Milky Way, Orion Arm, Earth.', 'CloudIgniter is the world''s first web host designed for specifically for CodeIgniter applications.', 'http://a1.twimg.com/profile_images/829127862/cloudigniter_avatar_normal.png', 1303846907),
(120, '7300962', 'ivanlanin', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'Wikipediawan pencinta bahasa Indonesia dan pendukung Creative Commons', 'http://a1.twimg.com/profile_images/1290558757/Ivan_Lanin_normal.jpg', 1303846907),
(121, '16254577', 'citcitcuit', 'Depok-Jakarta', 'Depok-Jakarta', 'Sweet & tiny think''ers (think web member) who fall in love with social media.', 'http://a0.twimg.com/profile_images/1307879352/fbdantwitter_edit_normal.jpg', 1303846907),
(122, '15038351', 'inggitgigit', 'kalibata, jaksel', 'kalibata, jaksel', 'extrovert 53%, sensing 53%, feeling 83%, judging 62% ', 'http://a2.twimg.com/profile_images/1124151534/gigit_normal.JPG', 1303846907),
(123, '15406806', 'St_Fani', 'Jakarta', 'Jakarta', 'who am i? A paper and pen lover and everything that eclectic... ', 'http://a1.twimg.com/profile_images/1297360915/532bb5659948cf7b22eec6be7f9165d0_normal.jpg', 1303846907),
(124, '130461981', 'cupicuk', 'Jakarta', 'Jakarta', 'Kick It Out - Let''s Kick Racism Out of Football!', 'http://a1.twimg.com/profile_images/1117009438/original_image-1_normal.JPG', 1303846907),
(125, '172685876', 'dnotebookcenter', 'Detos021-78870350,ITC 77212869', 'Detos021-78870350,ITC 77212869', 'Cari Laptop, Notebook, Netbook, Modem, segala Aksesoris Komputer Murah? Tinggal beli disini! Boleh Cash, boleh Kredit/Cicil. ', 'http://a2.twimg.com/profile_images/1091460038/logodnctweeter_copy_normal.jpg', 1303846907),
(126, '64642919', 'rfathoni', '', '', '', 'http://a1.twimg.com/profile_images/1318559242/toni1_normal.jpg', 1303846907),
(127, '20649915', 'nur_diansyah', 'jalan sigura-gura 1 malang', 'jalan sigura-gura 1 malang', '', 'http://a3.twimg.com/profile_images/1218510760/image_normal.jpg', 1303846907),
(128, '61673868', 'bundanyaRafif', 'Indonesia', 'Indonesia', 'Just Ordinary People', 'http://a3.twimg.com/profile_images/340594357/DSC01546_normal.JPG', 1303846907),
(129, '91365060', 'x4html', '', '', '', 'http://a3.twimg.com/profile_images/535670196/business_woman_career_girl_sexy_pinup_by_al_rio_sticker-p217870218619674566qjcl_400_normal.jpg', 1303846907),
(130, '59676933', 'stridsimatupang', 'Indonesia', 'Indonesia', 'regular do-gooder, superhero in disguise, sleep and dream and write and draw, morning breeze and sing and dance, eat and laugh and love, and.. world peace..? :D', 'http://a3.twimg.com/profile_images/1178874294/anjing_colored_normal.jpg', 1303846907),
(131, '71239822', 'findmevha', '', '', '', 'http://a0.twimg.com/profile_images/487379627/n1047286368_2202_normal.jpg', 1303846907),
(132, '134406513', '_andiz', 'Jakarta', 'Jakarta', '', 'http://a0.twimg.com/profile_images/832531925/4639_1146336265009_1425602377_394336_2524141_n_normal.jpg', 1303846907),
(133, '80290059', 'venibudi', 'Indonesia', 'Indonesia', '', 'http://a2.twimg.com/profile_images/1208987751/239612454_normal.jpg', 1303846907),
(134, '66195161', 'firmanfaizal', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'Sejenak menghampiri dunia. Melakukan perjalanan dg segala hal kebaikan dan keburukan yang disajikan. Dan pada akhirnya kembali ke tempat dimana manusia berasal.', 'http://a3.twimg.com/profile_images/1302281736/acb_normal.jpg', 1303846907),
(135, '64071016', 'isawood400', '', '', '', 'http://a3.twimg.com/profile_images/599391916/322588_normal.jpg', 1303846907),
(136, '81051546', 'YudhaErna', 'Jakarta', 'Jakarta', 'Bundanya Raka Chayank', 'http://a2.twimg.com/profile_images/680782717/Edited_Photo0051_normal.jpg', 1303846907),
(137, '78848895', 'lazuardiardiman', 'East Java - Indonesia', 'East Java - Indonesia', 'Sssttt..', 'http://a0.twimg.com/profile_images/670280462/Ardi_Manado_normal.jpg', 1303846907),
(138, '103192278', 'elmowe', 'Indonesia', 'Indonesia', '', 'http://a1.twimg.com/profile_images/619582775/28-12-06_1234_normal.jpg', 1303846907),
(139, '14207570', 'plaque', 'Here, There', 'Here, There', 'No, I will not fix your computer.', 'http://a0.twimg.com/profile_images/598285492/icon_normal.jpg', 1303846907),
(140, '30817261', 'hadi_p88', '', '', '', 'http://a3.twimg.com/profile_images/1164523777/9aea3c5e057418b18a1ae87ea7850cab_normal.jpg', 1303846907),
(141, '27669774', 'fajarembun', 'ÜT: -7.945271,112.617496', 'ÜT: -7.945271,112.617496', 'I am a plurker,twitter,blogger,kaskuser,photographer and nasyider..^^', 'http://a2.twimg.com/profile_images/1205410108/with_D3100_normal.jpg', 1303846907),
(142, '49624951', 'ubaidz', 'malang', 'malang', '', 'http://a3.twimg.com/profile_images/1024439213/cute_kitten_10_normal.jpg', 1303846907),
(143, '14599656', 'eggstone', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'Food, computer, Google, Android, Pixar, poor English, music, movie, photo, afternoon, morning, nature, …', 'http://a1.twimg.com/profile_images/1281295483/trashfull_normal.png', 1303846907),
(144, '70970468', 'dinni_anggraeni', '', '', '', 'http://a3.twimg.com/sticky/default_profile_images/default_profile_2_normal.png', 1303846907),
(145, '125889077', 'Shvarock', 'ÜT: -6.255982,106.795433', 'ÜT: -6.255982,106.795433', '', 'http://a0.twimg.com/profile_images/844950935/sh3varock-2_normal.jpg', 1303846907),
(146, '70916927', 'XLent_Heroes', 'Jakarta', 'Jakarta', 'Tempat ekspresinya para Heroes!', 'http://a1.twimg.com/profile_images/417912415/logo_normal.jpg', 1303846907),
(147, '56962390', 'faniezdotnet', 'Jakarta Selatan', 'Jakarta Selatan', 'Full time freelancer. Blog Writer. Traveler. Random tweets.', 'http://a3.twimg.com/profile_images/1176017264/Fany_-4_normal.jpg', 1303846907),
(148, '77093208', 'ririn05', 'Jakarta - Bandung', 'Jakarta - Bandung', 'Are you sure want to follow me? I can''t read maps!', 'http://a1.twimg.com/profile_images/516772931/FotoAhh..162_normal.jpg', 1303846907),
(149, '120629397', 'laylaayunay', '', '', '1610.....', 'http://a3.twimg.com/profile_images/774103229/ful_normal.jpg', 1303846907),
(150, '80255000', 'rendraTEUB', 'jakarta', 'jakarta', 'Profesional Galauers tapi selalu mencoba jelas menyebut, YUP ini SAYA!!', 'http://a0.twimg.com/profile_images/1295083888/280532712_normal.jpg', 1303846907),
(151, '94572284', 'citz_angel', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'i''m not a girl...not yet a woman...', 'http://a2.twimg.com/profile_images/1144604301/gravatar6_normal.jpg', 1303846907),
(152, '65407588', 'insanmedia', 'yogyakarta indonesia', 'yogyakarta indonesia', 'Thanks, nice to meet you', 'http://a3.twimg.com/profile_images/364558227/1_525682145l_normal.jpg', 1303846907),
(153, '73863531', 'Shevarock', 'Indonesia', 'Indonesia', '', 'http://a1.twimg.com/profile_images/1324593236/twitter_normal.jpg', 1303846907),
(154, '64902718', 'ituzdiyah', '', '', '', 'http://a3.twimg.com/profile_images/496338691/25092009201_normal.jpg', 1303846907),
(155, '72019773', 'freeyourscripts', 'United State', 'United State', 'All links to templates, scripts, icons, fonts, wallpapers, screensavers, etc.', 'http://a3.twimg.com/profile_images/401137884/flower-48x48_normal.png', 1303846907),
(156, '86801470', 'mSepuh', '', '', 'Bahkan, aku sendiri terus bertanya siapa aku...', 'http://a1.twimg.com/sticky/default_profile_images/default_profile_0_normal.png', 1303846907),
(157, '17329681', 'dheche', '-7.958085,112.625064', '-7.958085,112.625064', 'sysadmin, linux, sports, oss', 'http://a3.twimg.com/profile_images/383173111/dheche_normal.jpg', 1303846907),
(158, '64648123', 'Cristina66ra6', '', '', '', 'http://a0.twimg.com/profile_images/356913386/zzzzzzzzzscenegirl-0708_normal.jpg', 1303846907),
(159, '15878694', 'pitra', 'di hatimu', 'di hatimu', 'social media junker, strategist planner, multimedia enthusiast, and creative thinker, who happens to love writing and photography.', 'http://a0.twimg.com/profile_images/1325011942/youravatar3_normal.png', 1303846907),
(160, '44560516', 'udinamazone', 'Surabaya', 'Surabaya', '', 'http://a0.twimg.com/profile_images/602452453/n1290841641_2999_normal.jpg', 1303846907),
(161, '169317039', 'wclassn', '', '', 'founder of the World Chinese Learning Association\r\nJust a funloving guy.\r\nCheck out my free youtubevideo \r\n#1 Secret to AWESOME Mandarin Chinese coming soon', 'http://a2.twimg.com/profile_images/1084899406/WCLA_logo_rev2_2__normal.jpg', 1303846907),
(162, '111244164', 'tengikenambelas', '', '', '', 'http://a0.twimg.com/profile_images/1173627453/fedora-logo-edit_normal.png', 1303846907),
(163, '5730622', 'tamacrea', 'ÜT: -6.179567,106.996717', 'ÜT: -6.179567,106.996717', 'Happy Techies\r\nThinkWeb Geeks\r\n', 'http://a1.twimg.com/profile_images/1308863662/eightbit-8722b3dc-8c32-473a-9776-c31917f046e5_normal.png', 1303846907),
(164, '103897741', 'soulfadj', '', '', 'just an ordinary...', 'http://a0.twimg.com/profile_images/1105035046/DSC00025_normal.JPG', 1303846907),
(165, '16508865', 'throwinside', 'ÜT: -6.739139,107.650389', 'ÜT: -6.739139,107.650389', 'ICT based consultant, business analyst, music lover, coffee addict, love traveling, night, rain, and books. love this country very much. CEO of www.myindo.co.id', 'http://a3.twimg.com/profile_images/601952509/twitterProfilePhoto_normal.jpg', 1303846907),
(166, '14636911', 'khalidity', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'A simple WebDev,who likes humour n laughing, roaming, hiking, wondering, thinking, listening and sharing', 'http://a1.twimg.com/profile_images/1234523709/gwkupluk_normal.jpg', 1303846907),
(167, '126664654', 'Skycatcherz', 'Shah Alam', 'Shah Alam', '', 'http://a0.twimg.com/profile_images/1136578126/Skycatcherz_new_normal.jpg', 1303846907),
(168, '174533652', 'mailena_Alpin86', 'Jakarta', 'Jakarta', '', 'http://a2.twimg.com/profile_images/1310905016/38672_1355463489116_1307317177_30842008_3150504_n1_normal.jpg', 1303846907),
(169, '64656530', 'pandegagah', '', '', '', 'http://a3.twimg.com/profile_images/358108248/PICT0012_normal.JPG', 1303846907),
(170, '42820111', 'christian_teguh', '', '', '', 'http://a1.twimg.com/profile_images/360651771/Photo-0064__1__normal.jpg', 1303846907),
(171, '54786574', 'twiras', 'Indonesia', 'Indonesia', 'Part time worker, full time human.', 'http://a3.twimg.com/profile_images/1318402556/propic_-_the_mask_normal.jpg', 1303846907),
(172, '38189627', 'rizky_ry', 'ÜT: -6.567754,106.803341', 'ÜT: -6.567754,106.803341', 'Called allota things, football enthusiast, a provider for sure :D', 'http://a1.twimg.com/profile_images/237774743/26-02-08_2124_normal.jpg', 1303846907),
(173, '65625414', 'pakdhefebri', 'Malang, Surabaya PP', 'Malang, Surabaya PP', 'kurus jangkung botak berkacamata.', 'http://a3.twimg.com/profile_images/362797118/pakdhe-200x200_normal.jpg', 1303846907),
(174, '54439526', 'mantomini', 'ÜT: -6.253919,106.766701', 'ÜT: -6.253919,106.766701', 'graphic designer, mobile & online marketing interest, food lovers', 'http://a2.twimg.com/profile_images/1165435723/208871131_normal.jpg', 1303846907),
(175, '170607893', 'ujjiecantik', '', '', '', 'http://a1.twimg.com/profile_images/1164514910/33_normal.jpg', 1303846907),
(176, '47280557', 'megaaveiro', 'ÜT: -6.939369,107.665124', 'ÜT: -6.939369,107.665124', '', 'http://a0.twimg.com/profile_images/1319199492/221928_1995935982135_1355548077_32332763_7467516_n_normal.jpg', 1303846907),
(177, '68150292', 'garnisyoyoi', '', '', '', 'http://a0.twimg.com/profile_images/1167064414/ataya_unyu_normal.jpg', 1303846907),
(178, '142583933', 'freestyler_rmg', 'Jakarta', 'Jakarta', 'Retro Modern Gamer!', 'http://a2.twimg.com/profile_images/1265652107/twitter_normal.jpg', 1303846907),
(179, '15778023', 'dimazarno', 'Indonesia', 'Indonesia', 'I Am a Businessman! no matter what they say', 'http://a0.twimg.com/profile_images/1282475606/edit7_normal.jpg', 1303846907),
(180, '52981337', 'endihamid', 'iPhone: -6.254502,106.799668', 'iPhone: -6.254502,106.799668', 'Pecinta Laut | Scuba & free diving buff | Operation Manager & Digital Creative at Think.Web | Flash Designer | Social Media enthusiast', 'http://a3.twimg.com/profile_images/1326082827/cd-1_normal.jpg', 1303846907),
(181, '9281712', 'colonelseven', 'Bintaro', 'Bintaro', 'Do I know you? ', 'http://a3.twimg.com/profile_images/1323629801/abbruzi_normal.jpg', 1303846907),
(182, '71009882', 'Febriyanti_M', 'Banda Aceh', 'Banda Aceh', '', 'http://a0.twimg.com/profile_images/1169984402/foto_buat_twitter_normal.jpg', 1303846907),
(183, '141154856', 'Maumuncratz', '', '', 'You Know Me lah !!!', 'http://a0.twimg.com/sticky/default_profile_images/default_profile_3_normal.png', 1303846907),
(184, '151378343', 'hujanmatahari', 'Indonesia', 'Indonesia', 'sunshower. bright, and shining. ', 'http://a0.twimg.com/profile_images/955596268/freedomwritersposter_normal.jpg', 1303846907),
(185, '121022267', 'senjaELFryeo', 'Indonesia', 'Indonesia', 'I''m just simple girl ^^ love Super Junior , esspecially Kim Ryeowook :p he''s make me crazy .hahahaaa Follow Back? just mention me :)', 'http://a1.twimg.com/profile_images/1299328578/DSC01361_normal.JPG', 1303846907),
(186, '15160806', 'anantya', 'ÜT: -6.130296,106.841602', 'ÜT: -6.130296,106.841602', 'Fascinated by anything online, analytical, food, books and shoes. You can simply find me @Think.Web ', 'http://a1.twimg.com/profile_images/1298434409/e88ec372d036134bb5a0691916e92436_normal.jpg', 1303846907),
(187, '124871949', 'digrinet', 'Seattle, Washington', 'Seattle, Washington', 'Your personal friend-finder. Digri helps you find people with similar interests wherever you are. ', 'http://a3.twimg.com/profile_images/766284463/d_normal.png', 1303846907),
(188, '17736073', 'ifranseda', 'Indonesia', 'Indonesia', 'An Eco-Friendly Web, Facebook Apps and Mobile Apps Developer, and also a regular football lover.', 'http://a1.twimg.com/profile_images/1227084390/soartis_normal.jpg', 1303846907),
(189, '16455946', 'venustweets', 'ÜT: -6.402702,106.974655', 'ÜT: -6.402702,106.974655', 'writer. big time dreamer. social media slave. site publisher. and above it all, a proud mother.', 'http://a3.twimg.com/profile_images/1307560064/d06931d85d7d4a93976262604b424eb7babcdefg_normal.jpg', 1303846907),
(190, '81615685', 'ran96a', 'Jakarta, Indonesia', 'Jakarta, Indonesia', '', 'http://a3.twimg.com/profile_images/1319524794/88c3de37c5ef89306f7b9a22210318ab_normal.jpg', 1303846907),
(191, '78175939', 'dewipatriafm', 'ÜT: -8.095254,112.167031', 'ÜT: -8.095254,112.167031', 'Announcer Radio Patria - Blitar , Redaktur Patria Media Network (PatriaFM dan PASS FM Tulungagung), Web Editorial', 'http://a2.twimg.com/profile_images/1256442836/baroe_normal.jpg', 1303846907),
(192, '68648022', 'ryugonaldi', 'ÜT: -6.205742,106.801988', 'ÜT: -6.205742,106.801988', '', 'http://a2.twimg.com/profile_images/1217932324/n643198545_1195627_3999_normal.jpg', 1303846907),
(193, '43856114', 'thedigitalboy', 'Jakarta RAYA', 'Jakarta RAYA', 'I don''t know how to live, but I''ve got a lot of toys.', 'http://a2.twimg.com/profile_images/1300132982/281986692_normal.jpg', 1303846907),
(194, '74411022', 'funnyhumour', 'Lagos Nigeria', 'Lagos Nigeria', 'cracking ribs from back in the day with the best jokes on twitter...feel free to please send me jokes...ill retweet.', 'http://a3.twimg.com/profile_images/1096838212/150538468_normal.jpg', 1303846907),
(195, '57621031', 'idsugeng', '', '', '', 'http://a0.twimg.com/profile_images/356789461/suseelogo_normal.jpg', 1303846907),
(196, '15069332', 'dkarismawan', 'Jakarta, Indonesia', 'Jakarta, Indonesia', 'Hello, I am web designer based on Jakarta, also the creator of colorbe.com and cardxc.com.\r\nI have a passion on web designing and photography', 'http://a0.twimg.com/profile_images/616986808/arismawan_100px_normal.jpg', 1303846907),
(197, '87861334', 'okhobayu', 'ÜT: -6.22452,106.812014', 'ÜT: -6.22452,106.812014', '', 'http://a1.twimg.com/profile_images/1222701656/249234685_normal.jpg', 1303846907),
(198, '80247885', 'bundadarrion', 'Indonesia', 'Indonesia', 'Try to stand tall and be strong for my child', 'http://a1.twimg.com/profile_images/1170822463/212830079_normal.jpg', 1303846907),
(199, '148582749', 'gama_hansip', '', '', 'orang gila....', 'http://a0.twimg.com/profile_images/1091265544/IMG_2776_normal.JPG', 1303846907),
(200, '48995668', 'chrischamb2363', '', '', '', 'http://a2.twimg.com/profile_images/273150112/45_normal.jpeg', 1303846907),
(201, '49153415', 'XOOSBG', ' ', ' ', ' ', 'http://a3.twimg.com/profile_images/273712418/untitled_normal.jpg', 1303846907),
(202, '47908621', 'wietjaksono', 'ÜT: -6.220959,106.790297', 'ÜT: -6.220959,106.790297', '', 'http://a0.twimg.com/profile_images/1269513570/me1_normal.jpg', 1303846907),
(203, '22457765', 'cakephp_dennis', 'New York, NY', 'New York, NY', 'I''m a web designer, blogger, and a social media addict living in Brooklyn, NY', 'http://a3.twimg.com/profile_images/588943419/cake-php-logo_normal.png', 1303846907),
(204, '48878401', 'Robyn36186', '', '', '', 'http://a1.twimg.com/profile_images/272792026/14_normal.jpeg', 1303846907),
(205, '57934822', 'seftina610', 'PONOROGO,INDONESIA', 'PONOROGO,INDONESIA', 'HAPPY N SAFETY FR WORLD 2 HEAVEN', 'http://a2.twimg.com/profile_images/1182331874/Q_MAJALAH_is_b_day_normal.jpg', 1303846907),
(206, '64317399', 'mandgdirect', 'Internet', 'Internet', 'Hello! We are an Amazon Shop! Check us out!', 'http://a3.twimg.com/profile_images/376465532/mandgdirect_normal.jpg', 1303846907),
(207, '48604733', 'junglon', 'pengennya di situ', 'pengennya di situ', 'keyword : wongbiasa', 'http://a3.twimg.com/profile_images/1294674627/as__1__normal.jpg', 1303846907),
(208, '52038407', 'okeportal', 'Indonesia', 'Indonesia', 'Open Knowledge and Education (oke.or.id) adalah sebuah portal untuk saling berbagi ilmu pengetahuan di seluruh disiplin ilmu.', 'http://a2.twimg.com/profile_images/747948658/oke_normal.png', 1303846907),
(209, '53008135', 'syarieffien', 'ÜT: -6.245087,106.792118', 'ÜT: -6.245087,106.792118', '', 'http://a1.twimg.com/profile_images/1236245847/nd19_normal.jpg', 1303846907),
(210, '6962472', 'alitmahendra', 'Jakarta', 'Jakarta', 'simple, ordinary, selfish and an internet presence enthusiast.. @thinkweb + @wooz_in geek, @aremaniakaskus #94, live the spirit of @AremaFC .. Salam Satu Jiwa', 'http://a1.twimg.com/profile_images/1292266736/savearema3_normal.jpg', 1303846907),
(211, '15097019', 'epat', 'Jakarta', 'Jakarta', 'I could never change just what I feel, My face will never show what is not real', 'http://a2.twimg.com/profile_images/1299106875/b8f63f50663c078595a2917b40e73bf8_normal.jpg', 1303846907),
(212, '50533633', 'cachak', 'Jakarta', 'Jakarta', 'Madura Ndut', 'http://a1.twimg.com/profile_images/281238465/n595723007_1353596_7968_normal.jpg', 1303846907),
(213, '52959577', 'hendriansah', 'ÜT: -7.001412,110.395329', 'ÜT: -7.001412,110.395329', 'STUPID (Smart, To the point, Unique, Positive, Intiuitive, Dominate)', 'http://a1.twimg.com/profile_images/1125676256/178803322_normal.jpg', 1303846907),
(214, '20212168', 'nanang_as', 'Jakarta', 'Jakarta', '', 'http://a1.twimg.com/profile_images/1169830385/NAS-sketch_normal.jpg', 1303846907);

-- --------------------------------------------------------

--
-- Table structure for table `fs_users`
--

CREATE TABLE IF NOT EXISTS `fs_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL,
  `ip_address` char(16) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fs_users`
--

INSERT INTO `fs_users` (`id`, `group_id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `remember_code`, `created_on`, `last_login`, `active`) VALUES
(1, 2, '127.0.0.1', 'Erwin Handoko', '3a26904feab778d43ef04558ef88061135cc642c', NULL, 'bhasunjaya@yahoo.com', NULL, NULL, NULL, 1303669313, 1303832285, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
