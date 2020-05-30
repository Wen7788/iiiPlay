<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新我的文章</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<!-- animate CSS -->
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<!-- owl carousel CSS -->
 <link rel="stylesheet" href="<c:url value='/css/nice-select.css'/>">
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
<link rel="stylesheet" href="<c:url value='/css/price_rangs.css'/>">
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
									id="navbarDropdown_1" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Play購物商城 </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
										<a class="dropdown-item" href="${pageContext.request.contextPath}/product/allproducts" > 購物去!</a> <a class="dropdown-item" href="${pageContext.request.contextPath}/product/Cart.do">
										我的購物車
											</a>
											<a class="dropdown-item" href="${pageContext.request.contextPath}/product/findorder1" > 我的訂單</a>

									</div></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_2" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Play論壇 </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item"
											href="<c:url value='/forum/showBoards'/>"> 討論區</a> 
									</div></li>
								<li class="nav-item">
								   <a class="nav-link" href="<c:url value='/bs'/>">後台管理</a>
								</li>
								<c:if test="${empty MemberBean}">
								<c:if test="${empty googleUser}">
								
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/login.do'/>">LOG IN/REGISTER</a></li>
								 </c:if>
								 </c:if>
								 <c:if test="${!empty MemberBean}">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="login.do"
									id="navbarDropdown_2" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> ${MemberBean.id},Hello! </a>
								
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item" href="<c:url value='/MemberUpdate'/>"> 會員資料修改</a> 
										<a class="dropdown-item" href="<c:url value='/forum/ownArticle/${MemberBean.id}'/>"> 我的文章</a> 
									</div>
									</li>
<!-- 								<li class="nav-item"> -->
<!-- 								<a class="nav-link" -->
<!-- 									href="logOut"> -->
<!-- 								<img width='50' height='50' src="data:image/jpg;base64,${mbPic}"> --!>
<!-- 								</a> -->
<!-- 								</li> -->
								<li class="nav-item"><a class="nav-link"
									href="logOut">Log Out</a></li>
								 
								 </c:if>
								 <c:if test="${!empty googleUser}">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="login.do"
									id="navbarDropdown_2" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> ${googleUser.name},Hello! </a>
								
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item" href="<c:url value='/googleMember'/>"> 會員資料修改</a> 
									</div>
									</li>

								<li class="nav-item">
									<a class="nav-link"
										href="<c:url value='/googleLogOut'/>" 
										onclick="signOut();"  >Log Out</a>
								</li>
								
								 
								 </c:if>
							</ul>
						</div>
						<div class="hearer_icon d-flex">

						</div>
					</nav>
				</div>
			</div>
		</div>
		
	</header>
	<!-- Header part end-->
<script>
  function signOut() {
	  console.log('User signed out????.')
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    auth2.disconnect();
  }
</script>
	
	
	<div class="container" style="margin-top: 100px; width: 60%">
		<form method="post" action='<c:url value="/forum/article/${aBean.articleId}"/>' >

			<fieldset>
				<legend>更新文章資料</legend>
				<div class="form-group">
					<label for="name"><font color='red'>*</font>發文者名稱:</label> <input
						type="text" class="form-control" id="name" name="name"
						value="${MemberBean.name}" readonly> <input
						type="hidden" class="form-control" id="id" name="id"
						value="${MemberBean.id}"><font id="errorName"
						color='red' size='-1'></font>


				</div>
				<div class="form-group">
					<label for="boardName"><font color='red'>*</font>發文所在看板:</label> <input
						type="text" class="form-control" id="boardName" name="boardName"
						value="${bBean.boardName}" readonly><font
						id="errorBoardName" color='red' size='-1'></font> <input
						type="hidden" class="form-control" id="boardId" name="boardId"
						value="${bBean.boardId}">


				</div>
				<div class="col-md-6 form-group">
					<label for="category"><font color='red'>*</font>發文分類:</label> <select
						class="form-control country_select" name="category"
						id="category">
						<option selected="selected" 
							 value=''>${aBean.category}</option>
						<option>情報</option>
						<option>密技</option>
						<option>問題</option>
						<option>討論</option>
						<option>閒聊</option>
						<option>心得</option>
						<option>其他</option>
					</select> <font id="errorCategory" color='red' size='-1'></font>
				</div>
				<div class="col-md-6 form-group">
					<label for="title"><font color='red'>*</font>發文標題:</label> <input
						type="text" class="form-control" id="title" name="title"
						value="${aBean.title}"> <font id="errorTitle" color='red' size='-1'></font>
				</div>


				<div class="col-md-12 form-group">
					<label for="detail"><font color='red'>*</font>發表內文:</label>
					<textarea class="form-control" name="detail" id="detail" rows="5"></textarea>
					<font id="errorDetail" color='red' size='-1'></font>

				</div>
				<button type="submit" class="btn btn-dark">送出</button>

			</fieldset>
		</form>
	</div>
	
	
	<!-- jquery plugins here-->
	<script src="<c:url value='/js/jquery-1.12.1.min.js'/>"></script>
	<!-- popper js -->
	<script src="<c:url value='/js/popper.min.js'/>"></script>
	<!-- bootstrap js -->
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<!-- easing js -->
	<script src="<c:url value='/js/jquery.magnific-popup.js'/>"></script>
 	<!-- swiper js --> 
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
	 <script src="${pageContext.request.contextPath}/js/stellar.js"></script>
	 <script src="${pageContext.request.contextPath}/js/price_rangs.js"></script>
</body>
</html>