use master
go
if exists(select * from sysdatabases where name='kaneki')
	drop database kaneki
go
create database kaneki
go
use kaneki
go


create table userinfo --�û���
(
	id int primary key identity(1,1),
	uiid varchar(50),--�˻�
	uipwd varchar(50),--����
)
--select userinfo.uiid,uipwd,usersongcaninfo.usname,usdizhi,ustel from userinfo left join usersongcaninfo on userinfo.id=usersongcaninfo.usid where uiid='admin'

insert into userinfo values('admin','admin')
create table usersongcaninfo --�û��Ͳ���Ϣ��
(
	id int primary key identity(1,1),
	usname varchar(50), --����
	usdizhi varchar(50), --��ַ
	ustel varchar(50), --�绰
	usid int,--����������û���������
)
insert into usersongcaninfo values('ΰ��ĳԻ�','����-419','1000',1)

select userinfo.uiid,usersongcaninfo.usname,userinfo.uipwd,usersongcaninfo.usdizhi,ustel from userinfo  left join usersongcaninfo on userinfo.id=usersongcaninfo.usid 
create table AddressInfo
(
    id int identity(1,1),
	Addr varchar(50),
	AddrNearby varchar(50) 
)
insert into AddressInfo values ('��Ͽְҵ����ѧԺ','�˲�������������·��ʳ��')
insert into AddressInfo values ('��Ͽְҵ����ѧԺ','�˲�������������·��Ħ�㳡')
insert into AddressInfo values ('��Ͽְҵ����ѧԺ','�˲�������ʤ����·')
create table StoreInfo --���̱�
(
	id int primary key identity(1,1),
	storeName varchar(50),--������
	storeImg varchar(50),--����ͼƬ
	storeMemo varchar (50),--���̼��
	storeTel varchar(50),--�绰
	storeAddress varchar(50),--���̵�ַ
	foodtime int,--�Ͳ�ʱ��
	saleNum int, --����
	evaluation int --����(����+1)
)
select * from StoreInfo
--��ӵ�����Ϣ
insert into StoreInfo values ('С�ɹ�','img/1_1.jpg','��������','15897588684','�˲�������������·��ʳ��С�ɹ�',31,500,64)
insert into StoreInfo values ('�ֵܷ���','img/1_2.jpg','��ζ�Ƿ�','13897587684','�˲�������������·��ʳ���ֵܷ���',32,1000,200)
insert into StoreInfo values ('����±�ⷹ','img/1_3.jpg','±��±�����','15847698523','�˲�������������·��ʳ�ǽ���±�ⷹ',33,600,65)
insert into StoreInfo values ('���ϼҳ���','img/1_4.jpg','��ˬͣ������','17868599854','�˲�������������·��ʳ�Ǻ��ϼҳ���',34,180,81)
insert into StoreInfo values ('�м䷹��','img/1_5.jpg','����Ӧ�о���','146325897456','�˲�������������·��ʳ���м䷹��',35,500,36)
insert into StoreInfo values ('��ɫ���巹','img/1_6.jpg','�����ɣ�������','13254869875','�˲�������������·��Ħ�㳡��ɫ���巹',36,650,65)
insert into StoreInfo values ('���˼��׷�','img/1_7.jpg','��ˮ����','17568944585','�˲�������������·��Ħ�㳡���˼��׷�',37,377,25)
insert into StoreInfo values ('������','img/1_8.jpg','������!��!���������~','15648769548','�˲�������������·��Ħ�㳡������',38,260,95)
insert into StoreInfo values ('���з�','img/1_9.jpg','���ɿڣ��ɴ��ˣ�','13158459568','�˲�������������·��Ħ�㳡',54,854,64)
insert into StoreInfo values ('����ľͰ��','img/1_10.jpg','����ľͰ�����Ϻó��ˣ�','14658597845','�˲�������������·��Ħ�㳡����ľͰ��',40,230,52)
insert into StoreInfo values ('���켦����','img/1_11.jpg','�������ŮƱһ�������ɣ�','15897588684','�˲�������������·��Ħ�㳡���켦����',42,136,35)
insert into StoreInfo values ('�ϵط�','img/1_12.jpg','������ʵ��','16548798746','�˲�������ʤ����·�ϵط�',33,485,68)
insert into StoreInfo values ('������ͷ','img/1_13.jpg','ŨŨ���㣬����ס����','18895964785','�˲�������ʤ����·������ͷ',35,462,66)
insert into StoreInfo values ('ɳ�й���','img/1_14.jpg','����С�ԣ�����ͯ��','18769584525','�˲�������ʤ����·ɳ�й���',30,658,20)
insert into StoreInfo values ('�ǰͿ�','img/1_15.jpg','��һ���~','15796485258','�˲�������ʤ����·�ǰͿ�',43,356,98)

create table TypeInfo --��Ʒ���ͱ�
(
	TypeId int primary key identity(1,1),
	TypeName varchar(50),--��Ʒ������
)

--��Ӳ�Ʒ����
insert into TypeInfo values ('С�ɹ���')
insert into TypeInfo values ('����')
insert into TypeInfo values ('����')
insert into TypeInfo values ('�ǽ���')
insert into TypeInfo values ('±�ⷹ')
insert into TypeInfo values ('���ⷹ')

