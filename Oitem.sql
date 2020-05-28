USE [GameDB]
GO
/****** Object:  Table [dbo].[orderitem]    Script Date: 2020/5/28 下午 08:00:44 ******/
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

INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (1, 1, 1, 3490, 4)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (2, 4, 1, 4000, 5)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (3, 21, 1, 1290, 6)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (4, 6, 1, 3590, 6)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (5, 1, 1, 3490, 6)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (6, 5, 3, 12600, 6)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (7, 2, 1, 1490, 7)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (8, 9, 1, 850, 8)
INSERT [dbo].[orderitem] ([itemId], [pdId], [quantity], [total], [FK_orderId]) VALUES (9, 8, 1, 899, 8)
SET IDENTITY_INSERT [dbo].[orderitem] OFF
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws] FOREIGN KEY([FK_orderId])
REFERENCES [dbo].[orders] ([orderId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKnp6ynu1ltngvupcu09i2y38ws]
GO
