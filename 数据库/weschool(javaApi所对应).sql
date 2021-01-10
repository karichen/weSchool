SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `active` (
  `id` int(11) NOT NULL,
  `major` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `enrollment` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `qriginator_openid` varchar(255) DEFAULT NULL,
  `qriginator_QQ` varchar(255) DEFAULT NULL,
  `qriginator_phone` varchar(255) DEFAULT NULL,
  `imgUrl1` varchar(255) DEFAULT 'http:chk',
  `imgUrl2` varchar(255) DEFAULT 'http:chk',
  `imgUrl3` varchar(255) DEFAULT 'http:chk',
  `imgUrl4` varchar(255) DEFAULT 'http:chk',
  `fields` varchar(255) DEFAULT NULL,
  `pwdid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `active` (`id`, `major`, `starttime`, `endtime`, `place`, `salary`, `count`, `enrollment`, `remark`, `qriginator_openid`, `qriginator_QQ`, `qriginator_phone`, `imgUrl1`, `imgUrl2`, `imgUrl3`, `imgUrl4`, `fields`, `pwdid`) VALUES
(10, '小程序开发赛组队', '2020-06-13 10:17', '2020-06-15 10:17', '扬教2', '0', '3', 3, '来一名后端 来一名前端 来一名后端', 'otO4d5PzLFfp4IZfmEvxgadJES-A', '1580776594', '19825310076', 'https://weschool.petchk.cn/images/245y2tmp_f01d985c1cd49a2d3a8e91d7a42d7012236c5e48cf5b499b.2020-06-09-20-01-01.jpg', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"性别\",\"学号\",\"特长\"]', '6P909NNa8J'),
(11, '互联网+组队', '2020-10-17 10:17', '2020-10-18 10:17', '扬教2', '0', '15', 0, '互联网+组队啦', 'otO4d5PzLFfp4IZfmEvxgadJES-A', '1580776594', '19825310076', 'https://weschool.petchk.cn/images/99ygztmp_f4bd254ca221536a12946f1670da14968b94ab5c27d4c876.2020-06-29-01-18-03.jpg', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"年龄\"]', '3TITcFt43A'),
(12, '网球赛', '2020-10-17 10:17', '2020-10-23 10:17', '体育馆', '', '78', 1, '', 'otO4d5AnevlrpgyBC-RwDltJVJco', '', '', 'http:chk', 'http:chk', 'http:chk', 'http:chk', '[\"你\",\"\"]', 'H5709m12So'),
(13, '23', '2020-10-17 10:17', '2020-10-17 12:18', '操场', '10', '20', 0, '', 'otO4d5IT_VuORval0-UsmTqmck3k', '123456789', '123456789', 'https://weschool.petchk.cn/images/F1854wx834e2a56e7a131b8.2020-08-16-07-39-00.jpg', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"年龄\"]', 'rpz46I2008'),
(14, 'yp', '2020-11-19 12:17', '2020-11-21 12:17', '哈哈哈', '200', '10', 1, '拼单', 'otO4d5PzLFfp4IZfmEvxgadJES-A', '6666', '16166464', 'https://weschool.petchk.cn/images/hV738tmp_f2849d61d46e2f82fd839bca9fbb46947e056aca1cca1496.2020-10-30-10-13-57.jpg', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"年龄\",\"龙奥是煞笔吗\"]', '2R3LJ98Go8'),
(15, '2121', '2020-10-17 10:17', '2020-10-17 10:18', '2121', '21', '212', 0, '121', 'otO4d5IT_VuORval0-UsmTqmck3k', '121', '12', 'https://weschool.petchk.cn/images/89456wx834e2a56e7a131b8.2020-11-16-12-23-49.jpg', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"年龄\",\"22\"]', '9a8uwT45K3'),
(16, '212', '2020-08-17 10:17', '2020-12-17 10:17', '21', '121', '1', 0, '2', 'otO4d5IT_VuORval0-UsmTqmck3k', '212', '1', 'http:chk', 'http:chk', 'http:chk', 'http:chk', '[\"姓名\",\"年龄\"]', 'DV30UV2M1f');





CREATE TABLE `danmu` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `timed` varchar(255) NOT NULL,
  `videosrc` longtext NOT NULL,
  `useropenid` varchar(255) NOT NULL,
  `imgUrl` longtext NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `danmu` (`id`, `text`, `color`, `timed`, `videosrc`, `useropenid`, `imgUrl`, `datetime`, `nick`) VALUES
(20, '视频加载可能有点慢 请耐心等待几秒哦', '#78abf2', '28336', 'https://v.qq.com/x/page/j30200qc020.html', 'otO4d5PzLFfp4IZfmEvxgadJES-A', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmxshNxkibrSYR4Rvby2hs2zs93qQaY4ZeId1w853okLMKDVfia6twjLp2BR1NAx7a3HhnlpvdfmcQ/132', '2020-04-30 15:10:55', '旺仔小馒头'),
(25, '我们发弹幕吧', '#fbb119', '21355', 'https://v.qq.com/x/page/a3020h1lzeu.html', 'otO4d5PzLFfp4IZfmEvxgadJES-A', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmxshNxkibrSYR4Rvby2hs2zs93qQaY4ZeId1w853okLMKDVfia6twjLibUonGemlrzZollOjNo7NKw/132', '2020-06-10 00:01:31', '旺仔小馒头'),
(26, '我们发弹幕吧', '#7513b0', '43.242', 'https://v.qq.com/x/page/z3020dbzzf3.html', 'otO4d5PzLFfp4IZfmEvxgadJES-A', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmxshNxkibrSYR4Rvby2hs2zs93qQaY4ZeId1w853okLMKDVfia6twjLibUonGemlrzZollOjNo7NKw/132', '2020-06-10 00:01:53', '旺仔小馒头');



CREATE TABLE `exam_1` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_1` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.C程序可以由多个程序文件组成', 'B.一个C语言程序只能实现一种算法', 'https://api.petchk.cn/api/database/1/1-2-q.png', 'B', 'C.C程序可以由一个或多个函数组成', 'D.一个C函数可以单独作为一个C程序文件存在', 'https://api.petchk.cn/api/database/1/1-2-e.png'),
(2, 'A.使用三种基本结构构成的程序只能解决简单问题', 'B.结构化程序由顺序、分支、循环三种基本结构组成', 'https://api.petchk.cn/api/database/1/1-3-q.png', 'A', 'C.C语言是一种结构化程序设计语言', 'D.结构化程序设计提倡模块化的设计方法', 'https://api.petchk.cn/api/database/1/1-3-e.png'),
(3, 'A.程序的执行总是从main函数开始，在程序的最后一个函数中结束', 'B.程序的执行总是从程序的第一个函数开始, 在main函数结束', 'https://api.petchk.cn/api/database/1/1-4-q.png', 'C', 'C.程序的执行总是从main函数开始', 'D.程序的执行总是从程序的第一个函数开始，在程序的最后一个函数中结束', 'https://api.petchk.cn/api/database/1/1-4-e.png'),
(4, 'A.源程序', 'B.目标程序', 'https://api.petchk.cn/api/database/1/1-5-q.png', 'D', 'C.汇编程序', 'D.可执行程序', 'https://api.petchk.cn/api/database/1/1-5-e.png'),
(5, 'A.C语言规定必须用main作为主函数名，程序将从此开始执行', 'B.可以在程序中由用户指定任意一个函数作为主函数，程序将从此开始执行', 'https://api.petchk.cn/api/database/1/1-6-q.png', 'A', 'C.C语言程序将从源程序中第一个函数开始执行', 'D.main的各种大小写拼写形式都可以作为主函数名，如：MAIN，Main等', 'https://api.petchk.cn/api/database/1/1-6-e.png'),
(6, 'A.用C语言编写的程序只能放在一个程序文件中', 'B.C程序书写格式严格，要求一行内只能写一个语句', 'https://api.petchk.cn/api/database/1/1-7-q.png', 'D', 'C.C程序中的注释只能出现在程序的开始位置和语句的后面', 'D.C程序书写格式自由，一个语句可以写在多行上', 'https://api.petchk.cn/api/database/1/1-7-e.png'),
(7, 'A.C程序在运行过程中所有计算都以二进制方式进行', 'B.C程序在运行过程中所有计算都以十进制方式进行', 'https://api.petchk.cn/api/database/1/1-8-q.png', 'B', 'C.所有C程序都需要编译链接无误后才能运行', 'D.C程序中字符变量存放的是字符的ASCII值', 'https://api.petchk.cn/api/database/1/1-8-e.png'),
(8, 'A.C程序可以由多个程序文件组成', 'B.一个C语言程序只能实现一种算法', 'https://api.petchk.cn/api/database/1/1-9-q.png', 'B', 'C.C程序可以由一个或多个函数组成', 'D.一个C函数可以单独作为一个C程序文件存在', 'https://api.petchk.cn/api/database/1/1-9-e.png'),
(9, 'A..C', 'B. .exe', 'https://api.petchk.cn/api/database/1/1-10-q.png', 'A', 'C..obj', 'D..cp', 'https://api.petchk.cn/api/database/1/1-10-e.png'),
(10, 'A.C程序中所有函数之间都可以相互调用', 'B.在C程序中main函数的位置是固定的', 'https://api.petchk.cn/api/database/1/1-11-q.png', 'C', 'C.在C程序的函数中不能定义另一个函数', 'D.每个C程序文件中都必须要有一个main函数', 'https://api.petchk.cn/api/database/1/1-11-e.png'),
(11, 'A.变量', 'B.函数', 'https://api.petchk.cn/api/database/1/1-12-q.png', 'B', 'C.程序行', 'D.语句', 'https://api.petchk.cn/api/database/1/1-12-e.png'),
(12, 'A.平行四边形', 'B.长方形', 'https://api.petchk.cn/api/database/1/1-13-q.png', 'A', 'C.椭圆型', 'D.菱形', 'https://api.petchk.cn/api/database/1/1-13-e.png'),
(13, 'A.书写风格良好的程序执行效率高', 'B.书写风格良好的程序易读性好', 'https://api.petchk.cn/api/database/1/1-14-q.png', 'A', 'C.C程序可以在一行上写多条语句', 'D.C程序允许将一条语句分写在多行上', 'https://api.petchk.cn/api/database/1/1-14-e.png'),
(14, 'A.编码', 'B.确定算法', 'https://api.petchk.cn/api/database/1/1-15-q.png', 'C', 'C.安装编译程序', 'D.调试', 'https://api.petchk.cn/api/database/1/1-15-e.png'),
(15, 'A.C语言中提供了子程序的概念，可以和函数完成一样的功能', 'B.C语言允许对函数单独进行编译，可以实现模块化', 'https://api.petchk.cn/api/database/1/1-16-q.png', 'A', 'C.C语言提供了丰富的数据类型', 'D.C语言是结构化程序设计语言，结构化程序由顺序结构、选择结构和循环结构三种基本结构组成', 'https://api.petchk.cn/api/database/1/1-16-e.png'),
(16, 'A.注释的内容必须放在一对/* 和 */之间', 'B.注释必须置于所说明的语句前或语句后', 'https://api.petchk.cn/api/database/1/1-17-q.png', 'A', 'C.注释中间可以嵌套另一个注释', 'D.注释内容错误会导致编译出错', 'https://api.petchk.cn/api/database/1/1-17-e.png'),
(17, 'A.函数体必须由 { 开始', 'B.C程序必须由main语句开始', 'https://api.petchk.cn/api/database/1/1-18-q.png', 'A', 'C.C程序中的注释可以嵌套', 'D.C程序中的注释必须在一行完成', 'https://api.petchk.cn/api/database/1/1-18-e.png'),
(18, 'A.main()是C语言主函数的起始', 'B.main()作为主函数必须位于源程序的起始位置行', 'https://api.petchk.cn/api/database/1/1-19-q.png', 'B', 'C.main()是C程序执行的起始行', 'D.main 是不可替代的主函数名', 'https://api.petchk.cn/api/database/1/1-19-e.png'),
(19, 'A.C程序总是以main()作为程序执行的起始行', 'B.main()函数若不带参数，其后面的一对圆括号可省略', 'https://api.petchk.cn/api/database/1/1-20-q.png', 'A', 'C. 函数体内的定义语句和可执行语句允许任意穿插出现', 'D.C语言中的语句之间必须用分号作为分隔符', 'https://api.petchk.cn/api/database/1/1-20-e.png'),
(20, 'A.C程序的执行是从源文件的开头，一行一行向下执行，每行都会被执行到', 'B.对于只包含表达式语句的程序段，执行顺序与书写顺序一致', 'https://api.petchk.cn/api/database/1/1-21-q.png', 'B', 'C.C程序的执行一定是从主函数开始，从主函数结束', 'D.每个C源文件都应当有一个主函数', 'https://api.petchk.cn/api/database/1/1-21-e.png'),
(21, 'A.书写源程序时，必须注意缩进格式，否则程序会有编译错误', 'B.程序的主函数名除main外，也可以使用Main或_main', 'https://api.petchk.cn/api/database/1/1-22-q.png', 'D', 'C.程序可以包含多个主函数，但总是从第一个主函数处开始执行', 'D.在C程序中，模块化主要是通过函数来实现的', 'https://api.petchk.cn/api/database/1/1-22-e.png'),
(22, 'A.C编译程序把文件后缀为.c的源程序文件编译成文件后缀为.obj的二进制文件', 'B.C编译程序把文件后缀为.c的源程序文件编译成文件后缀为.exe的可执行文件', 'https://api.petchk.cn/api/database/1/1-23-q.png', 'A', 'C.C编译程序把文件后缀为.obj的二进制文件编译成文件后缀为.exe的可执行文件', 'D.链接程序把文件后缀为.c的源程序文件链接成文件后缀为.exe的可执行文件', 'https://api.petchk.cn/api/database/1/1-23-e.png'),
(23, 'A.注释的边界符号“/”和“*”之间不允许加入空格', 'B.C语言允许注释出现在程序中任意合适的地方', 'https://api.petchk.cn/api/database/1/1-24-q.png', 'D', 'C.注释的内容仅用于阅读，对程序的运行不起作用', 'D.注释的边界符号“/*”和“*/”必须成对出现且可以嵌套', 'https://api.petchk.cn/api/database/1/1-24-e.png'),
(24, 'A.在C语言中分号是语句的组成部分', 'B.C语言程序由C语句组成，可以省略main函数', 'https://api.petchk.cn/api/database/1/1-25-q.png', 'A', 'C.分号是C语句之间的分隔符', 'D.所有程序行都必须用分号结束', 'https://api.petchk.cn/api/database/1/1-25-e.png');

-



CREATE TABLE `exam_2` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_2` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A._6_', 'B.#6#', 'https://api.petchk.cn/api/database/2/2-2-q.png', 'A', 'C.@6@', 'D.$6$', 'https://api.petchk.cn/api/database/2/2-2-e.png'),
(2, 'A.9  9  9', 'B.2.7e', 'https://api.petchk.cn/api/database/2/2-3-q.png', 'C', 'C.0Xab', 'D.123E 0.2', 'https://api.petchk.cn/api/database/2/2-3-e.png'),
(3, 'A.数值型常量有正值和负值的区分', 'B.常量可以用一个符号名来代表', 'https://api.petchk.cn/api/database/2/2-4-q.png', 'C', 'C.定义符号常量必须用类型名来设定常量的类型', 'D.常量是在程序运行过程中值不能被改变的量', 'https://api.petchk.cn/api/database/2/2-4-e.png'),
(4, 'A.1和1', 'B.1和0', 'https://api.petchk.cn/api/database/2/2-5-q.png', 'A', 'C.0和1', 'D.0和0', 'https://api.petchk.cn/api/database/2/2-5-e.png'),
(5, 'A.C语言标识符中字母、数字和下划线字符必须同时出现', 'B.C语言标识符中仅出现下划线字符是不允许的', 'https://api.petchk.cn/api/database/2/2-6-q.png', 'C', 'C.C语言标识符中可以出现多个字母、数字和下划线字符', 'D.C语言标识符中字母、数字和下划线字符不能同时出现', 'https://api.petchk.cn/api/database/2/2-6-e.png'),
(6, 'A.12. 0Xa23 4.5e0', 'B.028 .5e－3 －0xf', 'https://api.petchk.cn/api/database/2/2-7-q.png', 'A', 'C..177 4e1.5 0abc', 'D.0x8A 10,000 3.e5', 'https://api.petchk.cn/api/database/2/2-7-e.png'),
(7, 'A.常量', 'B.用户标识符', 'https://api.petchk.cn/api/database/2/2-8-q.png', 'A', 'C.关键字', 'D.预定义标识符', 'https://api.petchk.cn/api/database/2/2-8-e.png'),
(8, 'A.整型、实型、逻辑型', 'B.整型、字符型、数组', 'https://api.petchk.cn/api/database/2/2-9-q.png', 'C', 'C.整型、实型、字符型', 'D.整型、实型、结构体', 'https://api.petchk.cn/api/database/2/2-9-e.png'),
(9, 'A.int', 'B.float', 'https://api.petchk.cn/api/database/2/2-10-q.png', 'D', 'C.char', 'D.string', 'https://api.petchk.cn/api/database/2/2-10-e.png'),
(10, 'A.10,9', 'B.11,10', 'https://api.petchk.cn/api/database/2/2-11-q.png', 'D', 'C.010,9', 'D.9,10', 'https://api.petchk.cn/api/database/2/2-11-e.png'),
(11, 'A.33,41,21', 'B.33,33,33', 'https://api.petchk.cn/api/database/2/2-12-q.png', 'A', 'C.41,33,21', 'D.33,21,41', 'https://api.petchk.cn/api/database/2/2-12-e.png'),
(12, 'A.59', 'B.73', 'https://api.petchk.cn/api/database/2/2-13-q.png', 'A', 'C.115', 'D.72', 'https://api.petchk.cn/api/database/2/2-13-e.png'),
(13, 'A.20', 'B.22', 'https://api.petchk.cn/api/database/2/2-14-q.png', 'A', 'C.022', 'D.021', 'https://api.petchk.cn/api/database/2/2-14-e.png'),
(14, 'A.INT:14', 'B.INT:13', 'https://api.petchk.cn/api/database/2/2-15-q.png', 'D', 'C.INT:12', 'D.INT:20', 'https://api.petchk.cn/api/database/2/2-15-e.png'),
(15, 'A.X=115', 'B.X=73', 'https://api.petchk.cn/api/database/2/2-16-q.png', 'C', 'C.X=59.', 'D.X=72.', 'https://api.petchk.cn/api/database/2/2-16-e.png'),
(16, 'A.32', 'B.26', 'https://api.petchk.cn/api/database/2/2-17-q.png', 'B', 'C.032', 'D.50', 'https://api.petchk.cn/api/database/2/2-17-e.png'),
(17, 'A.-17,22,12', 'B.-17,12,22', 'https://api.petchk.cn/api/database/2/2-18-q.png', 'A', 'C.-17,-22,-12', 'D.17,22,12', 'https://api.petchk.cn/api/database/2/2-18-e.png'),
(18, 'A.>073<', 'B.>73<', 'https://api.petchk.cn/api/database/2/2-19-q.png', 'D', 'C.>142<', 'D.>59<', 'https://api.petchk.cn/api/database/2/2-19-e.png'),
(19, 'A.10,6', 'B.4,4', 'https://api.petchk.cn/api/database/2/2-20-q.png', 'D', 'C.2,4 ', 'D.4,8', 'https://api.petchk.cn/api/database/2/2-20-e.png'),
(20, 'A.整型变量不能存放实数', 'B.实型变量可以精确存放整数', 'https://api.petchk.cn/api/database/2/2-21-q.png', 'A', 'C.无符号整数不可以是负数', 'D.负整数在内存中以“补码”形式存放', 'https://api.petchk.cn/api/database/2/2-21-e.png'),
(21, 'A.一个整型表达式', 'B.一个双精度型表达式', 'https://api.petchk.cn/api/database/2/2-22-q.png', 'A', 'C.一个不合法的表达式', 'D.一种函数调用', 'https://api.petchk.cn/api/database/2/2-23-e.png'),
(22, 'A.说明不合法', 'B.包含1个字符', 'https://api.petchk.cn/api/database/2/2-23-q.png', 'A', 'C.包含2个字符', 'D.包含3个字符', 'https://api.petchk.cn/api/database/2/2-24-e.png'),
(23, 'A.328', 'B.248', 'https://api.petchk.cn/api/database/2/2-24-q.png', 'B', 'C.238', 'D.421', 'https://api.petchk.cn/api/database/2/2-25-e.png'),
(24, 'A.输出格式不合法，输出出错信息', 'B.65,89', 'https://api.petchk.cn/api/database/2/2-25-q.png', 'B', 'C.65,90', 'D.A,Y', 'https://api.petchk.cn/api/database/2/2-26-e.png'),
(25, 'A.256,1', 'B.1,256', 'https://api.petchk.cn/api/database/2/2-26-q.png', 'A', 'C.255,1', 'D.256,0', 'https://api.petchk.cn/api/database/2/2-27-e.png'),
(26, 'A.0', 'B.3', 'https://api.petchk.cn/api/database/2/2-27-q.png', 'B', 'C.4', 'D.5', 'https://api.petchk.cn/api/database/2/2-28-e.png'),
(27, 'A.3', 'B.5', 'https://api.petchk.cn/api/database/2/2-28-q.png', 'A', 'C.6', 'D.结果不确定', 'https://api.petchk.cn/api/database/2/2-29-e.png'),
(28, 'A.3.142000', 'B.3.141000', 'https://api.petchk.cn/api/database/2/2-29-q.png', 'A', 'C.3.143000', 'D.3.140000', 'https://api.petchk.cn/api/database/2/2-30-e.png'),
(29, 'A.-4', 'B.-3', 'https://api.petchk.cn/api/database/2/2-30-q.png', 'A', 'C.-5', 'D.结果不确定', 'https://api.petchk.cn/api/database/2/2-31-e.png'),
(30, '', '', 'https://api.petchk.cn/api/database/2/2-31-q.png', '', '', '', '');



CREATE TABLE `exam_3` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `exam_3` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.先执行(d+e)得r2，再执行c*r2得r3，再执行a+b得r1，最后执行r1+r3得表达式最后结果', 'B.先执行a+b得r1，再执行(d+e)得r2，再执行c*r2得r3，最后执行r1+r3得表达式最后结果', 'https://api.petchk.cn/api/database/3/3-1-q.png', 'B', 'C.先执行(d+e)得r2，再执行c*r2得r3，再执行b+r3得r4，最后执行a+r4得表达式最后结果', 'D.先执行a+b得r1，再执行r1+c得r5，再执行(d+e)得r2，最后执行r5*r2得表达式最后结果', 'https://api.petchk.cn/api/database/3/3-1-e.png'),
(2, 'A.a/c*b', 'B.a*b/c', 'https://api.petchk.cn/api/database/3/3-2-q.png', 'C', 'C.a/ b* c', 'D.a*(b/c)', 'https://api.petchk.cn/api/database/3/3-2-e.png'),
(3, 'A.m=(m*100+0.5)/100.0', 'B.n=m*100+0.5, m=n/100.0', 'https://api.petchk.cn/api/database/3/3-3-q.png', 'B', 'C.n=m/100+0.5, m=n*100.0', 'D.m=m*100+0.5/100.0', 'https://api.petchk.cn/api/database/3/3-3-e.png'),
(4, 'A.13.700000', 'B.14.000000', 'https://api.petchk.cn/api/database/3/3-4-q.png', 'A', 'C.15.400000', 'D.14.900000', 'https://api.petchk.cn/api/database/3/3-4-e.png'),
(5, 'A.(x %= k) - (k %= 5)', 'B.x %= (k %= 5)', 'https://api.petchk.cn/api/database/3/3-5-q.png', 'A', 'C.x %= (k - k % 5)', 'D.x %= k - k % 5', 'https://api.petchk.cn/api/database/3/3-5-e.png'),
(6, 'A.1  2 ', 'B.-1  2', 'https://api.petchk.cn/api/database/3/3-6-q.png', 'B', 'C.-1  -2', 'D.1  -2', 'https://api.petchk.cn/api/database/3/3-6-e.png'),
(7, 'A.i＝(a＋k)<＝(i＋k);', 'B.i＝a%11;', 'https://api.petchk.cn/api/database/3/3-7-q.png', 'B', 'C.a＝a++,i++', 'D.i＝!a;', 'https://api.petchk.cn/api/database/3/3-7-e.png'),
(8, 'A.int i=0,j=0,k=0;', 'B.int i=0;j=0;k=0;', 'https://api.petchk.cn/api/database/3/3-8-q.png', 'A', 'C.int i=j=k=0;', 'D.int i=0;j=i;k=j;', 'https://api.petchk.cn/api/database/3/3-8-e.png'),
(9, 'A.这段程序的输出是9', 'B.这段程序中存在有语法错误的语句', 'https://api.petchk.cn/api/database/3/3-9-q.png', 'A', 'C.这段程序的输出是7', 'D.可执行语句b=a+3后，不能再定义变量c', 'https://api.petchk.cn/api/database/3/3-9-e.png'),
(10, 'A.15', 'B.30', 'https://api.petchk.cn/api/database/3/3-10-q.png', 'C', 'C.28', 'D.14', 'https://api.petchk.cn/api/database/3/3-10-e.png'),
(11, 'A.n=i,i=i+1', 'B.n+=i+1', 'https://api.petchk.cn/api/database/3/3-11-q.png', 'A', 'C.i=i+1,n=i', 'D.n=++i', 'https://api.petchk.cn/api/database/3/3-11-e.png'),
(12, 'A.5', 'B.6', 'https://api.petchk.cn/api/database/3/3-12-q.png', 'B', 'C.7', 'D.8', 'https://api.petchk.cn/api/database/3/3-12-e.png'),
(13, 'A.1,0,0,1', 'B.1,1,0,1', 'https://api.petchk.cn/api/database/3/3-13-q.png', 'A', 'C.1,0,1,0', 'D.1,1,1,0', 'https://api.petchk.cn/api/database/3/3-13-e.png'),
(14, 'A.1,5,1', 'B.1,5,5', 'https://api.petchk.cn/api/database/3/3-14-q.png', 'B', 'C.-1,4,4', 'D.-1,4,-1', 'https://api.petchk.cn/api/database/3/3-14-e.png'),
(15, 'A.11.0', 'B.10.0', 'https://api.petchk.cn/api/database/3/3-15-q.png', 'C', 'C.0.0', 'D.1.0', 'https://api.petchk.cn/api/database/3/3-15-e.png'),
(16, 'A.(z,x,y)', 'B.(z=x,y)', 'https://api.petchk.cn/api/database/3/3-16-q.png', 'D', 'C.z=(x,y)', 'D.z=(x==y)', 'https://api.petchk.cn/api/database/3/3-16-e.png'),
(17, 'A.(x－y<0||x－y>0)', 'B.(x－y<0)', 'https://api.petchk.cn/api/database/3/3-17-q.png', 'A', 'C.(x－y>0)', 'D.(x－y＝＝0)', 'https://api.petchk.cn/api/database/3/3-17-e.png'),
(18, 'A.在一个函数内的复合语句中定义的变量在本函数范围内有效', 'B.在一个函数内定义的变量只在本函数范围内有效', 'https://api.petchk.cn/api/database/3/3-18-q.png', 'A', 'C.在不同的函数中可以定义相同名字的变量', 'D.函数的形参是局部变量', 'https://api.petchk.cn/api/database/3/3-18-e.png'),
(19, 'A.复合语句中包含的语句种类没有限制', 'B.复合语句中不能有分支语句', 'https://api.petchk.cn/api/database/3/3-19-q.png', 'A', 'C.复合语句中不能有循环语句', 'D.一条复合语句不能超过50行', 'https://api.petchk.cn/api/database/3/3-19-e.png'),
(20, 'A.a=(b=4)=3;', 'B.a=b=c+1;', 'https://api.petchk.cn/api/database/3/3-20-q.png', 'A', 'C.a=(b=4) +c;', 'D.a=1+(b=c=4);', 'https://api.petchk.cn/api/database/3/3-20-e.png'),
(21, 'A.a = (b = 3) = 1;', 'B.a = (b = 2) + c;', 'https://api.petchk.cn/api/database/3/3-21-q.png', 'A', 'C.a = b = c + 10;', 'D.a = 1 + (b = c = 2);', 'https://api.petchk.cn/api/database/3/3-21-e.png'),
(22, 'A.0', 'B.9', 'https://api.petchk.cn/api/database/3/3-22-q.png', 'D', 'C.3', 'D.-12', 'https://api.petchk.cn/api/database/3/3-22-e.png'),
(23, 'A.a = (b = c) + 1;', 'B.(a = b) = c = 1;', 'https://api.petchk.cn/api/database/3/3-23-q.png', 'A', 'C.a = (b == c) = 1;', 'D.a + b = c;', 'https://api.petchk.cn/api/database/3/3-23-e.png'),
(24, 'A.3', 'B.9', 'https://api.petchk.cn/api/database/3/3-24-q.png', 'D', 'C.0', 'D.-12', 'https://api.petchk.cn/api/database/3/3-24-e.png'),
(25, 'A.scanf(\"%c,%d\", &c,&d);', 'B.scanf(\"%c%d\", &c,&d);', 'https://api.petchk.cn/api/database/3/3-25-q.png', 'A', 'C.scanf(\"%d,%f\", &c,&d);', 'D.scanf(\"%d%d\", &c,&d);', 'https://api.petchk.cn/api/database/3/3-25-e.png'),
(26, 'A.scanf(\"%lf %lf\",x, y);', 'B.scanf(\"%f %f\" &x, &y);', 'https://api.petchk.cn/api/database/3/3-26-q.png', 'D', 'C.scanf(\"%f %f\", x, y);', 'D.scanf(\"%lf %le\", px, py);', 'https://api.petchk.cn/api/database/3/3-26-e.png'),
(27, 'A.在scanf函数的格式字符前既可以加入正整数指定输入数据所占的宽度，也可以对实数指定小数位的宽度', 'B.scanf函数有返回值，其值就是本次调用scanf函数时正确读入的数据项个数', 'https://api.petchk.cn/api/database/3/3-27-q.png', 'A', 'C.scanf函数从输入字符流中按照格式控制指定的格式解析出相应数据，送到指定地址中', 'D.在scanf函数中的格式控制字符串不会输出到屏幕上', 'https://api.petchk.cn/api/database/3/3-27-e.png'),
(28, 'A.定义语句出错，case是关键字，不能用作用户自定义标识符', 'B.定义语句出错，printF不能用作用户自定义标识符', 'https://api.petchk.cn/api/database/3/3-28-q.png', 'A', 'C.定义语句无错，scanf不能作为输入函数使用', 'D.定义语句无错，printf不能输出case的值', 'https://api.petchk.cn/api/database/3/3-28-e.png'),
(29, 'A.scanf(\"c=%d d=%d\", &c,&d);', 'B.scanf(\"c=%c d=%d\", &c,&d);', 'https://api.petchk.cn/api/database/3/3-29-q.png', 'D', 'C.scanf(\"c=%d,d=%d\", &c,&d);', 'D.scanf(\"c=%c,d=%d\", &c,&d);', 'https://api.petchk.cn/api/database/3/3-29-e.png'),
(30, 'A.2.3 f', 'B.2.3f', 'https://api.petchk.cn/api/database/3/3-30-q.png', 'B', 'C.2.3f ', 'D.2.3 f ', 'https://api.petchk.cn/api/database/3/3-30-e.png'),
(31, 'A.scanf(\"%d%f%lf\", &a,&b,&c);', 'B.scanf(\"%d%lf%lf\", &a,&b,&c);', 'https://api.petchk.cn/api/database/3/3-31-q.png', 'A', 'C.scanf(\"%d%f%f\", &a,&b,&c);', 'D.scanf(\"%lf%lf%lf\", &a,&b,&c);', 'https://api.petchk.cn/api/database/3/3-31-e.png'),
(32, 'A.65,68', 'B.A,68', 'https://api.petchk.cn/api/database/3/3-32-q.png', 'D', 'C.A,B', 'D.65,66', 'https://api.petchk.cn/api/database/3/3-32-e.png'),
(33, 'A.123.141593', 'B.12  3.141593', 'https://api.petchk.cn/api/database/3/3-33-q.png', 'A', 'C.12, 3.141593', 'D.123.1415930', 'https://api.petchk.cn/api/database/3/3-33-e.png'),
(34, 'A.1,2 ', 'B.1,0 ', 'https://api.petchk.cn/api/database/3/3-34-q.png', 'A', 'C.3,2', 'D.0,0', 'https://api.petchk.cn/api/database/3/3-34-e.png'),
(35, 'A.5.170000', 'B.5.175000', 'https://api.petchk.cn/api/database/3/3-35-q.png', 'C', 'C.5.169000', 'D.5.168000', 'https://api.petchk.cn/api/database/3/3-35-e.png'),
(36, 'A.A2A3B', 'B.2B4DF', 'https://api.petchk.cn/api/database/3/3-36-q.png', 'D', 'C.B4CD7', 'D.B2D4F', 'https://api.petchk.cn/api/database/3/3-36-e.png'),
(37, 'A.Hello,X=11.', 'B.He,X=13', 'https://api.petchk.cn/api/database/3/3-37-q.png', 'A', 'C.HelX=121.', 'D.Hello,X=013.', 'https://api.petchk.cn/api/database/3/3-37-e.png'),
(38, 'A.(x<=y)&&(y<=z)', 'B.(x<=y)||(y<=x)', 'https://api.petchk.cn/api/database/3/3-38-q.png', 'A', 'C.(x<=y<=z)', 'D.(x<=y)!(y<=x)', 'https://api.petchk.cn/api/database/3/3-38-e.png'),
(39, 'A.0 < x < 5', 'B.x>10 && x<5', 'https://api.petchk.cn/api/database/3/3-39-q.png', 'A', 'C.x>10 || x<5', 'D.x<10 &&  x>5', 'https://api.petchk.cn/api/database/3/3-39-e.png'),
(40, 'A.(c>=2 && c<=6)&&(c%2!=1)', 'B.(c==2)||(c==4)||(c==6)', 'https://api.petchk.cn/api/database/3/3-40-q.png', 'D', 'C.(c>=2 && c<=6)&& !(c%2)', 'D.(c>=2 && c<=6) || (c!=3) || (c!=5)', 'https://api.petchk.cn/api/database/3/3-40-e.png'),
(41, 'A.可以是任意合法的表达式', 'B.只能是整数0或非0整数', 'https://api.petchk.cn/api/database/3/3-41-q.png', 'A', 'C.可以是结构体类型的数据', 'D.只能是整数0或1', 'https://api.petchk.cn/api/database/3/3-41-e.png'),
(42, 'A.(a==!0)', 'B.a', 'https://api.petchk.cn/api/database/3/3-42-q.png', 'A', 'C.(a>0 || a<0)', 'D.(a!= 0)', 'https://api.petchk.cn/api/database/3/3-42-e.png'),
(43, 'A.flag!=0 ? a+=a : a/=3', 'B.flag==0 ? a*=2 : a/=3', 'https://api.petchk.cn/api/database/3/3-43-q.png', 'A', 'C.flag!=1 ? a*=2 : a/=3', 'D.flag==1 ? a*=2 : a/=3', 'https://api.petchk.cn/api/database/3/3-43-e.png'),
(44, 'A.*3#4*5', 'B.#3*4#5', 'https://api.petchk.cn/api/database/3/3-44-q.png', 'A', 'C.*3*4#5', 'D.*3#4#5', 'https://api.petchk.cn/api/database/3/3-44-e.png'),
(45, 'A.1,0,1,0', 'B.1,1,0,1', 'https://api.petchk.cn/api/database/3/3-45-q.png', 'A', 'C.1,0,0,1', 'D.1,1,1,0', 'https://api.petchk.cn/api/database/3/3-45-e.png'),
(46, 'A.4', 'B.2', 'https://api.petchk.cn/api/database/3/3-46-q.png', 'D', 'C.3', 'D.1', 'https://api.petchk.cn/api/database/3/3-46-e.png'),
(47, 'A.H', 'B.h', 'https://api.petchk.cn/api/database/3/3-47-q.png', 'B', 'C.A', 'D.a', 'https://api.petchk.cn/api/database/3/3-47-e.png');



CREATE TABLE `exam_4` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_4` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.Ta=0,b=1', 'B.Fa=1,b=2', 'https://api.petchk.cn/api/database/4/4-1-q.png', 'C', 'C.Ta=1,b=2', 'D.Fa=0,b=2', 'https://api.petchk.cn/api/database/4/4-1-e.png'),
(2, 'A.1', 'B.123', 'https://api.petchk.cn/api/database/4/4-2-q.png', 'A', 'C.23', 'D.3', 'https://api.petchk.cn/api/database/4/4-2-e.png'),
(3, 'A.D', 'B.C', 'https://api.petchk.cn/api/database/4/4-3-q.png', 'A', 'C.B', 'D.A', 'https://api.petchk.cn/api/database/4/4-3-e.png'),
(4, 'A.编译有错', 'B.0,0,0,3', 'https://api.petchk.cn/api/database/4/4-4-q.png', 'A', 'C.1,1,2,0', 'D.0,1,2,0', 'https://api.petchk.cn/api/database/4/4-4-e.png'),
(5, 'A.1,1,2,0', 'B.0,0,0,3', 'https://api.petchk.cn/api/database/4/4-5-q.png', 'C', 'C.编译有错', 'D.0,1,2,0', 'https://api.petchk.cn/api/database/4/4-5-e.png'),
(6, 'A.6', 'B.18', 'https://api.petchk.cn/api/database/4/4-6-q.png', 'D', 'C.10', 'D.24', 'https://api.petchk.cn/api/database/4/4-6-e.png'),
(7, 'A.形成无限循环', 'B.输出6', 'https://api.petchk.cn/api/database/4/4-7-q.png', 'A', 'C.输出5', 'D.输出4', 'https://api.petchk.cn/api/database/4/4-7-e.png'),
(8, 'A.1,2,3,2,3,3,', 'B.1,2,3,', 'https://api.petchk.cn/api/database/4/4-8-q.png', 'C', 'C.1,2,2,3,4,5,', 'D.1,1,1,2,2,3', 'https://api.petchk.cn/api/database/4/4-8-e.png'),
(9, 'A.5', 'B.24', 'https://api.petchk.cn/api/database/4/4-9-q.png', 'C', 'C.32', 'D.40', 'https://api.petchk.cn/api/database/4/4-9-e.png'),
(10, 'A.执行4次', 'B.执行3次', 'https://api.petchk.cn/api/database/4/4-10-q.png', 'A', 'C.执行次数不确定', 'D.执行123次', 'https://api.petchk.cn/api/database/4/4-10-e.png'),
(11, 'A.11,10', 'B.10,10  ', 'https://api.petchk.cn/api/database/4/4-11-q.png', 'A', 'C.10,11', 'D.11,11', 'https://api.petchk.cn/api/database/4/4-11-e.png'),
(12, 'A.计算1*2*3*4*...*99的值', 'B.计算1-2+3-4+...-99的值', 'https://api.petchk.cn/api/database/4/4-12-q.png', 'C', 'C.计算1-3+5-7+...-99的值', 'D.计算1*3*5*7*...*99的值', 'https://api.petchk.cn/api/database/4/4-12-e.png'),
(13, 'A.0,-1,-1,-1', 'B.0,-1,-1,0', 'https://api.petchk.cn/api/database/4/4-13-q.png', 'A', 'C.0,-1,-1,0,-1,0', 'D.0,-1,-1,-1,-1,-1', 'https://api.petchk.cn/api/database/4/4-13-e.png'),
(14, 'A.10', 'B.16', 'https://api.petchk.cn/api/database/4/4-14-q.png', 'D', 'C.6', 'D.12', 'https://api.petchk.cn/api/database/4/4-14-e.png'),
(15, 'A.Ta=0,b=1', 'B.Fa=1,b=2', 'https://api.petchk.cn/api/database/4/4-1-q.png', 'C', 'C.Ta=1,b=2', 'D.Fa=0,b=2', 'https://api.petchk.cn/api/database/4/4-1-e.png'),
(16, 'A.1', 'B.123', 'https://api.petchk.cn/api/database/4/4-2-q.png', 'A', 'C.23', 'D.3', 'https://api.petchk.cn/api/database/4/4-2-e.png'),
(17, 'A.D', 'B.C', 'https://api.petchk.cn/api/database/4/4-3-q.png', 'A', 'C.B', 'D.A', 'https://api.petchk.cn/api/database/4/4-3-e.png'),
(18, 'A.编译有错', 'B.0,0,0,3', 'https://api.petchk.cn/api/database/4/4-4-q.png', 'A', 'C.1,1,2,0', 'D.0,1,2,0', 'https://api.petchk.cn/api/database/4/4-4-e.png'),
(19, 'A.1,1,2,0', 'B.0,0,0,3', 'https://api.petchk.cn/api/database/4/4-5-q.png', 'C', 'C.编译有错', 'D.0,1,2,0', 'https://api.petchk.cn/api/database/4/4-5-e.png'),
(20, 'A.6', 'B.18', 'https://api.petchk.cn/api/database/4/4-6-q.png', 'D', 'C.10', 'D.24', 'https://api.petchk.cn/api/database/4/4-6-e.png'),
(21, 'A.形成无限循环', 'B.输出6', 'https://api.petchk.cn/api/database/4/4-7-q.png', 'A', 'C.输出5', 'D.输出4', 'https://api.petchk.cn/api/database/4/4-7-e.png'),
(22, 'A.1,2,3,2,3,3,', 'B.1,2,3,', 'https://api.petchk.cn/api/database/4/4-8-q.png', 'C', 'C.1,2,2,3,4,5,', 'D.1,1,1,2,2,3', 'https://api.petchk.cn/api/database/4/4-8-e.png'),
(23, 'A.5', 'B.24', 'https://api.petchk.cn/api/database/4/4-9-q.png', 'C', 'C.32', 'D.40', 'https://api.petchk.cn/api/database/4/4-9-e.png'),
(24, 'A.执行4次', 'B.执行3次', 'https://api.petchk.cn/api/database/4/4-10-q.png', 'A', 'C.执行次数不确定', 'D.执行123次', 'https://api.petchk.cn/api/database/4/4-10-e.png'),
(25, 'A.11,10', 'B.10,10  ', 'https://api.petchk.cn/api/database/4/4-11-q.png', 'A', 'C.10,11', 'D.11,11', 'https://api.petchk.cn/api/database/4/4-11-e.png'),
(26, 'A.计算1*2*3*4*...*99的值', 'B.计算1-2+3-4+...-99的值', 'https://api.petchk.cn/api/database/4/4-12-q.png', 'C', 'C.计算1-3+5-7+...-99的值', 'D.计算1*3*5*7*...*99的值', 'https://api.petchk.cn/api/database/4/4-12-e.png'),
(27, 'A.0,-1,-1,-1', 'B.0,-1,-1,0', 'https://api.petchk.cn/api/database/4/4-13-q.png', 'A', 'C.0,-1,-1,0,-1,0', 'D.0,-1,-1,-1,-1,-1', 'https://api.petchk.cn/api/database/4/4-13-e.png'),
(28, 'A.10', 'B.16', 'https://api.petchk.cn/api/database/4/4-14-q.png', 'D', 'C.6', 'D.12', 'https://api.petchk.cn/api/database/4/4-14-e.png'),
(29, 'A.54321', 'B.98765', 'https://api.petchk.cn/api/database/4/4-15-q.png', 'B', 'C.98765', 'D.43210', 'https://api.petchk.cn/api/database/4/4-15-e.png'),
(30, 'A.0,-1', 'B.0,0', 'https://api.petchk.cn/api/database/4/4-16-q.png', 'A', 'C.-1,-1', 'D.结果不确定', 'https://api.petchk.cn/api/database/4/4-16-e.png'),
(31, 'A.0', 'B.-1', 'https://api.petchk.cn/api/database/4/4-17-q.png', 'B', 'C.1', 'D.7', 'https://api.petchk.cn/api/database/4/4-17-e.png'),
(32, 'A.y=0', 'B.y=-1', 'https://api.petchk.cn/api/database/4/4-18-q.png', 'B', 'C.y=1', 'D.while构成无限循环', 'https://api.petchk.cn/api/database/4/4-18-e.png'),
(33, 'A.ML', 'B.MK', 'https://api.petchk.cn/api/database/4/4-19-q.png', 'A', 'C.OP', 'D.mm', 'https://api.petchk.cn/api/database/4/4-19-e.png'),
(34, 'A.28,0', 'B.28,1', 'https://api.petchk.cn/api/database/4/4-20-q.png', 'D', 'C.16,0', 'D.16,-1', 'https://api.petchk.cn/api/database/4/4-20-e.png'),
(35, 'A.0,1', 'B.0,0', 'https://api.petchk.cn/api/database/4/4-21-q.png', 'A', 'C.1,1', 'D.程序进入无限循环', 'https://api.petchk.cn/api/database/4/4-21-e.png'),
(36, 'A.条件表达式的执行次数总是比循环体的执行次数多一次', 'B.循环体的执行次数总是比条件表达式的执行次数多一次', 'https://api.petchk.cn/api/database/4/4-22-q.png', 'C', 'C.条件表达式的执行次数与循环体的执行次数一样', 'D.条件表达式的执行次数与循环体的执行次数无关', 'https://api.petchk.cn/api/database/4/4-22-e.png'),
(37, 'A.5,0', 'B.6,0', 'https://api.petchk.cn/api/database/4/4-23-q.png', 'C', 'C.5,-1', 'D.6,-1', 'https://api.petchk.cn/api/database/4/4-23-e.png'),
(38, 'A.循环发生嵌套时，最多只能两层', 'B.三种循环for,while,do-while可以互相嵌套', 'https://api.petchk.cn/api/database/4/4-24-q.png', 'B', 'C.循环嵌套时，如果不进行缩进形式书写代码，则会有编译错误', 'D.for语句的圆括号中的表达式不能都省略掉', 'https://api.petchk.cn/api/database/4/4-24-e.png'),
(39, 'A.m＝4', 'B.m＝2', 'https://api.petchk.cn/api/database/4/4-25-q.png', 'C', 'C.m＝6', 'D.m＝5', 'https://api.petchk.cn/api/database/4/4-25-e.png'),
(40, 'A.*', 'B.****', 'https://api.petchk.cn/api/database/4/4-26-q.png', 'A', 'C.**', 'D.********', 'https://api.petchk.cn/api/database/4/4-26-e.png'),
(41, 'A.continue语句使得整个循环终止', 'B.break语句不能用于提前结束for语句的本层循环', 'https://api.petchk.cn/api/database/4/4-27-q.png', 'C', 'C.使用break语句可以使流程跳出switch语句体', 'D.在for语句中，continue与break的效果是一样的，可以互换', 'https://api.petchk.cn/api/database/4/4-27-e.png'),
(42, 'A.5', 'B.0,0,0,0,0,', 'https://api.petchk.cn/api/database/4/4-28-q.png', 'C', 'C.0,1,2,3,4,', 'D.0,1,', 'https://api.petchk.cn/api/database/4/4-28-e.png'),
(43, 'A.5,6,7,', 'B.0,1,2,3,4,', 'https://api.petchk.cn/api/database/4/4-29-q.png', 'C', 'C.6,7,', 'D.6,7,8,', 'https://api.petchk.cn/api/database/4/4-29-e.png'),
(44, 'A.10', 'B.5', 'https://api.petchk.cn/api/database/4/4-30-q.png', 'D', 'C.9', 'D.6', 'https://api.petchk.cn/api/database/4/4-30-e.png');


CREATE TABLE `exam_5` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_5` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.用户自己定义的函数只能调用库函数', 'B.实用的C语言源程序总是由一个或多个函数组成', 'https://api.petchk.cn/api/database/5/5-1-q.png', 'B', 'C.不同函数的形式参数不能使用相同名称的标识符', 'D.在C语言的函数内部，可以定义局部嵌套函数', 'https://api.petchk.cn/api/database/5/5-1-e.png'),
(2, 'A.通过引用math.h文件，说明sin函数的参数个数和类型，以及函数返回值类型', 'B.将数学库中sin函数链接到编译生成的可执行文件中，以便能正确运行', 'https://api.petchk.cn/api/database/5/5-2-q.png', 'A', 'C.将数学库中sin函数的源程序插入到引用处，以便进行编译链接', 'D.实际上，不引用math.h文件也能正确调用sin函数', 'https://api.petchk.cn/api/database/5/5-2-e.png'),
(3, 'A.sin(2*3.14*r+3.14*30/180.0)', 'B.sin(2*π*r+30)', 'https://api.petchk.cn/api/database/5/5-3-q.png', 'A', 'C.sin(2*3.14*r+30)', 'D.sin(2*3.14*r+30*3.14/360.0)', 'https://api.petchk.cn/api/database/5/5-3-e.png'),
(4, 'A.sqrt(fabs(pow(n，x)＋exp(x)))', 'B.sqrt(fabs(pow(n，x)＋pow(x，e)))', 'https://api.petchk.cn/api/database/5/5-4-q.png', 'A', 'C.sqrt(abs(n^x＋e^x))', 'D.sqrt(fabs(pow(x，n)＋exp(x)))', 'https://api.petchk.cn/api/database/5/5-4-e.png'),
(5, 'A.(pow(x,2)-pow(y,2))*cos(3.1415926*45/180)', 'B.(pow(2,x)-pow(2,y))*cos(3.1415926*45/180)', 'https://api.petchk.cn/api/database/5/5-5-q.png', 'A', 'C.(x*x-y*y)*cos(45)', 'D.(x^2-y^2)*cos(45)', 'https://api.petchk.cn/api/database/5/5-5-e.png'),
(6, 'A.500', 'B.401', 'https://api.petchk.cn/api/database/5/5-6-q.png', 'C', 'C.503', 'D.1404', 'https://api.petchk.cn/api/database/5/5-6-e.png'),
(7, 'A.调用函数时，只能把实参的值传给形参，形参的值不能传给实参', 'B.函数既能嵌套定义，又能递归定义', 'https://api.petchk.cn/api/database/5/5-7-q.png', 'A', 'C.函数必须有返回值，否则不能使用', 'D.程序中有调用关系的所有函数必须放在同一个源程序中', 'https://api.petchk.cn/api/database/5/5-7-e.png'),
(8, 'A.在同一源程序文件中，函数名必须唯一', 'B.凡是带有返回值的库函数，都不能通过加分号而作为独立的语句出现', 'https://api.petchk.cn/api/database/5/5-8-q.png', 'B', 'C.不同函数中的形式参数可以同名', 'D.返回基本数据类型的库函数的调用，均可以出现在赋值号右边的表达式中', 'https://api.petchk.cn/api/database/5/5-8-e.png'),
(9, 'A.用户定义的函数中可以没有return语句', 'B.用户定义的函数中可以有多个return语句，以便可以调用一次返回多个函数值', 'https://api.petchk.cn/api/database/5/5-9-q.png', 'B', 'C.用户定义的函数中若没有return语句，则应当定义函数为void类型', 'D.函数的return语句中可以没有表达式', 'https://api.petchk.cn/api/database/5/5-9-e.png'),
(10, 'A.实参应与其对应的形参类型一致', 'B.形参可以是常量、变量或表达式', 'https://api.petchk.cn/api/database/5/5-10-q.png', 'B', 'C.实参可以是常量、变量或表达式', 'D.形参可以是任意合法数据类型', 'https://api.petchk.cn/api/database/5/5-10-e.png'),
(11, 'A.函数调用必须传递实参', 'B.函数必须要有形参', 'https://api.petchk.cn/api/database/5/5-11-q.png', 'D', 'C.函数必须要有返回值', 'D.函数形参的类型与返回之的类型无关', 'https://api.petchk.cn/api/database/5/5-11-e.png'),
(12, 'A.函数返回值可以是整个数组', 'B.函数返回值可以是一个数', 'https://api.petchk.cn/api/database/5/5-12-q.png', 'A', 'C.函数返回值可以是一个指针', 'D.函数返回值可以是一个函数的入口地址', 'https://api.petchk.cn/api/database/5/5-12-e.png'),
(13, 'A.void', 'B.double', 'https://api.petchk.cn/api/database/5/5-13-q.png', 'C', 'C.int', 'D.long', 'https://api.petchk.cn/api/database/5/5-13-e.png'),
(14, 'A.函数的形参和实参分别占用不同的存储单元', 'B.形参只是形式上的存在，不占用具体存储单元', 'https://api.petchk.cn/api/database/5/5-14-q.png', 'A', 'C.同名的实参和形参占同一存储单元', 'D.函数的实参和其对应的形参共占同一存储单元', 'https://api.petchk.cn/api/database/5/5-14-e.png'),
(15, 'A.6', 'B.3', 'https://api.petchk.cn/api/database/5/5-15-q.png', 'A', 'C.8', 'D.12', 'https://api.petchk.cn/api/database/5/5-15-e.png'),
(16, 'A.7', 'B.10', 'https://api.petchk.cn/api/database/5/5-16-q.png', 'D', 'C.8', 'D.9', 'https://api.petchk.cn/api/database/5/5-16-e.png'),
(17, 'A.2', 'B.3', 'https://api.petchk.cn/api/database/5/5-17-q.png', 'B', 'C.4', 'D.5', 'https://api.petchk.cn/api/database/5/5-17-e.png'),
(18, 'A.abcd', 'B.ABEJ', 'https://api.petchk.cn/api/database/5/5-18-q.png', 'C', 'C.abej', 'D.ABCD', 'https://api.petchk.cn/api/database/5/5-18-e.png'),
(19, 'A.int  fun(double  , int );', 'B.int  fun(double *,  int *);', 'https://api.petchk.cn/api/database/5/5-19-q.png', 'B', 'C.int  fun(double *x, int n);', 'D.int  fun(double x, int *n);', 'https://api.petchk.cn/api/database/5/5-19-e.png'),
(20, 'A.形参a对应的实参只能是数组名', 'B.说明中的a[10]写成a[]或*a效果完全一样', 'https://api.petchk.cn/api/database/5/5-20-q.png', 'B', 'C.func的函数体中不能对a进行移动指针（如a++)的操作', 'D.只有指向10个整数内存单元的指针，才能作为实参传给a', 'https://api.petchk.cn/api/database/5/5-20-e.png'),
(21, 'A.函数参数 array, ptr 都是指针变量', 'B.函数参数 array 不是指针变量，ptr 是指针变量', 'https://api.petchk.cn/api/database/5/5-21-q.png', 'A', 'C.调用函数时，实参数组的值将一一复制给array数组', 'D.调用函数时，array是按值传送，ptr是按地址传送', 'https://api.petchk.cn/api/database/5/5-21-e.png'),
(22, 'A.在函数说明之后对该函数进行调用，编译时不会出现错误信息', 'B.函数说明可以出现在源程序的任意位置，在程序的所有位置对该函数的调用，编译时都不会出现错误信息', 'https://api.petchk.cn/api/database/5/5-22-q.png', 'A', 'C.函数说明只能出现在源程序的开头位置，否则编译时会出现错误信息', 'D.函数说明只是为了美观和编译时检查参数类型是否一致，可以写也可以不写', 'https://api.petchk.cn/api/database/5/5-22-e.png'),
(23, 'A.数据只能从实参单向传递给形参', 'B.数据可以在实参和形参之间双向传递', 'https://api.petchk.cn/api/database/5/5-23-q.png', 'A', 'C.数据只能从形参单向传递给实参', 'D.C语言的函数参数既可以从实参单向传递给形参，也可以在实参和形参之间双向传递，可视情况选择使用', 'https://api.petchk.cn/api/database/5/5-23-e.png'),
(24, 'A.-2', 'B.1.7 ', 'https://api.petchk.cn/api/database/5/5-24-q.png', 'A', 'C.-3 ', 'D.2.0', 'https://api.petchk.cn/api/database/5/5-24-e.png'),
(25, 'A.8', 'B.10', 'https://api.petchk.cn/api/database/5/5-25-q.png', 'C', 'C.9', 'D.7', 'https://api.petchk.cn/api/database/5/5-25-e.png'),
(26, 'A.由具体定义位置和extern说明来决定范围', 'B.所在程序的全部范围', 'https://api.petchk.cn/api/database/5/5-26-q.png', 'A', 'C.所在函数的全部范围', 'D.所在文件的全部范围', 'https://api.petchk.cn/api/database/5/5-26-e.png'),
(27, 'A.局部变量不能被说明为static', 'B.只有全局变量才有自己的作用域，函数中的局部变量没有作用域', 'https://api.petchk.cn/api/database/5/5-27-q.png', 'D', 'C.只有在函数内部定义的变量才是局部变量', 'D.只要是用户定义的标识符，都有一个有效的作用域', 'https://api.petchk.cn/api/database/5/5-27-e.png'),
(28, 'A.函数的形式参数不属于局部变量', 'B.对于变量而言，\"定义\"和\"说明\"这两个词实际上是同一个意思', 'https://api.petchk.cn/api/database/5/5-28-q.png', 'D', 'C.在复合语句中不能定义变量', 'D.全局变量的存储类别可以是静态类', 'https://api.petchk.cn/api/database/5/5-28-e.png'),
(29, 'A.全局变量的作用域是从定义位置开始至源文件结束', 'B.全局变量是在函数外部任意位置上定义的变量', 'https://api.petchk.cn/api/database/5/5-29-q.png', 'C', 'C.用extern说明符可以限制全局变量的作用域', 'D.全局变量的生存期贯穿于整个程序的运行期间', 'https://api.petchk.cn/api/database/5/5-29-e.png'),
(30, 'A.未经赋值的全局变量值不确定', 'B.未经赋值的auto变量值不确定 ', 'https://api.petchk.cn/api/database/5/5-30-q.png', 'A', 'C.未经赋值的register变量值不确定', 'D.未经赋值的静态局部变量值为0', 'https://api.petchk.cn/api/database/5/5-30-e.png'),
(31, 'A.0', 'B.1', 'https://api.petchk.cn/api/database/5/5-31-q.png', 'C', 'C.4', 'D.8', 'https://api.petchk.cn/api/database/5/5-31-e.png'),
(32, 'A.外部（extern）', 'B.静态(static) ', 'https://api.petchk.cn/api/database/5/5-32-q.png', 'D', 'C.寄存器(register)', 'D.自动(auto)', 'https://api.petchk.cn/api/database/5/5-32-e.png');

-- --------------------------------------------------------



CREATE TABLE `exam_6` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `exam_6` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.一条语句只能定义一个数组', 'B.每个数组包含一组具有同一类型的变量，这些变量在内存中占有连续的存储单元', 'https://api.petchk.cn/api/database/6/6-1-q.png', 'B', 'C.数组说明符的一对方括号中只能使用整型常量，而不能使用表达式', 'D.在引用数组元素时，下标表达式可以使用浮点数', 'https://api.petchk.cn/api/database/6/6-1-e.png'),
(2, 'A.数组下标的下限是1', 'B.数组下标的下限由数组中第一个非零元素的位置决定', 'https://api.petchk.cn/api/database/6/6-2-q.png', 'D', 'C.数组下标的下限由数组中第一个被赋值元素的位置决定', 'D.char c1, c2, *c3, c4[40];是合法的变量定义语句', 'https://api.petchk.cn/api/database/6/6-2-e.png'),
(3, 'A.char  c1, *c2, *c3[10]; 是合法的变量定义语句', 'B.数组说明符的一对方括号中不能使用表达式', 'https://api.petchk.cn/api/database/6/6-3-q.png', 'A', 'C.数组元素下标可以是非整数', 'D.若有定义 char array[4]; 则语句 printf(\"%c\", array[\"3\"]);是合法的', 'https://api.petchk.cn/api/database/6/6-3-e.png'),
(4, 'A.char c1, c2, *c3[4]; 是合法的定义语句', 'B.数组说明符的一对方括号中只能使用常量，不能使用常量表达式', 'https://api.petchk.cn/api/database/6/6-4-q.png', 'A', 'C.数组下标可以使用实数', 'D.若有数组定义 float array[1]; 则语句 printf(\"%f\", array[0.1]);是合法的', 'https://api.petchk.cn/api/database/6/6-4-e.png'),
(5, 'A.int 和 char', 'B.float', 'https://api.petchk.cn/api/database/6/6-5-q.png', 'A', 'C.double', 'D.char', 'https://api.petchk.cn/api/database/6/6-5-e.png'),
(6, 'A.语句int a[8] = {0}; 是合法的', 'B.语句 int a[] = {0};是不合法的，遗漏了数组的大小', 'https://api.petchk.cn/api/database/6/6-6-q.png', 'A', 'C.语句 char a[2] = {\"A\", \"B\"}; 是合法的，定义了一个包含两个字符的数组', 'D.语句 char a[3]; a = \"AB\"; 是合法的，因为数组有三个字符空间的容量，可以保存两个字符', 'https://api.petchk.cn/api/database/6/6-6-e.png'),
(7, 'A.a+(i++)', 'B.&a[i+1]', 'https://api.petchk.cn/api/database/6/6-7-q.png', 'A', 'C.a+i', 'D.&a(i++)', 'https://api.petchk.cn/api/database/6/6-7-e.png'),
(8, 'A.只有a,b,c的定义是合法的', 'B.a,b,c,d的定义都是合法的', 'https://api.petchk.cn/api/database/6/6-8-q.png', 'C', 'C.只有a,b的定义是合法的', 'D.只有c的定义是合法的', 'https://api.petchk.cn/api/database/6/6-8-e.png'),
(9, 'A.a, b的定义合法，c, d的定义不合法', 'B.a,b,c,d的定义都是合法的', 'https://api.petchk.cn/api/database/6/6-9-q.png', 'A', 'C. a,b,c的定义是合法的，d的定义不合法', 'D.只有a的定义是合法的', 'https://api.petchk.cn/api/database/6/6-9-e.png'),
(10, 'A.int N = 6, a[N];', 'B.int a[2*3]={0}', 'https://api.petchk.cn/api/database/6/6-10-q.png', 'A', 'C.#define N 3\r\n  int a[N+N];', 'D.int a[] = {1,2,3,4,5,6};', 'https://api.petchk.cn/api/database/6/6-10-e.png'),
(11, 'A.int  x[2][3]＝{1,2,3,4,5,6}；', 'B.int  x[][3]＝{0}；', 'https://api.petchk.cn/api/database/6/6-11-q.png', 'D', 'C.int  x[][3]＝{{1,2,3}，{4,5,6}}；', 'D.int  x[2][3]＝{{1,2}，{3,4}，{5,6}}；', 'https://api.petchk.cn/api/database/6/6-11-e.png'),
(12, 'A.3', 'B.4', 'https://api.petchk.cn/api/database/6/6-12-q.png', 'B', 'C.1', 'D.9', 'https://api.petchk.cn/api/database/6/6-12-e.png'),
(13, 'A.char  ss[6][20]； ss[1]＝ \"right？\"；', 'B.char  ss[][20]＝{ \"right？\"}；', 'https://api.petchk.cn/api/database/6/6-13-q.png', 'A', 'C.char  *ss[6]； ss[1]＝ \"right？\"；', 'D.char  *ss[]＝{ \"right？\"}；', 'https://api.petchk.cn/api/database/6/6-13-e.png'),
(14, 'A.int  num[][3]＝{ {1,2},3,4,5,6 }；', 'B.int  num[2][4]＝{ {1,2}，{3,4}，{5,6} }；', 'https://api.petchk.cn/api/database/6/6-14-q.png', 'B', 'C.int  num[]＝{ 1,2,3,4,5,6 }；', 'D.int  num[][4]＝{1,2,3,4,5,6}；', 'https://api.petchk.cn/api/database/6/6-14-e.png'),
(15, 'A.2  0  4', 'B.2  0  0', 'https://api.petchk.cn/api/database/6/6-15-q.png', 'A', 'C.2  4  0', 'D.2  4  6', 'https://api.petchk.cn/api/database/6/6-15-e.png'),
(16, 'A.1 5 0', 'B.3 5 7', 'https://api.petchk.cn/api/database/6/6-16-q.png', 'B', 'C.1 4 7', 'D.3 6 9', 'https://api.petchk.cn/api/database/6/6-16-e.png'),
(17, 'A.元素x[0]可看作是由3个整型元素组成的一维数组', 'B.数组x可以看作是由x[0]和x[1]两个元素组成的一维数组', 'https://api.petchk.cn/api/database/6/6-17-q.png', 'C', 'C.可以用x[0]=0;的形式为数组所有元素赋初值0', 'D.x[0]和x[1]是数组名，分别代表一个地址常量', 'https://api.petchk.cn/api/database/6/6-17-e.png'),
(18, 'A.auto和static', 'B.extern和register', 'https://api.petchk.cn/api/database/6/6-18-q.png', 'C', 'C.auto和register', 'D.static和register', 'https://api.petchk.cn/api/database/6/6-18-e.png'),
(19, 'A.gets函数用于从终端读入字符串', 'B.getchar函数用于从磁盘文件读入字符', 'https://api.petchk.cn/api/database/6/6-19-q.png', 'B', 'C.fputs函数用于把字符串输出到文件', 'D.fwrite函数用于以二进制形式输出数据到文件', 'https://api.petchk.cn/api/database/6/6-19-e.png'),
(20, 'A.if (strcmp(s1,s2)!=0)  puts(s2);', 'B.if (strcmp(s1,s2)!=0)  puts(s1);', 'https://api.petchk.cn/api/database/6/6-20-q.png', 'B', 'C.if (strcmp(s1,s2)==1)  puts(s1);', 'D.if ( strcmp(s1,s2)==0)  puts(s1);', 'https://api.petchk.cn/api/database/6/6-20-e.png'),
(21, 'A.C程序函数中定义的自动变量，系统不自动赋确定的初值', 'B.在C程序的同一函数中，各复合语句内可以定义变量，其作用域仅限本复合语句内', 'https://api.petchk.cn/api/database/6/6-22-q.png', 'C', 'C.C程序函数中定义的赋有初值的静态变量，每调用一次函数，赋一次初值', 'D.C程序函数的形参不可以说明为static型变量', 'https://api.petchk.cn/api/database/6/6-22-e.png');





CREATE TABLE `exam_7` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_7` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.可以给指针变量赋一个整数作为地址值', 'B.函数可以返回地址值', 'https://api.petchk.cn/api/database/7/7-1-q.png', 'A', 'C.改变函数形参的值，不会改变对应实参的值', 'D.当在程序的开头包含头文件stdio.h时，可以给指针变量赋NULL', 'https://api.petchk.cn/api/database/7/7-1-e.png'),
(2, 'A.基类型不同的指针变量可以相互混用', 'B.函数的类型不能是指针类型', 'https://api.petchk.cn/api/database/7/7-2-q.png', 'D', 'C.函数的形参类型不能是指针类型', 'D.设有指针变量为 double *p，则 p+1 将指针p移动8个字节', 'https://api.petchk.cn/api/database/7/7-2-e.png'),
(3, 'A.int  *p＝(float)x；', 'B.float  *p＝&x；', 'https://api.petchk.cn/api/database/7/7-3-q.png', 'B', 'C.float  p＝&x；', 'D.float  *p＝1024；', 'https://api.petchk.cn/api/database/7/7-3-e.png'),
(4, 'A.定义语句中的*号是一个间址运算符', 'B.定义语句中的*号是一个说明符', 'https://api.petchk.cn/api/database/7/7-4-q.png', 'A', 'C.定义语句中的p只能存放double类型变量的地址', 'D.定义语句中，*p＝&a把变量a的地址作为初值赋给指针变量p', 'https://api.petchk.cn/api/database/7/7-4-e.png'),
(5, 'A.scanf(\"%lf %le\"，px，py)；', 'B.scanf(\"%f %f\" &x，&y)；', 'https://api.petchk.cn/api/database/7/7-5-q.png', 'A', 'C.scanf(\"%f %f\"，x，y)；', 'D.scanf(\"%lf %lf\"，x，y)；', 'https://api.petchk.cn/api/database/7/7-5-e.png'),
(6, 'A.可以给指针变量赋一个整数作为地址值', 'B.函数可以返回地址值', 'https://api.petchk.cn/api/database/7/7-1-q.png', 'A', 'C.改变函数形参的值，不会改变对应实参的值', 'D.当在程序的开头包含头文件stdio.h时，可以给指针变量赋NULL', 'https://api.petchk.cn/api/database/7/7-1-e.png'),
(7, 'A.基类型不同的指针变量可以相互混用', 'B.函数的类型不能是指针类型', 'https://api.petchk.cn/api/database/7/7-2-q.png', 'D', 'C.函数的形参类型不能是指针类型', 'D.设有指针变量为 double *p，则 p+1 将指针p移动8个字节', 'https://api.petchk.cn/api/database/7/7-2-e.png'),
(8, 'A.int  *p＝(float)x；', 'B.float  *p＝&x；', 'https://api.petchk.cn/api/database/7/7-3-q.png', 'B', 'C.float  p＝&x；', 'D.float  *p＝1024；', 'https://api.petchk.cn/api/database/7/7-3-e.png'),
(9, 'A.定义语句中的*号是一个间址运算符', 'B.定义语句中的*号是一个说明符', 'https://api.petchk.cn/api/database/7/7-4-q.png', 'A', 'C.定义语句中的p只能存放double类型变量的地址', 'D.定义语句中，*p＝&a把变量a的地址作为初值赋给指针变量p', 'https://api.petchk.cn/api/database/7/7-4-e.png'),
(10, 'A.scanf(\"%lf %le\"，px，py)；', 'B.scanf(\"%f %f\" &x，&y)；', 'https://api.petchk.cn/api/database/7/7-5-q.png', 'A', 'C.scanf(\"%f %f\"，x，y)；', 'D.scanf(\"%lf %lf\"，x，y)；', 'https://api.petchk.cn/api/database/7/7-5-e.png'),
(11, 'A.可以给指针变量赋一个整数作为地址值', 'B.函数可以返回地址值', 'https://api.petchk.cn/api/database/7/7-1-q.png', 'A', 'C.改变函数形参的值，不会改变对应实参的值', 'D.当在程序的开头包含头文件stdio.h时，可以给指针变量赋NULL', 'https://api.petchk.cn/api/database/7/7-1-e.png'),
(12, 'A.基类型不同的指针变量可以相互混用', 'B.函数的类型不能是指针类型', 'https://api.petchk.cn/api/database/7/7-2-q.png', 'D', 'C.函数的形参类型不能是指针类型', 'D.设有指针变量为 double *p，则 p+1 将指针p移动8个字节', 'https://api.petchk.cn/api/database/7/7-2-e.png'),
(13, 'A.int  *p＝(float)x；', 'B.float  *p＝&x；', 'https://api.petchk.cn/api/database/7/7-3-q.png', 'B', 'C.float  p＝&x；', 'D.float  *p＝1024；', 'https://api.petchk.cn/api/database/7/7-3-e.png'),
(14, 'A.定义语句中的*号是一个间址运算符', 'B.定义语句中的*号是一个说明符', 'https://api.petchk.cn/api/database/7/7-4-q.png', 'A', 'C.定义语句中的p只能存放double类型变量的地址', 'D.定义语句中，*p＝&a把变量a的地址作为初值赋给指针变量p', 'https://api.petchk.cn/api/database/7/7-4-e.png'),
(15, 'A.scanf(\"%lf %le\"，px，py)；', 'B.scanf(\"%f %f\" &x，&y)；', 'https://api.petchk.cn/api/database/7/7-5-q.png', 'A', 'C.scanf(\"%f %f\"，x，y)；', 'D.scanf(\"%lf %lf\"，x，y)；', 'https://api.petchk.cn/api/database/7/7-5-e.png'),
(16, 'A.2,1,1,2', 'B.1,2,1,2', 'https://api.petchk.cn/api/database/7/7-7-q.png', 'D', 'C.2,1,2,1', 'D.1,2,2,1', 'https://api.petchk.cn/api/database/7/7-7-e.png'),
(17, 'A.int  *p;   scanf(\"%d\", &p);', 'B.int  *p;   scanf(\"%d\", p);', 'https://api.petchk.cn/api/database/7/7-8-q.png', 'C', 'C.int  k, *p=&k;  scanf(\"%d\", p);', 'D.int  k, *p;  *p=&k;  scanf(\"%d\", p);', 'https://api.petchk.cn/api/database/7/7-8-e.png'),
(18, 'A.sizeof(p)', 'B.sizeof(char)', 'https://api.petchk.cn/api/database/7/7-9-q.png', 'A', 'C.sizeof(*q)', 'D.sizeof(p[0])', 'https://api.petchk.cn/api/database/7/7-9-e.png'),
(19, 'A.pt+3', 'B.*&x[10]', 'https://api.petchk.cn/api/database/7/7-10-q.png', 'D', 'C.*(pt+10)', 'D.*(x+3)', 'https://api.petchk.cn/api/database/7/7-10-e.png'),
(20, 'A.20', 'B.25', 'https://api.petchk.cn/api/database/7/7-11-q.png', 'D', 'C.45', 'D.36', 'https://api.petchk.cn/api/database/7/7-11-e.png'),
(21, 'A.(*s)[3]', 'B.*(s+3)', 'https://api.petchk.cn/api/database/7/7-12-q.png', 'B', 'C.*s[3]', 'D.*s+3', 'https://api.petchk.cn/api/database/7/7-12-e.png'),
(22, 'A.p=a;', 'B.p[0]=a;', 'https://api.petchk.cn/api/database/7/7-13-q.png', 'C', 'C.p[0]=&a[1][2];', 'D.p[1]=&a;', 'https://api.petchk.cn/api/database/7/7-13-e.png'),
(23, 'A.*(&w[0][0]+1)', 'B.*(*w+3)', 'https://api.petchk.cn/api/database/7/7-14-q.png', 'D', 'C.*(*(w+1))', 'D.*(w+1)[4]', 'https://api.petchk.cn/api/database/7/7-14-e.png'),
(24, 'A.10，One*Dream！', 'B.9，One*Dream！', 'https://api.petchk.cn/api/database/7/7-15-q.png', 'A', 'C.9，One*World', 'D.10，One*World', 'https://api.petchk.cn/api/database/7/7-15-e.png'),
(25, 'A.do{*t＋＋＝*s＋＋；}while(*s )；', 'B.for(i＝0；t[i]＝s[i]；i＋＋)；', 'https://api.petchk.cn/api/database/7/7-16-q.png', 'A', 'C.while(*t＝*s){t＋＋；s＋＋} ', 'D.for(i＝0，j＝0；t[i＋＋]＝s[j＋＋]；)；', 'https://api.petchk.cn/api/database/7/7-16-e.png'),
(26, 'A.q是指针变量，*q就是变量a', 'B.p是指针变量，p指向变量a', 'https://api.petchk.cn/api/database/7/7-17-q.png', 'A', 'C.q指向变量p，所以*q指向变量a', 'D.*p与**q都代表变量a', 'https://api.petchk.cn/api/database/7/7-17-e.png'),
(27, 'A.计算s所指字符串的长度', 'B.比较两个字符串的大小', 'https://api.petchk.cn/api/database/7/7-19-q.png', 'A', 'C.计算s所指字符串占用内存字节的个数', 'D.将s所指字符串复制到字符串t中', 'https://api.petchk.cn/api/database/7/7-19-e.png'),
(28, 'A.判断m是否能被5和7整除', 'B.判断m被5和7整除是否都余1', 'https://api.petchk.cn/api/database/7/7-20-q.png', 'B', 'C.判断m被5或者7整除是否余1', 'D.判断m是否能被5或者7整除', 'https://api.petchk.cn/api/database/7/7-20-e.png'),
(29, 'A.f是基类型为int的指针变量', 'B.f是指向函数的指针变量，该函数具有一个int类型的形参', 'https://api.petchk.cn/api/database/7/7-21-q.png', 'B', 'C.f是指向int类型一维数组的指针变量', 'D.f是函数名，该函数的返回值是基类型为int类型的地址', 'https://api.petchk.cn/api/database/7/7-21-e.png'),
(30, 'A.5,5', 'B.5,5', 'https://api.petchk.cn/api/database/7/7-22-q.png', 'A', 'C.3,5', 'D.5,3', 'https://api.petchk.cn/api/database/7/7-22-e.png'),
(31, 'A.求字符串的长度', 'B.比较两个字符串的大小', 'https://api.petchk.cn/api/database/7/7-23-q.png', 'B', 'C.将字符串s复制到字符串t中', 'D.连接字符串s和字符串t', 'https://api.petchk.cn/api/database/7/7-23-e.png'),
(32, 'A.计算字符串的长度', 'B.实现字符串的赋值', 'https://api.petchk.cn/api/database/7/7-24-q.png', 'A', 'C.将字符串逆序存放 ', 'D.计算字符串所占字节数', 'https://api.petchk.cn/api/database/7/7-24-e.png'),
(33, 'A.f=fun( );', 'B.*f=fun;', 'https://api.petchk.cn/api/database/7/7-25-q.png', 'C', 'C.f=fun;', 'D.*f=fun( );', 'https://api.petchk.cn/api/database/7/7-25-e.png');


CREATE TABLE `exam_8` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `exam_8` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.可以通过typedef增加新的类型', 'B.可以用typedef将已存在的类型用一个新的名字来代表', 'https://api.petchk.cn/api/database/9/9-1-q.png', 'A', 'C.用typedef定义新的类型名后，原有类型名仍有效', 'D.用typedef可以为各种类型起别名，但不能为变量起别名', 'https://api.petchk.cn/api/database/9/9-1-e.png'),
(2, 'A.用typedef可以增加新类型', 'B.typedef只是将已存在的类型用一个新的名字来代表', 'https://api.petchk.cn/api/database/9/9-2-q.png', 'A', 'C.用typedef可以为各种类型说明一个新名，但不能用来为变量说明一个新名', 'D.用typedef为类型说明一个新名，通常可以增加程序的可读性', 'https://api.petchk.cn/api/database/9/9-2-e.png'),
(3, 'A.可用S定义结构体变量', 'B.可用T定义结构体变量', 'https://api.petchk.cn/api/database/9/9-3-q.png', 'B', 'C.S是struct 类型的变量', 'D.T是struct S类型的变量', 'https://api.petchk.cn/api/database/9/9-3-e.png'),
(4, 'A.CIN是struct  TT类型的变量', 'B.TT是struct类型的变量', 'https://api.petchk.cn/api/database/9/9-4-q.png', 'D', 'C.可以用TT定义结构体变量', 'D.可以用CIN定义结构体变量', 'https://api.petchk.cn/api/database/9/9-4-e.png'),
(5, 'A.可以用typedef将已存在的类型用一个新的名字来代表', 'B.可以通过typedef增加新的类型', 'https://api.petchk.cn/api/database/9/9-5-q.png', 'B', 'C.用typedef定义新的类型名后，原有类型名仍有效', 'D.用typedef可以为各种类型起别名，但不能为变量起别名', 'https://api.petchk.cn/api/database/9/9-5-e.png'),
(6, 'A.int  (*a)[10];', 'B.int  *a[10];', 'https://api.petchk.cn/api/database/9/9-6-q.png', 'B', 'C.int  *a;', 'D.int  a[10];', 'https://api.petchk.cn/api/database/9/9-6-e.png'),
(7, 'A.char  a[10];', 'B.char  (*a)[10];', 'https://api.petchk.cn/api/database/9/9-7-q.png', 'D', 'C.char  *a;', 'D.char  *a[10];', 'https://api.petchk.cn/api/database/9/9-7-e.png'),
(8, 'A.使用typedef说明新类型名时，其格式是： typedef 新类型名 原类型名;', 'B.在程序中，允许用typedef来说明一种新的类型名', 'https://api.petchk.cn/api/database/9/9-8-q.png', 'B', 'C.使用typedef 说明新类型名时，后面不能加分号', 'D.在使用typedef改变原类型的名称后，只能使用新的类型名', 'https://api.petchk.cn/api/database/9/9-8-e.png'),
(9, 'A.10', 'B.11', 'https://api.petchk.cn/api/database/9/9-9-q.png', 'D', 'C.20', 'D.21', 'https://api.petchk.cn/api/database/9/9-9-e.png'),
(10, 'A.data2＝(2,6)；', 'B.data2＝data1；', 'https://api.petchk.cn/api/database/9/9-10-q.png', 'A', 'C.data2.real＝data1.real；', 'D.data2.real＝data1.unreal；', 'https://api.petchk.cn/api/database/9/9-10-e.png'),
(11, 'A.stdlib.h', 'B.stdio.h', 'https://api.petchk.cn/api/database/9/9-11-q.png', 'A', 'C.math.h', 'D.string.h', 'https://api.petchk.cn/api/database/9/9-11-e.png'),
(12, 'A.可以通过指针p直接访问用malloc开辟的这块内存', 'B.p所指内存可以通过强制类型转换当作具有20个int型元素的一维数组来使用', 'https://api.petchk.cn/api/database/9/9-12-q.png', 'A', 'C.p所指内存可以通过强制类型转换当作具有10个double型元素的一维数组来使用', 'D.p所指内存可以通过强制类型转换当作具有80个char型元素的一维数组来使用', 'https://api.petchk.cn/api/database/9/9-12-e.png'),
(13, 'A.可以将p用作含有15个double型元素的数组', 'B.可以将p用作含有30个float型元素的数组', 'https://api.petchk.cn/api/database/9/9-13-q.png', 'A', 'C.可以将一个长度小于120的字符串拷贝到p所指空间', 'D.p所指空间为默认的int型数组，且有30个int型元素', 'https://api.petchk.cn/api/database/9/9-13-e.png'),
(14, 'A.指针变量p指向结构体存储单元的首地址', 'B.指针变量p指向了IANDF', 'https://api.petchk.cn/api/database/9/9-14-q.png', 'A', 'C.IANDF与PIF都有各自的存储单元', 'D.IANDF和PIF都可以作为结构体变量名使用', 'https://api.petchk.cn/api/database/9/9-14-e.png'),
(15, 'A.q是基类型为int的指针变量', 'B.p是int型变量', 'https://api.petchk.cn/api/database/9/9-15-q.png', 'C', 'C.p是基类型为int的指针变量', 'D.程序中可用INTEGER代替类型名int', 'https://api.petchk.cn/api/database/9/9-15-e.png'),
(16, 'A.在C语言中，预处理命令行都以\"#\"开头', 'B.预处理命令行必须位于C源程序的起始位置', 'https://api.petchk.cn/api/database/8/8-1-q.png', 'A', 'C.#include <stdio.h>必须放在C程序的开头', 'D.C语言的预处理不能实现宏定义和条件编译的功能', 'https://api.petchk.cn/api/database/8/8-1-e.png'),
(17, 'A.宏替换没有数据类型限制', 'B.宏定义必须位于源程序中所有语句之前', 'https://api.petchk.cn/api/database/8/8-2-q.png', 'A', 'C.宏名必须用大写字母表示', 'D.宏调用比函数调用耗费时间', 'https://api.petchk.cn/api/database/8/8-2-e.png'),
(18, 'A.4', 'B.8', 'https://api.petchk.cn/api/database/8/8-3-q.png', 'B', 'C.9', 'D.6', 'https://api.petchk.cn/api/database/8/8-3-e.png'),
(19, 'A.25', 'B.20', 'https://api.petchk.cn/api/database/8/8-4-q.png', 'D', 'C.12', 'D.16', 'https://api.petchk.cn/api/database/8/8-4-e.png'),
(20, 'A.25', 'B.13', 'https://api.petchk.cn/api/database/8/8-5-q.png', 'B', 'C.9', 'D.12', 'https://api.petchk.cn/api/database/8/8-5-e.png'),
(21, 'A.#define   PAI   3.14', 'B.#Define   Eps   0.00001', 'https://api.petchk.cn/api/database/8/8-6-q.png', 'A', 'C.##DEFINE  FALSE   0', 'D.#define   int   INT', 'https://api.petchk.cn/api/database/8/8-6-e.png'),
(22, 'A.7', 'B.6', 'https://api.petchk.cn/api/database/8/8-7-q.png', 'A', 'C.9', 'D.2', 'https://api.petchk.cn/api/database/8/8-7-e.png'),
(23, 'A.宏替换不具有计算功能', 'B.宏替换不具有类型', 'https://api.petchk.cn/api/database/8/8-8-q.png', 'C', 'C.宏名必须用大写字母构成', 'D.宏替换不占用运行时间', 'https://api.petchk.cn/api/database/8/8-8-e.png'),
(24, 'A.宏定义不允许嵌套', 'B.x的值是 6', 'https://api.petchk.cn/api/database/8/8-9-q.png', 'C', 'C.x的值是16', 'D.宏调用不允许嵌套', 'https://api.petchk.cn/api/database/8/8-9-e.png'),
(25, 'A.宏替换不占用程序的运行时间', 'B.预处理命令行必须位于源文件的开头', 'https://api.petchk.cn/api/database/8/8-10-q.png', 'A', 'C.在源文件的一行上可以有多条预处理命令', 'D.宏名必须用大写字母表示', 'https://api.petchk.cn/api/database/8/8-10-e.png'),
(26, 'A.#include <stdio.h > 是C程序的一条语句', 'B.使用符号可以将一条#include 命令写在多行里', 'https://api.petchk.cn/api/database/8/8-11-q.png', 'B', 'C.一个#include行可以包含多个文件，文件名用逗号分开', 'D.一个#include行可以包含多个文件，且最后一个文件起作用', 'https://api.petchk.cn/api/database/8/8-11-e.png'),
(27, 'A.stdio.h文件中包含标准输入输出函数的函数说明，通过引用此文件以便能正确使用printf、scanf等函数', 'B.将stdio.h中标准输入输出函数链接到编译生成的可执行文件中，以便能正确运行', 'https://api.petchk.cn/api/database/8/8-12-q.png', 'A', 'C.将stdio.h中标准输入输出函数的源程序插入到引用处，以便进行编译链接', 'D.将stdio.h中标准输入输出函数的源程序插入到引用处，以便进行编译链接', 'https://api.petchk.cn/api/database/8/8-12-e.png'),
(28, 'A.预处理命令行必须使用分号结尾', 'B.凡是以#号开头的行，都被称为编译预处理命令行', 'https://api.petchk.cn/api/database/8/8-13-q.png', 'B', 'C.预处理命令行不能出现在程序的最后一行', 'D.预处理命令行的作用域是到最近的函数结束处', 'https://api.petchk.cn/api/database/8/8-13-e.png'),
(29, 'A.预处理命令行必须位于源程序的开始', 'B.源程序中凡是以#开始的控制行都是预处理命令行', 'https://api.petchk.cn/api/database/8/8-14-q.png', 'A', 'C.一行上只能有一条有效的预处理命令', 'D.预处理命令是在程序正式编译之前被处理的', 'https://api.petchk.cn/api/database/8/8-14-e.png'),
(30, 'A.在一个程序中，允许使用任意数量的#include命令行', 'B.在包含文件中，不得再包含其他文件', 'https://api.petchk.cn/api/database/8/8-15-q.png', 'A', 'C.#include命令行不能出现在程序文件的中间', 'D.虽然包含文件被修改了，包含该文件的源程序也可以不重新进行编译和连接', 'https://api.petchk.cn/api/database/8/8-15-e.png');

-- --------------------------------------------------------

--
-- 表的结构 `exam_9`
--

CREATE TABLE `exam_9` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_9` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.可以通过typedef增加新的类型', 'B.可以用typedef将已存在的类型用一个新的名字来代表', 'https://api.petchk.cn/api/database/9/9-1-q.png', 'A', 'C.用typedef定义新的类型名后，原有类型名仍有效', 'D.用typedef可以为各种类型起别名，但不能为变量起别名', 'https://api.petchk.cn/api/database/9/9-1-e.png'),
(2, 'A.用typedef可以增加新类型', 'B.typedef只是将已存在的类型用一个新的名字来代表', 'https://api.petchk.cn/api/database/9/9-2-q.png', 'A', 'C.用typedef可以为各种类型说明一个新名，但不能用来为变量说明一个新名', 'D.用typedef为类型说明一个新名，通常可以增加程序的可读性', 'https://api.petchk.cn/api/database/9/9-2-e.png'),
(3, 'A.可用S定义结构体变量', 'B.可用T定义结构体变量', 'https://api.petchk.cn/api/database/9/9-3-q.png', 'B', 'C.S是struct 类型的变量', 'D.T是struct S类型的变量', 'https://api.petchk.cn/api/database/9/9-3-e.png'),
(4, 'A.CIN是struct  TT类型的变量', 'B.TT是struct类型的变量', 'https://api.petchk.cn/api/database/9/9-4-q.png', 'D', 'C.可以用TT定义结构体变量', 'D.可以用CIN定义结构体变量', 'https://api.petchk.cn/api/database/9/9-4-e.png'),
(5, 'A.可以用typedef将已存在的类型用一个新的名字来代表', 'B.可以通过typedef增加新的类型', 'https://api.petchk.cn/api/database/9/9-5-q.png', 'B', 'C.用typedef定义新的类型名后，原有类型名仍有效', 'D.用typedef可以为各种类型起别名，但不能为变量起别名', 'https://api.petchk.cn/api/database/9/9-5-e.png'),
(6, 'A.int  (*a)[10];', 'B.int  *a[10];', 'https://api.petchk.cn/api/database/9/9-6-q.png', 'B', 'C.int  *a;', 'D.int  a[10];', 'https://api.petchk.cn/api/database/9/9-6-e.png'),
(7, 'A.char  a[10];', 'B.char  (*a)[10];', 'https://api.petchk.cn/api/database/9/9-7-q.png', 'D', 'C.char  *a;', 'D.char  *a[10];', 'https://api.petchk.cn/api/database/9/9-7-e.png'),
(8, 'A.使用typedef说明新类型名时，其格式是： typedef 新类型名 原类型名;', 'B.在程序中，允许用typedef来说明一种新的类型名', 'https://api.petchk.cn/api/database/9/9-8-q.png', 'B', 'C.使用typedef 说明新类型名时，后面不能加分号', 'D.在使用typedef改变原类型的名称后，只能使用新的类型名', 'https://api.petchk.cn/api/database/9/9-8-e.png'),
(9, 'A.10', 'B.11', 'https://api.petchk.cn/api/database/9/9-9-q.png', 'D', 'C.20', 'D.21', 'https://api.petchk.cn/api/database/9/9-9-e.png'),
(10, 'A.data2＝(2,6)；', 'B.data2＝data1；', 'https://api.petchk.cn/api/database/9/9-10-q.png', 'A', 'C.data2.real＝data1.real；', 'D.data2.real＝data1.unreal；', 'https://api.petchk.cn/api/database/9/9-10-e.png'),
(11, 'A.stdlib.h', 'B.stdio.h', 'https://api.petchk.cn/api/database/9/9-11-q.png', 'A', 'C.math.h', 'D.string.h', 'https://api.petchk.cn/api/database/9/9-11-e.png'),
(12, 'A.可以通过指针p直接访问用malloc开辟的这块内存', 'B.p所指内存可以通过强制类型转换当作具有20个int型元素的一维数组来使用', 'https://api.petchk.cn/api/database/9/9-12-q.png', 'A', 'C.p所指内存可以通过强制类型转换当作具有10个double型元素的一维数组来使用', 'D.p所指内存可以通过强制类型转换当作具有80个char型元素的一维数组来使用', 'https://api.petchk.cn/api/database/9/9-12-e.png'),
(13, 'A.可以将p用作含有15个double型元素的数组', 'B.可以将p用作含有30个float型元素的数组', 'https://api.petchk.cn/api/database/9/9-13-q.png', 'A', 'C.可以将一个长度小于120的字符串拷贝到p所指空间', 'D.p所指空间为默认的int型数组，且有30个int型元素', 'https://api.petchk.cn/api/database/9/9-13-e.png'),
(14, 'A.指针变量p指向结构体存储单元的首地址', 'B.指针变量p指向了IANDF', 'https://api.petchk.cn/api/database/9/9-14-q.png', 'A', 'C.IANDF与PIF都有各自的存储单元', 'D.IANDF和PIF都可以作为结构体变量名使用', 'https://api.petchk.cn/api/database/9/9-14-e.png'),
(15, 'A.q是基类型为int的指针变量', 'B.p是int型变量', 'https://api.petchk.cn/api/database/9/9-15-q.png', 'C', 'C.p是基类型为int的指针变量', 'D.程序中可用INTEGER代替类型名int', 'https://api.petchk.cn/api/database/9/9-15-e.png'),
(16, 'A.在C语言中，预处理命令行都以\"#\"开头', 'B.预处理命令行必须位于C源程序的起始位置', 'https://api.petchk.cn/api/database/8/8-1-q.png', 'A', 'C.#include <stdio.h>必须放在C程序的开头', 'D.C语言的预处理不能实现宏定义和条件编译的功能', 'https://api.petchk.cn/api/database/8/8-1-e.png'),
(17, 'A.宏替换没有数据类型限制', 'B.宏定义必须位于源程序中所有语句之前', 'https://api.petchk.cn/api/database/8/8-2-q.png', 'A', 'C.宏名必须用大写字母表示', 'D.宏调用比函数调用耗费时间', 'https://api.petchk.cn/api/database/8/8-2-e.png'),
(18, 'A.4', 'B.8', 'https://api.petchk.cn/api/database/8/8-3-q.png', 'B', 'C.9', 'D.6', 'https://api.petchk.cn/api/database/8/8-3-e.png'),
(19, 'A.25', 'B.20', 'https://api.petchk.cn/api/database/8/8-4-q.png', 'D', 'C.12', 'D.16', 'https://api.petchk.cn/api/database/8/8-4-e.png'),
(20, 'A.25', 'B.13', 'https://api.petchk.cn/api/database/8/8-5-q.png', 'B', 'C.9', 'D.12', 'https://api.petchk.cn/api/database/8/8-5-e.png'),
(21, 'A.#define   PAI   3.14', 'B.#Define   Eps   0.00001', 'https://api.petchk.cn/api/database/8/8-6-q.png', 'A', 'C.##DEFINE  FALSE   0', 'D.#define   int   INT', 'https://api.petchk.cn/api/database/8/8-6-e.png'),
(22, 'A.7', 'B.6', 'https://api.petchk.cn/api/database/8/8-7-q.png', 'A', 'C.9', 'D.2', 'https://api.petchk.cn/api/database/8/8-7-e.png'),
(23, 'A.宏替换不具有计算功能', 'B.宏替换不具有类型', 'https://api.petchk.cn/api/database/8/8-8-q.png', 'C', 'C.宏名必须用大写字母构成', 'D.宏替换不占用运行时间', 'https://api.petchk.cn/api/database/8/8-8-e.png'),
(24, 'A.宏定义不允许嵌套', 'B.x的值是 6', 'https://api.petchk.cn/api/database/8/8-9-q.png', 'C', 'C.x的值是16', 'D.宏调用不允许嵌套', 'https://api.petchk.cn/api/database/8/8-9-e.png'),
(25, 'A.宏替换不占用程序的运行时间', 'B.预处理命令行必须位于源文件的开头', 'https://api.petchk.cn/api/database/8/8-10-q.png', 'A', 'C.在源文件的一行上可以有多条预处理命令', 'D.宏名必须用大写字母表示', 'https://api.petchk.cn/api/database/8/8-10-e.png'),
(26, 'A.#include <stdio.h > 是C程序的一条语句', 'B.使用符号可以将一条#include 命令写在多行里', 'https://api.petchk.cn/api/database/8/8-11-q.png', 'B', 'C.一个#include行可以包含多个文件，文件名用逗号分开', 'D.一个#include行可以包含多个文件，且最后一个文件起作用', 'https://api.petchk.cn/api/database/8/8-11-e.png'),
(27, 'A.stdio.h文件中包含标准输入输出函数的函数说明，通过引用此文件以便能正确使用printf、scanf等函数', 'B.将stdio.h中标准输入输出函数链接到编译生成的可执行文件中，以便能正确运行', 'https://api.petchk.cn/api/database/8/8-12-q.png', 'A', 'C.将stdio.h中标准输入输出函数的源程序插入到引用处，以便进行编译链接', 'D.将stdio.h中标准输入输出函数的源程序插入到引用处，以便进行编译链接', 'https://api.petchk.cn/api/database/8/8-12-e.png'),
(28, 'A.预处理命令行必须使用分号结尾', 'B.凡是以#号开头的行，都被称为编译预处理命令行', 'https://api.petchk.cn/api/database/8/8-13-q.png', 'B', 'C.预处理命令行不能出现在程序的最后一行', 'D.预处理命令行的作用域是到最近的函数结束处', 'https://api.petchk.cn/api/database/8/8-13-e.png'),
(29, 'A.预处理命令行必须位于源程序的开始', 'B.源程序中凡是以#开始的控制行都是预处理命令行', 'https://api.petchk.cn/api/database/8/8-14-q.png', 'A', 'C.一行上只能有一条有效的预处理命令', 'D.预处理命令是在程序正式编译之前被处理的', 'https://api.petchk.cn/api/database/8/8-14-e.png'),
(30, 'A.在一个程序中，允许使用任意数量的#include命令行', 'B.在包含文件中，不得再包含其他文件', 'https://api.petchk.cn/api/database/8/8-15-q.png', 'A', 'C.#include命令行不能出现在程序文件的中间', 'D.虽然包含文件被修改了，包含该文件的源程序也可以不重新进行编译和连接', 'https://api.petchk.cn/api/database/8/8-15-e.png');



CREATE TABLE `exam_10` (
  `id` bigint(20) NOT NULL,
  `select_a` varchar(255) NOT NULL,
  `select_b` varchar(255) NOT NULL,
  `problem` longtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `select_c` varchar(255) NOT NULL,
  `select_d` varchar(255) NOT NULL,
  `analysis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `exam_10` (`id`, `select_a`, `select_b`, `problem`, `answer`, `select_c`, `select_d`, `analysis`) VALUES
(1, 'A.文件由一系列数据依次排列组成，只能构成二进制文件', 'B.文件由结构序列组成，可以构成二进制文件或文本文件', 'https://api.petchk.cn/api/database/10/10-1-q.png', 'C', 'C.文件由数据序列组成，可以构成二进制文件或文本文件', 'D.文件由字符序列组成，其类型只能是文本文件', 'https://api.petchk.cn/api/database/10/10-1-e.png'),
(2, 'A.当对文件的读（写）操作完成之后，必须将它关闭，否则可能导致数据丢失', 'B.打开一个已存在的文件并进行了写操作后，原有文件中的全部数据必定被覆盖', 'https://api.petchk.cn/api/database/10/10-2-q.png', 'A', 'C.在一个程序中当对文件进行了写操作后，必须先关闭该文件然后再打开，才能读到第1个数据', 'D.C语言中的文件是流式文件，因此只能顺序存取数据', 'https://api.petchk.cn/api/database/10/10-2-e.png'),
(3, 'A.文件指针是程序中用FILE定义的指针变量', 'B.文件指针就是文件位置指针，表示当前读写数据的位置', 'https://api.petchk.cn/api/database/10/10-3-q.png', 'A', 'C.文件指针指向文件在计算机中的存储位置', 'D.把文件指针传给fscanf函数，就可以向文本文件中写入任意的字符', 'https://api.petchk.cn/api/database/10/10-3-e.png'),
(4, 'A.文件指针是指针类型的变量', 'B.文件指针可同时指向不同文件', 'https://api.petchk.cn/api/database/10/10-4-q.png', 'A', 'C.文件指针的值是文件在计算机磁盘中的路径信息', 'D.调用fscanf函数可以向文本文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-4-e.png'),
(5, 'A.文件指针是指针类型的变量', 'B.文件指针变量的值是文件的当前读取位置', 'https://api.petchk.cn/api/database/10/10-5-q.png', 'A', 'C.文件指针变量的值是文件在当前读取位置处数据的值', 'D.调用fscanf函数能向所有类型的文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-5-e.png'),
(6, 'A.表达式 sizeof(FILE*) == sizeof(int*) 的值为真', 'B.文件指针的值是一个整数，它的值一定小于文件字节数', 'https://api.petchk.cn/api/database/10/10-6-q.png', 'A', 'C.文件指针的值是所指文件的当前读取位置', 'D.使用fscanf函数可以向任意类型的文件中写入任意数量的字符', 'https://api.petchk.cn/api/database/10/10-6-e.png'),
(7, 'A.文件指针是一种特殊的指针类型变量', 'B.文件指针的值等于文件当前读写位置，以字节为单位', 'https://api.petchk.cn/api/database/10/10-7-q.png', 'A', 'C.文件指针的值等于文件在计算机硬盘中的存储位置', 'D.调用fscanf函数只能向文本文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-7-e.png'),
(8, 'A.文件指针的值是文件的长度（以字节为单位）', 'B.文件指针的值是文件名字符串存放的首地址', 'https://api.petchk.cn/api/database/10/10-8-q.png', 'C', 'C.文件指针是指针类型的变量', 'D.fscanf函数可以向任意指定文件中写入任意指定字符', 'https://api.petchk.cn/api/database/10/10-8-e.png'),
(9, 'A.只能写不能读', 'B.写操作结束后可以从头开始读', 'https://api.petchk.cn/api/database/10/10-9-q.png', 'A', 'C.可以在原有内容后追加写', 'D.可以随意读和写', 'https://api.petchk.cn/api/database/10/10-9-e.png'),
(10, 'A.当程序中对文件的所有写操作完成之后，必须调用fclose(fp)函数关闭文件', 'B.当程序中对文件的所有写操作完成之后，不一定要调用fclose(fp)函数关闭文件', 'https://api.petchk.cn/api/database/10/10-10-q.png', 'A', 'C.只有对文件进行输入操作之后，才需要调用fclose(fp)函数关闭文件', 'D.只有对文件进行输出操作之后，才能调用fclose(fp)函数关闭文件', 'https://api.petchk.cn/api/database/10/10-10-e.png'),
(11, 'A.在C语言中调用fopen函数就可把程序中要读、写的文件与磁盘上实际的数据文件联系起来', 'B.fopen函数的调用形式为：fopen(文件名)', 'https://api.petchk.cn/api/database/10/10-11-q.png', 'A', 'C.fopen函数的返回值为NULL时，则成功打开指定的文件', 'D.fopen函数的返回值必须赋给一个任意类型的指针变量', 'https://api.petchk.cn/api/database/10/10-11-e.png'),
(12, 'A.文件打开时，原有文件内容不被删除，可以进行添加和读操作', 'B.文件打开时，原有文件内容不被删除，位置指针移到文件开头，可以进行重写和读操作', 'https://api.petchk.cn/api/database/10/10-12-q.png', 'A', 'C.文件打开时，原有文件内容不被删除，位置指针移到文件中间，可以进行重写和读操作', 'D.文件打开时，原有文件内容被删除，只可进行写操作', 'https://api.petchk.cn/api/database/10/10-12-e.png'),
(13, 'A.\"a+\"', 'B.\"w\"', 'https://api.petchk.cn/api/database/10/10-13-q.png', 'A', 'C.\"w+\"', 'D.\"wb\"', 'https://api.petchk.cn/api/database/10/10-13-e.png'),
(14, 'A.一个内存块的字节数', 'B.一个整型变量，代表待读取的数据的字节数', 'https://api.petchk.cn/api/database/10/10-14-q.png', 'D', 'C.一个文件指针，指向待读取的文件', 'D.一个内存块的首地址，代表读入数据存放的地址', 'https://api.petchk.cn/api/database/10/10-14-e.png'),
(15, 'A.从文件f中读取长度不超过n-1的字符串存入指针s所指的内存', 'B.从文件f中读取长度为n的字符串存入指针s所指的内存', 'https://api.petchk.cn/api/database/10/10-15-q.png', 'A', 'C.从文件f中读取n个字符串存入指针s所指的内存', 'D.从文件f中读取n-1个字符串存入指针s所指的内存', 'https://api.petchk.cn/api/database/10/10-15-e.png'),
(16, 'A.fwrite', 'B.fputc', 'https://api.petchk.cn/api/database/10/10-16-q.png', 'C', 'C.fpout', 'D.fprintf', 'https://api.petchk.cn/api/database/10/10-16-e.png'),
(17, 'A.fread', 'B.fscanf', 'https://api.petchk.cn/api/database/10/10-17-q.png', 'D', 'C.fgets', 'D.getc', 'https://api.petchk.cn/api/database/10/10-17-e.png'),
(18, 'A.fget( fp,ch );', 'B.fputc(ch,fp);', 'https://api.petchk.cn/api/database/10/10-18-q.png', 'A', 'C.fprintf( fp, \"%c\",ch );', 'D.fwrite( &ch,sizeof(ch),1,fp);', 'https://api.petchk.cn/api/database/10/10-18-e.png'),
(19, 'A.当对文件的读(写)操作完成之后，必须将它关闭，否则可能导致数据丢失', 'B.打开一个已存在的文件并进行了写操作后，原有文件中的全部数据必定被覆盖', 'https://api.petchk.cn/api/database/10/10-19-q.png', 'A', 'C.在一个程序中当对文件进行了写操作后，必须先关闭该文件然后再打开，才能读到第1个数据', 'D.C语言中的文件是流式文件，因此只能顺序存取数据', 'https://api.petchk.cn/api/database/10/10-19-e.png'),
(20, 'A.函数rewind(fp)的作用是使文件读写指针指向文件开始位置', 'B.使文件位置指针指向文件的末尾', 'https://api.petchk.cn/api/database/10/10-20-q.png', 'A', 'C.使文件位置指针移至前一个字符的位置', 'D.使文件位置指针移至下一个字符的位置', 'https://api.petchk.cn/api/database/10/10-20-e.png'),
(21, 'A.文件由一系列数据依次排列组成，只能构成二进制文件', 'B.文件由结构序列组成，可以构成二进制文件或文本文件', 'https://api.petchk.cn/api/database/10/10-1-q.png', 'C', 'C.文件由数据序列组成，可以构成二进制文件或文本文件', 'D.文件由字符序列组成，其类型只能是文本文件', 'https://api.petchk.cn/api/database/10/10-1-e.png'),
(22, 'A.当对文件的读（写）操作完成之后，必须将它关闭，否则可能导致数据丢失', 'B.打开一个已存在的文件并进行了写操作后，原有文件中的全部数据必定被覆盖', 'https://api.petchk.cn/api/database/10/10-2-q.png', 'A', 'C.在一个程序中当对文件进行了写操作后，必须先关闭该文件然后再打开，才能读到第1个数据', 'D.C语言中的文件是流式文件，因此只能顺序存取数据', 'https://api.petchk.cn/api/database/10/10-2-e.png'),
(23, 'A.文件指针是程序中用FILE定义的指针变量', 'B.文件指针就是文件位置指针，表示当前读写数据的位置', 'https://api.petchk.cn/api/database/10/10-3-q.png', 'A', 'C.文件指针指向文件在计算机中的存储位置', 'D.把文件指针传给fscanf函数，就可以向文本文件中写入任意的字符', 'https://api.petchk.cn/api/database/10/10-3-e.png'),
(24, 'A.文件指针是指针类型的变量', 'B.文件指针可同时指向不同文件', 'https://api.petchk.cn/api/database/10/10-4-q.png', 'A', 'C.文件指针的值是文件在计算机磁盘中的路径信息', 'D.调用fscanf函数可以向文本文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-4-e.png'),
(25, 'A.文件指针是指针类型的变量', 'B.文件指针变量的值是文件的当前读取位置', 'https://api.petchk.cn/api/database/10/10-5-q.png', 'A', 'C.文件指针变量的值是文件在当前读取位置处数据的值', 'D.调用fscanf函数能向所有类型的文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-5-e.png'),
(26, 'A.表达式 sizeof(FILE*) == sizeof(int*) 的值为真', 'B.文件指针的值是一个整数，它的值一定小于文件字节数', 'https://api.petchk.cn/api/database/10/10-6-q.png', 'A', 'C.文件指针的值是所指文件的当前读取位置', 'D.使用fscanf函数可以向任意类型的文件中写入任意数量的字符', 'https://api.petchk.cn/api/database/10/10-6-e.png'),
(27, 'A.文件指针是一种特殊的指针类型变量', 'B.文件指针的值等于文件当前读写位置，以字节为单位', 'https://api.petchk.cn/api/database/10/10-7-q.png', 'A', 'C.文件指针的值等于文件在计算机硬盘中的存储位置', 'D.调用fscanf函数只能向文本文件中写入任意字符', 'https://api.petchk.cn/api/database/10/10-7-e.png'),
(28, 'A.文件指针的值是文件的长度（以字节为单位）', 'B.文件指针的值是文件名字符串存放的首地址', 'https://api.petchk.cn/api/database/10/10-8-q.png', 'C', 'C.文件指针是指针类型的变量', 'D.fscanf函数可以向任意指定文件中写入任意指定字符', 'https://api.petchk.cn/api/database/10/10-8-e.png'),
(29, 'A.只能写不能读', 'B.写操作结束后可以从头开始读', 'https://api.petchk.cn/api/database/10/10-9-q.png', 'A', 'C.可以在原有内容后追加写', 'D.可以随意读和写', 'https://api.petchk.cn/api/database/10/10-9-e.png'),
(30, 'A.当程序中对文件的所有写操作完成之后，必须调用fclose(fp)函数关闭文件', 'B.当程序中对文件的所有写操作完成之后，不一定要调用fclose(fp)函数关闭文件', 'https://api.petchk.cn/api/database/10/10-10-q.png', 'A', 'C.只有对文件进行输入操作之后，才需要调用fclose(fp)函数关闭文件', 'D.只有对文件进行输出操作之后，才能调用fclose(fp)函数关闭文件', 'https://api.petchk.cn/api/database/10/10-10-e.png'),
(31, 'A.在C语言中调用fopen函数就可把程序中要读、写的文件与磁盘上实际的数据文件联系起来', 'B.fopen函数的调用形式为：fopen(文件名)', 'https://api.petchk.cn/api/database/10/10-11-q.png', 'A', 'C.fopen函数的返回值为NULL时，则成功打开指定的文件', 'D.fopen函数的返回值必须赋给一个任意类型的指针变量', 'https://api.petchk.cn/api/database/10/10-11-e.png'),
(32, 'A.文件打开时，原有文件内容不被删除，可以进行添加和读操作', 'B.文件打开时，原有文件内容不被删除，位置指针移到文件开头，可以进行重写和读操作', 'https://api.petchk.cn/api/database/10/10-12-q.png', 'A', 'C.文件打开时，原有文件内容不被删除，位置指针移到文件中间，可以进行重写和读操作', 'D.文件打开时，原有文件内容被删除，只可进行写操作', 'https://api.petchk.cn/api/database/10/10-12-e.png'),
(33, 'A.\"a+\"', 'B.\"w\"', 'https://api.petchk.cn/api/database/10/10-13-q.png', 'A', 'C.\"w+\"', 'D.\"wb\"', 'https://api.petchk.cn/api/database/10/10-13-e.png'),
(34, 'A.一个内存块的字节数', 'B.一个整型变量，代表待读取的数据的字节数', 'https://api.petchk.cn/api/database/10/10-14-q.png', 'D', 'C.一个文件指针，指向待读取的文件', 'D.一个内存块的首地址，代表读入数据存放的地址', 'https://api.petchk.cn/api/database/10/10-14-e.png'),
(35, 'A.从文件f中读取长度不超过n-1的字符串存入指针s所指的内存', 'B.从文件f中读取长度为n的字符串存入指针s所指的内存', 'https://api.petchk.cn/api/database/10/10-15-q.png', 'A', 'C.从文件f中读取n个字符串存入指针s所指的内存', 'D.从文件f中读取n-1个字符串存入指针s所指的内存', 'https://api.petchk.cn/api/database/10/10-15-e.png'),
(36, 'A.fwrite', 'B.fputc', 'https://api.petchk.cn/api/database/10/10-16-q.png', 'C', 'C.fpout', 'D.fprintf', 'https://api.petchk.cn/api/database/10/10-16-e.png'),
(37, 'A.fread', 'B.fscanf', 'https://api.petchk.cn/api/database/10/10-17-q.png', 'D', 'C.fgets', 'D.getc', 'https://api.petchk.cn/api/database/10/10-17-e.png'),
(38, 'A.fget( fp,ch );', 'B.fputc(ch,fp);', 'https://api.petchk.cn/api/database/10/10-18-q.png', 'A', 'C.fprintf( fp, \"%c\",ch );', 'D.fwrite( &ch,sizeof(ch),1,fp);', 'https://api.petchk.cn/api/database/10/10-18-e.png'),
(39, 'A.当对文件的读(写)操作完成之后，必须将它关闭，否则可能导致数据丢失', 'B.打开一个已存在的文件并进行了写操作后，原有文件中的全部数据必定被覆盖', 'https://api.petchk.cn/api/database/10/10-19-q.png', 'A', 'C.在一个程序中当对文件进行了写操作后，必须先关闭该文件然后再打开，才能读到第1个数据', 'D.C语言中的文件是流式文件，因此只能顺序存取数据', 'https://api.petchk.cn/api/database/10/10-19-e.png'),
(40, 'A.函数rewind(fp)的作用是使文件读写指针指向文件开始位置', 'B.使文件位置指针指向文件的末尾', 'https://api.petchk.cn/api/database/10/10-20-q.png', 'A', 'C.使文件位置指针移至前一个字符的位置', 'D.使文件位置指针移至下一个字符的位置', 'https://api.petchk.cn/api/database/10/10-20-e.png'),
(41, 'A.EOF只能作为文本文件的结束标志，其值为-1', 'B.EOF可以作为所有文件的结束标志', 'https://api.petchk.cn/api/database/10/10-22-q.png', 'A', 'C.EOF只能作为二进制文件的结束标志', 'D.任何文件都不能用EOF作为文件的结束标志', 'https://api.petchk.cn/api/database/10/10-22-e.png'),
(42, 'A.EOF', 'B.非0', 'https://api.petchk.cn/api/database/10/10-23-q.png', 'D', 'C.-1', 'D.0', 'https://api.petchk.cn/api/database/10/10-23-e.png');



CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `feed_back` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `wx` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `feedback` (`id`, `openid`, `feed_back`, `name`, `QQ`, `phone`, `wx`) VALUES
(1, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '123', '123', '123', '123', '1231'),
(2, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '123', '123', '123', '123', '1231'),
(3, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '213', '13', '312', '123', '3213'),
(4, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '32432', '24', '2344', '324', '324'),
(5, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '12312', '123', '213', '123', '123'),
(6, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '123', '31', '21321', '123', '12312'),
(7, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '还不完善哟', '凯凯', '1580776594', '19825310076', 'Kari');


CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `infoList` varchar(255) DEFAULT NULL,
  `pwdid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `showflag` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `participant` (`id`, `infoList`, `pwdid`, `openid`, `showflag`) VALUES
(4, '[{\"key\":\"姓名\",\"value\":\"徐永瑞\"},{\"key\":\"性别\",\"value\":\"男\"},{\"key\":\"学号\",\"value\":\"18240127\"},{\"key\":\"特长\",\"value\":\"前端\"}]', '6P909NNa8J', 'otO4d5IT_VuORval0-UsmTqmck3k', 1),
(6, '[{\"key\":\"姓名\",\"value\":\"陈华凯\"},{\"key\":\"性别\",\"value\":\"男\"},{\"key\":\"学号\",\"value\":\"18240207\"},{\"key\":\"特长\",\"value\":\"后端\"}]', '6P909NNa8J', 'otO4d5PzLFfp4IZfmEvxgadJES-A', 1),
(7, '[{\"key\":\"你\",\"value\":\"我\"}]', 'H5709m12So', 'otO4d5AnevlrpgyBC-RwDltJVJco', 1),
(8, '[{\"key\":\"姓名\",\"value\":\"121\"},{\"key\":\"年龄\",\"value\":\"21\"},{\"key\":\"龙奥是煞笔吗\",\"value\":\"212\"}]', '2R3LJ98Go8', 'otO4d5IT_VuORval0-UsmTqmck3k', 1);


CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `title` char(255) DEFAULT NULL COMMENT '文章标题\n',
  `pdf_url` char(255) DEFAULT NULL COMMENT 'PDF地址\n',
  `introduction` char(255) NOT NULL DEFAULT '这是学霸笔记' COMMENT '文章简介\n',
  `author` char(255) DEFAULT '学霸' COMMENT '作者',
  `picture_url` char(255) DEFAULT 'https://summerobs.obs.cn-east-3.myhuaweicloud.com/%E5%9B%BE%E7%89%87/212.jpg' COMMENT '图片地址\n',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `pdf` (`id`, `title`, `pdf_url`, `introduction`, `author`, `picture_url`, `gmt_create`, `gmt_modified`) VALUES
(1, '阿里巴巴Java开发手册', 'https://summerobs.obs.cn-east-3.myhuaweicloud.com/pdf/%E9%98%BF%E9%87%8C%E5%B7%B4%E5%B7%B4Java%E5%BC%80%E5%8F%91%E6%89%8B%E5%86%8C.pdf', '这是一个学霸笔记', '学霸', 'http://www.summerx.cn/img/3.jpg', '2020-11-17 16:21:33', '2020-11-17 16:21:33');



CREATE TABLE `quser` (
  `id` int(11) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `userNick` varchar(255) DEFAULT NULL,
  `avaUrl` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `quser` (`id`, `openid`, `userNick`, `avaUrl`, `gender`) VALUES
(6, 'otO4d5Jd8E3zKzNgC1rFCEDL0gwY', 'Dora', 'https://wx.qlogo.cn/mmopen/vi_32/s5XqniaEBh14CS43TIDRRfSEV2l2bXjXezOohehmLY8JhpaUt5ltI1bKc75TM6p5ziaibz4g5QF6qA2eTYlfuf3vQ/132', '女'),
(7, 'otO4d5GKfl3x750SItHq3VLp5qgI', '欢乐马', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM5brUJbTgRoKLKDPqicuPznjcOuwom2UKSjIiaPWqljLKyZeQUJYFNR9HvsE7xlbyHFJ4YBl2AyTB1A/132', '男'),
(10, 'otO4d5LQLxMKz3yfhEdW_e0zIzDs', '枫忆澜', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epg9Aq8ib0xoX6KVjIC7guNNW7D0N42x5QUSGu7p2E5RdicdmpxAoOAyEPCRZMKBuHfkxdkaRpbBBcQ/132', '男'),
(11, 'otO4d5IT_VuORval0-UsmTqmck3k', 'Summer', 'https://wx.qlogo.cn/mmopen/vi_32/yNrvNZQobGAiawaFFfBrIVVMfO0XCXtD5La4wORsDyWZ4T4wxgXJDg8f0GMPUOwt1TickRjEd9RCWTyo7wASrVgw/132', '男'),
(12, 'otO4d5EsCZAD4Rcw7Zy4krVXH1-U', '星落尘埃', 'https://wx.qlogo.cn/mmopen/vi_32/SV42VibIREXu34u7MTmsJSgUK2dqPeungDILicMKZp3gyVBegiaRQPGHLcLZ6NVosF0FeHXKZTuFAS1wpN8orNflw/132', '女'),
(13, 'otO4d5Lan99F4vBhLZDK0szswtHw', 'Coisíní', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIQS7d9lalgKnZPIWxYudsXWmOY6FgsRw7FDic2HUwV8xMPU2icOsa5W5OtxYR8Eq9rtT8AbhvOjlFg/132', '女'),
(16, 'otO4d5JoSZ8In9VwJ4keEhlsoblo', '萌面人～', 'https://wx.qlogo.cn/mmopen/vi_32/K0MPzWbnCV9gwpCSKk1gRtM49nV9DxnQZZO1ZQB75p3jkeMLGR5284SqNnufIbDdU0nmsw97TT72BmK0w3QkLg/132', '男'),
(17, 'otO4d5PN7z_PfjEMY0SjuCco4G_Q', '通信工程师', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJYKenohY8YvU4BegZDrLuDzp6jJz7qwGRnjEPptUW14rjQeFq84oelQhELVP8mia6cAVmXuXrL0sg/132', '男'),
(18, 'otO4d5M_EipqTuCV21SqWZ-ALN4c', '贰叁', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKxqUU8Z81S0bHgOkiasM16ngN07HFib69PwUIfYOrJbwoFHoOjl2z1yDjqrjdwTDZA4QH17zMYC6Bg/132', '男'),
(19, 'otO4d5Ogze5vr4030QQY5ZxrdBlU', '喻妹', 'https://wx.qlogo.cn/mmopen/vi_32/zsYr8W98RzWp5vAibCWJY6NBzOyvHBtp53HpdrkW6kKezoPnNDaia05iaic1AZbxCYeg30nN1T5fp9Grwa2DPDiaNlg/132', '女'),
(20, 'otO4d5BkClsVE-vGsqsBRFr48EYs', '_不羁', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqoGEghNiaKDyG0EIibx5dYHW2MPWQOeylq2KhIiaYGlGKiczzGy2pOTrc8gFtVgBD45qYjAzd2lFTq6A/132', '男'),
(21, 'otO4d5DbQifUMUOO2gEb6RtzzNmE', '\'\'冷夜汐', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJfjBezmbQfZaVQ7TcgYDMX045aicLcLK1v1Z7SDHTHD5ciafkQHyG8UaBqDTSGeMJ39Vv8JiaC9MMJg/132', '女'),
(22, 'otO4d5MmHWEkiksIpjvYGb3u0s7E', 'Supreme', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKbExLnH52YFvLqXuQavugsicTLnGC2amr09oPu6xHXVBGqezibD1IPM8HFv50vQ7sVRSMG7yoqR2zQ/132', '男'),
(23, 'otO4d5PdNZOVgbz3IDZJ6SneNVjs', 'LAN', 'https://thirdwx.qlogo.cn/mmopen/vi_32/G5micYJcWGk5oXvCYmf5YWUBKwywetUkI8DEpeKHKrJEPjqYrL46bXqZJpeNiacib6eNwWtiac0BdXolJwUkQicdIUQ/132', '男'),
(24, 'otO4d5Jf9ywekeDF9p0ftLLTD71s', '风一样的女子', 'https://wx.qlogo.cn/mmopen/vi_32/ohxU5f64EBvDXqaXjkRzANUUulCK06axYdjmiabDDOp7z8fJ5bv1y1WWQmjkWr86oSiacVf52Qia1jLf9YqKMuiaug/132', '女'),
(32, 'otO4d5PzLFfp4IZfmEvxgadJES-A', '旺仔小馒头', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmxshNxkibrSYR4Rvby2hs2zs93qQaY4ZeId1w853okLMKDVfia6twjLibUonGemlrzZollOjNo7NKw/132', '男'),
(33, 'otO4d5KTEz3Ic1DRED638qaF4mAA', '陈意婷', 'https://wx.qlogo.cn/mmhead/Ukh8J5zsLUvq8LgjQsibzOgdwkD2lExYEwibicZYYZ3YWM/132', '女'),
(34, 'otO4d5ETA3vlyNnBON2KWNfALYSI', 'Pure.', 'https://wx.qlogo.cn/mmopen/vi_32/VHA7iaV6BNzV8gUibusApMWvHfEc24aOojUhXFgE4WAOE4RRgMD7ibjBfuicibRQotzXWuewxXHzGwhgu2nfvUJXCCQ/132', '女'),
(35, 'otO4d5AnevlrpgyBC-RwDltJVJco', '南昌航空大学 舒坚', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoo9KMfJWyVGIohTDMg7baywAceNI3ja72icUGvXwU7K7RgcWO389gloia3RPYh6wH3pdicw8LwyGicdw/132', '男'),
(36, '', '旺仔小馒头', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmxshNxkibrSYR4Rvby2hs2zs93qQaY4ZeId1w853okLMKDVfia6twjLucEtwBmsmw7W7O92L2fVEw/132', '男');



CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `prepareview` longtext NOT NULL,
  `pvid` varchar(255) NOT NULL,
  `reviewsrc` longtext NOT NULL,
  `describse` varchar(255) NOT NULL,
  `ppoints` int(11) NOT NULL,
  `rpoints` int(11) NOT NULL,
  `pcomment` int(11) NOT NULL,
  `rcomment` int(11) NOT NULL,
  `rvid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `video` (`id`, `prepareview`, `pvid`, `reviewsrc`, `describse`, `ppoints`, `rpoints`, `pcomment`, `rcomment`, `rvid`) VALUES
(1, 'https://v.qq.com/x/page/a3020h1lzeu.html', 'a3020h1lzeu', 'https://v.qq.com/x/page/z3020dbzzf3.html', '第一单元学习', 10, 7, 2, 1, 'z3020dbzzf3'),
(2, 'https://v.qq.com/x/page/j30200qc020.html', 'j30200qc020', 'https://v.qq.com/x/page/o3020gde77g.html', '第二单元学习', 11, 8, 1, 0, 'o3020gde77g'),
(3, 'https://v.qq.com/x/page/q3020wzp2nf.html', 'q3020wzp2nf', 'https://v.qq.com/x/page/j3020vlx38o.html', '第三单元学习', 23, 12, 0, 0, 'j3020vlx38o'),
(4, 'https://v.qq.com/x/page/i3020drd442.html', 'i3020drd442', 'https://v.qq.com/x/page/l30207uxrol.html', '第四单元学习', 6, 15, 0, 0, 'l30207uxrol');


ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `danmu`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `exam_1`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `exam_2`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_3`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_4`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_5`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_6`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_7`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_8`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_9`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `exam_10`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `participant`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `quser`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `danmu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;


ALTER TABLE `exam_1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;


ALTER TABLE `exam_2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `exam_3`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;


ALTER TABLE `exam_4`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;


ALTER TABLE `exam_5`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;


ALTER TABLE `exam_6`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `exam_7`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `exam_8`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `exam_9`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `exam_10`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;


ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `quser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;


ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;


