USE [GameDB]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2020/6/10 上午 09:55:04 ******/
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

INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 11979, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-01-09T10:40:53.580' AS DateTime), N'2', CAST(N'2020-06-09T16:26:14.9610000' AS DateTime2))
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 10179, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-02-09T10:41:51.167' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 12179, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-03-09T10:42:17.287' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 14270, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-04-09T10:42:46.247' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 13380, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-05-09T10:44:34.920' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 9539, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:44:59.863' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 13140, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:45:27.233' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 9240, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:45:59.320' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 8629, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:46:25.417' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 9360, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:46:56.103' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 19650, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:47:46.453' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 18670, N'台北市大安區復興南路一段390號2樓', N'test@gmail.com', N'0911123456', CAST(N'2020-06-09T10:48:27.767' AS DateTime), N'1', NULL)
INSERT [dbo].[orders] ( [id], [name], [total], [shippingAddress], [email], [phone], [orderDate], [state], [payDate]) VALUES ( N'harden13', N'哈登', 10609, N'士林', N'test@gmail.com', N'0212345678', CAST(N'2020-02-10T09:50:09.700' AS DateTime), N'1', NULL)
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
