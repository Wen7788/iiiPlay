<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文章詳情</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<style>
#modifyForm{
  display:none;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp" />
	
	 <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                            <h2></h2>
                            <p> <span></span> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
	
	
	<section class="blog_area single-post-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
						<div class="feature-img">

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
							<div id='articleId' style="display: none;">${aBean.articleId}</div>
							<div id='userId' style="display: none;">${MemberBean.id}</div>
							

						</div>
					</div>
					<div class="navigation-top">
						<div class="d-sm-flex justify-content-between text-center">
							
							<p class="like-info" id='favoBtn'>
								<a href="<c:url value='/forum/articleAndReply/${aBean.articleId}'/>"
									class="genric-btn primary-border circle"> 
<!-- 									<button class="genric-btn primary-border circle"> -->
									<i
									id='shoucang' class="far fa-heart">收藏</i>
<!-- 									</button> -->
								</a>
							</p>
								
						</div>
					</div>
					<div class="comment-form">
							<h4>留個言吧</h4>
							<form class="form-contact comment_form"
								action="<c:url value='/forum/reply'/>" name="commentForm"
								method="post" onsubmit="return(validate())">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<font color='red'>*</font>
											<textarea class="form-control w-100" name="replyDetail"
												id="replyDetail" cols="20" rows="5" placeholder="你想說什麼..."></textarea>
											<font id="errorReplyDetail" color='red' size='-1'></font> <input
												class="form-control" name="articleId" id="articleId"
												type="hidden" value='${aBean.articleId}'>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<font color='red'>*</font> <input class="form-control"
												name="name" id="name" type="text" value='${MemberBean.name}' placeholder="使用者登入名稱"
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
					<div class="comments-area">


						<c:forEach items="${rOfA}" var="reply" varStatus="vs">
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="thumb">
											<img src="<c:url value='/member/getImage/${reply.id}'/>" alt="">
										</div>
										<div class="desc">
											<p class="comment">${reply.replyDetail}</p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>${reply.name}</h5>
													<p class="date">${fn:substring(reply.replyTime, 0, 19)}</p>

												</div>

											</div>
											<c:if test="${MemberBean.id == reply.id || MemberBean.status == 2}">
												<button class="genric-btn success circle" id="replyBtn">編輯留言</button>
												<form class="form-contact comment_form" action="<c:url value='/forum/reply/${reply.replyId}'/>" id="modifyForm" method="post">
													<div class="row">
														<div class="col-12">
															<div class="form-group">
																<textarea class="form-control w-100" name="modifyDetail" cols="10" rows="3">${reply.replyDetail}</textarea>
																<input class="form-control" name="modifyArticleId" type="hidden" value='${reply.articleId}'>
																<input class="form-control" name="modifyName" type="hidden" value='${reply.name}'>

															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<button type="submit" class="btn_3 button-contactForm">留言</button>
															</div>
														</div>
													</div>
												</form>
												<a href="<c:url value='/forum/replyDelete/${reply.replyId}/${reply.articleId}'/>" class="genric-btn danger circle" onclick="onWarning()">刪除留言</a>
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
									<h4 class="comment-count">目前尚無留言</h4>
								</div>
							</c:otherwise>
						</c:choose>

						
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">當日文章瀏覽數排行</h3>
							<c:forEach items="${map.alist}" var='topABean'>
								<div class="media post_item">
									<a
										href="<c:url value='/forum/articleAndReply/${topABean.articleId}'/>">
										<img src="<c:url value='/img/${topABean.category}.png'/>"
										alt="post">
									</a>
									<div class="media-body">
										<a
											href="<c:url value='/forum/articleAndReply/${topABean.articleId}'/>">
											<h3>【${topABean.category}】${topABean.title}</h3>
										</a>
										<p>發文時間:${fn:substring(topABean.publishTime, 0, 19)}</p>
										<c:forEach items="${map.dayClickTop5}" var='topClick'>
										<c:if test="${topABean.articleId==topClick.articleId}">
										<p>當日瀏覽數:${topClick.count}</p>
										</c:if>
										</c:forEach>
									</div>
								</div>
							</c:forEach>
						</aside>
					
				
				
						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">最新留言</h3>
							<c:forEach items="${last5Reply}" var='last5Reply'>
								<div class="media post_item">
									
									<div class="media-body">
										回覆的文章:<a
											href="<c:url value='/forum/articleAndReply/${last5Reply.articleId}'/>">
											<h3>${last5Reply.title}</h3>
										</a>
										
										<p><font color='red'>${last5Reply.name}</font>對這篇文章說了什麼:${last5Reply.replyDetail}</p>
										<p>留言時間:${fn:substring(last5Reply.replyTime, 0, 19)}</p>
										<hr>
									</div>
								</div>
							</c:forEach>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
	
	<script type="text/javascript">
	
		var replyEditor = CKEDITOR.replace('replyDetail');
		var modifyEditor = CKEDITOR.replace('modifyDetail');

		
	</script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$("#replyBtn").click(function() {
			/* Act on the event */
			$('#modifyForm').toggle();
		});
	});
	</script>
	
	
	<script>
		function validate() {
			if (document.getElementById("replyDetail").value == "") {
				document.getElementById("errorReplyDetail").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				return false;
			}else{
				document.getElementById("errorReplyDetail").innerHTML ="";
			}
			if(document.getElementById("name").value == ""){
				document.getElementById("errorName").innerHTML = "此處是由登入後自動帶入使用者名稱，請進行登入!";
				return false;
			}else{
				document.getElementById("errorName").innerHTML ="";
			}
			if (document.getElementById("replyDetail").value != "" && document.getElementById("name").value != "") {
				return true;
			}
		}
	</script>

	<script>
		var articleId = document.getElementById("articleId").innerHTML;
		var userId = document.getElementById("userId").innerHTML;
		

		function favoBtn(){
			$("#shoucang").addClass('fas').removeClass('far');
			$("#shoucang").text('取消收藏');
			};

		function unFavoBtn(){
			$("#shoucang").addClass('far').removeClass('fas');
			$("#shoucang").text('收藏');
			};

		$("#favoBtn").click(function(){
			
			if($("#shoucang").text()=='收藏'){
				favoBtn();
			}else{
				unFavoBtn();
			}
			if($("#shoucang").text()=='收藏'){
				deleFavoAjax(articleId, userId);
			}else{
				addFavoAjax(articleId, userId);
			}
		});

		
		
		$(window).load(function(){
			$.ajax({
				type:"GET",
				url:"<c:url value='/forum/checkFavo'/>",
				async:true,	
				contentType:"application/json",
				dataType:"json",
				data:{
					"articleId":articleId,
					"userId":userId
				},
				success:function(data){
					if(data==1){
						favoBtn();
					}else{
						unFavoBtn();
					}
				}
				
			});
		})
	
		function addFavoAjax(articleId, userId){
			$.ajax({
				type:"POST",
				url:"<c:url value = '/forum/addFavo'/>",
				async:true,
				dataType:"json",
				data:{
					"articleId":articleId,
					"userId":userId
				},
				success:function(req){
					alert("已將文章加入收藏!");
					console.log(req);
				},
				error:function(req){
					alert("請先進行登入才能使用收藏功能!");
				}					
			})		
		}

		function deleFavoAjax(articleId, userId){
			$.ajax({
				type:"POST",
				url:"<c:url value = '/forum/deleFavo'/>",
				async:true,
				dataType:"json",
				data:{
					"articleId":articleId,
					"userId":userId
				},
				success:function(req){
					alert("已將文章取消收藏!")
					console.log(req);
				},
				error:function(req){
					alert("請先進行登入才能使用取消收藏功能!");
				}					
			})		
		}

	</script>
	
	
	<script type="text/javascript">
	 function onWarning(){
		 event.returnValue = confirm("確定真的要刪除???");
	 }
	</script>
</body>
</html>