/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t024`;
CREATE DATABASE IF NOT EXISTS `t024` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t024`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617802869953 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-07 13:27:55', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-07 13:27:55', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-07 13:27:55', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-07 13:27:55', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-07 13:27:55', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-07 13:27:55', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1617802869952, '2021-04-07 13:41:09', 1617802178034, '城东', '11', '15687546858', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617802804726 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot2c1hu/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot2c1hu/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot2c1hu/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-07 13:27:55', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-07 13:27:55', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-07 13:27:55', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-07 13:27:55', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-07 13:27:55', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-07 13:27:55', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusstuangouxinxi`;
CREATE TABLE IF NOT EXISTS `discusstuangouxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='团购信息评论表';

DELETE FROM `discusstuangouxinxi`;
INSERT INTO `discusstuangouxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-04-07 13:27:55', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-04-07 13:27:55', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-04-07 13:27:55', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-04-07 13:27:55', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-04-07 13:27:55', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-04-07 13:27:55', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='社区信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(91, '2021-04-07 13:27:55', '标题1', '简介1', 'http://localhost:8080/springboot2c1hu/upload/news_picture1.jpg', '内容1'),
	(92, '2021-04-07 13:27:55', '标题2', '简介2', 'http://localhost:8080/springboot2c1hu/upload/news_picture2.jpg', '内容2'),
	(93, '2021-04-07 13:27:55', '标题3', '简介3', 'http://localhost:8080/springboot2c1hu/upload/news_picture3.jpg', '内容3'),
	(94, '2021-04-07 13:27:55', '标题4', '简介4', 'http://localhost:8080/springboot2c1hu/upload/news_picture4.jpg', '内容4'),
	(95, '2021-04-07 13:27:55', '标题5', '简介5', 'http://localhost:8080/springboot2c1hu/upload/news_picture5.jpg', '内容5'),
	(96, '2021-04-07 13:27:55', '标题6', '简介6', 'http://localhost:8080/springboot2c1hu/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617802907755 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`, `tel`, `consignee`) VALUES
	(1617802907754, '2021-04-07 13:41:47', '20214721415246400311', 'shangpinxinxi', 1617802178034, 21, '商品名称1', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '城东', '15687546858', '11');

DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE IF NOT EXISTS `shangpinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='商品类型';

DELETE FROM `shangpinleixing`;
INSERT INTO `shangpinleixing` (`id`, `addtime`, `fenlei`) VALUES
	(31, '2021-04-07 13:27:55', '分类1'),
	(32, '2021-04-07 13:27:55', '分类2'),
	(33, '2021-04-07 13:27:55', '分类3'),
	(34, '2021-04-07 13:27:55', '分类4'),
	(35, '2021-04-07 13:27:55', '分类5'),
	(36, '2021-04-07 13:27:55', '分类6');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `gonghuodizhi` varchar(200) DEFAULT NULL COMMENT '供货地址',
  `chuchangriqi` date DEFAULT NULL COMMENT '出厂日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `jifen` int DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinbianhao`, `shangpinmingcheng`, `leixing`, `shuliang`, `gonghuodizhi`, `chuchangriqi`, `baozhiqi`, `shangpinxiangqing`, `tupian`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`, `jifen`, `price`) VALUES
	(21, '2021-04-07 13:27:55', '商品编号1', '商品名称1', '类型1', 1, '供货地址1', '2021-04-07', '保质期1', '商品详情1', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian1.jpg', 1, 1, '2023-12-25 10:11:15', 5, 10000, 99.9),
	(22, '2021-04-07 13:27:55', '商品编号2', '商品名称2', '类型2', 2, '供货地址2', '2021-04-07', '保质期2', '商品详情2', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian2.jpg', 2, 2, '2021-04-07 21:27:55', 2, 10000, 99.9),
	(23, '2021-04-07 13:27:55', '商品编号3', '商品名称3', '类型3', 3, '供货地址3', '2021-04-07', '保质期3', '商品详情3', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian3.jpg', 3, 3, '2023-12-25 10:11:07', 4, 10000, 99.9),
	(24, '2021-04-07 13:27:55', '商品编号4', '商品名称4', '类型4', 4, '供货地址4', '2021-04-07', '保质期4', '商品详情4', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian4.jpg', 4, 4, '2021-04-07 21:27:55', 4, 10000, 99.9),
	(25, '2021-04-07 13:27:55', '商品编号5', '商品名称5', '类型5', 5, '供货地址5', '2021-04-07', '保质期5', '商品详情5', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian5.jpg', 5, 5, '2021-04-07 21:27:55', 5, 10000, 99.9),
	(26, '2021-04-07 13:27:55', '商品编号6', '商品名称6', '类型6', 6, '供货地址6', '2021-04-07', '保质期6', '商品详情6', 'http://localhost:8080/springboot2c1hu/upload/shangpinxinxi_tupian6.jpg', 6, 6, '2021-04-07 21:27:55', 6, 10000, 99.9);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1617802178034, '1', 'yonghu', '用户', 'hkut76p5hkk3eanbwhx43zwk7jvhpz28', '2021-04-07 13:29:42', '2021-04-07 14:39:40'),
	(2, 1, 'admin', 'users', '管理员', '43y8iomkwa0erswxgx36u7qbbqfbq8x2', '2023-12-25 02:10:20', '2023-12-25 03:10:20'),
	(3, 11, '用户1', 'yonghu', '用户', 'a0c793shrtwt7m9vblzz8fx7fvnukpe4', '2023-12-25 02:13:58', '2023-12-25 03:13:59');

DROP TABLE IF EXISTS `tuangouxinxi`;
CREATE TABLE IF NOT EXISTS `tuangouxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `tuangoujia` int DEFAULT NULL COMMENT '团购价',
  `xiangqing` longtext COMMENT '详情',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='团购信息';

DELETE FROM `tuangouxinxi`;
INSERT INTO `tuangouxinxi` (`id`, `addtime`, `shangpinbianhao`, `shangpinmingcheng`, `leixing`, `shuliang`, `tuangoujia`, `xiangqing`, `huodongshijian`, `tupian`, `thumbsupnum`, `crazilynum`) VALUES
	(41, '2021-04-07 13:27:55', '商品编号1', '商品名称1', '类型1', 1, 1, '详情1', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian1.jpg', 1, 1),
	(42, '2021-04-07 13:27:55', '商品编号2', '商品名称2', '类型2', 2, 2, '详情2', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian2.jpg', 2, 2),
	(43, '2021-04-07 13:27:55', '商品编号3', '商品名称3', '类型3', 3, 3, '详情3', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian3.jpg', 3, 3),
	(44, '2021-04-07 13:27:55', '商品编号4', '商品名称4', '类型4', 4, 4, '详情4', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian4.jpg', 4, 4),
	(45, '2021-04-07 13:27:55', '商品编号5', '商品名称5', '类型5', 5, 5, '详情5', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian5.jpg', 5, 5),
	(46, '2021-04-07 13:27:55', '商品编号6', '商品名称6', '类型6', 6, 6, '详情6', '2021-04-07', 'http://localhost:8080/springboot2c1hu/upload/tuangouxinxi_tupian6.jpg', 6, 6);

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-07 13:27:55');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617802178035 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `tupian`, `jifen`, `money`) VALUES
	(11, '2021-04-07 13:27:55', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian1.jpg', 10000, 100),
	(12, '2021-04-07 13:27:55', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian2.jpg', 10000, 100),
	(13, '2021-04-07 13:27:55', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian3.jpg', 10000, 100),
	(14, '2021-04-07 13:27:55', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian4.jpg', 10000, 100),
	(15, '2021-04-07 13:27:55', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian5.jpg', 10000, 100),
	(16, '2021-04-07 13:27:55', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springboot2c1hu/upload/yonghu_tupian6.jpg', 10000, 100),
	(1617802178034, '2021-04-07 13:29:38', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, 99.9, 9900.1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
