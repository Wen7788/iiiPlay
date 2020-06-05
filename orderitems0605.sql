USE [Gamedb]
GO
/****** Object:  Table [dbo].[orderitem]    Script Date: 2020/6/5 下午 03:13:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderitem](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[pdId] [int] NULL,
	[quantity] [int] NULL,
	[total] [int] NULL,
	[FK_orderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orderitem] ON 

INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (3, 2, 6980, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 2, 2980, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (3, 1, 3490, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (1, 1, 3490, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1007)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1008)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1009)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1010)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1011)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 1, 3490, 1012)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1014)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1015)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1017)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1020)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1021)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1022)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1023)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1024)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1025)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 2, 2980, 1026)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1027)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1029)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 1, 3490, 1030)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1030)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1031)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1033)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1034)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 2, 6980, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 2, 2980, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 2, 6980, 1035)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1036)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1036)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1036)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1037)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1037)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1038)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1038)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1038)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1038)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1039)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1039)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1039)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1039)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1040)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1040)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1040)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1040)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1041)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1041)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1041)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1041)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 1, 3490, 1042)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1042)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1042)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1042)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1043)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1043)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1043)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1043)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1044)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1044)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1044)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1044)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 11, 1, 2999, 1045)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1045)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1045)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1045)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 11, 1, 2999, 1046)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 10, 1, 1150, 1046)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1046)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1046)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 15, 1, 690, 1047)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 11, 1, 2999, 1047)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1047)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 12, 1, 3690, 1047)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 17, 1, 4990, 1048)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 16, 1, 1090, 1048)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1048)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1048)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 16, 1, 1090, 1049)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 18, 1, 4290, 1049)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1049)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1049)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 20, 1, 1890, 1050)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 12, 1, 3690, 1050)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1050)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1050)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1051)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1051)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1051)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1052)
GO
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 15, 1, 690, 1052)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 17, 1, 4990, 1052)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1052)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 16, 1, 1090, 1053)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 20, 1, 1890, 1054)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1055)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1056)
SET IDENTITY_INSERT [dbo].[orderitem] OFF
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKkc4aycgt9fj588gq6x9k9ani3] FOREIGN KEY([pdId])
REFERENCES [dbo].[Products] ([pdId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKkc4aycgt9fj588gq6x9k9ani3]
GO
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws] FOREIGN KEY([FK_orderId])
REFERENCES [dbo].[orders] ([orderId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws]
GO
