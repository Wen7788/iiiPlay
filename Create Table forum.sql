use GameDB
go

if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Board')
    drop table Board;
go

Create Table Board(
	boardid int primary key not null identity(1,1),
	boardname nvarchar(40),
	boardimg image,
	imgname varchar(20),
	[status] int
)
go





if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Article')
    drop table Article;
go

Create Table Article(
	articleid int primary key not null identity(1000,1),
	title nvarchar(60),
	[name] nvarchar(50),
	category nvarchar(10),
	detail nvarchar(1000),
	publishtime datetime,
	[status] int,
	boardid int
)
go

if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'MemberTest')
    drop table MemberTest;
go

Create Table [dbo].[MemberTest](
	[pk] [int] primary key IDENTITY(1,1) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[games] [nvarchar](255) NULL,
	[age] [int] NULL,
	[status] [int] NULL,
)
GO

INSERT [dbo].[MemberTest] ([id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'tommy654', N'a123456', N'許景翔', N'ericeric406@hotmail.com', N'male', N'LOL,PUBG,CSGO', 23, NULL)
INSERT [dbo].[MemberTest] ([id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'girl1234', N'a123456', N'許景翔', N'ericeric406@hotmail.com', N'male', N'LOL', 18, NULL)
INSERT [dbo].[MemberTest] ( [id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'apple123', N'123456', N'許景翔', N'ericeric406@hotmail.com', N'male', N'LOL', 18, NULL)
INSERT [dbo].[MemberTest] ( [id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'host113', N'test517', N'管理者', N'ericeric406@hotmail.com', N'male', N'LOL,PUBG', 25, 2)
INSERT [dbo].[MemberTest] ( [id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'lin23', N'uHx03waTn1', N'子豪哥', N'ericeric4062@gmail.com', N'male', N'LOL,PUBG,CSGO', 25, 1)
INSERT [dbo].[MemberTest] ( [id], [password], [name], [email], [gender], [games], [age], [status]) VALUES (N'test456', N'123456', N'測試', N'happy@gmail.com', N'male', N'LOL,PUBG', 25, 1)
SET IDENTITY_INSERT [dbo].[MemberTest] OFF
Go

if exists (select * from INFORMATION_SCHEMA.VIEWS where TABLE_NAME = 'BoardListView')
    drop view BoardListView;
go

create view BoardListView as 
  select b.*, (CASE WHEN bc.boardClickSum IS NULL THEN 0 ELSE bc.boardClickSum END) as boardclick
  from Board as b
  left join (select boardid, sum(clicksum) boardClickSum from ArticleListView group by boardid) as bc
  on b.boardid = bc.boardid
  go

if exists (select * from INFORMATION_SCHEMA.VIEWS where TABLE_NAME = 'ArticleListView')
    drop view ArticleListView;
go

create view ArticleListView as 
select m.id, a.name, a.articleid, a.category, a.title,a.detail, a.publishtime, a.boardid, b.boardname, a.status, (CASE WHEN rn.replynum IS NULL THEN 0 ELSE rn.replynum END) as replycount,(CASE WHEN cs.clicksum IS NULL THEN 0 ELSE cs.clicksum END) as clicksum
from Article as a
left join Board as b 
on a.boardid = b.boardid
left join MemberTest as m
on a.name = m.name
left join (SELECT articleid, count(*) replynum from reply group by articleid) as rn
on a.articleid = rn.articleid
left join (select articleid, SUM([count]) clicksum from Click group by articleid) as cs
on a.articleid = cs.articleid
GO

if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Reply')
    drop table Reply;
go

create table Reply(
	replyid int primary key not null identity(1000,1),
	[name] nvarchar(50),
	articleid int,
	replydetail nvarchar(1000),
	replytime datetime
)
go


if exists (select * from INFORMATION_SCHEMA.VIEWS where TABLE_NAME = 'ReplyListView')
    drop view ReplyListView;
go


create view ReplyListView as 
select m.id, r.name, a.articleid, a.title, r.replyid, r.replydetail, r.replytime
from Reply as r
left join Article as a
on r.articleid = a.articleid
left join MemberTest as m
on r.name = m.name

go


if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Game')
    drop table Game;
go

create table Game(
	gameid int primary key identity(1000,1),
	gamename varchar(50),
	gametype varchar(20),
)

go

insert  into  Game (gamename, gametype) values ('英雄聯盟', 'MOBA')
insert  into  Game (gamename, gametype) values ('絕地求生', 'BRG')
insert  into  Game (gamename, gametype) values ('傳說對決', 'MOBA')
insert  into  Game (gamename, gametype) values ('鬥陣特攻', 'FPS')
insert  into  Game (gamename, gametype) values ('楓之谷', 'RPG')
insert  into  Game (gamename, gametype) values ('動物森友會','SLG')
insert  into  Game (gamename, gametype) values ('爆爆王', 'ACT')
insert  into  Game (gamename, gametype) values ('魔獸世界', 'RPG')
insert  into  Game (gamename, gametype) values ('黎明死線', 'SVG')
insert  into  Game (gamename, gametype) values ('皇室戰爭', 'STG')

if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Click')
    drop table Click;
go

create table Click(
	clickid int primary key identity(1,1),
	articleid int,
	[count] int,
	createtime datetime,
	updatetime datetime,
	recorddate date,
)

go
