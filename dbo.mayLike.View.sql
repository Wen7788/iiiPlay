USE [GameDB]
GO
/****** Object:  View [dbo].[mayLike]    Script Date: 2020/6/9 下午 07:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[mayLike] as 
select d.pdId ,d.id,e.companyId from(select b.pdId, c.id from orderitem  as b  left join orders as c on b.FK_orderId =c.orderId) as d left join products as e on d.pdId =e.pdId 

GO
