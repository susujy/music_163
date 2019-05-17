SET NAMES UTF8;
DROP DATABASE if exists yun;
CREATE DATABASE yun CHARSET=UTF8;
USE yun;


#用户列表
	CREATE TABLE users(
		uid INT PRIMARY KEY AUTO_INCREMENT,
		uname varchar(32),
		utel INT,
		sex INT,
		upwd varchar(16),
		upic varchar(64),
		birthday DATE,
		school varchar(32)
		);
#首页轮播图列表
	CREATE TABLE lunbo(
		pid INT PRIMARY KEY AUTO_INCREMENT,
		img VARCHAR(128),
		url VARCHAR(128)
	);
#插入轮播图图片列表
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_01.jpg","http:baidu.com"); 
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_02.jpg","http:baidu.com");
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_03.jpg","http:baidu.com"); 
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_04.jpg","http:baidu.com"); 
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_05.jpg","http:baidu.com"); 
	INSERT INTO lunbo VALUES(NULL,"picture/lunbo_06.jpg","http:baidu.com"); 


#首页歌单列表
	CREATE TABLE songMenu(
		pid INT PRIMARY KEY AUTO_INCREMENT,
		img	VARCHAR(128),
		detail VARCHAR(64)
	);
#插入歌单数据
	INSERT INTO songMenu VALUES
	(NULL,"image/new1.jpg","你说你想在海边买一座房子"),
	(NULL,"image/new1.jpg","民谣 | 斑马 安河桥 莉莉安"),
	(NULL,"image/new1.jpg","夜晚的枕头都是眼泪"),
	(NULL,"image/new1.jpg","所以-这首歌的结束语是我爱你"),
	(NULL,"image/new1.jpg","听说民谣是住进你心里的捷径"),
	(NULL,"image/new1.jpg","数尽荒芜之后，必有新生"),
	(NULL,"image/new1.jpg","就算你的生活百般滋味，但是你也要微笑"),
	(NULL,"image/new2.jpg","风里有诗句，那是你的笑");
#首页歌单列表
	CREATE TABLE singer(
		pid INT PRIMARY KEY AUTO_INCREMENT,
		img VARCHAR(128),
		singer_card VARCHAR(28),
		detail VARCHAR(32)
	);
	INSERT INTO singer_card VALUES
	(NULL,''image/new1.jpg","薛之谦","原创歌手"),
	(NULL,''image/new1.jpg","宋冬野","董小姐你嘴角向下的时候很美"),
	(NULL,''image/new1.jpg","陈鸿宇","浓烟下的诗歌电台"),
	(NULL,''image/new1.jpg","房东的猫","云烟成雨"),
	(NULL,''image/new1.jpg","毛不易","平凡的一天"),
	(NULL,''image/new1.jpg","赵雷","南方姑娘"),
	(NULL,''image/new1.jpg","尧十三","北方女王");
	

#新歌首发——歌曲列表
	CREATE TABLE newsongs(
		sid INT PRIMARY KEY AUTO_INCREMENT, #歌曲id
		songname VARCHAR(128), #歌名
		stime VARCHAR(128),    #发布时间
		resource VARCHAR(128),  #资源
		simg VARCHAR(128), #图片
		stype VARCHAR(128)#歌曲类型
	);
#歌曲数据插入
INSERT INTO newsongs VALUES
(NULL,'林俊杰 - 你是我的唯一(Live)','03:51','林俊杰 - 你是我的唯一(Live).mp3','picture/play-jj.jpg','chinese'),
(NULL,'徐佳莹 - 当我找到了你','04:30','徐佳莹 - 当我找到了你.mp3','picture/play-xjy.jpg','chinese'),
(NULL,'崔子格 - 你在就好','03:31','崔子格 - 你在就好.mp3','picture/play-czg.jpg','chinese'),
(NULL,'GOT7 - Let Me(Chinese Ver.)','03:36','GOT7 - Let Me(Chinese Ver.).mp3','picture/play-got7.jpg','chinese'),
(NULL,'朴树-达尼亚','04:08','朴树 - Baby,До свидания(达尼亚).mp3','picture/play-ps.jpg','chinese'),
(NULL,'S.I.N.G女团 - 爱情经纬线','04:55','S.I.N.G女团 - 爱情经纬线.mp3','picture/play-sing.jpg','chinese'),
(NULL,'大张伟 - 哈鹿哈鹿哈鹿','04:29','大张伟 - 哈鹿哈鹿哈鹿.mp3','picture/play-dzw.jpg','chinese'),
(NULL,'陈翔 - 旅行家','03:37','陈翔 - 旅行家.mp3','picture/play-cx.jpg','chinese'),


#商城轮播图列表       
	CREATE TABLE shoplunbo(
		pid INT PRIMARY KEY AUTO_INCREMENT,
		img VARCHAR(128),
		url VARCHAR(128)
	);

#商城商品列表
	CREATE TABLE shopping(
		sid INT PRIMARY KEY AUTO_INCREMENT,
		title VARCHAR(64),
		detail VARCHAR(256),
		price DECIMAL(8,2),
		promise VARCHAR(256)
	);
#插入用户数据
	INSERT INTO users VALUES
	(NULL,"苏苏",15591817100,0,"123456","http://baidu.com","1996-12-19","西安科技大学"),
	(NULL,"呆呆",18192727529,1,"123456","http://baidu.com","1996-09-28","保密");

