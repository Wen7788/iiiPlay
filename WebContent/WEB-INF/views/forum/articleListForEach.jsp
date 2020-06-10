<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
								   <a class="nav-link" href="<c:url value='/twitch'/>">遊戲影片</a>
								</li>
								<c:if test="${MemberBean.status==2}">
								<li class="nav-item">
								   <a class="nav-link" href="<c:url value='/bs'/>">後台管理</a>
								</li>
								</c:if>
								<c:if test="${empty MemberBean}">
								<c:if test="${empty googleUser}">
								
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/login.do'/>">登入/註冊</a></li>
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
								<a class="dropdown-item" href="${pageContext.request.contextPath}/product/findorder1" > 我的訂單</a>
                                             <a class="dropdown-item" href="${pageContext.request.contextPath}/product/colpd" > 收藏商品</a>
									</div>
									</li>
									<li class="nav-item"><a class="nav-link"
									href="<c:url value='/logOut'/>">登出</a></li>
								 
<!-- 								<li class="nav-item"> -->
<!-- 								<a class="nav-link" -->
<!-- 									href="logOut"> -->
<!-- 								<img width='50' height='50' src="data:image/jpg;base64,${mbPic}"> --!>
<!-- 								</a> -->
<!-- 								</li> -->
 
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
										onclick="signOut();"  >登出</a>
								</li>
								
							
								 </c:if>
								 	 
								<li class="nav-item" style="height:100px">
									<a class="nav-link" style="height:100px"
										href="${pageContext.request.contextPath}/product/Cart.do" ><img class="" style="position:absolute;top:20px" height=50px  width='50' id="${mem.productId}" src="<c:url value="/img/shopcar.png"/>" alt="收藏"></a>
								</li>
								
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


	<div class="whole-wrap">
		<div class="container box_1170">
			<section class="sample-text-area">
				<h1>
					${bBean.boardName}
					<button type="button" class="genric-btn circle btn_2"
						data-toggle="modal" data-target="#myModal">
						<font size="5">發佈文章</font>
					</button>
				</h1>
				
				<div class="section-top-border">
					<c:if test="${empty aOfB}">
					<div class="col-lg-12">
							<blockquote class="generic-blockquote">
								<h1>尚未有任何文章，可以進行發文!</h1>
							</blockquote>
					</div>
					</c:if>
					<c:if test="${!empty aOfB}">
					<c:forEach items="${aOfB}" var="article" varStatus="vs">
						
						<div class="col-lg-12">
							<blockquote class="generic-blockquote">
								<h1>
									<a
										href="<c:url value='/forum/articleAndReply/${article.articleId}'/>">【${article.category}】${article.title}</a>
								</h1>
								<div class="row">
									<div class="col-md-3">
										<a
											href="<c:url value='/forum/articleAndReply/${article.articleId}'/>"><img style="width: 200%"
											src="<c:url value='/img/${article.category}.png'/>"
											class="img-fluid"></a>
									</div>
									<div class="col-md-9 mt-sm-20">

										<c:choose>
											<c:when test="${fn:length(article.detail)>20}">
												<p>
													<font size='5'>${fn:substring(article.detail, 0, 20)}...
