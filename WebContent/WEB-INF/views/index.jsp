<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iiiPlay</title>
<link rel="icon" href="<c:url value='/img/favicon.png'/>">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<!-- animate CSS -->
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/css/lightslider.min.css'/>">
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
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css'/>">



</head>
<body>

	<!-- banner part start-->
	


	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="banner_slider owl-carousel">
						<c:forEach var="random" items="${random3Board}">
						
						<div class="single_banner_slider">
							<div class="row">
								<div class="col-lg-5 col-md-8">
									<div class="banner_text">
										<div class="banner_text_iner">
											<h1>${random.boardName}</h1>
<!-- 											<p>歡迎來到「英雄聯盟」！「英雄聯盟」是一款獲獎無數，在全世界引起廣大風潮的 MOBA 類型遊戲</p> -->

											<a href="<c:url value='/forum/showAofB/${random.boardId}'/>" class="btn_2">進入討論區</a>
										</div>
									</div>
								</div>
								<div class="banner_img d-none d-lg-block">
									<img style="width:706px; height:353px;" src="<c:url value='/forum/loadImg/${random.boardId}'/>" alt="">
								</div>
							</div>
						</div>
						
						</c:forEach>
<!-- 						<div class="single_banner_slider"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-lg-5 col-md-8"> -->
<!-- 									<div class="banner_text"> -->
<!-- 										<div class="banner_text_iner"> -->
<!-- 											<h1>絕地求生</h1> -->
<!-- 											<p>PUBG是一款戰術競技遊戲，策略與槍法一樣重要，需要你隨時做出判斷，取得勝利，大吉大利</p> -->
<%-- 											<a href="<c:url value='/forum/showAofB/3'/>" class="btn_2">進入討論區</a> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="banner_img d-none d-lg-block"> -->
<!-- 									<img src="img/banner/PUBG.jpg" alt=""> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="single_banner_slider"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-lg-5 col-md-8"> -->
<!-- 									<div class="banner_text"> -->
<!-- 										<div class="banner_text_iner"> -->
<!-- 											<h1>動物森友會</h1> -->
<!-- 											<p>動物森友會是任天堂情報開發本部開發並由任天堂發行的社交模擬系列， 遊戲中玩家生活在一個由擬人動物居住的村莊，展開各種活動。</p> -->

<%-- 											<a href="<c:url value='/forum/showAofB/7'/>" class="btn_2">進入討論區</a> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="banner_img d-none d-lg-block"> -->
<!-- 									<img src="img/banner/zoo.jpg" alt=""> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<!-- <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <div class="banner_text">
                                        <div class="banner_text_iner">
                                            <h1>Cloth $ Wood Sofa</h1>
                                            <p>Incididunt ut labore et dolore magna aliqua quis ipsum
                                                suspendisse ultrices gravida. Risus commodo viverra</p>
                                            <a href="#" class="btn_2">buy now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner_img d-none d-lg-block">
                                    <img src="img/banner_img.png" alt="">
                                </div>
                            </div>
                        </div> -->
					</div>
					<div class="slider-counter"></div>
				</div>
			</div>
		</div>
	</section>

	<!-- banner part start-->
	<!-- product_list start-->
	
	
	
	
	<section class="product_list best_seller">
		
		<br>
	<br>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="section_tittle text-center">
						<h2>
							熱銷商品
						
						</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-12">
					<div class="best_product_slider owl-carousel">
            
						<c:forEach var="mem" varStatus="status" items="${memberList}">

						
								<div class="single_product_item" id="div1">
								<img id="hott" style='position:absolute ;right:20%;width:70px ; height:26.11px  '  src="<c:url value="/img/HOT.png"/>" alt="收藏">
									<img class="detail1 src" id="${mem.productId}" style="width:150px ; height:150px "  src="<c:url value="/product/Images.do/${mem.productId}"/>" alt="">

									<div class="single_product_text">
										<h4 class="detail na" id="${mem.productId}">${mem.productName}</h4>
										<h3 class="zzz">$${mem.price}</h3>

										<input type="button" class="btn_3" id="${mem.productId}" value="加入購物車">

									</div>

								
									</div>
							
						</c:forEach>
                  </div>

					</div>
				</div>
			</div>
		
	</section>
   
	<!-- product_list part start-->


	<jsp:include page="/WEB-INF/views/top.jsp" />
</body>
</html>