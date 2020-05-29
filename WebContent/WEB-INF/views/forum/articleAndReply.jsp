<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iiiPlay-Article</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp" />

	<section class="blog_area single-post-area padding_top">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
						<div class="feature-img">
<!-- 							<img class="img-fluid" -->
<%-- 								src="data:image/jpg;base64,${mbPic}" alt=""> --%>
						</div>
						<div class="blog_details">
							<h2>【${aBean.category}】${aBean.title}</h2>
							<ul class="blog-info-link mt-3 mb-4">
								<li><i class="far fa-user"></i>${aBean.name}</li>
								<li><i class="far fa-clock"></i>
									${fn:substring(aBean.publishTime, 0, 19)}</li>
							</ul>

							<div class="quote-wrapper">
								<div class="quotes">${aBean.detail}</div>
							</div>

						</div>
					</div>
					<div class="navigation-top">
						<div class="d-sm-flex justify-content-between text-center">
							<p class="like-info">
								<span class="align-middle"><i class="far fa-heart"></i></span>
								Lily and 4 people like this
							</p>

						</div>
					</div>
					<div class="comments-area">


						<c:forEach items="${rOfA}" var="reply" varStatus="vs">

							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="data:image/jpg;base64,${mbPic}" alt="">
										</div>
										<div class="desc">
											<p class="comment">${reply.replyDetail}</p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>${reply.name}</h5>
													<p class="date">${fn:substring(reply.replyTime, 0, 19)}</p>

												</div>

											</div>
											<c:if
												test="${MemberBean.id == reply.id || MemberBean.status == 2}">
												<a href="#" class="genric-btn success circle">編輯留言</a>
												<a href="#" class="genric-btn danger circle">刪除留言</a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<c:set var="count" value="${vs.count}" />
						</c:forEach>
						
						<c:choose>
							<c:when test="${!empty count}">
								<div class="col-sm-4 text-center my-2 my-sm-0">
									<h4 class="comment-count">
										<span class="align-middle"><i class="far fa-comment"></i></span>
										${count} 則留言
									</h4>
								</div>
							</c:when>
							<c:otherwise>
								<div class="col-sm-4 text-center my-2 my-sm-0">
									<h4 class="comment-count">
										
										目前尚無留言
									</h4>
								</div>
							</c:otherwise>
						</c:choose>

						<div class="comment-form">
							<h4>Leave a Reply</h4>
							<form class="form-contact comment_form"
								action="<c:url value='/forum/reply'/>" name="commentForm"
								method="post" onsubmit="return(validate())">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<font color='red'>*</font>
											<textarea class="form-control w-100" name="replyDetail"
												id="replyDetail" cols="30" rows="9" placeholder="你想說什麼..."></textarea>
											<font id="errorReplyDetail" color='red' size='-1'></font> <input
												class="form-control" name="articleId" id="articleId"
												type="hidden" value='${aBean.articleId}'>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<font color='red'>*</font> <input class="form-control"
												name="name" id="name" type="text" value='${MemberBean.name}'
												readonly> <font id="errorName" color='red' size='-1'></font>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<button type="submit" class="btn_3 button-contactForm">留言</button>
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
	<script type="text/javascript">
		CKEDITOR.replace('replyDetail');
	</script>

	<script>
		function validate() {
			if (document.getElementById("replyDetail").value == ""
					|| document.getElementById("name").value == "") {
				document.getElementById("errorReplyDetail").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				document.getElementById("errorName").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				return false;
			}
			return true;
		}
	</script>

</body>
</html>