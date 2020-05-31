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

   
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
  <jsp:include page="/WEB-INF/views/top.jsp"/>



 <form id="myform" method="get" action="Cart.do" >
     <div class="product_image_area section_padding">
    <div class="container">
      <div class="row s_product_inner justify-content-between">
        <div class="col-lg-7 col-xl-7">
          <div class="product_slider_img">
            <div id="vertical">
              <div data-thumb="img/product/single-product/product_1.png">
              <img src="Images.do/${detail.productId}" alt="First slide">
              </div>
            
            </div>
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
              <input type="button" id="btnId" class="btn_3" value="直接購買"> 
             
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  <!-- Start Shop Detail  -->
    </form>
    <!-- ALL JS FILES -->
  
  
  
  
   <section class="product_description_area">
    <div class="container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        
        <li class="nav-item">
          <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
            aria-selected="false">Comments</a>
        </li>
       
      </ul>
         
<!--         <div class="tab-content" id="myTabContent"> -->
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
          <div class="row">
            
            <div class="col-lg-6">
              <div class="comment_list">
                 <c:forEach var="rp" varStatus="status" items="${rplist}">
                <div class="review_item">
                  <div class="media">
                    <div class="d-flex">
                      <img width='45' src="data:image/jpg;base64,${mbPic}">
                    </div>
                    <div class="media-body">
                    <input class="aaaa" type="text" name="pdId" value="${rp.pdId}" hidden="">
                      <h3>${rp.name}</h3>
                      <h4>${rp.replyDate}</h4>
                      <a class="reply_btn" href="#">Reply</a>
                    </div>
                  </div>
                  <h4>
                   ${rp.detail}
                 </h4>
                </div>
             </c:forEach>
              </div>
            </div>
              
              
           
            
          
              
            <div class="col-lg-6">
              <div class="review_box">
    
                <h4>Post a comment</h4>
                <form class="" action="<c:url value='/product/reply'/>" method="post" id=""
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
                  <div class="col-md-12 text-right">
                    <button type="submit" value="submit" >
                      Submit Now
                    </button>
                  </div>
                </form>
              </div>
            </div>
         
         
         
          </div>
          </div>
        </div>
      </div>

  </section>
</body>
<script>
$(function(){
	$("#btnId").click(function(){
 var formobj=document.getElementById("myform");
 //formobj.action="/CartServlet.do";
 //formobj.method="post";
 formobj.submit();	
});
})

$(function(){
	$(".btn_3").click(function() {
		var pid = this.id;
		var qtt=document.getElementById("qt").value; 
           	$.ajax({
				url : "${pageContext.request.contextPath}/product/ProductDetail.do/Cart.do", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				data : {
					"quantity":qtt , "pid":pid 
				}, //引數值
				type : "GET", //請求方式
				success : function(req) {
					if(window.confirm('確定加入購物車?')){
						;
							return true;
							}else{
						
							return false;
							}
	  
					},
				complete : function() {
					//請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});

			})
	})




</script>

</html>