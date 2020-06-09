<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




</head>
<body>

	<form action="<c:url value='/NewsPaper'/>">
	
	<div id="right-panel" class="right-panel">
		<header id="header" class="header">
			<div class="top-left">
				<div class="navbar-header">
					<a class="navbar-brand h1">後台管理系統</a> <a id="menuToggle"
						class="menutoggle" style="text-align: left"> <i
						class="fa fa-bars"></i></a>
				</div>
			</div>


		</header>

		<div class="content">
			<div class="animated fadeIn">
				<div class="row"></div>
				
<!-- 	<div> -->
<!-- 	<img src="img/product/b1.jpg"> -->
<!-- 	</div> -->
		
	<button type="submit"  >寄出</button>
				
				
			</div>
		</div>
	</div>

</form>


	<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />

</body>
</html>