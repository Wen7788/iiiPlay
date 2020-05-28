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
<jsp:include page="/WEB-INF/views/top.jsp"/>


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
									<span >(5)</span>
								</li>
								
								<li>
									<a href="#">優惠專區</a>
									<span>(5)</span>
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
                                        <div class="price_text">
                                            <p>Price :</p>
                                        </div>
                                        <div  style="width:100px;" class="price_value d-flex justify-content-center">
                                            <input type="text" size="20"  class="js-input-from1"   />
                                            <span >to</span>
                                           <input type="text"  class="js-input-to2"   />
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
										<div class="single_product_item" id="div1">                 
											<img class="detail1 src"  id="${mem.productId}" width='150' src="<c:url value="/product/Images.do/${mem.productId}"/>" alt="" >
											
											<div class="single_product_text">																						   
											   <h4 class="detail na" id="${mem.productId}">${mem.productName} </h4>
												<h3 class="zzz">$${mem.price}</h3>
												
												<input type="button"  class="btn_3" id="${mem.productId}" value="加入購物車" >
											
											</div>

										</div>
									</div>
                                      </c:forEach>
              
              
              </div>
                                           
                 </div>
        </div>
     </div>
</section> 
    <section class="product_list best_seller">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>Best Sellers <span>shop</span>
					</h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">
                        <div class="single_product_item">
                            <img src="img/product/product_1.png" alt="">
                            <div class="single_product_text">
                                <h4>Quartz Belt Watch</h4>
                                <h3>$150.00</h3>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>          
    
    <script>
	$(function(){
		$(".detail").click(function() {
			
				var pid = this.id;
				window.location.href = "<c:url value="/product/ProductDetail.do/"/>"+ pid;
				
		});
	})
	$(function(){
		$(".detail1").click(function() {
			
				var pid = this.id;
				window.location.href = "<c:url value="/product/ProductDetail.do/"/>"+ pid;
				
		});
	})
	 </script>
	 

	<script>
	$(function(){
	$(".btn_3").click(function() {
		
		var pid = this.id;
           	$.ajax({
				url : "ProductDetail.do/Cart.do", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				data : {
					"quantity":1  , "pid":pid 
				}, //引數值
				type : "GET", //請求方式
				success : function(req) {
                alert("確定加入購物車?")
					console.log(req);
  
				},
				complete : function() {
					//請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});
//            	mymap.removeLayer(sitemarker);
			})
	})
	
	
	

	window.onload=function(){
		$.ajax({
			url : "<c:url value='/product/showallcount'/>", //請求的url地址
			dataType : "json", //返回格式為json
			async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
			type : "GET", //請求方式
			success : function(req) {
      
            sub=document.getElementById("all");
            sub1=document.getElementById("all1");
            sub.innerHTML="("+req+")"
            sub1.innerHTML="("+req+")"
			},
			complete : function() {
				//請求完成的處理
			},
			error : function() {
				console.log("出錯了!")
			}
		});

		}
	
	
	
	
	
	</script>
			
	
</body>
</html> 
	 
	 
	 
	 
	 
	 
	 
	 
    <!-- jquery plugins here-->
             
