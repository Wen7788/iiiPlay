<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">  
    <meta name="description" content="">
    <meta name="author" content="">


  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <!-- animate CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
  <!-- owl carousel CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightslider.min.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
  <!-- flaticon CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
  <!-- style CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">



</head>

<body>
  <jsp:include page="/WEB-INF/views/top.jsp"/>



 <form id="myform" method="get" action="Cart.do" >
   <div class="product_image_area section_padding "style="height: 550px">
    <div class="container">
      <div class="row s_product_inner justify-content-between">
        <div class="col-lg-7 col-xl-7">
          <div class="product_slider_img">
           
            <div class="lSSlideWrapper usingCss" style="height: 450px; transition-duration: 600ms; transition-timing-function: ease;">
            <div id="vertical" class="lightSlider lsGrab lSSlide" style="height: 1800px; transform: translate3d(0px, -1350px, 0px);">
              <div data-thumb="/iiiPlay/product/Images.do2/${detail.productId}" class="lslide " style="height: 450px; margin-bottom: 0px;">
                <img src="/iiiPlay/product/Images.do2/${detail.productId}">
              </div>
              <div data-thumb="/iiiPlay/product/Images.do3/${detail.productId}" class="lslide" style="height: 430px; margin-bottom: 0px;">
                <img src="/iiiPlay/product/Images.do3/${detail.productId}">
              </div>
              <div data-thumb="/iiiPlay/product/Images.do/${detail.productId}" class="lslide active" style="height: 450px; margin-bottom: 0px;">
                <img src="/iiiPlay/product/Images.do/${detail.productId}">
              </div>
              <div data-thumb="/iiiPlay/product/Images.do1/${detail.productId}" class="lslide " style="height: 450px; margin-bottom: 0px;">
                <img src="/iiiPlay/product/Images.do1/${detail.productId}">
              </div>
            </div>
            <div class="lSAction"><a class="lSPrev"></a><a class="lSNext"></a></div></div>
           
          
 
          </div>
        </div>
        <div class="col-lg-5 col-xl-4">
          <div style="width:450px" class="s_product_text">
            <h3>${detail.productName}</h3>
            <h2>$${detail.price}</h2>
            <ul class="list">
              <li>               
                 <a href="#">  <span>類型</span>${detail.category}</a>
              </li>
              <li>
                <a href="#"> <span>庫存</span>${detail.stock}</a>
              </li>
            </ul>
            <p>
              First replenish living. Creepeth image image. Creeping can't, won't called.
              Two fruitful let days signs sea together all land fly subdue
            </p>
            <div class="card_area d-flex justify-content-between align-items-center">
              <div class="product_count">
           <input id="qt" name="quantity" class="form-control" value="1" min="0" max="20" type="number">

                	<input class="aaaa" type="text" name="pid" value="${detail.productId}" hidden="">
              </div>
             <input type="button" id="${detail.productId}" class="btn_3" value="加入購物車"> 
              <input type="button" id="btnId" class="" value="直接購買"> 
             
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  <!-- Start Shop Detail  -->
    </form>
    <!-- ALL JS FILES -->

   <section class="product_description_area" >
    <div class="container" style="position ;top:100px">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
            aria-selected="false">Specification</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
            aria-selected="true">Comments</a>
        </li>
       
      </ul>
       
