USE [Gamedb]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2020/6/5 下午 03:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderId] [int] IDENTITY(1001,1) NOT NULL,
	[id] [varchar](255) NULL,
	[name] [varchar](10) NULL,
	[total] [int] NULL,
	[shippingAddress] [varchar](40) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[orderDate] [datetime] NULL,
	[state] [varchar](11) NULL,
	[payDate] [datetime2](7) NULL,
 CONSTRAINT [PK__orders__0809335D55836ABB] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 9960, N'台北', N'jerryelitebio@gmail.com', N'0909123456', CAST(N'2020-05-29T15:06:50.380' AS DateTime), N'2', CAST(N'2020-06-04T15:17:06.7140000' AS DateTime2))
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 4980, N'', N'', N'', CAST(N'2020-05-29T15:07:28.787' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 0, N'台北', N'jerryelitebio@gmail.com', N'0909123456', CAST(N'2020-05-29T15:07:37.317' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 4980, N'', N'', N'', CAST(N'2020-05-30T16:18:22.957' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-30T16:57:30.280' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-30T17:09:36.307' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-30T17:13:23.553' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-30T17:23:42.033' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-30T17:29:31.277' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 3490, N'', N'', N'', CAST(N'2020-05-30T17:32:39.550' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8980, N'', N'', N'', CAST(N'2020-05-30T17:35:16.337' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T10:46:55.797' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 1490, N'台北', N'jerryelitebio@gmail.com', N'0909123456', CAST(N'2020-05-31T11:10:28.497' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 0, N'台北', N'jerryelitebio@gmail.com', N'0909123456', CAST(N'2020-05-31T11:11:55.133' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 1490, N'台北', N'jerryelitebio@gmail.com', N'0909678568', CAST(N'2020-05-31T11:17:42.793' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 0, N'台北', N'jerryelitebio@gmail.com', N'0909678568', CAST(N'2020-05-31T11:20:53.177' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'z04', 0, N'台北', N'jerryelitebio@gmail.com', N'0909678568', CAST(N'2020-05-31T11:21:58.947' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'z04', 4200, N'台北', N'jerryelitebio@gmail.com', N'0909123456', CAST(N'2020-05-31T11:22:21.977' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'王', 3590, N'台北', N'jerryelitebio@gmail.com', N'0909678568', CAST(N'2020-05-31T11:24:15.340' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T11:27:17.043' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T11:29:59.133' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 3490, N'', N'', N'', CAST(N'2020-05-31T11:35:42.677' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T11:36:43.757' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 2980, N'', N'', N'', CAST(N'2020-05-31T11:38:19.543' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T17:01:53.973' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 0, N'', N'', N'', CAST(N'2020-05-31T17:02:06.677' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 3490, N'', N'', N'', CAST(N'2020-05-31T17:02:23.190' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 4980, N'', N'', N'', CAST(N'2020-05-31T17:03:15.417' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T20:42:28.537' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 0, N'', N'', N'', CAST(N'2020-05-31T20:45:54.220' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-05-31T20:46:11.520' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 3490, N'', N'', N'', CAST(N'2020-05-31T20:48:15.303' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 28730, N'', N'', N'', CAST(N'2020-06-01T15:01:42.437' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8589, N'', N'', N'', CAST(N'2020-06-02T17:20:43.803' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'female', N'', 4980, N'', N'', N'', CAST(N'2020-06-02T19:58:20.480' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 10179, N'', N'', N'', CAST(N'2020-06-03T11:51:32.403' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 11979, N'', N'', N'', CAST(N'2020-01-03T13:47:38.420' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 12470, N'', N'', N'', CAST(N'2020-02-03T13:48:15.510' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 13180, N'', N'', N'', CAST(N'2020-03-03T13:48:40.677' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 13180, N'', N'', N'', CAST(N'2020-04-03T13:49:07.387' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 9780, N'', N'', N'', CAST(N'2020-05-03T13:49:35.993' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 9539, N'', N'', N'', CAST(N'2020-06-03T13:49:56.877' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 10738, N'', N'', N'', CAST(N'2020-07-03T13:51:44.450' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 6929, N'', N'', N'', CAST(N'2020-08-03T13:52:06.020' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8169, N'', N'', N'', CAST(N'2020-09-03T13:52:33.923' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8970, N'', N'', N'', CAST(N'2020-10-03T13:52:57.877' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8660, N'', N'', N'', CAST(N'2020-11-03T13:54:57.793' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 13270, N'', N'', N'', CAST(N'2020-12-03T13:55:13.213' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 10430, N'', N'', N'', CAST(N'2020-10-03T16:30:14.683' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 8960, N'', N'', N'', CAST(N'2020-01-03T16:55:44.657' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1090, N'', N'', N'', CAST(N'2020-07-03T16:58:04.390' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1890, N'', N'', N'', CAST(N'2020-06-03T16:58:16.927' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1290, N'', N'', N'', CAST(N'2020-11-03T16:58:29.340' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ([id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES (N'host520', N'', 1490, N'', N'', N'', CAST(N'2020-06-04T10:06:03.937' AS DateTime), N'1', NULL)
SET IDENTITY_INSERT [dbo].[orders] OFF
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__id__17F790F9]  DEFAULT (NULL) FOR [id]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__name__18EBB532]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__shipping__19DFD96B]  DEFAULT (NULL) FOR [shippingAddress]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__email__1AD3FDA4]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__phone__1BC821DD]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__orderDat__1CBC4616]  DEFAULT (NULL) FOR [orderDate]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__state__1DB06A4F]  DEFAULT (NULL) FOR [state]
GO
