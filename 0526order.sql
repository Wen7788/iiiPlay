USE [GameDB]
GO
/****** Object:  Table [dbo].[orderitem]    Script Date: 2020/5/26 上午 09:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderitem](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[pdId] [int] NOT NULL,
	[orderId] [int] NULL,
	[quantity] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_orderitem] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2020/5/26 上午 09:37:49 ******/
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
 CONSTRAINT [PK__orders__0809335D55836ABB] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[orderitem] ADD  CONSTRAINT [DF__orderitem__pdId__4B7734FF]  DEFAULT (NULL) FOR [pdId]
GO
ALTER TABLE [dbo].[orderitem] ADD  CONSTRAINT [DF__orderitem__order__4C6B5938]  DEFAULT (NULL) FOR [orderId]
GO
ALTER TABLE [dbo].[orderitem] ADD  CONSTRAINT [DF__orderitem__quant__4D5F7D71]  DEFAULT (NULL) FOR [quantity]
GO
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
ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD  CONSTRAINT [FKphj1dc73qs6kjqvuj8h6chdil] FOREIGN KEY([orderId])
REFERENCES [dbo].[orders] ([orderId])
GO
ALTER TABLE [dbo].[orderitem] CHECK CONSTRAINT [FKphj1dc73qs6kjqvuj8h6chdil]
GO