<%-- 													(<a href="<c:url value='/forum/articleAndReply/${article.articleId}'/>">繼續閱讀</a>) --%>
													</font>
												</p>
											</c:when>
											<c:otherwise>
												<p>
													<font size='5'>${article.detail}</font>
												</p>
											</c:otherwise>
										</c:choose>
										<br> <br> <br>
										<ul class="blog-info-link">
											<li><font size='3'><i class="fa fa-user">作者:</i>
													${article.name}</font></li>
											<li><font size='3'><i class="fa fa-eye">文章瀏覽數:</i>
													${article.clickSum}</font></li>
											<li><font size='3'><i class="fa fa-comments">留言:</i>
													${article.replyCount}</font></li>
											<li><font size='3'><i class="fas fa-pencil-alt">發文時間:</i>
													${fn:substring(article.publishTime, 0, 19)}</font></li>
										</ul>

										<c:if
											test='${MemberBean.status == 2 || MemberBean.id == article.id}'>
											<div class="text-right">
												
											</div>
										</c:if>
									</div>
								</div>
							</blockquote>
						</div>
											
					</c:forEach>
					</c:if>
					
					
				</div>
			</section>
		</div>
	</div>






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

					<form name="form1" class="row contact_form" method="post"
						action="<c:url value='/forum/article'/>"
						onsubmit="return(validate())">
						<div class="col-md-6 form-group">
							<label for="name1"><font color='red'>*</font>發文者名稱:</label> <input
								type="text" class="form-control" id="name1" name="name1"
								value="${MemberBean.name}" readonly> <font
								id="errorName1" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group">
							<label for="boardName1">發文所在看板:</label>
							<input type="text" class="form-control" id="boardName1"
								name="boardName1" value="${bBean.boardName}" readonly><font
								id="errorBoardName1" color='red' size='-1'></font> <input
								type="hidden" class="form-control" id="boardId1" name="boardId1"
								value="${bBean.boardId}">
						</div>

						<div class="col-md-6 form-group">
							<label for="category1"><font color='red'>*</font>發文分類:</label> <select
								class="form-control country_select" name="category1"
								id="category1">
								<option selected="selected" disabled="disabled"
									style='display: none' value=''></option>
								<option>情報</option>
								<option>密技</option>
								<option>問題</option>
								<option>討論</option>
								<option>閒聊</option>
								<option>心得</option>
								<option>其他</option>
							</select> <font id="errorCategory1" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group">
							<label for="title1"><font color='red'>*</font>發文標題:</label> <input
								type="text" class="form-control" id="title1" name="title1"
								value=""> <font id="errorTitle1" color='red' size='-1'></font>
						</div>

						<div class="col-md-6 form-group">
							<input type="hidden" class="form-control" id="status1"
								name="status1" value="1">
						</div>

						<div class="col-md-12 form-group">
							<label for="detail1"><font color='red'>*</font>發表內文:</label>
							<textarea class="form-control" name="detail1" id="detail1"
								rows="5"></textarea>
							<font id="errorDetail1" color='red' size='-1'></font>

						</div>

						<div class="modal-footer">
							<button type="button" id="help" class="btn btn-warning" onclick='input()'>一鍵輸入</button>
							<button type="submit" id="btn" class="btn btn-outline-success">文章已填寫好，請讓大家看看吧!</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
	<script type="text/javascript">
		var ckEditor = CKEDITOR.replace('detail1');

		function input(){
			document.getElementById("title1").value = "那些一直抱怨被撞的人";
			ckEditor.setData("很直白的告訴你們，當你覺得自己被撞時，反過來別人也可能認為你擋道甚至是你也撞到他");
		}
 	</script>
	
	
	
	<script>
		function validate() {
			if (document.getElementById("name1").value == ""){
				document.getElementById("errorName1").innerHTML = "此處是由登入後自動帶入使用者名稱，請進行登入!";
				return false;
			}else{
				document.getElementById("errorName1").innerHTML = "";
			}
			if (document.getElementById("category1").value == ""){
				document.getElementById("errorCategory1").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				return false;
			}else{
				document.getElementById("errorCategory1").innerHTML = "";
			}
			if(document.getElementById("title1").value == ""){
				document.getElementById("errorTitle1").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				return false;
			}else{
				document.getElementById("errorTitle1").innerHTML = "";
			}
			if(document.getElementById("detail1").value == ""){
				document.getElementById("errorDetail1").innerHTML = "\"*\"為必填欄位，需進行填寫!";
				return false;
			}else{
				document.getElementById("errorDetail1").innerHTML = "";
			}
			if(document.getElementById("name1").value != "" &&
			   document.getElementById("category1").value != "" &&
			   document.getElementById("title1").value != "" &&
			   document.getElementById("detail1").value != ""){
				return true;
			}
		}
	</script>
	
	

	<!-- jquery plugins here-->
	<script src="<c:url value='/js/jquery-1.12.1.min.js'/>"></script>
	<!-- popper js -->
	<script src="<c:url value='/js/popper.min.js'/>"></script>
	<!-- bootstrap js -->
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<!-- easing js -->
	<script src="<c:url value='/js/jquery.magnific-popup.js'/>"></script>
 	<!-- swiper js --> 
    <script src="${pageContext.request.contextPath}/js/lightslider.min.js"></script>
	<script src="<c:url value='/js/swiper.min.js'/>"></script>
	<!-- swiper js -->
	
	<script src="<c:url value='/js/masonry.pkgd.js'/>"></script>
	<!-- particles js -->
	<script src="<c:url value='/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/js/jquery.nice-select.min.js'/>"></script>
	<!-- slick js -->

	<script src="<c:url value='/js/slick.min.js'/>"></script>
	 <script src="${pageContext.request.contextPath}/js/swiper.jquery.js"></script>
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