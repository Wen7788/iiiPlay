USE [Gamedb]
GO
/****** Object:  View [dbo].[MemberSaleCount2]    Script Date: 2020/6/9 下午 07:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[MemberSaleCount2] as
select MemberTest.pk ,  MemberTest.id , orders.orderDate , orders.total , MemberTest.gender
from MemberTest full join orders on MemberTest.id = orders.id
GO
