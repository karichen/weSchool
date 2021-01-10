create database tdcyt;

DROP TABLE IF EXISTS `clientUser`;
CREATE TABLE `clientUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



INSERT INTO `clientUser` VALUES (1,'15807765941@qq.com','a123456789'),(2,'15807765942@qq.com','a123456789'),(3,'158074736594@qq.com','a123456789'),(4,'15807765924@qq.com','a123456789'),(5,'15807765394@qq.com','a123456789'),(6,'15807765914@qq.com','a123456789'),(7,'1580177659334@qq.com','a123456789'),(8,'15807765941112@qq.com','a123456789'),(9,'15807376594@qq.com','a123456789'),(10,'1580337765394@qq.com','a123456789'),(11,'15807763232594@qq.com','65a0ec385ca6a0c1e20d1f8270c28303'),(12,'158077653394@qq.com','65a0ec385ca6a0c1e20d1f8270c28303'),(13,'1580776594@qq.com','65a0ec385ca6a0c1e20d1f8270c28303');



DROP TABLE IF EXISTS `danmu`;
CREATE TABLE `danmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `text` varchar(255) NOT NULL COMMENT '弹幕内容',
  `color` varchar(255) NOT NULL COMMENT '弹幕颜色',
  `timed` varchar(255) NOT NULL COMMENT '时间点',
  `vid` varchar(255) NOT NULL COMMENT '腾讯视频唯一标识',
  `user_email` varchar(255) NOT NULL COMMENT '用户账号',
  `nick` varchar(255) NOT NULL COMMENT '昵称',
  `avatar_url` longtext NOT NULL COMMENT '头像地址',
  `date_time` varchar(255) NOT NULL DEFAULT '' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;



INSERT INTO `danmu` VALUES (1,'哈哈哈哈','#72cb10','1','a3020h1lzeu','1580776594@qq.com','Summer','https://thirdqq.qlogo.cn/qqapp/1109914141/CE2BFDB2555D9672C9CFEFFF4EC2A244/100','2020-04-30 21:53:57'),(2,'333','#72cb10','6','a3020h1lzeu','1580776594@qq.com','Summer','https://thirdqq.qlogo.cn/qqapp/1109914141/CE2BFDB2555D9672C9CFEFFF4EC2A244/100','2020-04-30 21:53:57'),(6,'aaa','#654b67','6.287','a3020h1lzeu','1580776594@qq.com','旺仔小馒头','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIGdmUyQoFtyjjs1NYoMBN30uu0iaLEXcBxhSIMiaSvaZwyMu7vjRicT1zmmwJiaqzwcGNibnFRHTiaJwYQ/132','2020-12-13 23:20:02'),(7,'dddd','#9927c3','3.995','a3020h1lzeu','1580776594@qq.com','旺仔小馒头','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIGdmUyQoFtyjjs1NYoMBN30uu0iaLEXcBxhSIMiaSvaZwyMu7vjRicT1zmmwJiaqzwcGNibnFRHTiaJwYQ/132','2020-12-13 23:20:53'),(10,'aaa','#b38cda','16.423','a3020h1lzeu','1580776594@qq.com','旺仔小馒头','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIGdmUyQoFtyjjs1NYoMBN30uu0iaLEXcBxhSIMiaSvaZwyMu7vjRicT1zmmwJiaqzwcGNibnFRHTiaJwYQ/132','2020-12-14 10:06:45'),(11,'w dndms','#4d3c87','28.054','a3020h1lzeu','1580776594@qq.com','旺仔小馒头','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIGdmUyQoFtyjjs1NYoMBN30uu0iaLEXcBxhSIMiaSvaZwyMu7vjRicT1zmmwJiaqzwcGNibnFRHTiaJwYQ/132','2020-12-14 10:06:57');



DROP TABLE IF EXISTS `unit_video`;
CREATE TABLE `unit_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '单元名称',
  `descp` varchar(255) DEFAULT NULL COMMENT '预习描述',
  `descr` varchar(255) DEFAULT NULL COMMENT '复习描述',
  `thumbnailp` varchar(255) DEFAULT NULL COMMENT '预习视频缩略图',
  `thumbnailr` varchar(255) DEFAULT NULL COMMENT '复习视频缩略图',
  `pvid` varchar(255) DEFAULT NULL COMMENT '预习视频唯一标识',
  `rvid` varchar(255) DEFAULT NULL COMMENT '复习视频唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



INSERT INTO `unit_video` VALUES (1,'初识C语言','初识C语言预习篇','初识C语言复习篇','https://upload-images.jianshu.io/upload_images/19935694-a048accd1f663c21.png?imageMogr2/auto-orient/strip|imageView2/2/w/118/format/webp','https://upload-images.jianshu.io/upload_images/19935694-43e081827fbb40e8.png?imageMogr2/auto-orient/strip|imageView2/2/w/118/format/webp','a3020h1lzeu','z3020dbzzf3'),(2,'C源程序与数据类型','C源程序与数据类型预习篇','C源程序与数据类型复习篇','https://upload-images.jianshu.io/upload_images/19935694-e24e3c77fb35b53a.png?imageMogr2/auto-orient/strip|imageView2/2/w/118/format/webp','https://upload-images.jianshu.io/upload_images/19935694-4557a9116c1d5a89.png?imageMogr2/auto-orient/strip|imageView2/2/w/120/format/webp','j30200qc020','o3020gde77g'),(3,'运算符与表达式','运算符与表达式预习篇','运算符与表达式复习篇','https://upload-images.jianshu.io/upload_images/19935694-df8b9c448d16012b.png?imageMogr2/auto-orient/strip|imageView2/2/w/118/format/webp','https://upload-images.jianshu.io/upload_images/19935694-a048accd1f663c21.png?imageMogr2/auto-orient/strip|imageView2/2/w/118/format/webp','q3020wzp2nf','j3020vlx38o'),(4,'程序流程控制','程序流程控制预习篇','程序流程控制复习篇','https://upload-images.jianshu.io/upload_images/19935694-11e373ba38aae24d.png?imageMogr2/auto-orient/strip|imageView2/2/w/117/format/webp','https://upload-images.jianshu.io/upload_images/19935694-7f7cf3ba01be62d6.png?imageMogr2/auto-orient/strip|imageView2/2/w/117/format/webp','i3020drd442','l30207uxrol');



DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vid` varchar(255) DEFAULT NULL COMMENT '腾讯视频唯一标识',
  `src` varchar(255) DEFAULT NULL COMMENT '视频网络地址',
  `points` varchar(255) DEFAULT NULL COMMENT '点赞数',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO `video` VALUES (1,'a3020h1lzeu','https://v.qq.com/x/page/a3020h1lzeu.html','15','6'),(2,'z3020dbzzf3','https://v.qq.com/x/page/z3020dbzzf3.html','2','1'),(3,'j30200qc020','https://v.qq.com/x/page/j30200qc020.html','3','1'),(4,'o3020gde77g','https://v.qq.com/x/page/o3020gde77g.html','5','1'),(5,'q3020wzp2nf','https://v.qq.com/x/page/q3020wzp2nf.html','5','1'),(6,'j3020vlx38o','https://v.qq.com/x/page/j3020vlx38o.html','6','1'),(7,'i3020drd442','https://v.qq.com/x/page/i3020drd442.html','7','1'),(8,'l30207uxrol','https://v.qq.com/x/page/l30207uxrol.html','8','1');