create table productInfo --��Ʒ��
(
	productID int primary key identity(1,1),
	productName varchar(50),--����
	productImg varchar(50),--��ƷͼƬ
	productPrice money,--��Ʒ�۸�
	productType varchar(50),--��Ʒ����
	storeId int,--��Ʒ����
	productMemo varchar(50),--��Ʒ��ע��1=��ɫ�ˣ�2=��ͨ�ˣ�
)
--��Ӳ�Ʒ��Ϣ
	--С�ɹ���Ʒ
		--��ɫ
		insert into productInfo values ('Ϻ���','img/2_1.jpg','8','1','1','1')
		insert into productInfo values ('��������','img/2_2.jpg','7','2','1','1')
		--С�ɹ���
		insert into productInfo values ('�ز˹�','','7','1','1','2')
		insert into productInfo values ('��Ѫ��','','8','1','1','2')
		insert into productInfo values ('з�Ź�','','8','1','1','2')
		insert into productInfo values ('ţ���','','9','1','1','2')
		insert into productInfo values ('źƬ��','','8','1','1','2')
		--����
		insert into productInfo values ('��������','','6','2','1','2')
		insert into productInfo values ('��������','','6','2','1','2')
		insert into productInfo values ('��������','','6','2','1','2')
		insert into productInfo values ('ǧҶ��������','','7','2','1','2')
		insert into productInfo values ('�������','','6','2','1','2')

	--�ֵܷ��ݲ�Ʒ
		--��ɫ
		insert into productInfo values ('�����ʳ�','img/2_3.jpg','11','3','2','1')
		insert into productInfo values ('������˺Ѽ','img/2_4.jpg','14','3','2','1')
		--����
		insert into productInfo values ('�ļ���','','10','3','2','2')
		insert into productInfo values ('�����','','12','3','2','2')
		insert into productInfo values ('ũ�ҳ�����','','13','3','2','2')
		insert into productInfo values ('������˿','','12','3','2','2')
		insert into productInfo values ('��������','','10','3','2','2')
		insert into productInfo values ('�ļ���','','10','3','2','2')
		insert into productInfo values ('�����','','12','3','2','2')
		insert into productInfo values ('ũ�ҳ�����','','13','3','2','2')
		insert into productInfo values ('������˿','','12','3','2','2')
		insert into productInfo values ('��������','','10','3','2','2')
		--�ǽ���
		insert into productInfo values ('�ཷ�����Ƿ�','','9','4','2','2')
		insert into productInfo values ('��ĩ���ӸǷ�','','9','4','2','2')
		insert into productInfo values ('��������˿�Ƿ�','','8','4','2','2')
		insert into productInfo values ('�ع���Ƿ�','','9','4','2','2')
		insert into productInfo values ('�ƹϳ����ȸǷ�','','8','4','2','2')
		insert into productInfo values ('�ཷ�����Ƿ�','','9','4','2','2')
		insert into productInfo values ('��ĩ���ӸǷ�','','9','4','2','2')
		insert into productInfo values ('��������˿�Ƿ�','','8','4','2','2')
		insert into productInfo values ('�ع���Ƿ�','','9','4','2','2')
		insert into productInfo values ('�ƹϳ����ȸǷ�','','8','4','2','2')
	--����±�ⷹ��Ʒ
		--��ɫ
		insert into productInfo values ('±�ⷹ','img/2_5.jpg','12','5','3','1')
		insert into productInfo values ('Ѽ�ȷ�','img/2_6.jpg','13','5','3','1')
		--±�ⷹ
		insert into productInfo values ('���ŷ�','','13','5','3','2')
		insert into productInfo values ('ţ�','','13','5','3','2')
		insert into productInfo values ('���ַ�','','13','5','3','2')
		insert into productInfo values ('���ȷ�','','10','5','3','2')
		insert into productInfo values ('���ȷ�','','11','5','3','2')
		--���ⷹ
		insert into productInfo values ('�ռ����׷�','','10','6','3','2')
		insert into productInfo values ('������ӿ��ⷹ','','10','6','3','2')
		insert into productInfo values ('������Ƥ�ӿ��ⷹ','','10','6','3','2')
		insert into productInfo values ('����˳��ӿ��ⷹ','','10','6','3','2')
		insert into productInfo values ('�����Ｙ��ӿ��ⷹ','','10','6','3','2')
		
create table OrderInfo --������
(
	orderID int primary key identity(1,1),
	orderUserId varchar(50),--�µ���
	orderTime datetime,--�µ�ʱ��
	orderContent varchar(500),--�����Ʒ(��Ų�ƷID)
	acceptTime datetime,--��ҽӵ�ʱ��
	--userEvaluate varchar(50),--�û�����
	expressUser varchar(50),--�ͻ���Ա��ֱ����д������
	expressTel varchar(50),--�ͻ��˵绰
	storeID int,--����ID
	countPrice money,--Ӧ�����
)


select * from userinfo --�û���
select * from usersongcaninfo --�û��Ͳ���Ϣ��
select * from StoreInfo order by saleNum desc --���̱�
select * from StoreInfo where storeName like  '%��%' --���̱�
select * from TypeInfo --��Ʒ���ͱ�
select * from productInfo --��Ʒ��
select * from OrderInfo --������
select OrderInfo.orderContent,orderTime,acceptTime,expressTel,StoreInfo.storeName,OrderInfo.countPrice  from OrderInfo left join StoreInfo on OrderInfo.storeID=StoreInfo.id where orderUserId='admin'