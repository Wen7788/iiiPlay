<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>討論區看板修改</title>
<!-- Bootstrap CSS -->
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
<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />

	<!-- /#left-panel -->
	<!-- Right Panel -->
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
		<!-- /#header -->
		<!-- Content -->
		<div class="content">
			<!-- Animated -->
			<div class="animated fadeIn">
				<!-- Widgets  -->
				<div class="row">
					<div class="container" style="margin-top: 100px; width: 60%">
						<form:form method="post" modelAttribute="bBean"
							enctype="multipart/form-data">

							<fieldset>
								<legend>更新看板資料</legend>
								<div class="form-group">
									<label for="exampleFormControlInput1">更新看板名稱:</label>
									<form:input type="text" class="form-control"
										id="exampleFormControlInput1" path='boardName'
										value="${bBean.boardName}" />

								</div>
								<div class="form-group">
									<label for="exampleFormControlInput1">更新看板圖為:</label>
									<form:input type="file" class="form-control-file"
										id="exampleFormControlFile1" path='boardImg'
										value="${bBean.boardImg}" />

								</div>

								<button type="submit" class="btn btn-dark">送出</button>

							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>