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
<title>討論區後台管理</title>
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
	<!-- Button trigger modal -->


	<h1>討論區看板管理</h1>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">新增討論區看板</button>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">看板編號</th>
				<th scope="col">看板名稱</th>
				<th scope="col">瀏覽次數</th>
				<th scope="col">看板文章數</th>
				<th scope="col">看板圖</th>
				<th scope="col">看板狀態</th>
				<th scope="col">修改資料欄</th>
				<th scope="col">操作欄</th>
				<th scope="col">移除欄</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${boards}' var='board' varStatus='vs'>
				<tr>
					<th scope="row">${board.boardId}</th>
					<td>${board.boardName}</td>
					<td>瀏覽次數未完成</td>
					<td>看板文章數未完成</td>
					<td>${board.boardImg}</td>
					<td><c:choose>
							<c:when test="${board.status==1}">正常開版</c:when>
							<c:otherwise>看板維護</c:otherwise>
						</c:choose></td>
					<td><a
						href="${pageContext.request.contextPath}/forum/board/${board.boardId}">
							<button type="button" class="btn btn-light">修改</button>
					</a></td>
					<td>
						<form method="post" action="boardStatus">
							<c:choose>
								<c:when test="${board.status==1}">
									<input type="hidden" value="${board.boardId}" name="boardId">
									<button type="submit" class="btn btn-light">隱藏</button>
								</c:when>
								<c:otherwise>
									<input type="hidden" value="${board.boardId}" name="boardId">
									<button type="submit" class="btn btn-light">恢復</button>
								</c:otherwise>
							</c:choose>
						</form>
					</td>

					<td><a class='deletelink'
						href="${pageContext.request.contextPath}/forum/boardDelete/${board.boardId}">
							<button type="button" class="btn btn-light" onclick="onWarning()">徹底刪除</button>
					</a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>

	<!-- Add Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">新增看板中...</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action='board' enctype="multipart/form-data">
						<div class="form-group">
							<label for="exampleFormControlInput1">新增看板名稱為:</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								name="boardName">
						</div>
						<div class="form-group">
							<label for="exampleFormControlFile1">新增看板圖為:</label> <input
								type="file" class="form-control-file"
								id="exampleFormControlFile1" name="boardImg">
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="status"
								id="inlineRadio1" value="1" checked> <label
								class="form-check-label" for="inlineRadio1">上架</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="status"
								id="inlineRadio2" value="0"> <label
								class="form-check-label" for="inlineRadio2">下架</label>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-light" data-dismiss="modal">取消</button>
							<button type="submit" class="btn btn-outline-success">送出</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
		function onWarning() {
			event.returnValue = confirm("確定真的要刪除???");
		}
	</script>



</body>
</html>

