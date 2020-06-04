<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
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

<style>
th,td{
text-align:center
}



</style>




</head>


<body>
	<div class="divleft">
		<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />
	</div>

	<div id="right-panel" class="right-panel">


		<div class="content">
			<div class="animated fadeIn">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Data Table</strong>
							</div>
			
							<div class="card-body">
								<table id="bootstrap-data-table"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>編號</th>
											<th>姓名</th>
											<th>總金額</th>
											
											<th>下單日期</th>
											<th>狀態</th>
											<th>付款日期</th>
											
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
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="<c:url value='/assets/js/main.js'/>"></script>


	<script src="<c:url value='/assets/js/lib/data-table/datatables.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/dataTables.bootstrap.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/dataTables.buttons.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/buttons.bootstrap.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/jszip.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/vfs_fonts.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/buttons.html5.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/buttons.print.min.js'/>"></script>
	<script src="<c:url value='/assets/js/lib/data-table/buttons.colVis.min.js'/>"></script>
	<script src="<c:url value='/assets/js/init/datatables-init.js'/>"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#bootstrap-data-table-export').DataTable();
		});
	</script>
</body>
</html>