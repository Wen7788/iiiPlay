<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iiiPlay-Forum</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp" />


	<!--================Blog Area =================-->
	<section class="blog_area padding_top">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mb-5 mb-lg-0">
					<div class="blog_left_sidebar">
						<c:forEach items='${boardSt1}' var='board' varStatus='vs'>
							<article class="blog_item">
								<div class="blog_item_img">
									<a href="showAofB/${board.boardId}"> <img class="card-img rounded-0"
										src="loadImg/${board.boardId}" alt="">
									</a>
								</div>





								<div class="blog_details">
									<a class="d-inline-block" href="single-blog.html">
										<h2>${board.boardName}</h2>
									</a>
									<p>用來顯示看板內文章</p>
									<ul class="blog-info-link">
										<li><i class="far fa-user"></i> 瀏覽數</li>
										<li><i class="far fa-comments"></i> 文章數</li>
									</ul>
								</div>
							</article>
						</c:forEach>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="blog_right_sidebar">
					
					
						<aside class="single_sidebar_widget search_widget">
							<form action="#">
								<div class="form-group">
									<div class="input-group mb-3">
										<input type="text" class="form-control"
											placeholder='Search Keyword' onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Search Keyword'">
										<div class="input-group-append">
											<button class="btn" type="button">
												<i class="ti-search"></i>
											</button>
										</div>
									</div>
								</div>
								<button
									class="button rounded-0 primary-bg text-white w-100 btn_1"
									type="submit">Search</button>
							</form>
						</aside>



						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">Recent Post</h3>
							<div class="media post_item">
								<img src="img/post/post_1.png" alt="post">
								<div class="media-body">
									<a href="single-blog.html">
										<h3>From life was you fish...</h3>
									</a>
									<p>January 12, 2019</p>
								</div>
							</div>



						</aside>
					</div>
				</div>
			</div>
		</div>

	</section>



</body>
</html>