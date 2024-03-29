USE [GameDB]
GO
/****** Object:  View [dbo].[productsView]    Script Date: 2020/6/9 下午 07:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[productsView] as 
select a.pdId,a.category,a.companyId,a.filename,a.pdimg,a.price,a.pdname,a.pdno,a.stock,a.pdate,(case when pq.total is null then 0 else pq.total end) as totalbuy
from products as a
left join (select pdId,SUM(quantity)AS total from orderitem GROUP BY pdId ) AS pq on a.pdId =pq.pdId
GO
