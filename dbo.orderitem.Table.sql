USE [GameDB]
GO
/****** Object:  Table [dbo].[orderitem]    Script Date: 2020/6/10 上午 09:55:04 ******/
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

INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 1, 3490, 1001)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1001)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1001)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1001)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 2, 1, 1490, 1002)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1002)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1002)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1002)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1003)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 1, 3490, 1004)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1005)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1005)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1005)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1005)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 6, 1, 3590, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 8, 1, 899, 1006)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1007)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1007)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1007)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1007)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1008)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 14, 1, 2100, 1008)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 10, 1, 1150, 1008)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 4, 1, 4000, 1008)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 10, 1, 1150, 1009)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 12, 1, 3690, 1009)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 11, 1, 2999, 1009)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 13, 1, 790, 1009)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1010)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 16, 1, 1090, 1010)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 17, 1, 4990, 1010)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 19, 1, 1990, 1010)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 12, 1, 3690, 1011)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 1, 3, 10470, 1011)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1011)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1011)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 5, 1, 4200, 1012)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 7, 1, 5990, 1012)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 3, 1, 3490, 1012)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 17, 1, 4990, 1012)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 21, 1, 1290, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 16, 1, 1090, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 9, 1, 850, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 12, 1, 3690, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 11, 1, 2999, 1013)
INSERT [dbo].[orderitem] ( [pdId], [quantity], [total], [FK_orderId]) VALUES ( 15, 1, 690, 1013)
SET IDENTITY_INSERT [dbo].[orderitem] OFF
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKdnqkbwhi45jav8j5ddp1s4c93] FOREIGN KEY([pdId])
REFERENCES [dbo].[products] ([pdId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKdnqkbwhi45jav8j5ddp1s4c93]
GO
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws] FOREIGN KEY([FK_orderId])
REFERENCES [dbo].[orders] ([orderId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws]
GO
