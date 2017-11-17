--系统管理员信息表
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(6) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `permissions` int(1) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;
INSERT INTO `admin` VALUES ('1001', 'admin', 'admin', '1');


DROP TABLE IF EXISTS `cartotal`;
CREATE TABLE `cartotal` (
  `cproId` varchar(255) NOT NULL,
  `cuserId` varchar(255) NOT NULL,
  `cartotal` double NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `cartotal` VALUES ('123467', '1003', '77.8', '2017-04-04 14:00:51');
INSERT INTO `cartotal` VALUES ('1234567', '1003', '2567.4', '2017-04-12 08:06:18');

DROP TABLE IF EXISTS `csort`;
CREATE TABLE `csort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csorId` varchar(255) NOT NULL,
  `sorId` int(11) NOT NULL,
  `csorName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
INSERT INTO `csort` VALUES ('1', '1001', '1', '运动帆布鞋');
INSERT INTO `csort` VALUES ('2', '1002', '1', '登山钉子鞋');

--订单条目描述表
DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
  `entryId` int(225) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(100) NOT NULL,
  `proId` int(10) NOT NULL,
  `price` double(20,2) NOT NULL,
  `count` int(4) NOT NULL,
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
INSERT INTO `entry` VALUES ('72', 'd315a035-f84e-434f-bf06-31e041e88ed6', '10003', '60.00', '2', '2016-01-25 15:18:29');

--订单信息表
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(10) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(50) NOT NULL,
  `userId` int(10) NOT NULL,
  `sendName` varchar(40) NOT NULL,
  `sendAdress` varchar(200) NOT NULL,
  `sendZip` varchar(8) NOT NULL,
  `sendTel` varchar(40) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `meno` varchar(200) DEFAULT NULL,
  `tag` int(4) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8;
INSERT INTO `orders` VALUES ('1085', 'd315a035-f84e-434f-bf06-31e041e88ed6', '1001', '张鑫', '浙江省温州市瑞安区查询表也', '441700', '18827550343', '支付宝', '', '2', '2017-04-27 11:28:19');

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `userId` int(11) NOT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
INSERT INTO `post` VALUES ('1002', '8', '阿斯顿', '156221352', '浙江省温州市瑞安区色房地产');

--商品信息表
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `proId` varchar(60) NOT NULL,
  `proName` varchar(60) NOT NULL,
  `saleCount` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` double(40,2) NOT NULL,
  `salePrice` double(40,2) NOT NULL,
  `decript` mediumtext NOT NULL,
  `sorId` int(4) NOT NULL,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `proId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `salePrice` double NOT NULL,
  `proCount` int(11) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `shopcar` VALUES ('1234657', '1003', '38.9', '2', '2017-04-04 14:07:22');

--分类信息表
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `sorId` int(4) NOT NULL,
  `sorName` varchar(40) NOT NULL,
  `sorImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sort` VALUES ('1', '运动鞋/帆布鞋', '../images/cake.png');

--用户基本信息表
 DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `realName` varchar(20) NOT NULL,
  `tel` varchar(40) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `zip` varchar(8) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL,
  `userPoints` int DEFAULT 0,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1035 DEFAULT CHARSET=utf8;
INSERT INTO `users` VALUES ('1001', 'zhangsan', '123', '李村', '18827501890', '湖北襄阳', '474150', '../images/userImg/1001.jpg',20);