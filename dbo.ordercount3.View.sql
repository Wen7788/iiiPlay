USE [Gamedb]
GO
/****** Object:  View [dbo].[ordercount3]    Script Date: 2020/6/9 下午 07:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ordercount3] as 
select  orders.orderId , orderitem.FK_orderId , orders.id  , orders.orderDate , orders.state , orderitem.pdId , orderitem.total , Products.category,Products.companyId
from orders full join orderitem on orderitem.FK_orderId = orders.orderId

full join Products on orderitem.pdId = Products.pdId 
GO
