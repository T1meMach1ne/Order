use master
go
if exists(select * from sysdatabases where name='kaneki')
	drop database kaneki
go
create database kaneki
go
use kaneki
go


create table userinfo --用户表
(
	id int primary key identity(1,1),
	uiid varchar(50),--账户
	uipwd varchar(50),--密码
)
--select userinfo.uiid,uipwd,usersongcaninfo.usname,usdizhi,ustel from userinfo left join usersongcaninfo on userinfo.id=usersongcaninfo.usid where uiid='admin'

insert into userinfo values('admin','admin')
create table usersongcaninfo --用户送餐信息表
(
	id int primary key identity(1,1),
	usname varchar(50), --姓名
	usdizhi varchar(50), --地址
	ustel varchar(50), --电话
	usid int,--外键（关联用户表主键）
)
insert into usersongcaninfo values('伟大的吃货','东八-419','1000',1)

select userinfo.uiid,usersongcaninfo.usname,userinfo.uipwd,usersongcaninfo.usdizhi,ustel from userinfo  left join usersongcaninfo on userinfo.id=usersongcaninfo.usid 
create table AddressInfo
(
    id int identity(1,1),
	Addr varchar(50),
	AddrNearby varchar(50) 
)
insert into AddressInfo values ('三峡职业技术学院','宜昌西陵区体育场路美食城')
insert into AddressInfo values ('三峡职业技术学院','宜昌西陵区体育场路悠摩广场')
insert into AddressInfo values ('三峡职业技术学院','宜昌西陵区胜利三路')
create table StoreInfo --店铺表
(
	id int primary key identity(1,1),
	storeName varchar(50),--店铺名
	storeImg varchar(50),--店铺图片
	storeMemo varchar (50),--店铺简介
	storeTel varchar(50),--电话
	storeAddress varchar(50),--店铺地址
	foodtime int,--送餐时间
	saleNum int, --月销
	evaluation int --评价(好评+1)
)
select * from StoreInfo
--添加店铺信息
insert into StoreInfo values ('小干锅','img/1_1.jpg','汤饭世家','15897588684','宜昌西陵区体育场路美食城小干锅',31,500,64)
insert into StoreInfo values ('兄弟饭馆','img/1_2.jpg','美味盖饭','13897587684','宜昌西陵区体育场路美食城兄弟饭馆',32,1000,200)
insert into StoreInfo values ('姐妹卤肉饭','img/1_3.jpg','卤肉卤肉我最爱','15847698523','宜昌西陵区体育场路美食城姐妹卤肉饭',33,600,65)
insert into StoreInfo values ('湖南家常粉','img/1_4.jpg','酸爽停不下来','17868599854','宜昌西陵区体育场路美食城湖南家常粉',34,180,81)
insert into StoreInfo values ('有间饭馆','img/1_5.jpg','我们应有尽有','146325897456','宜昌西陵区体育场路美食城有间饭馆',35,500,36)
insert into StoreInfo values ('特色铁板饭','img/1_6.jpg','翻滚吧！蛋炒饭','13254869875','宜昌西陵区体育场路悠摩广场特色铁板饭',36,650,65)
insert into StoreInfo values ('黄焖鸡米饭','img/1_7.jpg','口水肆溢','17568944585','宜昌西陵区体育场路悠摩广场黄焖鸡米饭',37,377,25)
insert into StoreInfo values ('永久香','img/1_8.jpg','腊！腊!腊!腊肉就是我~','15648769548','宜昌西陵区体育场路悠摩广场永久香',38,260,95)
insert into StoreInfo values ('煲仔饭','img/1_9.jpg','香脆可口，可脆了！','13158459568','宜昌西陵区体育场路悠摩广场',54,854,64)
insert into StoreInfo values ('湖南木桶饭','img/1_10.jpg','纯正木桶饭，老好吃了！','14658597845','宜昌西陵区体育场路悠摩广场湖南木桶饭',40,230,52)
insert into StoreInfo values ('重庆鸡公煲','img/1_11.jpg','带上你的女票一起潇洒吧！','15897588684','宜昌西陵区体育场路悠摩广场重庆鸡公煲',42,136,35)
insert into StoreInfo values ('老地方','img/1_12.jpg','经济最实惠','16548798746','宜昌西陵区胜利三路老地方',33,485,68)
insert into StoreInfo values ('当阳鱼头','img/1_13.jpg','浓浓的香，留不住你吗？','18895964785','宜昌西陵区胜利三路当阳鱼头',35,462,66)
insert into StoreInfo values ('沙市锅块','img/1_14.jpg','经典小吃，难忘童年','18769584525','宜昌西陵区胜利三路沙市锅块',30,658,20)
insert into StoreInfo values ('星巴克','img/1_15.jpg','来一杯喽~','15796485258','宜昌西陵区胜利三路星巴克',43,356,98)

create table TypeInfo --菜品类型表
(
	TypeId int primary key identity(1,1),
	TypeName varchar(50),--菜品类型名
)

--添加菜品类型
insert into TypeInfo values ('小干锅饭')
insert into TypeInfo values ('汤饭')
insert into TypeInfo values ('炒菜')
insert into TypeInfo values ('盖浇饭')
insert into TypeInfo values ('卤肉饭')
insert into TypeInfo values ('烤肉饭')

