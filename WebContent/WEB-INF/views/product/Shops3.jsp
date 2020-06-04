<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>aranoz</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp" />


	<!-- breadcrumb start-->

	<!--================Category Product Area =================-->
	<section class="cat_product_area section_padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="left_sidebar_area">
						<aside class="left_widgets p_filter_widgets">
							<div class="l_w_title">
								<h3>iii商城</h3>
							</div>
							<div class="widgets_inner">
								<ul class="list">
									<li>
										<a id="a1" href="<c:url value="/product/allproducts"/>">全部商品</a>
										<span id="all"> </span>
									</li>
									<li>
										<a id="new" href="<c:url value="/product/newpd.do"/>">最新商品</a>
										<span>(5)</span>
									</li>

									<li>
										<a id="hot" href="<c:url value="/product/allhots"/>">熱銷專區</a>
										<span>(6)</span></span>
									</li>

								</ul>
							</div>
						</aside>

						<aside class="left_widgets p_filter_widgets">
							<div class="l_w_title">
								<h3>品牌館</h3>
							</div>
							<div class="widgets_inner">
								<ul class="list">
									<li>
										<a href="<c:url value="/product/category.do/羅技"/>">羅技Logitech</a>
										<span>(8)</span>
									</li>
									<li>
										<a href="<c:url value="/product/category.do/曜越"/>">曜越TTeSports</a>
										<span>(7)</span>
									</li>
									<li class="active">
										<a href="<c:url value="/product/category.do/雷蛇"/>">雷蛇Razer</a>
										<span>(6)</span>
									</li>

								</ul>

							</div>
						</aside>
						<aside class="left_widgets p_filter_widgets">
							<div class="l_w_title">
								<h3>商品分類</h3>
							</div>
							<div class="widgets_inner">
								<ul class="list">
									<li>
										<a href="<c:url value="/product/type.do/滑鼠"/>">滑鼠</a>
										<span>(7)</span>
									</li>
									<li>
										<a href="<c:url value="/product/type.do/鍵盤"/>">鍵盤</a>
										<span>(5)</span>
									</li>
									<li class="active">
										<a href="<c:url value="/product/type.do/耳機"/>">耳機</a>
										<span>(4)</span>
									</li>
									<li>
										<a href="<c:url value="/product/type.do/滑鼠墊"/>">滑鼠墊</a>
										<span>(5)</span>
									</li>

								</ul>
							</div>
						</aside>
						<aside class="left_widgets p_filter_widgets price_rangs_aside">
							<div class="l_w_title">
								<h3>Price Filter</h3>
							</div>
							<div class="widgets_inner">
								<div class="range_item">
									<!-- <div id="slider-range"></div> -->
									<input type="text" class="js-range-slider" value="" />
									<div class="d-flex">
										<div style="width: 60px" class="price_text">
											<p>Price :</p>
										</div>
										<div style="width: 100px;" class="price_value d-flex justify-content-center">
											<input type="text" size="20" class="js-input-from1" />
											<span>to</span>
											<input type="text" class="js-input-to2" />
										</div>
									</div>
								</div>
							</div>
						</aside>
					</div>

				</div>
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-12">
							<div class="product_top_bar d-flex justify-content-between align-items-center">
								<div class="single_product_menu">
									<p>
										<span id="all1"></span>
										Prodict Found
									</p>
								</div>
								<div class="single_product_menu d-flex">
									<h5>short by :</h5>
									<select>
										<option data-display="Select">name</option>
										<option value="1">price</option>
										<option value="2">product</option>
									</select>
								</div>

								<form action="<c:url value="/product/Querytype.do"/>" class="form-inline my-2 my-lg-0">
									<div class="single_product_menu d-flex">
										<div class="input-group">
											<input name="type" type="text" class="form-control" size="40px" placeholder="請輸入條件" aria-describedby="inputGroupPrepend">
											<div class="input-group-prepend">
												<button type="submit" class="input-group-text" id="inputGroupPrepend">
													<i class="ti-search"></i>
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div class="row align-items-center latest_product_inner" id="div">

						<c:forEach var="mem" varStatus="status" items="${memberList}">

							<div class="col-lg-4 col-sm-6">
								
								<div class="single_product_item"  id="div1">
							
									<img id="hott" style='position:absolute ;right:20%; '  width='70' src="<c:url value="/img/HOT.png"/>" alt="收藏">
									
									<img class="detail1 src" id="${mem.productId}" width='150' src="<c:url value="/product/Images.do/${mem.productId}"/>" alt="">

									<div class="single_product_text">
										<h4 class="detail na" id="${mem.productId}">${mem.productName}</h4>
										<h3 class="zzz">$${mem.price}</h3>
										<input type="button" class="btn_3" id="${mem.productId}" value="加入購物車">
										<span>
											<img class="add_cart  add_cart1" width='30' id="${mem.productId}" src="<c:url value="/img/Love-1.png"/>" alt="收藏">
										</span>
										<div id='pid' class="pid" style="display: none;">${mem.productId}</div>
									</div>
								</div>
							</div>

						</c:forEach>


					</div>

				</div>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="pageination">
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous">
								<i class="ti-angle-double-left"></i>
							</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">1</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">2</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">3</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">4</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">5</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">6</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
								<i class="ti-angle-double-right"></i>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</section>


	<script>
		//進入詳情
		$(function() {
			$(".detail")
					.click(
							function() {

								var pid = this.id;
								window.location.href = "<c:url value="/product/ProductDetail.do/"/>"
										+ pid;

							});
		})
		//進入詳情
		$(function() {
			$(".detail1")
					.click(
							function() {

								var pid = this.id;
								window.location.href = "<c:url value="/product/ProductDetail.do/"/>"
										+ pid;

							});
		})
	</script>


	<script>
		//加入購物車
		$(function() {
			$(".btn_3")
					.click(
							function() {
								var pid = this.id;
								if (window.confirm('確定加入購物車?')) {
									;

									$
											.ajax({
												url : "<c:url value='/product/ProductDetail.do/Cart.do'/>", //請求的url地址
												dataType : "json", //返回格式為json
												async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
												data : {
													"quantity" : 1,
													"pid" : pid
												}, //引數值
												type : "GET", //請求方式
												success : function(req) {

												},
												complete : function() {
													//請求完成的處理
												},
												error : function() {
													console.log("出錯了!")
												}
											});

								} else {

									return false;
								}

							})
		})

		$(window).load(function() {
			var pdId = document.getElementsByClassName("pid");
			var love = document.getElementsByClassName("add_cart");

			for (i = 0; i < pdId.length; i++) {
				var pid = pdId[i].innerHTML

				$.ajax({
					type : "GET",
					url : "<c:url value='/product/checkcol'/>",
					async : false,
					contentType : "application/json",
					dataType : "json",
					data : {
						"pdId" : pid,
					},
					success : function(req) {
						console.log(req)
						if (req == 1) {
							console.log(love[i]);
							love[i].src = "<c:url value='/img/love-2.png'/>"

						} else {
							console.log(love[i]);
							love[i].src = "<c:url value='/img/Love-1.png'/>"
						}

					}
				});
			}
		})

		$(function() {

			$(".add_cart").click(function() {
 		
					if (this.src.indexOf("<c:url value='/img/love-2.png'/>")!=-1) {
                    console.log("取消"+this.src)
                    	
					var pid = this.id;

					if (window.confirm('確定取消收藏?')) {
						this.src="<c:url value='/img/Love-1.png'/>"
						$.ajax({
							url : "<c:url value = '/product/deletcol'/>", //請求的url地址
							dataType : "json", //返回格式為json
							async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
							data : {
								"pid" : pid
							}, //引數值
							type : "Get", //請求方式
							success : function(req) {
							
							},
							complete : function() {
								//請求完成的處理
							},
							error : function() {
								console.log("出錯了!")
							}
						});

					} else {

						return false;
					}
					
				} else if(this.src.indexOf("<c:url value='/img/love-3.png'/>")!=-1){
					console.log("收藏"+this.src)
					var pid = this.id;
				
					if (window.confirm('確定要收藏嗎?')) {
						;
						this.src = "<c:url value='/img/love-2.png'/>"
						$.ajax({
							url : "<c:url value='/product/addcol'/>", //請求的url地址
							dataType : "json", //返回格式為json
							async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
							type : "Get",
							data : {
								"pdId" : pid
							}, //引數值
							//請求方式
							success : function(req) {

							},
							complete : function() {
								//請求完成的處理
							},
							error : function() {
								console.log("出錯了!")
							}
						});
					} else {

						return false;
					}



					}
			})

		})
		$(function() {
			$("#hot").click(function() {
				var hot =document.getElementById("hott");
				hot.style.display="inline"	
							});
		})
