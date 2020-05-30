<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bg {
	background-color: #3C3C3C;
	width: 250px;
	margin:0px;
	padding:0px;
	font-family: Microsoft Yahei;
	text-align:center;
}
.top{
background-color: #3C3C3C;
width: 250px;
}
.ul {
	margin-top:0px;
	margin-left:0px;
	padding: 0px;
	  list-style: none;
}

li{
/*  	list-style-image:url('../image/項目符號鉛筆.jpg');  */
}

.h1{
 	background-color: 		#FF2D2D;
 	font-family: Microsoft Yahei;
 	height: 50px;
 	line-height: 50px;
}

.h3{
	color:		#FF2D2D;
	font-family: DFKai-sb;
}


.a {
	text-decoration: none;
	color: white;
	line-height: 60px;
	font-size: 20px;
	font-family: DFKai-sb;
	display: block;
}

.a:hover {
	text-decoration: none;
	color: white;
	 background-color: rgb(115, 115, 115);
}

</style>
</head>

<body >

	
	<div class="bg">
		<ul class="ul">
			<li><h1 class="h1" >後台管理系統</h1></li>
			<li><h2 class="h3">會員管理</h2></li>
			<li><a class="a" href="#">會員資料</a></li>
			<li><h2 class="h3">商品管理</h2></li>
			<li><a class="a" href="#">商品上下架</a></li>
			<li><a class="a" href="#">商品補貨</a></li>
			<li><a class="a" href="#">訂單出貨</a></li>
			<li><a class="a" href="#">訂單管理</a></li>
			<li><a class="a" href="#">訂單查詢</a></li>  
			<li><a class="a" href="#">商品管理</a></li>
			<li><h2 class="h3">討論區</h2></li>
			<li><a class="a" href="#">儀錶板</a></li>
		</ul>
	</div>



</body>
</html>