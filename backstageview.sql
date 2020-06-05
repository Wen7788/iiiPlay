USE [Gamedb]
GO
/****** Object:  View [dbo].[MemberSaleCount2]    Script Date: 2020/6/4 下午 08:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[MemberSaleCount2] as
select MemberTest.pk ,  MemberTest.id , orders.orderDate , orders.total , MemberTest.gender
from MemberTest full join orders on MemberTest.id = orders.id
GO
/****** Object:  View [dbo].[ordercount3]    Script Date: 2020/6/4 下午 08:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ordercount3] as 
select  orders.orderId  , orders.id  , orders.orderDate , orders.state , orderitem.pdId , orderitem.total , Products.category,Products.companyId
from orders full join orderitem on orderitem.FK_orderId = orders.orderId

full join Products on orderitem.pdId = Products.pdId 
GO
