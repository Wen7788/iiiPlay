USE [GameDB]
GO
/****** Object:  Table [dbo].[pdcollect]    Script Date: 2020/6/9 下午 07:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pdcollect](
	[colId] [int] IDENTITY(1,1) NOT NULL,
	[coldate] [datetime2](7) NULL,
	[mId] [int] NULL,
	[pdId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[colId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pdcollect] ON 

INSERT [dbo].[pdcollect] ( [coldate], [mId], [pdId]) VALUES ( CAST(N'2020-06-09T17:12:10.2890000' AS DateTime2), 2, 1)
INSERT [dbo].[pdcollect] ( [coldate], [mId], [pdId]) VALUES ( CAST(N'2020-06-09T17:12:12.2080000' AS DateTime2), 2, 2)
INSERT [dbo].[pdcollect] ( [coldate], [mId], [pdId]) VALUES ( CAST(N'2020-06-09T17:17:23.9990000' AS DateTime2), 2, 9)
SET IDENTITY_INSERT [dbo].[pdcollect] OFF
ALTER TABLE [dbo].[pdcollect]  WITH CHECK ADD  CONSTRAINT [FK8uwgu4xoperoheeipx3j6hrmk] FOREIGN KEY([pdId])
REFERENCES [dbo].[products] ([pdId])
GO
ALTER TABLE [dbo].[pdcollect] CHECK CONSTRAINT [FK8uwgu4xoperoheeipx3j6hrmk]
GO
ALTER TABLE [dbo].[pdcollect]  WITH CHECK ADD  CONSTRAINT [FKc698nee6uhfjko2qwodho16be] FOREIGN KEY([mId])
REFERENCES [dbo].[MemberTest] ([pk])
GO
ALTER TABLE [dbo].[pdcollect] CHECK CONSTRAINT [FKc698nee6uhfjko2qwodho16be]
GO
