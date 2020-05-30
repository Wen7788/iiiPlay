<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>所有訂單</title>
<style>
.divleft{
float:left
}

.table1{

margin-left:50px;
display:inline;
}
.title{
color:#blue;
right:50px;
margin-left:400px
}


</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
</head>
<body>

<div class="divleft" >
<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />
</div>


<h1 class="title">訂單管理</h1>
		<table  class="table table-striped table1" >
			<tr>
			   <th style="text-align:center" width='60'>編號</th>
			   <th style="text-align:center" width='140'>姓名</th>
			   <th style="text-align:center" width='180'>總金額</th>
			   <th style="text-align:center" width='130'>地址</th>
			   <th style="text-align:center" width='56'>下單日期</th>
			   <th style="text-align:center" colspan='2' width='10'></th>
			</tr>
			<c:forEach  var='member' items='${orders}' varStatus='vs'>
				<tr>
					<td style="text-align:center">${member.orderNo}</td>
					<td style="text-align:center">${member.memberId}</td>
					<td style="text-align:center">${member.totalAmount}</td>
					<td style="text-align:center">${member.shippingAddress}</td>
					<td style="text-align:center">${member.orderDate}</td>
					<td><a href=""><button type="button" class="btn btn-warning" >明細</button></a></td>
					<td><a href=""><button type="button" class="btn btn-primary" >刪除</button></a></td>
<!-- 					 <td><a -->
<%--                         href="${pageContext.request.contextPath}/crm/mem/${member.id}">編輯</a></td> --%>
<!--                     <td><a class='deletelink' -->
<%--                         href="${pageContext.request.contextPath}/crm/mem/${member.id}">刪除</a></td> --%>
				</tr>
			</c:forEach>
		</table>
<hr>
</body>
</html>