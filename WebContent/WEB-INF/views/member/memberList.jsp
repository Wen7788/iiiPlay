<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員列表</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<section class="padding_top">
		<jsp:include page="/WEB-INF/views/top.jsp" />
		<div class="table-responsive">


			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">會員編號</th>
						<th scope="col">帳號</th>
						<th scope="col">姓名</th>
						<th scope="col">年齡</th>
						<th scope="col">性別</th>
						<th scope="col">email</th>
						<th scope="col">註冊時間</th>
						<th scope="col">狀態</th>
						<th scope="col">大頭貼</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
<%-- 						<form method="POST" action="<c:url value='/status/${member.id}'/>"> --%>
							<input type="hidden" value="${member.id}"
								name="statusId">
							<tr>
								
								<td>${member.pk}</td>
								<td>${member.id}</td>
								<td>${member.name}</td>
								<td>${member.age}</td>
								<td>${member.gender}</td>
								<td>${member.email}</td>
								<td>${member.registerTime}</td>
								<c:if test="${member.status==1}">
									<td><a class="btn btn-primary"
									href="<c:url value='/status/${member.id}'/>"
									
									>正常</a>
									</td>
								</c:if>
								<c:if test="${member.status==2}">
									<td><a class="btn btn-warning">管理員</a>
									</td>
								</c:if>
								<c:if test="${member.status==100}">
									<td><a class="btn btn-danger"
									href="<c:url value='/status/${member.id}'/>"
									
									>停權</a>
									</td>
								</c:if>
<!-- 						</form> -->

							<td>
							<img height='85px' width='85px'
	src='${pageContext.request.contextPath}/member/getImage/${member.id}' alt='沒有圖片'>
	
	</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>


		</div>
	</section>

</body>
</html>