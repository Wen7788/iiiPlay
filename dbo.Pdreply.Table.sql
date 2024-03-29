USE [GameDB]
GO
/****** Object:  Table [dbo].[Pdreply]    Script Date: 2020/6/9 下午 07:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pdreply](
	[replyId] [int] IDENTITY(1,1) NOT NULL,
	[detail] [varchar](255) NULL,
	[id] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[pdId] [int] NULL,
	[replyDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[replyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pdreply] ON 

INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES ( N'棒', N'host520', N'景翔', 2, CAST(N'2020-05-30T20:05:09.5400000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES ( N'嗨', N'host520', N'Zihao Fu', 1, CAST(N'2020-05-30T20:38:53.8240000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES ( N'帥喔', N'host520', N'Zihao Fu', 2, CAST(N'2020-05-30T20:47:28.3010000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES ( N'這滑鼠真好用', N'lebron23', N'詹姆斯', 3, CAST(N'2020-05-31T14:24:45.6670000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES (N'牛肉麵真好吃', N'lebron23', N'阿豪', 9, CAST(N'2020-06-04T16:56:36.2480000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES (N'我好醜', N'lebron23', N'karbe', 9, CAST(N'2020-06-05T00:18:04.1880000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES (N'666', N'lebron23', N'詹姆斯', 5, CAST(N'2020-06-05T09:29:36.5400000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES (N'這滑鼠真好用', N'lebron23', N'詹姆斯', 1, CAST(N'2020-06-09T16:34:09.7280000' AS DateTime2))
INSERT [dbo].[Pdreply] ( [detail], [id], [name], [pdId], [replyDate]) VALUES (N'cp質高,感謝賣家', N'lebron23', N'詹姆斯', 2, CAST(N'2020-06-09T16:35:05.1350000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Pdreply] OFF
