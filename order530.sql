USE [GameDB]
GO
/****** Object:  Table [dbo].[orderitem]    Script Date: 2020/5/30 下午 02:04:00 ******/
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
 CONSTRAINT [PK__orderite__56A128AADBEFFE92] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2020/5/30 下午 02:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderId] [int] IDENTITY(1001,1) NOT NULL,
	[email] [varchar](255) NULL,
	[id] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[orderDate] [datetime2](7) NULL,
	[phone] [varchar](255) NULL,
	[shippingAddress] [varchar](255) NULL,
	[state] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK__orders__0809335DE537DB14] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orderitem] ON 

INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (2, 2, 2980, 1)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (6, 1, 3590, 1001)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (1, 1, 3490, 1002)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (3, 1, 3490, 1003)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (8, 1, 899, 1004)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (5, 2, 8400, 1004)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (2, 1, 1490, 1005)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (10, 1, 1150, 1006)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (9, 1, 850, 1007)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (13, 1, 790, 1007)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (11, 1, 2999, 1008)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (1, 1, 3490, 1009)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (3, 1, 3490, 1009)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (1, 1, 3490, 1010)
INSERT [dbo].[orderitem] ([pdId], [quantity], [total], [FK_orderId]) VALUES (3, 1, 3490, 1010)
SET IDENTITY_INSERT [dbo].[orderitem] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'futommy0228366023abc@yahoo.com.tw', N'tommy', N'Zihao Fu', CAST(N'2020-05-29T23:08:32.9850000' AS DateTime2), N'123', N'台北市士林區忠義街68號', 1, 2980)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'aaaaaaa', N'tommy', N'Zihao Fu', CAST(N'2020-05-29T23:12:22.0370000' AS DateTime2), N'123', N'台北市士林區忠義街68號', 1, 3590)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'futommy0228366023abc@yahoo.com.tw', N'tommy', N'Zihao Fu', CAST(N'2020-05-29T23:33:04.4310000' AS DateTime2), N'03665', N'台北市士林區忠義街68號', 1, 3490)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'18888', N'tommy', N'Zihao Fu', CAST(N'2020-05-29T23:38:33.4350000' AS DateTime2), N'123', N'台北市士林區忠義街68號', 1, 3490)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'sssss', N'tommy', N'阿豪', CAST(N'2020-05-29T23:46:14.3950000' AS DateTime2), N'03665', N'台北市士林區忠義街68號', 1, 9299)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'futommy0228366023abc@gmail.com', N'tommy', N'阿吉', CAST(N'2020-05-30T00:14:33.1370000' AS DateTime2), N'123', N'大單', 1, 1490)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'hang@123', N'tommy', N'阿寶', CAST(N'2020-05-30T00:41:05.6550000' AS DateTime2), N'0958815228', N'龍潭樂', 1, 1150)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'Haozfz@gmail.com', N'fuzhaoz', N'豪Z', CAST(N'2020-05-30T01:22:00.4950000' AS DateTime2), N'0228366023', N'台北市士林區忠義街68號', 1, 1640)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'sssss', N'tommy', N'阿文', CAST(N'2020-05-30T13:06:31.6280000' AS DateTime2), N'0958778966', N'台南', 1, 2999)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'futommy0228366023abc@gmail.com', N'host520', N'景翔', CAST(N'2020-05-30T13:42:33.2920000' AS DateTime2), N'0228350356', N'台北市士林區忠義街68號', 1, 6980)
INSERT [dbo].[orders] ([email], [id], [name], [orderDate], [phone], [shippingAddress], [state], [total]) VALUES (N'futommy0228366023abc@gmail.com', N'host520', N'文豪', CAST(N'2020-05-30T13:58:39.4870000' AS DateTime2), N'0931245687', N'大安', 1, 6980)
SET IDENTITY_INSERT [dbo].[orders] OFF
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
