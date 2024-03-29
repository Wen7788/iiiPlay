USE [GameDB]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 2020/6/9 下午 07:38:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[replyid] [int] IDENTITY(1000,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[articleid] [int] NULL,
	[replydetail] [nvarchar](1000) NULL,
	[replytime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[replyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reply] ON 

INSERT [dbo].[Reply] ([replyid], [name], [articleid], [replydetail], [replytime]) VALUES (1001, N'詹姆斯', 1011, N'<p>hi</p>
', CAST(N'2020-06-02T12:44:15.923' AS DateTime))
INSERT [dbo].[Reply] ([replyid], [name], [articleid], [replydetail], [replytime]) VALUES (1002, N'史奴比', 1000, N'<p>阿哉哉哉</p>
', CAST(N'2020-06-02T15:38:25.803' AS DateTime))
INSERT [dbo].[Reply] ([replyid], [name], [articleid], [replydetail], [replytime]) VALUES (1003, N'史奴比', 1007, N'<p>6666666666666666666</p>
', CAST(N'2020-06-09T15:09:03.657' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reply] OFF
