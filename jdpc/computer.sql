-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-21 07:16:18
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computer`
--

-- --------------------------------------------------------

--
-- 表的结构 `pc_collect`
--

CREATE TABLE `pc_collect` (
  `cid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_collect`
--

INSERT INTO `pc_collect` (`cid`, `user_id`, `product_id`, `checked`) VALUES
(1, 1, 1, 1),
(2, 1, 35, 1),
(3, 1, 7, 1),
(4, 1, 14, 1),
(5, 1, 11, 1),
(6, 1, 13, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pc_index_carousel`
--

CREATE TABLE `pc_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_index_carousel`
--

INSERT INTO `pc_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/banner1.jpg', '轮播广告商品1', 'product-details.html?lid=28'),
(2, 'img/index/banner2.jpg', '轮播广告商品2', 'product-details.html?lid=19'),
(3, 'img/index/banner3.jpg', '轮播广告商品3', 'lookforward.html'),
(4, 'img/index/banner4.jpg', '轮播广告商品4', 'lookforward.html'),
(5, 'img/index/banner5.jpg', '轮播广告商品5', 'lookforward.html');

-- --------------------------------------------------------

--
-- 表的结构 `pc_index_product`
--

CREATE TABLE `pc_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_index_product`
--

INSERT INTO `pc_index_product` (`pid`, `title`, `details`, `pic`, `price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(1, 'A惠普(HP)暗影精灵3代系列', 'i7-7700HQ 8G 128GSSD+1T 4G独显 120Hz IPS', 'img/index/study_computer_img1.png', '7999.00', 'product_details.html?lid=1', 1, 1, 1),
(2, '神舟(HASEE)战神Z7-SP5D1', 'i7-7700HQ 8G 128GSSD+1T 4G独显 120Hz IPS', 'img/index/study_computer_img2.png', '6199.00', 'product_details.html?lid=16', 2, 2, 2),
(3, '宏碁(Acer)暗影骑士3进阶版AN5', 'i7-7700HQ 8G 1T+128G SSD GTX1050Ti 4G独显 IPS', 'img/index/study_computer_img3.png', '7099.00', 'product_details.html?lid=25', 3, 3, 3),
(4, '华硕(ASUS) 顽石畅玩版R541UJ', 'i5-7200U 4G 500G 920M 2G独显', 'img/index/study_computer_img4.png', '3699.00', 'product_details.html?lid=12', 4, 4, 4),
(5, '雷神（ThundeRobot）Dino-X7', 'I7-7700HQ 16G 256G SSD+1T 8G RGB键盘', 'img/index/study_computer_img5.png', '12999.00', 'product_details.html?lid=34', 5, 5, 5),
(6, '外星人Alienware15C-R2738', 'i7-7700HQ 16G 256GSSD+1T GTX1060 6G独显 FHD', 'img/index/study_computer_img3.png', '16999.00', 'product_details.html?lid=40', 6, 6, 6),
(7, 'ThinkPad X1 Carbon 2017', 'i7-7500U 8G 512GSSD 背光键盘FHD Win10', 'img/index/study_computer_img3.png', '9999.00', 'product_details.html?lid=32', 6, 6, 6);

-- --------------------------------------------------------

--
-- 表的结构 `pc_laptop`
--

CREATE TABLE `pc_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_laptop`
--

