<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單查詢</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


<style>
th,td{
text-align:center
}



</style>




</head>


<body>
	
	

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
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">訂單查詢</strong>
							</div>
			
							<div class="card-body">
								<table id="bootstrap-data-table"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th style="text-align: center">編號</th>
											<th style="text-align: center">姓名</th>
											<th style="text-align: center">總金額</th>
											
											<th style="text-align: center">下單日期</th>
											<th style="text-align: center">狀態</th>
											<th style="text-align: center">付款日期</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var='member' items='${order}' varStatus='vs'>
											<tr>
												<td>${member.orderId}</td>
												<td>${member.name}</td>
												<td>${member.total}</td>
												
												<td>${fn:substring(member.orderDate , 0 ,19)}</td>
												<c:if test="${member.state == 1 }"><td>未付款</td></c:if>
												<c:if test="${member.state == 2 }"><td>已付款</td></c:if>
												<td>${fn:substring(member.payDate , 0 ,19)}</td>
												
												
											</tr>					
										</c:forEach>

									</tbody>
								</table>
							</div>
							
						</div>
					</div>


				</div>
			</div>

		</div>
		
		
		
		
		
		
		
		
		
		<div class="clearfix"></div>

		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6">Copyright &copy; 待改</div>
					<div class="col-sm-6 text-right">
						Designed by <a href="https://colorlib.com">Colorlib</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
	
<%-- 	<script src="<c:url value='/assets/js/lib/data-table/datatables.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/dataTables.bootstrap.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/dataTables.buttons.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/buttons.bootstrap.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/jszip.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/vfs_fonts.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/buttons.html5.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/buttons.print.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/lib/data-table/buttons.colVis.min.js'/>"></script> --%>
<%--     <script src="<c:url value='/assets/js/init/datatables-init.js'/>"></script> --%>

		<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />
 

	
</body>
</html>