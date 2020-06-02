<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>討論區</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<style type="text/css">
#suggestSelect{
    	position:absolute;
        background-color:#FFFFFF;
        text-align: :left;
        border: 1px solid #000000;
        display: none;
        margin-top: 1px;
        top:50px
 }
</style>
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
									<a href="<c:url value='/forum/showAofB/${board.boardId}'/>">
										<img class="card-img rounded-0"
										src="<c:url value='/forum/loadImg/${board.boardId}'/>" alt="">
									</a>
								</div>





								<div class="blog_details">
									<a class="d-inline-block"
										href="<c:url value='/forum/showAofB/${board.boardId}'/>">
										<h2>${board.boardName}</h2>
									</a>
									

									<ul class="blog-info-link">
										<li><i class="fa fa-eye">瀏覽數:</i></li>
										<li><i class="fa fa-newspaper">文章數:</i></li>
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
										<input type="text" class="form-control" id='txtSearch' style="position: relative"
											name='txtSearch' placeholder='Search Keyword' 
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Search Keyword'">


											<div id="suggestSelect" onmouseleave="hide()"></div>
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
							<h3 class="widget_title">熱門看板排行</h3>
							<c:forEach items="${queryHot5Board}" var='hot5Board'>
								<div class="media post_item">
									<a
										href="<c:url value='/forum/showAofB/${hot5Board.boardId}'/>">
										<img src="<c:url value='/forum/loadImg/${hot5Board.boardId}'/>"
										alt="post">
									</a>
								</div>
									<div class="media-body">
										<h3>
											<a href="<c:url value='/forum/showAofB/${hot5Board.boardId}'/>">${hot5Board.boardName}</a>
											<i class="fa fa-eye">瀏覽數:${hot5Board.boardClick}</i>
										</h3>
										
									</div>
							</c:forEach>
						</aside>

						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">最新文章</h3>
							<c:forEach items="${last5Article}" var='last5Article'>
								<div class="media post_item">
									<a
										href="<c:url value='/forum/articleAndReply/${last5Article.articleId}'/>">
										<img src="<c:url value='/img/${last5Article.category}.png'/>"
										alt="post">
									</a>
									<div class="media-body">
										<a
											href="<c:url value='/forum/articleAndReply/${last5Article.articleId}'/>">
											<h3>【${last5Article.category}】${last5Article.title}</h3>
										</a>
										<p>${fn:substring(last5Article.publishTime, 0, 19)}</p>
									</div>
								</div>
							</c:forEach>
						</aside>
					</div>
				</div>
			</div>
		</div>

	</section>
	<script type="text/javascript">
		window.onload = function() {
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/forum/showArticleCount'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var mapData = JSON.parse(xhr.responseText);
					var clist = mapData.clist
					var clist2 = mapData.clist2
					for (var i = 0; i < clist.length; i++) {
						var count = clist[i];
						var count2 = clist2[i];

						var c = document.getElementsByClassName("fa-newspaper");
						var c2 = document.getElementsByClassName("fa-eye");
						c[i].innerHTML += "" + count;
						c2[i].innerHTML += "" + count2;
					}
				}
			}
		}

		$("#txtSearch").keyup(function() {
			
			var keyword = this.value;
			$.ajax({
				type : "GET",
				url : "<c:url value='/forum/likeQuery'/>",
				async : true,
				contentType : "application/json",
				dataType : "json",
				data : {
				"title" : keyword
				},
				success : function(listData) {
					var content = "";
					for (var i = 0; i < listData.length; i++) {
						content += "<div><a href='<c:url value='/forum/articleAndReply/"+listData[i].articleId+"'/>'>"+listData[i].title+"</a></div>";
						
					}
					document.getElementById("suggestSelect").innerHTML = content;
					$("#suggestSelect").css("display","block");
					$("#suggestSelect").css("width",$(".input-group").width());
				}
			});
		})
		
		function hide(){
			$("#suggestSelect").css("display", "none")
		}

		
	</script>


</body>
</html>