// 		//收藏
// 		$(function() {

// 			$(".add_cart").click(function() {
// 				if (this.src = "<c:url value='/img/Love-1.png'/>") {
// 					var pid = this.id;
// 					this.src = "<c:url value='/img/love-2.png'/>"
// 					if (window.confirm('確定要收藏嗎?')) {
// 						;
// 						$.ajax({
// 							url : "<c:url value='/product/addcol'/>", //請求的url地址
// 							dataType : "json", //返回格式為json
// 							async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
// 							type : "Get",
// 							data : {
// 								"pdId" : pid
// 							}, //引數值
// 							//請求方式
// 							success : function(req) {

// 							},
// 							complete : function() {
// 								//請求完成的處理
// 							},
// 							error : function() {
// 								console.log("出錯了!")
// 							}
// 						});
// 					} else {

// 						return false;
// 					}
// 				}
// 			})

// 		})

		window.onload = function() {
			$.ajax({
				url : "<c:url value='/product/showallcount'/>", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				type : "GET", //請求方式
				success : function(req) {

					sub = document.getElementById("all");
					sub1 = document.getElementById("all1");
					sub.innerHTML = "(" + req + ")"
					sub1.innerHTML = "(" + req + ")"
				},
				complete : function() {
					//請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});

		}
		 //收藏鍵效果
		let list=document.querySelectorAll(".add_cart")

		 for(i=0;i<list.length;i++){
		 list[i].onmouseover=mouseOver; //事件繫結  重要 加 ()立即執行
		 list[i].onmouseout=mouseOut;
		}

		 let a=document.querySelectorAll(".add_cart")

		         function mouseOver() {
                   
		           this.class="aaa"
		            if(this.class=="aaa"){
		            	
			 if(this.src.indexOf("<c:url value='/img/love-2.png'/>")!=-1){
				
				 }
			 else if(this.src.indexOf("<c:url value='/img/Love-1.png'/>")!=-1)
				{    console.log(this.src)
		             this.src="<c:url value="/img/love-3.png"/>"
		         }

		             }
		 }
		         function mouseOut() {
		            this.class="add_cart"
		            if(this.class=="add_cart"){

	                     if(this.src.indexOf("<c:url value='/img/love-3.png'/>")!=-1){

	                    	 this.src="<c:url value="/img/Love-1.png"/>"
	                         }

		         }

		         }
	</script>


</body>
</html>








<!-- jquery plugins here-->