<!--         <div class="tab-content" id="myTabContent"> -->
   
        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
          <div class="table-responsive">
            <table class="table">
              <tbody>
                <tr>
                  <td>
                    <h4>背光形式</h4>
                  </td>
                  <td>
                    <h4>RGB 1680萬色</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>按鍵數</h4>
                  </td>
                  <td>
                    <h4>7鍵</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>解析度 </h4>
                  </td>
                  <td>
                    <h4>100-16000 dpi</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>消耗電流 </h4>
                  </td>
                  <td>
                    <h4> 最大200 mA</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>USB 線長 </h4>
                  </td>
                  <td>
                    <h4>180 cm</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>產品重量 </h4>
                  </td>
                  <td>
                    <h4>約138 g</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>保固期 : 2年</h4>
                  </td>
                  <td>
                    <h4> 2年</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h4>回報率 </h4>
                  </td>
                  <td>
                    <h4>125/250/500/1000 Hz</h4>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        
        
        
                  <c:if test="${empty rplist }">
              <div class="tab-pane fade show active" id="contact" role="tabpanel" aria-labelledby="contact-tab">
          <div class="row">
            
             <div class="col-lg-6">
              <div class="comment_list">
             <div class="comment_list">
             <br>
               <br>
              <br>
             <h4>此產品尚無評論</h4>
          </div>
           </div>
            </div>
           <div class="col-lg-6">
              <div class="review_box">
    
                <h4>Post a comment</h4>
                <form id="rpform" action="<c:url value='/product/reply'/>" method="post" id=""
                  novalidate="novalidate">
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="text" class="form-control" id="name" name="name" placeholder="名稱 "/>
                   <input class="aaaa" type="text" name="pId" value="${detail.productId}" hidden="">
                     <input class="aaaa" type="text" name="pId" value="${detail.productId}" hidden="">
                    </div>
               
               
                  </div>
           
                  
                  <div class="col-md-12">
                    <div class="form-group">
                      <textarea class="form-control" name="replyDetail" id="message" rows="1"
                        placeholder="您的評論"></textarea>
                    </div>
                  </div>
                  <div  class="col-md-12 text-right">
                    <button type="submit" value="submit"  class="genric-btn primary circle arrow" id="rep">
                                                               傳送
                    </button>
                  </div>
                </form>
              </div>
            </div>
         
         </div>
            </div  >
            
           </c:if>
            <c:if test="${not empty rplist}">
          <div class="tab-pane fade show active" id="contact" role="tabpanel" aria-labelledby="contact-tab">
          <div class="row">

            <div class="col-lg-6">
              <div class="comment_list">
             <c:forEach var="rp" varStatus="status" items="${rplist}">
                <div class="review_item">              
                  <div class="media">
                    <div class="d-flex">
                      <img height='75px' width='70px'
	         src='${pageContext.request.contextPath}/member/getImage/${rp.id}' alt='沒有圖片'>
                    </div>
                    <div class="media-body">
                    <input class="aaaa" type="text" name="pdId" value="${rp.pdId}" hidden="">
                      <h3>${rp.name}</h3>
                      <h4>${rp.replyDate}</h4>

                  <h4>
                   ${rp.detail}
                 </h4>
                     
                     
          <c:if test="${rp.id==MemberBean.id}">
		<a class="reply_btn" href="<c:url value="/product/replydel/${rp.replyId}"/>">刪除</a>
			</c:if>
 
                    </div>
                  </div>
       
                    
                    </div>
                    </c:forEach>
                  </div>
 
                </div>
         
         
              
           
            
          
              
            <div class="col-lg-6">
              <div class="review_box">
    
                <h4>Post a comment</h4>
                <form id="rpform" action="<c:url value='/product/reply'/>" method="post" id=""
                  novalidate="novalidate">
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="text" class="form-control" id="name" name="name" placeholder="名稱 "/>
                   <input class="aaaa" type="text" name="pId" value="${detail.productId}" hidden="">
                     <input class="aaaa" type="text" name="pId" value="${detail.productId}" hidden="">
                    </div>
               
               
                  </div>
           
                  
                  <div class="col-md-12">
                    <div class="form-group">
                      <textarea class="form-control" name="replyDetail" id="message" rows="1"
                        placeholder="您的評論"></textarea>
                    </div>
                  </div>
                  <div  class="col-md-12 text-right">
                    <button type="submit" value="submit"  class="genric-btn primary circle arrow" id="rep">
                                                               傳送
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          </div>
         </c:if>
          </div>
        </div>
    

  </section>
</body>

<script>
$(function(){
	$("#btnId").click(function(){
 var formobj=document.getElementById("myform");

formobj.submit();	
	
});
})
</script>

<script>
$(function() {
		$(".reply_btn").click(function() {
			if(window.confirm('確定刪除?')){
				;
					return true;
					}else{
				
					return false;
					}

			})
		});
</script>
<script>
$(function(){
	$(".primary").click(function(){
 var formobj=document.getElementById("rpform");
	if(window.confirm('送出評論?')){
		;
 formobj.submit();	
	}else{
		
		return false;
		}

});
})
</script>
<script>
$(function(){
	$(".btn_3").click(function() {


		var pid = this.id;
		var qtt=document.getElementById("qt").value; 
           
		if(window.confirm('確定加入購物車?')){
			;
			
				$.ajax({
					url : "${pageContext.request.contextPath}/product/ProductDetail.do/Cart.do", //請求的url地址
					dataType : "json", //返回格式為json
					async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
					data : {
						"quantity":qtt , "pid":pid 
					}, //引數值
					type : "GET", //請求方式
					success : function(req) {
					console.log(req)
						},
					complete : function() {
						//請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});

				}else{
			
				return false;
				}


			})
	})

</script>
 <script src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
  <!-- popper js -->
  <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
  <!-- bootstrap js -->
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <!-- easing js -->
  <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"></script>
  <!-- swiper js -->
  <script src="${pageContext.request.contextPath}/js/lightslider.min.js"></script>
  <!-- swiper js -->
  <script src="${pageContext.request.contextPath}/js/masonry.pkgd.js"></script>
  <!-- particles js -->
  <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
  <!-- slick js -->
  <script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/swiper.jquery.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/contact.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath}/js/stellar.js"></script>
   <script src="${pageContext.request.contextPath}/js/price_rangs.js"></script>
  <!-- custom js -->
  <script src="${pageContext.request.contextPath}/js/theme.js"></script>
  <script src="${pageContext.request.contextPath}/js/custom.js"></script>
</html>