<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文章列表</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<!-- animate CSS -->
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css'/>">
<!-- font awesome CSS -->
<link rel="stylesheet" href="<c:url value='/css/all.css'/>">
<!-- flaticon CSS -->
<link rel="stylesheet" href="<c:url value='/css/flaticon.css'/>">
<link rel="stylesheet" href="<c:url value='/css/themify-icons.css'/>">
<!-- font awesome CSS -->
<link rel="stylesheet" href="<c:url value='/css/magnific-popup.css'/>">
<!-- swiper CSS -->
<link rel="stylesheet" href="<c:url value='/css/slick.css'/>">
<!-- style CSS -->
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>

	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="<c:url value='/'/>"> <img
							src="<c:url value='/img/logo.png'/>" alt="logo">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="menu_icon"><i class="fas fa-bars"></i></span>
						</button>

						<div class="collapse navbar-collapse main-menu-item"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/'/>">首頁</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_3" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Play會員 </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item" href="login.html"> login</a> <a
											class="dropdown-item" href="tracking.html">tracking</a> <a
											class="dropdown-item" href="checkout.html">product
											checkout</a> <a class="dropdown-item" href="cart.html">shopping
											cart</a> <a class="dropdown-item" href="confirmation.html">confirmation</a>
										<a class="dropdown-item" href="elements.html">elements</a>
									</div></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_1" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Play購物商城  </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
										<a class="dropdown-item" href="category.html"> shop
											category</a> <a class="dropdown-item" href="single-product.html">product
											details</a>

									</div></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_2" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Play論壇 </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item"
											href="<c:url value='/forum/showBoards'/>"> Forum-List</a> <a
											class="dropdown-item" href="single-blog.html">Single blog</a>
									</div></li>
								<li class="nav-item">
								   <a class="nav-link" href="#">後台管理</a>
								</li>

							</ul>
						</div>
						<div class="hearer_icon d-flex">
							<!-- 							<a id="search_1" href="javascript:void(0)"><i -->
							<!-- 								class="ti-search"></i></a> -->

						</div>
					</nav>
				</div>
			</div>
		</div>

	</header>
	<!-- Header part end-->





	<!-- 	<div class="whole-wrap"> -->
	<div class="container box_1170">
		<section class="sample-text-area">

			<h3 class="mb-30">
				透過session取得當前看板名稱
				<button type="button" class="genric-btn danger circle"
					data-toggle="modal" data-target="#myModal">發佈文章</button>
			</h3>
			<div class="section-top-border">

				<div class="progress-table">

					<div class="table-head">
						<div class="country">標題</div>

						<div class="country">作者</div>
						<div class="visit">互動/人氣</div>
						<div class="country">發佈時間</div>
					</div>
<%-- 					<c:forEach items="${aOfB}" var="article" varStatus="vs"> --%>
<!-- 						<div class="table-row"> -->
<!-- 							<div class="country"> -->
<%-- 								<h3>${article.title}</h3> --%>
<%-- 								<img src="#" alt="flag"><span>${article.detail}...(<a --%>
<!-- 									href="#">繼續閱讀</a>) -->
<!-- 								</span> -->
<!-- 							</div> -->

<%-- 							<div class="country">${article.name}</div> --%>
<%-- 							<div class="visit">${article.replyCount}/10</div> --%>
<%-- 							<div class="country">${article.publishTime}</div> --%>
<!-- 						</div> -->
<%-- 					</c:forEach> --%>
				</div>
			</div>
		</section>
	</div>
	<!-- 	</div> -->






	<!-- 新增文章用表單元素 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
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

					<form name="form" class="row contact_form" method="post" action='article'>
						<div class="col-md-6 form-group">
							<label for="name">發文者名稱:</label> <input type="text"
								class="form-control" id="name" name="name" value=""> <font
								id="errorName" color='red' size='-1'></font>
						</div>
						<div class="col-md-6 form-group">
							<label for="boardName">發文所在看板:</label> <input type="text"
								class="form-control" id="boardName" name="boardName" value="">
							<font id="errorBoardName" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group">
							<label for="category">發文分類:</label> <select
								class="form-control country_select" name="category"
								id="category">
								<option selected="selected" disabled="disabled"
									style='display: none' value=''></option>
								<option>情報</option>
								<option>攻略</option>
								<option>問題</option>
								<option>討論</option>
								<option>閒聊</option>
								<option>其他</option>
							</select> <font id="errorCategory" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group">
							<label for="title">發文標題:</label> <input type="text"
								class="form-control" id="title" name="title" value=""> <font
								id="errorTitle" color='red' size='-1'></font>
						</div>
						<div class="col-md-6 form-group">
							<input type="hidden" class="form-control" id="status" name="status" value="1"> 
						</div>
						<div class="col-md-12 form-group">
							<label for="detail">發表內文:</label>
							<textarea class="form-control" name="detail" id="detail" rows="5"></textarea><font
								id="errorDetail" color='red' size='-1'></font>
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
	$(document).ready(function(){
		$("#btn").click(function(){
    		if($("#name").val()==""){
    			document.getElementById("errorName").innerHTML = "作者名稱還沒填寫!";
    			console.log("1")
    		}else if($("#boardName").val()==""){
    			document.getElementById("errorBoardName").innerHTML = "看板名稱還沒填寫!";	
        	}else if($("#category").val()==""){
    			document.getElementById("errorCategory").innerHTML = "文章分類還沒填寫!";	
        	}else if($("#title").val()==""){
    			document.getElementById("errorTitle").innerHTML = "文章標題還沒填寫!";	
        	}else if($("#detail").val()==""){
    			document.getElementById("errorDetail").innerHTML = "文章內容還沒填寫!";	
        	}else{
                document.form.submit();
            }
        })
     })
	</script>
	
	<!-- jquery plugins here -->
	<script src="<c:url value='/js/jquery-1.12.1.min.js'/>"></script>
	<!-- popper js -->
	<script src="<c:url value='/js/popper.min.js'/>"></script>
	<!-- bootstrap js -->
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<!-- easing js -->
	<script src="<c:url value='/js/jquery.magnific-popup.js'/>"></script>
	<!-- swiper js  -->
	<script src="<c:url value='/js/swiper.min.js'/>"></script>
	<!-- swiper js -->
	<script src="<c:url value='/js/masonry.pkgd.js'/>"></script>
	<!-- particles js -->
	<script src="<c:url value='/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/js/jquery.nice-select.min.js'/>"></script>
	<!-- slick js -->
	<script src="<c:url value='/js/slick.min.js'/>"></script>
	<script src="<c:url value='/js/jquery.counterup.min.js'/>"></script>
	<script src="<c:url value='/js/waypoints.min.js'/>"></script>
	<script src="<c:url value='/js/contact.js'/>"></script>
	<script src="<c:url value='/js/jquery.ajaxchimp.min.js'/>"></script>
	<script src="<c:url value='/js/jquery.form.js'/>"></script>
	<script src="<c:url value='/js/jquery.validate.min.js'/>"></script>
	<script src="<c:url value='/js/mail-script.js'/>"></script>
</body>
</html>