create table productInfo --菜品表
(
	productID int primary key identity(1,1),
	productName varchar(50),--菜名
	productImg varchar(50),--菜品图片
	productPrice money,--菜品价格
	productType varchar(50),--菜品类型
	storeId int,--菜品店铺
	productMemo varchar(50),--菜品备注（1=特色菜，2=普通菜）
)
--添加菜品信息
	--小干锅菜品
		--特色
		insert into productInfo values ('虾卷锅','img/2_1.jpg','8','1','1','1')
		insert into productInfo values ('鱼丸汤饭','img/2_2.jpg','7','2','1','1')
		--小干锅饭
		insert into productInfo values ('素菜锅','','7','1','1','2')
		insert into productInfo values ('猪血锅','','8','1','1','2')
		insert into productInfo values ('蟹排锅','','8','1','1','2')
		insert into productInfo values ('牛肉锅','','9','1','1','2')
		insert into productInfo values ('藕片锅','','8','1','1','2')
		--汤饭
		insert into productInfo values ('豆棍汤饭','','6','2','1','2')
		insert into productInfo values ('海带汤饭','','6','2','1','2')
		insert into productInfo values ('土豆汤饭','','6','2','1','2')
		insert into productInfo values ('千叶豆腐汤饭','','7','2','1','2')
		insert into productInfo values ('青菜汤饭','','6','2','1','2')

	--兄弟饭馆菜品
		--特色
		insert into productInfo values ('酸辣肥肠','img/2_3.jpg','11','3','2','1')
		insert into productInfo values ('二逼手撕鸭','img/2_4.jpg','14','3','2','1')
		--炒菜
		insert into productInfo values ('四季豆','','10','3','2','2')
		insert into productInfo values ('武昌鱼','','12','3','2','2')
		insert into productInfo values ('农家炒腊肉','','13','3','2','2')
		insert into productInfo values ('鱼香肉丝','','12','3','2','2')
		insert into productInfo values ('油淋茄子','','10','3','2','2')
		insert into productInfo values ('四季豆','','10','3','2','2')
		insert into productInfo values ('武昌鱼','','12','3','2','2')
		insert into productInfo values ('农家炒腊肉','','13','3','2','2')
		insert into productInfo values ('鱼香肉丝','','12','3','2','2')
		insert into productInfo values ('油淋茄子','','10','3','2','2')
		--盖浇饭
		insert into productInfo values ('青椒炒蛋盖饭','','9','4','2','2')
		insert into productInfo values ('肉末茄子盖饭','','9','4','2','2')
		insert into productInfo values ('酸辣土豆丝盖饭','','8','4','2','2')
		insert into productInfo values ('回锅肉盖饭','','9','4','2','2')
		insert into productInfo values ('黄瓜炒火腿盖饭','','8','4','2','2')
		insert into productInfo values ('青椒炒蛋盖饭','','9','4','2','2')
		insert into productInfo values ('肉末茄子盖饭','','9','4','2','2')
		insert into productInfo values ('酸辣土豆丝盖饭','','8','4','2','2')
		insert into productInfo values ('回锅肉盖饭','','9','4','2','2')
		insert into productInfo values ('黄瓜炒火腿盖饭','','8','4','2','2')
	--姐妹卤肉饭菜品
		--特色
		insert into productInfo values ('卤肉饭','img/2_5.jpg','12','5','3','1')
		insert into productInfo values ('鸭腿饭','img/2_6.jpg','13','5','3','1')
		--卤肉饭
		insert into productInfo values ('大排饭','','13','5','3','2')
		insert into productInfo values ('牛腩饭','','13','5','3','2')
		insert into productInfo values ('猪手饭','','13','5','3','2')
		insert into productInfo values ('火腿饭','','10','5','3','2')
		insert into productInfo values ('鸡腿饭','','11','5','3','2')
		--烤肉饭
		insert into productInfo values ('烧鸡块米饭','','10','6','3','2')
		insert into productInfo values ('糍粑鱼加烤肉饭','','10','6','3','2')
		insert into productInfo values ('凉拌肉皮加烤肉饭','','10','6','3','2')
		insert into productInfo values ('凉拌顺风加烤肉饭','','10','6','3','2')
		insert into productInfo values ('凉拌里脊肉加烤肉饭','','10','6','3','2')
		
create table OrderInfo --订单表
(
	orderID int primary key identity(1,1),
	orderUserId varchar(50),--下单人
	orderTime datetime,--下单时间
	orderContent varchar(500),--所点菜品(存放菜品ID)
	acceptTime datetime,--店家接单时间
	--userEvaluate varchar(50),--用户评价
	expressUser varchar(50),--送货人员（直接填写姓名）
	expressTel varchar(50),--送货人电话
	storeID int,--店铺ID
	countPrice money,--应付金额
)


select * from userinfo --用户表
select * from usersongcaninfo --用户送餐信息表
select * from StoreInfo order by saleNum desc --店铺表
select * from StoreInfo where storeName like  '%星%' --店铺表
select * from TypeInfo --菜品类型表
select * from productInfo --菜品表
select * from OrderInfo --订单表
select OrderInfo.orderContent,orderTime,acceptTime,expressTel,StoreInfo.storeName,OrderInfo.countPrice  from OrderInfo left join StoreInfo on OrderInfo.storeID=StoreInfo.id where orderUserId='admin'