INSERT INTO `pc_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `details`, `shelf_time`, `sold_count`, `is_onsale`) VALUES
(1, 1, 'A惠普(HP)暗影精灵3代 GTX1050Ti 15.6英寸游戏笔记本电脑（i7-7700HQ 8G 128GSSD+1T 4G独显 120Hz IPS）', '【120Hz刷新率 72%色域】4通道NvME PCIe3.0固态硬盘！做工精良的外观！良心的三热管散热！GTX1050ti的4G显存！吃鸡才能更爽！', '7999.00', '*以旧换新，闲置回收', 'i7/8GB内存/128GB闪存', '惠普暗影精灵III代', 'GTX1050Ti', '8G', '1920*1080', '高性能游戏独立显卡', 'Intel i7标准电压版', '2G', '轻薄本', '128G+1T固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a4bN9dc6b33c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a46Nebb7e514.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a63Ne210a098.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a6dNfcd1bd7e.jpg"></div></div></div>', 150123456789, 46951, 1),
(2, 1, '惠普（HP）暗影精灵III代 15.6英寸游戏笔记本电脑（i5-7300HQ 8G 1T GTX1050 2G独显 IPS FHD）', '碳纤维纹理搭配金属拉丝！做工精良！采用26键无冲键盘！减少游戏失误！', '5999.00', '*以旧换新，闲置回收', 'i5 8G 1T GTX1050 IPS FHD', '惠普暗影精灵III代', 'GTX1050', '8G', '1920*1080', '高性能游戏独立显卡', 'Intel i5标准电压版', '其它', '轻薄本', '1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a4bN9dc6b33c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a46Nebb7e514.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a63Ne210a098.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a6dNfcd1bd7e.jpg"></div></div></div>', 150123456789, 35442, 1),
(3, 1, '惠普(HP)暗影精灵3代 GTX1050Ti 15.6英寸游戏笔记本电脑（i5-7300HQ 8G 128GSSD+1T 4G独显 120Hz IPS）', '【120Hz刷新率 72%色域】4通道NvME PCIe3.0固态硬盘！做工精良的外观！良心的三热管散热！', '7299.00', '*以旧换新，闲置回收', 'i5 8G 128GSSD+1T 4G独显 IPS', '惠普暗影精灵III代', 'GTX1050Ti', '8G', '1920*1080', '高性能游戏独立显卡', 'Intel i5标准电压版', '4G', '轻薄本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a4bN9dc6b33c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a46Nebb7e514.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a63Ne210a098.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a6dNfcd1bd7e.jpg"></div></div></div>', 150123456789, 35458, 1),
(4, 1, '惠普(HP)暗影精灵3代Plus GTX1060 17.3英寸游戏笔记本(i7-7700HQ 8G 128GSSD+1T 6G独显 G-sync 120Hz)', '【120Hz刷新率 72%色域】6G独显的GTX1060显卡！带G-sync的电竞屏幕！吃鸡才能吃的爽！做工精良，良心散热设计！', '9999.00', '*以旧换新，闲置回收', 'i7 8G 128GSSD+1T 6G独显 G-sync', '惠普暗影精灵III代', 'GTX1060', '8G', '1920*1080', '高性能游戏独立显卡', 'Intel i7标准电压版', '6G', '轻薄本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a4bN9dc6b33c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a46Nebb7e514.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a63Ne210a098.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a6dNfcd1bd7e.jpg"></div></div></div>', 150123456789, 35685, 1),
(5, 1, '惠普(HP)暗影精灵3代Plus GTX1070 17.3英寸游戏笔记本(i7-7700HQ 16G 256GSSD+1T 8G独显 G-sync 120Hz)', '【120Hz刷新率 72%色域】GTX1070！8G独显！带G-sync的电竞屏幕！吃鸡才能吃的爽！做工精良，良心散热设计！', '12999.00', '*以旧换新，闲置回收', 'i7 16G 256GSSD+1T 8G独显 G-sync', '惠普暗影精灵III代', 'GTX1070', '16G', '1920*1080', '高性能游戏独立显卡', 'Intel i7标准电压版', '8G', '轻薄本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a4bN9dc6b33c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a46Nebb7e514.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a63Ne210a098.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="img/product/detail/5a056a6dNfcd1bd7e.jpg"></div></div></div>', 150123456789, 35458, 1),
(6, 2, '戴尔DELL XPS13-9360-R1609 13.3英寸轻薄窄边框笔记本电脑(i5-7200U 8G 256GSSD FHD Win10)无忌银', '【同是好货 买一快的！京东自营 支持价保 】升级全新7代cpu！超窄边框设计！ 尊享2年上门服务 免去你维修烦恼！', '7699.00', '*以旧换新，闲置回收', '13.3英寸 8G 256G', '戴尔XPS', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本，常规笔记本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59673d41Nbf99d137.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59353251Nd17d2ab9.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159a01N0a8688a2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5966d799N4b5a2be5.jpg"></div></div></div>', 154123456789, 11480, 1),
(7, 2, '戴尔DELL XPS13-9360-R3705G 13.3英寸轻薄窄边框笔记本电脑(i7-8550U 8G 256GSSD IPS Win10)无忌金', '【轻薄窄边框】8代CPU、固态硬盘高端配备、全高清ips显示屏、超长续航无忧体验、轻薄便携优雅不失质感！', '8999.00', '*以旧换新，闲置回收', 'i7 8G 256GSSD IPS', '戴尔XPS', 'Windows 10', '8G', '全高清屏(1920*1080)', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本，常规笔记本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59673d41Nbf99d137.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59353251Nd17d2ab9.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159a01N0a8688a2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5966d799N4b5a2be5.jpg"></div></div></div>', 154123456789, 11450, 1),
(8, 2, '戴尔DELL XPS13-9360-R1705G 13.3英寸轻薄窄边框笔记本电脑(i7-7500U 8G 256GSSD FHD Win10)无忌金', '【轻薄窄边框】七代i7双核CPU、固态硬盘高端配备、全高清显示屏、超长续航无忧体验、全重1.2KG、轻薄便携优雅不失质感！', '9099.00', '*以旧换新，闲置回收', 'i7 8G 256GSSD FHD ', '戴尔XPS', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '其它', '轻薄本，常规笔记本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59673d41Nbf99d137.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59353251Nd17d2ab9.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159a01N0a8688a2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5966d799N4b5a2be5.jpg"></div></div></div>', 154123456789, 12450, 1),
(9, 2, '戴尔DELL XPS13-9360-R1705 13.3英寸轻薄窄边框笔记本电脑(i7-7500U 8G 256GSSD FHD Win10)无忌银', '【轻薄窄边框】七代i7双核CPU、固态硬盘高端配备、全高清显示屏、超长续航无忧体验、全重1.2KG、轻薄便携优雅不失质感！', '8999.00', '*以旧换新，闲置回收', 'i7 8G 256GSSD FHD', '戴尔XPS', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '其它', '轻薄本，常规笔记本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59673d41Nbf99d137.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59353251Nd17d2ab9.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159a01N0a8688a2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5966d799N4b5a2be5.jpg"></div></div></div>', 154123456789, 12540, 1),
(10, 3, '华硕(ASUS) 顽石畅玩版R419UR 14英寸笔记本电脑(i5-8250U 4G 500G 930MX 2G独显 HD)冰金色', '【8代CPU强大性能！】适合追求坚实耐用品质的务实人士！只买对的！', '4199.00', ' *以旧换新，闲置回收', 'i5 4G 500G 930MX 2G独显 HD', '华硕R419UR', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59bbad14Nd0893e28.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59cb6e11N65c2dc40.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59b9028fN29dabd03.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599133e7Nc1ddd8fa.jpg"></div></div></div>', 150423456789, 38155, 1),
(11, 3, '华硕(ASUS) 顽石畅玩版R540UP 15.6英寸笔记本电脑(i5-7200U 4G 500GB 2G独显)巧克力黑', '【周末华硕享好价！重娱乐学习都合适的i5性能本！注重性价比的就是它了！】', '3599.00', ' *以旧换新，闲置回收', 'i5 4G 500GB 2G独显', '华硕R540UP', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59bbad14Nd0893e28.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59cb6e11N65c2dc40.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59b9028fN29dabd03.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599133e7Nc1ddd8fa.jpg"></div></div></div>', 150423456789, 38155, 1),
(12, 3, '华硕(ASUS) 顽石畅玩版R541UJ 15.6英寸笔记本电脑(i5-7200U 4G 500G 920M 2G独显)白色', '【周末华硕享好价！重娱乐学习都合适的i5性能本！注重性价比的就是它了！】', '3699.00', ' *以旧换新，闲置回收', 'i5 4G 500G 920M 2G独显', '华硕R541UJ', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59bbad14Nd0893e28.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59cb6e11N65c2dc40.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59b9028fN29dabd03.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599133e7Nc1ddd8fa.jpg"></div></div></div>', 150423456789, 38165, 1),
(13, 4, '神舟(HASEE)战神Z8-KP7S2 GTX1070 8G独显 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+240G SSD 1080P)黑色', '七代四核i7+双硬盘，iPS屏+RGB背光键盘，超级战神~GTX1070嗨爆全场！', '9499.00', ' *以旧换新，闲置回收', 'i7/8G独显/1T+240G SSD', '神舟战神Z8-KP7S2', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '8G', '游戏本', '240+1TG固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da8N2f1f6cda.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da5N223bdf7c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598c1243Nedb802a0.jpg"></div></div></div>', 151123456789, 39545, 1),
(14, 4, '神舟（HASEE）战神Z7M-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 1080P)IPS屏', '超高可视角度IPS屏，GTX1050Ti性能爆表！七代i7加SSD，兄弟，有了这个，你好几年不用换电脑了！分享有礼得京豆，更有专属优惠券等', '6499.00', ' *以旧换新，闲置回收', 'i7 8G 1T+128G SSD ', '神舟战神Z7M-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da8N2f1f6cda.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da5N223bdf7c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598c1243Nedb802a0.jpg"></div></div></div>', 151123456789, 39125, 1),
(15, 4, '神舟（HASEE）战神Z6-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '【128G SSD+1T HDD】双硬盘，春风“十”里，期待是你！', '5799.00', ' *以旧换新，闲置回收', 'i7 8G 1T+128G SSD', '神舟战神Z6-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da8N2f1f6cda.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da5N223bdf7c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598c1243Nedb802a0.jpg"></div></div></div>', 151123456789, 33545, 1),
(16, 4, '神舟(HASEE)战神Z7-SP5D1 GTX1060 6G 15.6英寸游戏本笔记本电脑(i5-6300HQ 8G 1T 1080P)黑色', '酷睿四核CPU，三风扇五铜管散热。并且我们的1060是6G的，比别人的更具性价比！分享有礼得京豆，更有专属优惠券等待你的好友认领哦！', '6199.00', ' *以旧换新，闲置回收', 'i5 8G 1T', '神舟战神Z7', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5标准电压版', '6G', '游戏本', '1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da8N2f1f6cda.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59311da5N223bdf7c.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598c1243Nedb802a0.jpg"></div></div></div>', 151123456789, 36345, 1),
(17, 5, '海尔（Haier）简爱S11 11.6英寸轻薄便携二合一触控笔记本电脑(Intel四核 4G 64G 360°翻转 1080P Win10)金', '轻薄便携二合一】360°随时随地随意玩，轻薄时尚外观！精致优雅，颜值担当，持久续航！', '1799.00', ' *以旧换新，闲置回收', 'Intel四核 4G 64G  1080P ', '海尔简爱S11', 'Windows 10', '4G', '分辨率：全高清屏(1920×1080)', '集成显卡', 'Intel 其他', '4G', '轻薄本，二合一笔记本，常规笔记本，其它　', '128G+500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b7758eN2485a356.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b77590Ne29d0a39.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599d4678Na05887f6.jpg"></div></div></div>', 149123456789, 3485, 1),
(18, 5, '海尔（Haier）凌越5000 15.6英寸轻薄游戏笔记本电脑（Intel 7代 4G 500G MX150 2G独显 全高清 Win10）', '【强劲动力 大屏大视野】奔腾双核+ MX150 2G独显+15.6英寸轻薄便携', '3099.00', ' *以旧换新，闲置回收', 'i7 4G 500G MX150 ', '海尔凌越5000', 'Windows 10', '4G', '分辨率：全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel 其他', '2G', '游戏本，轻薄本，常规笔记本　', '500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b7758eN2485a356.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b77590Ne29d0a39.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599d4678Na05887f6.jpg"></div></div></div>', 149123456789, 3585, 1),
(19, 5, '海尔（Haier）凌越5000 15.6英寸轻薄游戏笔记本电脑（I7-8550U 8G 1TB MX150 2G独显 全高清 Win10）', '【酷睿八代，火力全开！】15.6英寸轻薄便携+ MX150 2G独显+1T硬盘！', '5299.00', ' *以旧换新，闲置回收', 'I7 8G 1TB MX150', '海尔凌越5000', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本，轻薄本，常规笔记本，其它　　', '1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b7758eN2485a356.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b77590Ne29d0a39.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599d4678Na05887f6.jpg"></div></div></div>', 149123456789, 3645, 1),
(20, 5, '海尔（Haier）凌越S4 13.3英寸金属轻薄学生商务笔记本(Intel 7代 4G 500G 72%色域 广视角 无亮点 Win10)', '17.8mm轻盈便携+72%色域高清视觉享受+背光键盘，商务精英、学生推荐之选！', '3199.00', ' *以旧换新，闲置回收', 'Intel 7代 4G 500G  广视角', '海尔凌越S4', 'Windows 10', '4G', '分辨率：全高清屏(1920×1080)', '集成显卡', 'Intel 其他', '其它', '轻薄本，常规笔记本，其它　　', '500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b7758eN2485a356.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58b77590Ne29d0a39.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/599d4678Na05887f6.jpg"></div></div></div>', 149123456789, 3569, 1),
(21, 6, '戴尔DELL灵越7570-R1545S 15.6英寸轻薄笔记本电脑(i5-8250U 4G 1T 940MX 4G独显 IPS Win10)银', '【三面金属微边框轻薄本、80% 屏占比】八代四核处理器、全高清IPS屏、双天线网卡，上网看电影玩游戏，都更快一点点！', '5599.00', ' *以旧换新，闲置回收', 'i5 4G 1T 940MX 4G独显 IPS', '戴尔灵越', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '4G', '轻薄本，常规笔记本', '1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5a056f32N7a6316b3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5996c2c6Nbcb9a2f4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59af52a4N98732335.jpg"></div></div></div>', 151923456789, 25425, 0),
(22, 6, '戴尔DELL灵越7570-R1745S 15.6英寸轻薄笔记本电脑(i7-8550U 8G 256GSSD+1T 940MX 4G独显 IPS Win10)银', '【三面金属微边框轻薄本、80% 屏占比】八代四核处理器、全高清IPS屏、双天线网卡，上网看电影玩游戏，都更快一点点！', '7199.00', ' *以旧换新，闲置回收', 'i7 8G 256GSSD+1T 940MX 4G独显 IPS ', '戴尔灵越', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '4G', '轻薄本，常规笔记本', '混合硬盘', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5a056f32N7a6316b3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5996c2c6Nbcb9a2f4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59af52a4N98732335.jpg"></div></div></div>', 151923456789, 23225, 0),
(23, 6, '戴尔DELL灵越7570-R2645P 15.6英寸轻薄笔记本电脑(i5-8250U 8G 128GSSD+1T 940MX 4G独显 IPS Win10)粉', '【三面金属微边框轻薄本、80% 屏占比】八代四核处理器、全高清IPS屏、双天线网卡，上网看电影玩游戏，都更快一点点！', '6299.00', ' *以旧换新，闲置回收', 'i5 8G 128GSSD+1T 940MX 4G独显 IPS ', '戴尔灵越', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '4G', '轻薄本，常规笔记本', '混合硬盘', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5a056f32N7a6316b3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5996c2c6Nbcb9a2f4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59af52a4N98732335.jpg"></div></div></div>', 151923456789, 25366, 0),
(24, 6, '戴尔DELL灵越燃7000 R1525S 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 940MX 2G独显 FHD)银', '【三边全景7mm微边框、77% 超高屏占比、金属材质】七代i5双核CPU、IPS全高清显示屏、视野通透性更好玩游戏看电影性能更澎湃！', '4999.00', ' *以旧换新，闲置回收', 'i5 4G 128GSSD+500G 940MX FHD', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本，常规笔记本', '128G+500G', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5a056f32N7a6316b3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5996c2c6Nbcb9a2f4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59af52a4N98732335.jpg"></div></div></div>', 151923456789, 25425, 0),
(25, 7, '宏碁(Acer)暗影骑士3进阶版AN5 GTX1050Ti 15.6英寸游戏笔记本(i5-7300HQ 8G 1T+128G SSD 4G独显 IPS)', '【晒单返50元E卡】【宏碁实惠返场 尖货捡漏！】买新品轻薄本炫6送双肩包，超多福利等你来撩！详情猛戳！', '6199.00', ' *以旧换新，闲置回收', 'i5 8G 1T+128G SSD 4G独显 IPS', '宏碁AN515', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbffffNebbcdba0.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbfffeN09cb3ee3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5938ba78Nc95f3b26.jpg"></div></div></div>', 148123456789, 8454, 1),
(26, 7, '宏碁(Acer)暗影骑士3进阶版AN5 15.6英寸游戏笔记本(i5-7300HQ 8G 1T+128G SSD GTX1050 4G独显 IPS背光键盘)', '【晒单返50元E卡】【宏碁实惠返场 尖货捡漏！】买新品轻薄本炫6送双肩包，超多福利等你来撩！详情猛戳！', '5699.00', ' *以旧换新，闲置回收', 'i5 8G 1T+128G SSD GTX1050 ', '宏碁AN515', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbffffNebbcdba0.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbfffeN09cb3ee3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5938ba78Nc95f3b26.jpg"></div></div></div>', 148123456789, 8564, 1),
(27, 7, '宏碁(Acer)暗影骑士3进阶版AN5 15.6英寸游戏笔记本(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 4G独显 IPS)', '【晒单返50元E卡】【宏碁实惠返场 尖货捡漏！】买新品轻薄本炫6送双肩包，超多福利等你来撩！详情猛戳！', '7099.00', ' *以旧换新，闲置回收', 'i7 8G 1T+128G SSD IPS', '宏碁AN515', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbffffNebbcdba0.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbfffeN09cb3ee3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5938ba78Nc95f3b26.jpg"></div></div></div>', 148123456789, 8864, 1),
(28, 7, '宏碁(Acer)威武骑士 A715 15.6英寸游戏笔记本(i5-7300HQ 4G 1T GTX1050 2G独显 Win10 IPS背光键盘)', '【晒单返50元E卡】【宏碁实惠返场 尖货捡漏！】买新品轻薄本炫6送双肩包，超多福利等你来撩！详情猛戳！', '4999.00', ' *以旧换新，闲置回收', 'i5 4G 1T GTX1050 2G独显 ', '宏碁威武骑士', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '2G', '游戏本', '1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbffffNebbcdba0.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59fbfffeN09cb3ee3.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5938ba78Nc95f3b26.jpg"></div></div></div>', 148123456789, 8596, 1),
(29, 8, 'ThinkPad X1 Carbon 2017（07CD）14英寸轻薄笔记本电脑（i5-7200U 8G 256GSSD 背光键盘FHD Win10）', '2017 X1 Carbon男神本再升级！轻薄奢品！【ThinkPad】引领高品质生活~白条6期免息~价保详情》', '9999.00', '*以旧换新，闲置回收', 'i5 8G 256GSSD FHD ', 'ThinkPadX1 Carbon 2017', 'Windows 10', '8G', '全高清屏（1920×1080）', '集成显卡', 'Intel i5低功耗版', '2G', '轻薄本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dNfb64dc45.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dN57a2e6d2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5993ae15N35429a29.jpg"></div></div></div>', 150123456789, 3200, 1),
(30, 8, 'ThinkPad X1 Carbon（20FBA085CD）14英寸笔记本电脑（i5-6200U 8G 180GSSD FHD IPS Win10）', '2X1 Carbon男神本再升级！轻薄奢品！本该如此【ThinkPad】引领高品质生活~白条6期免息~价保详情》', '8499.00', '*以旧换新，闲置回收', 'i5 8G 180GSSD FHD IPS ', 'ThinkPadX1 Carbon（20FBA085CD）', 'Windows 10', '8G', '全高清屏（1920×1080）', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '其它', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dNfb64dc45.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dN57a2e6d2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5993ae15N35429a29.jpg"></div></div></div>', 150123456789, 3300, 1),
(31, 8, 'ThinkPad X1 Carbon 2017（1ECD）14英寸轻薄笔记本电脑（i7-7500U 8G 512GSSD 背光键盘FHD Win10）', '2017 X1 Carbon男神本再升级！轻薄奢品！【ThinkPad】引领高品质生活~白条6期免息~价保详情》', '14999.00', '*以旧换新，闲置回收', 'i7 8G 512GSSD FHD', 'ThinkPadX1 Carbon 2017', 'Windows 10', '8G', '全高清屏（1920×1080）', '集成显卡', 'Intel i7低功耗版', '2G', '轻薄本', '512G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dNfb64dc45.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dN57a2e6d2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5993ae15N35429a29.jpg"></div></div></div>', 150123456789, 3200, 1),
(32, 8, 'ThinkPad X1 Carbon 2017（1ECD）14英寸轻薄笔记本电脑（i7-7500U 8G 512GSSD 背光键盘FHD Win10）', '2017 X1 Carbon男神本再升级！轻薄奢品！【ThinkPad】引领高品质生活~白条6期免息~价保详情》', '9999.00', '*以旧换新，闲置回收', 'i7 8G 512GSSD FHD', 'ThinkPadX1 Carbon 2017', 'Windows 10', '8G', '全高清屏（1920×1080）', '集成显卡', 'Intel i7低功耗版', '2G', '轻薄本', '512G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dNfb64dc45.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dN57a2e6d2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5993ae15N35429a29.jpg"></div></div></div>', 150123456789, 3356, 1),
(33, 8, 'ThinkPad X1 Carbon 2017（07CD）14英寸轻薄笔记本电脑（i5-7200U 8G 256GSSD 背光键盘FHD Win10）', '2017 X1 Carbon男神本再升级！轻薄奢品！【ThinkPad】引领高品质生活~白条6期免息~价保详情》', '9999.00', '*以旧换新，闲置回收', 'i5 8G 256GSSD FHD', 'ThinkPadX1 Carbon 2017', 'Windows 10', '8G', '全高清屏（1920×1080）', '集成显卡', 'Intel i5低功耗版', '2G', '轻薄本', '256G固态', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dNfb64dc45.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58f0902dN57a2e6d2.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5993ae15N35429a29.jpg"></div></div></div>', 150123456789, 3358, 1),
(34, 9, '雷神（ThundeRobot）Dino-X7 GTX 1070 15.6英寸吃鸡游戏本笔记本（I7-7700HQ 16G 256G SSD+1T 8G RGB键盘）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '12999.00', ' *以旧换新，闲置回收', 'I7 16G 256G SSD+1T 8G RGB', '雷神Dino-X7a', 'Windows 10', '16G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 1431, 0),
(35, 9, '雷神（ThundeRobot）Dino-X5 GTX 1050Ti 15.6英寸游戏笔记本电脑（I7-7700HQ 8G 128G SSD+1T 4G RGB键盘）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '8999.00', ' *以旧换新，闲置回收', 'I7 8G 128G SSD+1T 4G', '雷神Dino-X5Ta', 'Windows 10', '8G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 1578, 0),
(36, 9, '雷神（ThundeRobot）Dino-X6电竞版 吃鸡游戏本（I7-7700HQ 8G 128G SSD+1T GTX1060 6G RGB键盘 120Hz IPS）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '10999.00', ' *以旧换新，闲置回收', 'I7 8G 128G SSD+1T GTX1060 6G ', '雷神Dino-X7a', 'Windows 10', '8G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 15699, 0),
(37, 9, '雷神（ThundeRobot）Dino电竞版 4K屏游戏笔记本电脑（I7-7700HQ 16G 512G SSD+1T GTX1070 8G RGB键盘）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '14999.00', ' *以旧换新，闲置回收', 'I7 16G 512G SSD+1T GTX1070', '雷神Dino-X7', 'Windows 10', '16G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '8G', '游戏本', '512G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 1561, 0),
(38, 9, '雷神（ThundeRobot）Dino-X7 GTX 1070 15.6英寸吃鸡游戏本笔记本（I7-7700HQ 16G 256G SSD+1T 8G RGB键盘）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '12999.00', ' *以旧换新，闲置回收', 'I7 16G 256G SSD+1T 8G RGB', '雷神Dino-X7a', 'Windows 10', '16G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 1425, 0),
(39, 9, '雷神（ThundeRobot）Dino-X7 GTX 1070 15.6英寸吃鸡游戏本笔记本（I7-7700HQ 16G 256G SSD+1T 8G RGB键盘）', '【吃鸡利器】全透极光一体式触摸板，高端游戏本让你赢【白条3期免息】》》请点击《《', '12999.00', ' *以旧换新，闲置回收', 'I7 16G 256G SSD+1T 8G', '雷神Dino-X7a', 'Windows 10', '16G', '全高清屏(1920*1080)', '高性能游戏独立显卡', 'Intel i7标准电压版', '4G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59c1cd32Nc11a1ab4.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e24Naf7b0096.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/598d1e61N13b8d186.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/595b3fe8Nba850740.jpg"></div></div></div>\r\n', 1450123456789, 1465, 0),
(40, 10, '外星人Alienware15C-R2738 15.6英寸Gsync屏游戏笔记本电脑(i7-7700HQ 16G 256GSSD+1T GTX1060 6G独显 FHD)', '大吉大利,晚上吃鸡!七代CPU,GTX10系独显全面支持VR技术, 2年上门全智服务+意外保护服务解除后顾之忧. 【评论送外星人定制U盘，请咨询咚咚客服', '16999.00', ' *以旧换新，闲置回收', 'i7 16G 256GSSD+1T FHD', '外星人ALW15C-R2738', 'Windows 10', '16G', '全高清屏(1920×1080)', 'GTX1060', 'Intel i7标准电压版', '6G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5915992fN3454527d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N46a0daee.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58cb7c7eN3ec2a25d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N74d5368a.jpg"></div></div></div>', 151123456789, 1125, 0),
(41, 10, '外星人Alienware15C-R2858S 15.6英寸Gsync屏游戏笔记本电脑(i7-7820HK 32G 512GSSD+1T GTX1080 8G独显 FHD)', '大吉大利,晚上吃鸡!七代CPU,GTX10系独显全面支持VR技术, 2年上门全智服务+意外保护服务解除后顾之忧. 【评论送外星人定制U盘，请咨询咚咚客服', '27999.00', ' *以旧换新，闲置回收', 'i7 32G 512GSSD+1T FHD', '外星人ALW15C-R2858S', 'Windows 10', '32G', '全高清屏(1920×1080)', 'GTX1060', 'Intel i7标准电压版', '8G', '游戏本', '512G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5915992fN3454527d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N46a0daee.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58cb7c7eN3ec2a25d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N74d5368a.jpg"></div></div></div>', 151123456789, 1254, 0),
(42, 10, '外星人Alienware15C-R2748 15.6英寸Gsync屏游戏笔记本电脑(i7-7700HQ 16G 256GSSD+1T GTX1070 8G独显 FHD)', '大吉大利,晚上吃鸡!七代CPU,GTX10系独显全面支持VR技术, 2年上门全智服务+意外保护服务解除后顾之忧. 【评论送外星人定制U盘，请咨询咚咚客服', '20699.00', ' *以旧换新，闲置回收', 'i7 16G 256GSSD+1T FHD', '外星人ALW15C-R2748', 'Windows 10', '16G', '全高清屏(1920×1080)', 'GTX1060', 'Intel i7标准电压版', '8G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5915992fN3454527d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N46a0daee.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58cb7c7eN3ec2a25d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N74d5368a.jpg"></div></div></div>', 151123456789, 1365, 0),
(43, 10, '外星人Alienware15C-R2738 15.6英寸Gsync屏游戏笔记本电脑(i7-7700HQ 16G 256GSSD+1T GTX1060 6G独显 FHD)', '大吉大利,晚上吃鸡!七代CPU,GTX10系独显全面支持VR技术, 2年上门全智服务+意外保护服务解除后顾之忧. 【评论送外星人定制U盘，请咨询咚咚客服', '17699.00', ' *以旧换新，闲置回收', 'i7 16G 256GSSD+1T FHD', '外星人ALW15C-R2738', 'Windows 10', '16G', '全高清屏(1920×1080)', 'GTX1060', 'Intel i7标准电压版', '6G', '游戏本', '256G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5915992fN3454527d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N46a0daee.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58cb7c7eN3ec2a25d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N74d5368a.jpg"></div></div></div>', 151123456789, 1325, 0),
(44, 10, '外星人Alienware15C-R2508S 15.6英寸Gsync屏游戏笔记本电脑(i5-7300HQ 8G 128G+1T GTX1050Ti 2G独显 Win10)', '大吉大利,晚上吃鸡!七代CPU,GTX10系独显全面支持VR技术, 2年上门全智服务+意外保护服务解除后顾之忧. 【评论送外星人定制U盘，请咨询咚咚客服', '11999.00', ' *以旧换新，闲置回收', 'i5-7300HQ 8G 128G+1T', '外星人ALW15C-R2738', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i5标准电压版', '2G', '游戏本', '128G+1T', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img src="img/product/detail/5915992fN3454527d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N46a0daee.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/58cb7c7eN3ec2a25d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img src="img/product/detail/59159930N74d5368a.jpg"></div></div></div>', 151123456789, 1055, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pc_laptop_family`
--

