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
	<jsp:include page="/WEB-INF/views/top.jsp" />
	<div class="whole-wrap">
		<div class="container box_1170">
			<section class="sample-text-area">

				<h3 class="mb-30">
					透過session取得當前看板名稱
					<button type="button" class="genric-btn danger circle"
						data-toggle="modal" data-target="#exampleModal">發佈文章</button>

				</h3>
				<div class="section-top-border">

					<div class="progress-table">

						<div class="table-head">
							<div class="country">標題</div>

							<div class="country">作者</div>
							<div class="visit">互動/人氣</div>
							<div class="country">發佈時間</div>
						</div>
						<c:forEach items="${aOfB}" var="article" varStatus="vs">
							<div class="table-row">
								<div class="country">
									<h3>${article.title}</h3>
									<img src="#" alt="flag"><span>${article.detail}...(<a
										href="#">繼續閱讀</a>)
									</span>
								</div>

								<div class="country">${article.name}</div>
								<div class="visit">${article.replyCount}/10</div>
								<div class="country">${article.publishTime}</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</section>
		</div>
	</div>





	<!-- 新增文章用表單元素 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<!-- 				<form class="row contact_form" action="#" method="post" novalidate="novalidate"> -->
					<!--               <div class="col-md-6 form-group p_star"> -->
					<!--                 <input type="text" class="form-control" id="first" name="name" /> -->
					<!--                 <span class="placeholder" data-placeholder="First name"></span> -->
					<!--               </div> -->


					<form name="form" class="row contact_form" method="post"
						action='board' enctype="multipart/form-data"
						novalidate="novalidate">
						<div class="col-md-6 form-group p_star">
							<label for="exampleFormControlInput1">發文者名稱:</label> <input
								type="text" class="form-control" id="name" name="name" value="">
							<font id="errorName" color='red' size='-1'></font>
						</div>
						<div class="col-md-6 form-group p_star">
							<label for="exampleFormControlInput1">發文所在看板:</label> <input
								type="text" class="form-control" id="boardName" name="boardName"
								value=""> <font id="errorBoardName" color='red'
								size='-1'></font>
						</div>
						
						<div class="col-md-6 form-group p_star">
							<label for="exampleFormControlSelect1">發文分類:</label> <select
								class="form-control" name="category"
								id="exampleFormControlSelect1">
								<option>情報</option>
								<option>攻略</option>
								<option>問題</option>
								<option>討論</option>
								<option>閒聊</option>
								<option>其他</option>
							</select> <font id="errorCategory" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group p_star">
							<label for="exampleFormControlInput1">發文標題:</label> <input
								type="text" class="form-control" id="title" name="title"
								value=""> <font id="errorTitle" color='red' size='-1'></font>
						</div>

						<div class="modal-footer">
							<button type="submit" id="btn" class="btn btn-outline-success"
								onclick="return false">文章已填寫好，請讓大家看看吧!</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
		
	</script>
</body>
</html>