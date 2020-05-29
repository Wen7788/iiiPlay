<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的文章</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
</head>
<body>

	<section class="product_list best_seller padding_top section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="section_tittle text-center">
						<h2>我的發文</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-12">
					<div class="best_product_slider owl-carousel">
						<c:forEach items="${ownArticle}" var="article">
							<div class="single_product_item">
								<a
									href="<c:url value='/forum/articleAndReply/${article.articleId}'/>">
									<img src="<c:url value='/img/${article.category}.png'/>" alt="">
								</a>
								<div class="single_product_text">

									<h4>【${article.category}】${article.title}</h4>

									<h3>${fn:substring(article.publishTime, 0, 19)}</h3>
									<div class="row">
										<form method="GET" action="<c:url value='/forum//article/${article.articleId}'/>">
											<input type="hidden" value="${article.articleId}"
												name="articleId"> 
											<input type="hidden" value="${article.boardId}"
														name="boardId">
											<button type="submit" class="genric-btn info radius">
												<font size='3'>編輯</font>
											</button>
										</form>
										<form method="post"
											action="<c:url value='/forum/articleStatus'/>">
											<c:choose>
												<c:when test="${article.status==1}">
													<input type="hidden" value="${article.articleId}"
														name="articleId">
													<input type="hidden" value="${article.id}"
														name="id">
													<button type="submit" class="genric-btn danger radius">
														<font size='3'>隱藏</font>
													</button>
												</c:when>
												<c:otherwise>
													<input type="hidden" value="${article.articleId}"
														name="articleId">
													<input type="hidden" value="${article.id}"
														name="id">
													<button type="submit" class="genric-btn info radius">
														<font size='3'>恢復</font>
													</button>
												</c:otherwise>
											</c:choose>
										</form>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="/WEB-INF/views/top.jsp" />
</body>
</html>