CREATE TABLE `pc_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_laptop_family`
--

INSERT INTO `pc_laptop_family` (`fid`, `fname`) VALUES
(1, '惠普(HP)暗影精灵3代'),
(2, '戴尔DELL XPS13-9360-R1609'),
(3, '华硕(ASUS) 顽石畅玩版R419UR'),
(4, '神舟(HASEE)战神Z8-KP7S2 GTX1070'),
(5, '海尔（Haier）简爱S11'),
(6, '戴尔DELL灵越7570-R1545S'),
(7, '宏碁(Acer)暗影骑士3进阶版AN5 GTX1050Ti'),
(8, 'ThinkPad X1 Carbon 2017（07CD）'),
(9, '雷神（ThundeRobot）Dino-X7 GTX 1070'),
(10, '外星人Alienware15C-R2738');

-- --------------------------------------------------------

--
-- 表的结构 `pc_laptop_pic`
--

CREATE TABLE `pc_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_laptop_pic`
--

INSERT INTO `pc_laptop_pic` (`pid`, `laptop_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/5929684fNbc2d3f94.jpg', 'img/product/md/5929684fNbc2d3f94.jpg', 'img/product/lg/5929684fNbc2d3f94 .jpg'),
(2, 1, 'img/product/sm/59296a4dN657be0ef.jpg', 'img/product/md/59296a4dN657be0ef.jpg', 'img/product/lg/59296a4dN657be0ef.jpg'),
(3, 1, 'img/product/sm/59296a77N5883ebff.jpg', 'img/product/md/59296a77N5883ebff.jpg', 'img/product/lg/59296a77N5883ebff.jpg'),
(4, 1, 'img/product/sm/59296a72Nb3743940.jpg', 'img/product/md/59296a72Nb3743940.jpg', 'img/product/lg/59296a72Nb3743940.jpg'),
(5, 1, 'img/product/sm/59296a7aNae47a5c2.jpg', 'img/product/md/59296a7aNae47a5c2.jpg', 'img/product/lg/59296a7aNae47a5c2.jpg'),
(6, 2, 'img/product/sm/5929684fNbc2d3f94.jpg', 'img/product/md/5929684fNbc2d3f94.jpg', 'img/product/lg/5929684fNbc2d3f94 .jpg'),
(7, 2, 'img/product/sm/59296a4dN657be0ef.jpg', 'img/product/md/59296a4dN657be0ef.jpg', 'img/product/lg/59296a4dN657be0ef.jpg'),
(8, 2, 'img/product/sm/59296a77N5883ebff.jpg', 'img/product/md/59296a77N5883ebff.jpg', 'img/product/lg/59296a77N5883ebff.jpg'),
(9, 2, 'img/product/sm/59296a72Nb3743940.jpg', 'img/product/md/59296a72Nb3743940.jpg', 'img/product/lg/59296a72Nb3743940.jpg'),
(10, 2, 'img/product/sm/59296a7aNae47a5c2.jpg', 'img/product/md/59296a7aNae47a5c2.jpg', 'img/product/lg/59296a7aNae47a5c2.jpg'),
(11, 3, 'img/product/sm/5929684fNbc2d3f94.jpg', 'img/product/md/5929684fNbc2d3f94.jpg', 'img/product/lg/5929684fNbc2d3f94 .jpg'),
(12, 3, 'img/product/sm/59296a4dN657be0ef.jpg', 'img/product/md/59296a4dN657be0ef.jpg', 'img/product/lg/59296a4dN657be0ef.jpg'),
(13, 3, 'img/product/sm/59296a77N5883ebff.jpg', 'img/product/md/59296a77N5883ebff.jpg', 'img/product/lg/59296a77N5883ebff.jpg'),
(14, 3, 'img/product/sm/59296a72Nb3743940.jpg', 'img/product/md/59296a72Nb3743940.jpg', 'img/product/lg/59296a72Nb3743940.jpg'),
(15, 3, 'img/product/sm/59296a7aNae47a5c2.jpg', 'img/product/md/59296a7aNae47a5c2.jpg', 'img/product/lg/59296a7aNae47a5c2.jpg'),
(16, 4, 'img/product/sm/5929684fNbc2d3f94.jpg', 'img/product/md/5929684fNbc2d3f94.jpg', 'img/product/lg/5929684fNbc2d3f94 .jpg'),
(17, 4, 'img/product/sm/59296a4dN657be0ef.jpg', 'img/product/md/59296a4dN657be0ef.jpg', 'img/product/lg/59296a4dN657be0ef.jpg'),
(18, 4, 'img/product/sm/59296a77N5883ebff.jpg', 'img/product/md/59296a77N5883ebff.jpg', 'img/product/lg/59296a77N5883ebff.jpg'),
(19, 4, 'img/product/sm/59296a72Nb3743940.jpg', 'img/product/md/59296a72Nb3743940.jpg', 'img/product/lg/59296a72Nb3743940.jpg'),
(20, 4, 'img/product/sm/59296a7aNae47a5c2.jpg', 'img/product/md/59296a7aNae47a5c2.jpg', 'img/product/lg/59296a7aNae47a5c2.jpg'),
(21, 5, 'img/product/sm/5929684fNbc2d3f94.jpg', 'img/product/md/5929684fNbc2d3f94.jpg', 'img/product/lg/5929684fNbc2d3f94 .jpg'),
(22, 5, 'img/product/sm/59296a4dN657be0ef.jpg', 'img/product/md/59296a4dN657be0ef.jpg', 'img/product/lg/59296a4dN657be0ef.jpg'),
(23, 5, 'img/product/sm/59296a77N5883ebff.jpg', 'img/product/md/59296a77N5883ebff.jpg', 'img/product/lg/59296a77N5883ebff.jpg'),
(24, 5, 'img/product/sm/59296a72Nb3743940.jpg', 'img/product/md/59296a72Nb3743940.jpg', 'img/product/lg/59296a72Nb3743940.jpg'),
(25, 5, 'img/product/sm/59296a7aNae47a5c2.jpg', 'img/product/md/59296a7aNae47a5c2.jpg', 'img/product/lg/59296a7aNae47a5c2.jpg'),
(26, 6, 'img/product/sm/59f2f56fN985fd7d4.jpg', 'img/product/md/59f2f56fN985fd7d4.jpg', 'img/product/lg/59f2f56fN985fd7d4.jpg'),
(27, 6, 'img/product/sm/59647508N4527534a.jpg', 'img/product/md/59647508N4527534a.jpg', 'img/product/lg/59647508N4527534a.jpg'),
(28, 6, 'img/product/sm/5964750bN09e9913d.jpg', 'img/product/md/5964750bN09e9913d.jpg', 'img/product/lg/5964750bN09e9913d.jpg'),
(29, 6, 'img/product/sm/59647514N4801e118.jpg', 'img/product/md/59647514N4801e118.jpg', 'img/product/lg/59647514N4801e118.jpg'),
(30, 7, 'img/product/sm/59f2f56fN985fd7d4.jpg', 'img/product/md/59f2f56fN985fd7d4.jpg', 'img/product/lg/59f2f56fN985fd7d4.jpg'),
(31, 7, 'img/product/sm/59647508N4527534a.jpg', 'img/product/md/59647508N4527534a.jpg', 'img/product/lg/59647508N4527534a.jpg'),
(32, 7, 'img/product/sm/5964750bN09e9913d.jpg', 'img/product/md/5964750bN09e9913d.jpg', 'img/product/lg/5964750bN09e9913d.jpg'),
(33, 7, 'img/product/sm/59647514N4801e118.jpg', 'img/product/md/59647514N4801e118.jpg', 'img/product/lg/59647514N4801e118.jpg'),
(34, 8, 'img/product/sm/59f2f56fN985fd7d4.jpg', 'img/product/md/59f2f56fN985fd7d4.jpg', 'img/product/lg/59f2f56fN985fd7d4.jpg'),
(35, 8, 'img/product/sm/59647508N4527534a.jpg', 'img/product/md/59647508N4527534a.jpg', 'img/product/lg/59647508N4527534a.jpg'),
(36, 8, 'img/product/sm/5964750bN09e9913d.jpg', 'img/product/md/5964750bN09e9913d.jpg', 'img/product/lg/5964750bN09e9913d.jpg'),
(37, 8, 'img/product/sm/59647514N4801e118.jpg', 'img/product/md/59647514N4801e118.jpg', 'img/product/lg/59647514N4801e118.jpg'),
(38, 9, 'img/product/sm/59f2f56fN985fd7d4.jpg', 'img/product/md/59f2f56fN985fd7d4.jpg', 'img/product/lg/59f2f56fN985fd7d4.jpg'),
(39, 9, 'img/product/sm/59647508N4527534a.jpg', 'img/product/md/59647508N4527534a.jpg', 'img/product/lg/59647508N4527534a.jpg'),
(40, 9, 'img/product/sm/5964750bN09e9913d.jpg', 'img/product/md/5964750bN09e9913d.jpg', 'img/product/lg/5964750bN09e9913d.jpg'),
(41, 9, 'img/product/sm/59647514N4801e118.jpg', 'img/product/md/59647514N4801e118.jpg', 'img/product/lg/59647514N4801e118.jpg'),
(42, 10, 'img/product/sm/59f15e87N7f0b0ce9.jpg', 'img/product/md/59f15e87N7f0b0ce9.jpg', 'img/product/lg/59f15e87N7f0b0ce9.jpg'),
(43, 10, 'img/product/sm/599f7ad4Nbc9ae928.jpg', 'img/product/md/599f7ad4Nbc9ae928.jpg', 'img/product/lg/599f7ad4Nbc9ae928.jpg'),
(44, 10, 'img/product/sm/59bb56a6N45dc2f0e.jpg', 'img/product/md/59bb56a6N45dc2f0e.jpg', 'img/product/lg/59bb56a6N45dc2f0e.jpg'),
(45, 11, 'img/product/sm/59f15e87N7f0b0ce9.jpg', 'img/product/md/59f15e87N7f0b0ce9.jpg', 'img/product/lg/59f15e87N7f0b0ce9.jpg'),
(46, 11, 'img/product/sm/599f7ad4Nbc9ae928.jpg', 'img/product/md/599f7ad4Nbc9ae928.jpg', 'img/product/lg/599f7ad4Nbc9ae928.jpg'),
(47, 11, 'img/product/sm/59bb56a6N45dc2f0e.jpg', 'img/product/md/59bb56a6N45dc2f0e.jpg', 'img/product/lg/59bb56a6N45dc2f0e.jpg'),
(48, 12, 'img/product/sm/59f15e87N7f0b0ce9.jpg', 'img/product/md/59f15e87N7f0b0ce9.jpg', 'img/product/lg/59f15e87N7f0b0ce9.jpg'),
(49, 12, 'img/product/sm/599f7ad4Nbc9ae928.jpg', 'img/product/md/599f7ad4Nbc9ae928.jpg', 'img/product/lg/599f7ad4Nbc9ae928.jpg'),
(50, 12, 'img/product/sm/59bb56a6N45dc2f0e.jpg', 'img/product/md/59bb56a6N45dc2f0e.jpg', 'img/product/lg/59bb56a6N45dc2f0e.jpg'),
(51, 13, 'img/product/sm/59fabcf9N869cc588.jpg', 'img/product/md/59fabcf9N869cc588.jpg', 'img/product/lg/59fabcf9N869cc588.jpg'),
(52, 13, 'img/product/sm/5934cf65Nc2571529.jpg', 'img/product/md/5934cf65Nc2571529.jpg', 'img/product/lg/5934cf65Nc2571529.jpg'),
(53, 13, 'img/product/sm/5934cf72N6655c557.jpg', 'img/product/md/5934cf72N6655c557.jpg', 'img/product/lg/5934cf72N6655c557.jpg'),
(54, 13, 'img/product/sm/5934cf79N928f750d.jpg', 'img/product/md/5934cf79N928f750d.jpg', 'img/product/lg/5934cf79N928f750d.jpg'),
(55, 14, 'img/product/sm/59fabcf9N869cc588.jpg', 'img/product/md/59fabcf9N869cc588.jpg', 'img/product/lg/59fabcf9N869cc588.jpg'),
(56, 14, 'img/product/sm/5934cf65Nc2571529.jpg', 'img/product/md/5934cf65Nc2571529.jpg', 'img/product/lg/5934cf65Nc2571529.jpg'),
(57, 14, 'img/product/sm/5934cf72N6655c557.jpg', 'img/product/md/5934cf72N6655c557.jpg', 'img/product/lg/5934cf72N6655c557.jpg'),
(58, 14, 'img/product/sm/5934cf79N928f750d.jpg', 'img/product/md/5934cf79N928f750d.jpg', 'img/product/lg/5934cf79N928f750d.jpg'),
(59, 15, 'img/product/sm/59fabcf9N869cc588.jpg', 'img/product/md/59fabcf9N869cc588.jpg', 'img/product/lg/59fabcf9N869cc588.jpg'),
(60, 15, 'img/product/sm/5934cf65Nc2571529.jpg', 'img/product/md/5934cf65Nc2571529.jpg', 'img/product/lg/5934cf65Nc2571529.jpg'),
(61, 15, 'img/product/sm/5934cf72N6655c557.jpg', 'img/product/md/5934cf72N6655c557.jpg', 'img/product/lg/5934cf72N6655c557.jpg'),
(62, 15, 'img/product/sm/5934cf79N928f750d.jpg', 'img/product/md/5934cf79N928f750d.jpg', 'img/product/lg/5934cf79N928f750d.jpg'),
(63, 16, 'img/product/sm/59fabcf9N869cc588.jpg', 'img/product/md/59fabcf9N869cc588.jpg', 'img/product/lg/59fabcf9N869cc588.jpg'),
(64, 16, 'img/product/sm/5934cf65Nc2571529.jpg', 'img/product/md/5934cf65Nc2571529.jpg', 'img/product/lg/5934cf65Nc2571529.jpg'),
(65, 16, 'img/product/sm/5934cf72N6655c557.jpg', 'img/product/md/5934cf72N6655c557.jpg', 'img/product/lg/5934cf72N6655c557.jpg'),
(66, 16, 'img/product/sm/5934cf79N928f750d.jpg', 'img/product/md/5934cf79N928f750d.jpg', 'img/product/lg/5934cf79N928f750d.jpg'),
(67, 17, 'img/product/sm/589a7005N6755ee2e.jpg', 'img/product/md/589a7005N6755ee2e.jpg', 'img/product/lg/589a7005N6755ee2e.jpg'),
(68, 17, 'img/product/sm/589a702fNdf51354c.jpg', 'img/product/md/589a702fNdf51354c.jpg', 'img/product/lg/589a702fNdf51354c.jpg'),
(69, 17, 'img/product/sm/589a701aN5c2da334.jpg', 'img/product/md/589a701aN5c2da334.jpg', 'img/product/lg/589a701aN5c2da334.jpg'),
(70, 17, 'img/product/sm/589a7022N6e2642a1.jpg', 'img/product/md/589a7022N6e2642a1.jpg', 'img/product/lg/589a7022N6e2642a1.jpg'),
(71, 18, 'img/product/sm/589a7005N6755ee2e.jpg', 'img/product/md/589a7005N6755ee2e.jpg', 'img/product/lg/589a7005N6755ee2e.jpg'),
(72, 18, 'img/product/sm/589a702fNdf51354c.jpg', 'img/product/md/589a702fNdf51354c.jpg', 'img/product/lg/589a702fNdf51354c.jpg'),
(73, 18, 'img/product/sm/589a701aN5c2da334.jpg', 'img/product/md/589a701aN5c2da334.jpg', 'img/product/lg/589a701aN5c2da334.jpg'),
(74, 18, 'img/product/sm/589a7022N6e2642a1.jpg', 'img/product/md/589a7022N6e2642a1.jpg', 'img/product/lg/589a7022N6e2642a1.jpg'),
(75, 19, 'img/product/sm/589a7005N6755ee2e.jpg', 'img/product/md/589a7005N6755ee2e.jpg', 'img/product/lg/589a7005N6755ee2e.jpg'),
(76, 19, 'img/product/sm/589a702fNdf51354c.jpg', 'img/product/md/589a702fNdf51354c.jpg', 'img/product/lg/589a702fNdf51354c.jpg'),
(77, 19, 'img/product/sm/589a701aN5c2da334.jpg', 'img/product/md/589a701aN5c2da334.jpg', 'img/product/lg/589a701aN5c2da334.jpg'),
(78, 19, 'img/product/sm/589a7022N6e2642a1.jpg', 'img/product/md/589a7022N6e2642a1.jpg', 'img/product/lg/589a7022N6e2642a1.jpg'),
(79, 20, 'img/product/sm/589a7005N6755ee2e.jpg', 'img/product/md/589a7005N6755ee2e.jpg', 'img/product/lg/589a7005N6755ee2e.jpg'),
(80, 20, 'img/product/sm/589a702fNdf51354c.jpg', 'img/product/md/589a702fNdf51354c.jpg', 'img/product/lg/589a702fNdf51354c.jpg'),
(81, 20, 'img/product/sm/589a701aN5c2da334.jpg', 'img/product/md/589a701aN5c2da334.jpg', 'img/product/lg/589a701aN5c2da334.jpg'),
(82, 20, 'img/product/sm/589a7022N6e2642a1.jpg', 'img/product/md/589a7022N6e2642a1.jpg', 'img/product/lg/589a7022N6e2642a1.jpg'),
(83, 21, 'img/product/sm/59f15e47Ne67fb8aa.jpg', 'img/product/md/59f15e47Ne67fb8aa.jpg', 'img/product/lg/59f15e47Ne67fb8aa.jpg'),
(84, 21, 'img/product/sm/599b79f6Ncbaee27d.jpg', 'img/product/md/599b79f6Ncbaee27d.jpg', 'img/product/lg/599b79f6Ncbaee27d.jpg'),
(85, 21, 'img/product/sm/599a8e7bN8ec0f17f.jpg', 'img/product/md/599a8e7bN8ec0f17f.jpg', 'img/product/lg/599a8e7bN8ec0f17f.jpg'),
(86, 21, 'img/product/sm/599b79f5N33a43655.jpg', 'img/product/md/599b79f5N33a43655.jpg', 'img/product/lg/599b79f5N33a43655.jpg'),
(87, 22, 'img/product/sm/59f15e47Ne67fb8aa.jpg', 'img/product/md/59f15e47Ne67fb8aa.jpg', 'img/product/lg/59f15e47Ne67fb8aa.jpg'),
(88, 22, 'img/product/sm/599b79f6Ncbaee27d.jpg', 'img/product/md/599b79f6Ncbaee27d.jpg', 'img/product/lg/599b79f6Ncbaee27d.jpg'),
(89, 22, 'img/product/sm/599a8e7bN8ec0f17f.jpg', 'img/product/md/599a8e7bN8ec0f17f.jpg', 'img/product/lg/599a8e7bN8ec0f17f.jpg'),
(90, 22, 'img/product/sm/599b79f5N33a43655.jpg', 'img/product/md/599b79f5N33a43655.jpg', 'img/product/lg/599b79f5N33a43655.jpg'),
(91, 23, 'img/product/sm/59f15e47Ne67fb8aa.jpg', 'img/product/md/59f15e47Ne67fb8aa.jpg', 'img/product/lg/59f15e47Ne67fb8aa.jpg'),
(92, 23, 'img/product/sm/599b79f6Ncbaee27d.jpg', 'img/product/md/599b79f6Ncbaee27d.jpg', 'img/product/lg/599b79f6Ncbaee27d.jpg'),
(93, 23, 'img/product/sm/599a8e7bN8ec0f17f.jpg', 'img/product/md/599a8e7bN8ec0f17f.jpg', 'img/product/lg/599a8e7bN8ec0f17f.jpg'),
(94, 23, 'img/product/sm/599b79f5N33a43655.jpg', 'img/product/md/599b79f5N33a43655.jpg', 'img/product/lg/599b79f5N33a43655.jpg'),
(95, 24, 'img/product/sm/59f15e47Ne67fb8aa.jpg', 'img/product/md/59f15e47Ne67fb8aa.jpg', 'img/product/lg/59f15e47Ne67fb8aa.jpg'),
(96, 24, 'img/product/sm/599b79f6Ncbaee27d.jpg', 'img/product/md/599b79f6Ncbaee27d.jpg', 'img/product/lg/599b79f6Ncbaee27d.jpg'),
(97, 24, 'img/product/sm/599a8e7bN8ec0f17f.jpg', 'img/product/md/599a8e7bN8ec0f17f.jpg', 'img/product/lg/599a8e7bN8ec0f17f.jpg'),
(98, 24, 'img/product/sm/599b79f5N33a43655.jpg', 'img/product/md/599b79f5N33a43655.jpg', 'img/product/lg/599b79f5N33a43655.jpg'),
(99, 25, 'img/product/sm/59f6d76dNc6308905.jpg', 'img/product/md/59f6d76dNc6308905.jpg', 'img/product/lg/59f6d76dNc6308905.jpg'),
(100, 25, 'img/product/sm/59b257c9N3dd00bf4.jpg', 'img/product/md/59b257c9N3dd00bf4.jpg', 'img/product/lg/59b257c9N3dd00bf4.jpg'),
(101, 25, 'img/product/sm/59b257cfNccf0b879.jpg', 'img/product/md/59b257cfNccf0b879.jpg', 'img/product/lg/59b257cfNccf0b879.jpg'),
(102, 25, 'img/product/sm/5967632fN62afe584.jpg', 'img/product/md/5967632fN62afe584.jpg', 'img/product/lg/5967632fN62afe584.jpg'),
(103, 26, 'img/product/sm/59f6d76dNc6308905.jpg', 'img/product/md/59f6d76dNc6308905.jpg', 'img/product/lg/59f6d76dNc6308905.jpg'),
(104, 26, 'img/product/sm/59b257c9N3dd00bf4.jpg', 'img/product/md/59b257c9N3dd00bf4.jpg', 'img/product/lg/59b257c9N3dd00bf4.jpg'),
(105, 26, 'img/product/sm/59b257cfNccf0b879.jpg', 'img/product/md/59b257cfNccf0b879.jpg', 'img/product/lg/59b257cfNccf0b879.jpg'),
(106, 26, 'img/product/sm/5967632fN62afe584.jpg', 'img/product/md/5967632fN62afe584.jpg', 'img/product/lg/5967632fN62afe584.jpg'),
(107, 27, 'img/product/sm/59f6d76dNc6308905.jpg', 'img/product/md/59f6d76dNc6308905.jpg', 'img/product/lg/59f6d76dNc6308905.jpg'),
(108, 27, 'img/product/sm/59b257c9N3dd00bf4.jpg', 'img/product/md/59b257c9N3dd00bf4.jpg', 'img/product/lg/59b257c9N3dd00bf4.jpg'),
(109, 27, 'img/product/sm/59b257cfNccf0b879.jpg', 'img/product/md/59b257cfNccf0b879.jpg', 'img/product/lg/59b257cfNccf0b879.jpg'),
(110, 27, 'img/product/sm/5967632fN62afe584.jpg', 'img/product/md/5967632fN62afe584.jpg', 'img/product/lg/5967632fN62afe584.jpg'),
(111, 28, 'img/product/sm/59f6d76dNc6308905.jpg', 'img/product/md/59f6d76dNc6308905.jpg', 'img/product/lg/59f6d76dNc6308905.jpg'),
(112, 28, 'img/product/sm/59b257c9N3dd00bf4.jpg', 'img/product/md/59b257c9N3dd00bf4.jpg', 'img/product/lg/59b257c9N3dd00bf4.jpg'),
(113, 28, 'img/product/sm/59b257cfNccf0b879.jpg', 'img/product/md/59b257cfNccf0b879.jpg', 'img/product/lg/59b257cfNccf0b879.jpg'),
(114, 28, 'img/product/sm/5967632fN62afe584.jpg', 'img/product/md/5967632fN62afe584.jpg', 'img/product/lg/5967632fN62afe584.jpg'),
(115, 29, 'img/product/sm/59f7efb3Nfcfb6659.jpg', 'img/product/md/59f7efb3Nfcfb6659.jpg', 'img/product/lg/59f7efb3Nfcfb6659.jpg'),
(116, 29, 'img/product/sm/58eca3deN1de382a8.jpg', 'img/product/md/58eca3deN1de382a8.jpg', 'img/product/lg/58eca3deN1de382a8.jpg'),
(117, 29, 'img/product/sm/58eca3e2Nce7a27ce.jpg', 'img/product/md/58eca3e2Nce7a27ce.jpg', 'img/product/lg/58eca3e2Nce7a27ce.jpg'),
(118, 29, 'img/product/sm/58eca3e6Neced56be.jpg', 'img/product/md/58eca3e6Neced56be.jpg', 'img/product/lg/58eca3e6Neced56be.jpg'),
(119, 29, 'img/product/sm/58eca3ebN4347e664.jpg', 'img/product/md/58eca3ebN4347e664.jpg', 'img/product/lg/58eca3ebN4347e664.jpg'),
(120, 30, 'img/product/sm/59f7efb3Nfcfb6659.jpg', 'img/product/md/59f7efb3Nfcfb6659.jpg', 'img/product/lg/59f7efb3Nfcfb6659.jpg'),
(121, 30, 'img/product/sm/58eca3deN1de382a8.jpg', 'img/product/md/58eca3deN1de382a8.jpg', 'img/product/lg/58eca3deN1de382a8.jpg'),
(122, 30, 'img/product/sm/58eca3e2Nce7a27ce.jpg', 'img/product/md/58eca3e2Nce7a27ce.jpg', 'img/product/lg/58eca3e2Nce7a27ce.jpg'),
(123, 30, 'img/product/sm/58eca3e6Neced56be.jpg', 'img/product/md/58eca3e6Neced56be.jpg', 'img/product/lg/58eca3e6Neced56be.jpg'),
(124, 30, 'img/product/sm/58eca3ebN4347e664.jpg', 'img/product/md/58eca3ebN4347e664.jpg', 'img/product/lg/58eca3ebN4347e664.jpg'),
(125, 31, 'img/product/sm/59f7efb3Nfcfb6659.jpg', 'img/product/md/59f7efb3Nfcfb6659.jpg', 'img/product/lg/59f7efb3Nfcfb6659.jpg'),
(126, 31, 'img/product/sm/58eca3deN1de382a8.jpg', 'img/product/md/58eca3deN1de382a8.jpg', 'img/product/lg/58eca3deN1de382a8.jpg'),
(127, 31, 'img/product/sm/58eca3e2Nce7a27ce.jpg', 'img/product/md/58eca3e2Nce7a27ce.jpg', 'img/product/lg/58eca3e2Nce7a27ce.jpg'),
(128, 31, 'img/product/sm/58eca3e6Neced56be.jpg', 'img/product/md/58eca3e6Neced56be.jpg', 'img/product/lg/58eca3e6Neced56be.jpg'),
(129, 31, 'img/product/sm/58eca3ebN4347e664.jpg', 'img/product/md/58eca3ebN4347e664.jpg', 'img/product/lg/58eca3ebN4347e664.jpg'),
(130, 32, 'img/product/sm/59f7efb3Nfcfb6659.jpg', 'img/product/md/59f7efb3Nfcfb6659.jpg', 'img/product/lg/59f7efb3Nfcfb6659.jpg'),
(131, 32, 'img/product/sm/58eca3deN1de382a8.jpg', 'img/product/md/58eca3deN1de382a8.jpg', 'img/product/lg/58eca3deN1de382a8.jpg'),
(132, 32, 'img/product/sm/58eca3e2Nce7a27ce.jpg', 'img/product/md/58eca3e2Nce7a27ce.jpg', 'img/product/lg/58eca3e2Nce7a27ce.jpg'),
(133, 32, 'img/product/sm/58eca3e6Neced56be.jpg', 'img/product/md/58eca3e6Neced56be.jpg', 'img/product/lg/58eca3e6Neced56be.jpg'),
(134, 32, 'img/product/sm/58eca3ebN4347e664.jpg', 'img/product/md/58eca3ebN4347e664.jpg', 'img/product/lg/58eca3ebN4347e664.jpg'),
(135, 33, 'img/product/sm/59f7efb3Nfcfb6659.jpg', 'img/product/md/59f7efb3Nfcfb6659.jpg', 'img/product/lg/59f7efb3Nfcfb6659.jpg'),
(136, 33, 'img/product/sm/58eca3deN1de382a8.jpg', 'img/product/md/58eca3deN1de382a8.jpg', 'img/product/lg/58eca3deN1de382a8.jpg'),
(137, 33, 'img/product/sm/58eca3e2Nce7a27ce.jpg', 'img/product/md/58eca3e2Nce7a27ce.jpg', 'img/product/lg/58eca3e2Nce7a27ce.jpg'),
(138, 33, 'img/product/sm/58eca3e6Neced56be.jpg', 'img/product/md/58eca3e6Neced56be.jpg', 'img/product/lg/58eca3e6Neced56be.jpg'),
(139, 33, 'img/product/sm/58eca3ebN4347e664.jpg', 'img/product/md/58eca3ebN4347e664.jpg', 'img/product/lg/58eca3ebN4347e664.jpg'),
(140, 34, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(141, 34, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(142, 34, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(143, 34, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(144, 34, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(145, 34, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(146, 35, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(147, 35, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(148, 35, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(149, 35, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(150, 35, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(151, 35, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(152, 36, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(153, 36, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(154, 36, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(155, 36, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(156, 36, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(157, 36, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(158, 37, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(159, 37, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(160, 37, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(161, 37, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(162, 37, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(163, 37, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(164, 38, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(165, 38, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(166, 38, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(167, 38, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(168, 38, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(169, 38, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(170, 39, 'img/product/sm/5a0a4663N80de26ba.jpg', 'img/product/md/5a0a4663N80de26ba.jpg', 'img/product/lg/5a0a4663N80de26ba.jpg'),
(171, 39, 'img/product/sm/5983da88Nca1838e9.jpg', 'img/product/md/5983da88Nca1838e9.jpg', 'img/product/lg/5983da88Nca1838e9.jpg'),
(172, 39, 'img/product/sm/58b8d866Nd8ad8a63.jpg', 'img/product/md/58b8d866Nd8ad8a63.jpg', 'img/product/lg/58b8d866Nd8ad8a63.jpg'),
(173, 39, 'img/product/sm/58b8d86eN30768397.jpg', 'img/product/md/58b8d86eN30768397.jpg', 'img/product/lg/58b8d86eN30768397.jpg'),
(174, 39, 'img/product/sm/58b8d874N588b4e9b.jpg', 'img/product/md/58b8d874N588b4e9b.jpg', 'img/product/lg/58b8d874N588b4e9b.jpg'),
(175, 39, 'img/product/sm/58b8d87bN75c9c15f.jpg', 'img/product/md/58b8d87bN75c9c15f.jpg', 'img/product/lg/58b8d87bN75c9c15f.jpg'),
(176, 40, 'img/product/sm/596c1c3cNb3ee32ac.jpg', 'img/product/md/596c1c3cNb3ee32ac.jpg', 'img/product/lg/596c1c3cNb3ee32ac.jpg'),
(177, 40, 'img/product/sm/596c1c39N64079f7d.jpg', 'img/product/md/596c1c39N64079f7d.jpg', 'img/product/lg/596c1c39N64079f7d.jpg'),
(178, 40, 'img/product/sm/5a0e4bdaN69f19d07.jpg', 'img/product/md/5a0e4bdaN69f19d07.jpg', 'img/product/lg/5a0e4bdaN69f19d07.jpg'),
(179, 40, 'img/product/sm/596c1c2fNba51dc50.jpg', 'img/product/md/596c1c2fNba51dc50.jpg', 'img/product/lg/596c1c2fNba51dc50.jpg'),
(180, 40, 'img/product/sm/596c1c35N1a6129b8.jpg', 'img/product/md/596c1c35N1a6129b8.jpg', 'img/product/lg/596c1c35N1a6129b8.jpg'),
(181, 41, 'img/product/sm/596c1c3cNb3ee32ac.jpg', 'img/product/md/596c1c3cNb3ee32ac.jpg', 'img/product/lg/596c1c3cNb3ee32ac.jpg'),
(182, 41, 'img/product/sm/596c1c39N64079f7d.jpg', 'img/product/md/596c1c39N64079f7d.jpg', 'img/product/lg/596c1c39N64079f7d.jpg'),
(183, 41, 'img/product/sm/5a0e4bdaN69f19d07.jpg', 'img/product/md/5a0e4bdaN69f19d07.jpg', 'img/product/lg/5a0e4bdaN69f19d07.jpg'),
(184, 41, 'img/product/sm/596c1c2fNba51dc50.jpg', 'img/product/md/596c1c2fNba51dc50.jpg', 'img/product/lg/596c1c2fNba51dc50.jpg'),
(185, 41, 'img/product/sm/596c1c35N1a6129b8.jpg', 'img/product/md/596c1c35N1a6129b8.jpg', 'img/product/lg/596c1c35N1a6129b8.jpg'),
(186, 42, 'img/product/sm/596c1c3cNb3ee32ac.jpg', 'img/product/md/596c1c3cNb3ee32ac.jpg', 'img/product/lg/596c1c3cNb3ee32ac.jpg'),
(187, 42, 'img/product/sm/596c1c39N64079f7d.jpg', 'img/product/md/596c1c39N64079f7d.jpg', 'img/product/lg/596c1c39N64079f7d.jpg'),
(188, 42, 'img/product/sm/5a0e4bdaN69f19d07.jpg', 'img/product/md/5a0e4bdaN69f19d07.jpg', 'img/product/lg/5a0e4bdaN69f19d07.jpg'),
(189, 42, 'img/product/sm/596c1c2fNba51dc50.jpg', 'img/product/md/596c1c2fNba51dc50.jpg', 'img/product/lg/596c1c2fNba51dc50.jpg'),
(190, 42, 'img/product/sm/596c1c35N1a6129b8.jpg', 'img/product/md/596c1c35N1a6129b8.jpg', 'img/product/lg/596c1c35N1a6129b8.jpg'),
(191, 43, 'img/product/sm/596c1c3cNb3ee32ac.jpg', 'img/product/md/596c1c3cNb3ee32ac.jpg', 'img/product/lg/596c1c3cNb3ee32ac.jpg'),
(192, 43, 'img/product/sm/596c1c39N64079f7d.jpg', 'img/product/md/596c1c39N64079f7d.jpg', 'img/product/lg/596c1c39N64079f7d.jpg'),
(193, 43, 'img/product/sm/5a0e4bdaN69f19d07.jpg', 'img/product/md/5a0e4bdaN69f19d07.jpg', 'img/product/lg/5a0e4bdaN69f19d07.jpg'),
(194, 43, 'img/product/sm/596c1c2fNba51dc50.jpg', 'img/product/md/596c1c2fNba51dc50.jpg', 'img/product/lg/596c1c2fNba51dc50.jpg'),
(195, 43, 'img/product/sm/596c1c35N1a6129b8.jpg', 'img/product/md/596c1c35N1a6129b8.jpg', 'img/product/lg/596c1c35N1a6129b8.jpg'),
(196, 44, 'img/product/sm/596c1c3cNb3ee32ac.jpg', 'img/product/md/596c1c3cNb3ee32ac.jpg', 'img/product/lg/596c1c3cNb3ee32ac.jpg'),
(197, 44, 'img/product/sm/596c1c39N64079f7d.jpg', 'img/product/md/596c1c39N64079f7d.jpg', 'img/product/lg/596c1c39N64079f7d.jpg'),
(198, 44, 'img/product/sm/5a0e4bdaN69f19d07.jpg', 'img/product/md/5a0e4bdaN69f19d07.jpg', 'img/product/lg/5a0e4bdaN69f19d07.jpg'),
(199, 44, 'img/product/sm/596c1c2fNba51dc50.jpg', 'img/product/md/596c1c2fNba51dc50.jpg', 'img/product/lg/596c1c2fNba51dc50.jpg'),
(200, 44, 'img/product/sm/596c1c35N1a6129b8.jpg', 'img/product/md/596c1c35N1a6129b8.jpg', 'img/product/lg/596c1c35N1a6129b8.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pc_order`
--

CREATE TABLE `pc_order` (
  `oid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pc_order_detail`
--

CREATE TABLE `pc_order_detail` (
  `did` int(11) NOT NULL,
  `oid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pc_receiver_address`
--

CREATE TABLE `pc_receiver_address` (
  `aid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pc_shoppingcart_item`
--

CREATE TABLE `pc_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_shoppingcart_item`
--

INSERT INTO `pc_shoppingcart_item` (`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(50, 1, 14, 2, 1),
(51, 1, 10, 2, 1),
(52, 1, 1, 7, 1),
(54, 5, 25, 1, 0),
(55, 6, 38, 13, 0),
(56, 1, 40, 1, 0),
(57, 1, 13, 3, 0),
(58, 1, 8, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pc_user`
--

CREATE TABLE `pc_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pc_user`
--

INSERT INTO `pc_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', 'e10adc3949ba59abbe56e057f20f883e', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1),
(2, 'dangdang', 'e10adc3949ba59abbe56e057f20f883e', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', 1),
(3, 'doudou', 'e10adc3949ba59abbe56e057f20f883e', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'yaya', 'e10adc3949ba59abbe56e057f20f883e', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0),
(5, 'dingdang', 'e10adc3949ba59abbe56e057f20f883e', '166422691@qq.com', '18245678931', NULL, NULL, NULL),
(6, 'xiaolizi', 'e10adc3949ba59abbe56e057f20f883e', '1123@qq.com', '13222222222', NULL, NULL, NULL),
(7, 'aaaaaa', 'e10adc3949ba59abbe56e057f20f883e', 'aaaa', 'aaaa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pc_collect`
--
ALTER TABLE `pc_collect`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `pc_index_carousel`
--
ALTER TABLE `pc_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `pc_index_product`
--
ALTER TABLE `pc_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pc_laptop`
--
ALTER TABLE `pc_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `pc_laptop_family`
--
ALTER TABLE `pc_laptop_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `pc_laptop_pic`
--
ALTER TABLE `pc_laptop_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pc_order`
--
ALTER TABLE `pc_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `pc_order_detail`
--
ALTER TABLE `pc_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `pc_receiver_address`
--
ALTER TABLE `pc_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `pc_shoppingcart_item`
--
ALTER TABLE `pc_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `pc_user`
--
ALTER TABLE `pc_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pc_collect`
--
ALTER TABLE `pc_collect`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `pc_index_carousel`
--
ALTER TABLE `pc_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pc_index_product`
--
ALTER TABLE `pc_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `pc_laptop`
--
ALTER TABLE `pc_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用表AUTO_INCREMENT `pc_laptop_family`
--
ALTER TABLE `pc_laptop_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `pc_laptop_pic`
--
ALTER TABLE `pc_laptop_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- 使用表AUTO_INCREMENT `pc_order`
--
ALTER TABLE `pc_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pc_order_detail`
--
ALTER TABLE `pc_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pc_receiver_address`
--
ALTER TABLE `pc_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pc_shoppingcart_item`
--
ALTER TABLE `pc_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- 使用表AUTO_INCREMENT `pc_user`
--
ALTER TABLE `pc_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
