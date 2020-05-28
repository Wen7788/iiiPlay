<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href=css/form3.css>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>

<body >

<jsp:include page="/WEB-INF/views/top.jsp"/>


<h1 width="400">所有商品</h1>


              
			<div class="row align-items-center latest_product_inner">
	
									<c:forEach var="mem" varStatus="status" items="${memberList}">
						
									<div class="col-lg-4 col-sm-6">
										<div class="single_product_item">
											<img width='150' src="Images1.do/${mem.productId}" alt="">
											<div class="single_product_text">
											<a href="ProductDetail.do?pdid=${mem.productId}"> ${mem.productName} </a>	
												<h3>$${mem.price}</h3>
												<a href="ProductDetail.do?pdid=${mem.productId}" class="add_cart">
													+ add to cart
													<i class="ti-heart"></i>
												</a>
											</div>

										</div>
									</div>
                                      </c:forEach>
              
              
              </div>
			
                        
  <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- slick js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/stellar.js"></script>
    <script src="js/price_rangs.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>       
</body>

<script>
 /*
 let list=document.querySelectorAll(".img1")
 
 
 for(i=0;i<list.length;i++){
 list[i].onmouseover=mouseOver; //事件繫結  重要 加 ()立即執行
 list[i].onmouseout=mouseOut;
}

 let a=document.querySelectorAll(".img1")
        
   
        
         function mouseOver() {
            this.class="img2"
         if(this.class=="img2"){
             this.src="images/購物車-02.png"
         }
                
                          
             }
        
         function mouseOut() {
            this.class="img1"
            if(this.class=="img1"){
             this.src="images/購物車-01.png"
         }
            
         }
    */     
 
 </script>



</html>