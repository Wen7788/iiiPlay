<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


</head>
<body>

<jsp:include page="/WEB-INF/views/top.jsp"/>
	


			

<section class="cart_area padding_top">
    <div class="container">
      <div class="cart_inner">
        <div class="table-responsive">
          <form id="myform" method="post" action="<c:url value="/product/update.do"/>">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">商品圖</th>
                <th scope="col">商品名稱</th>
                <th scope="col">商品價錢</th>
                <th scope="col">數量</th>
                <th scope="col">總額</th>
                <th scope="col">刪除</th>
              </tr>
            </thead>
      
      	<tbody>                                                                                                                                                                                                                                                                   
	    
            	<c:forEach var="mem" varStatus="status" items="${cart.orderItems}">
            
              <tr>
           <td class="d-flex">
			<img  width='130' class="single_product_item" src="Images.do/${mem.product.productId}" alt="" />
		   
		   </td>    
       
                <td>
                  <div class="media">
                    
                    <div  class="media-body">
                      <p id="pdn" class="pdd">${mem.product.productName}</p>
                    </div>
                  </div>
                </td>
                <td>
                  <h5>$${mem.product.price}</h5>
                </td>
                <td>
                  <div class="product_count">
                      <input id="${mem.product.productId}" name="quantity" class="qt" value="${mem.num}" min="0" max="20" type="number">
                       
                  </div>
                </td>
                <td>
                  <h5 class="subtotal">$${mem.subtotal}</h5>
                </td>
                <td class="remove-pr">
                <a href="${pageContext.request.contextPath}/product/remove.do/${mem.product.productId}" id="${mem.product.productId}" class="btn_1 aaaa" style="width:120px">刪除</a>
			
	            </td>
              </tr>
               </c:forEach>
		<tbody> 
      	<c:if test="${empty cart.orderItems }">
		<tr class="bottom_button">
                <td>
                 <div> 
            <a id="clear1" class="btn_1" href="<c:url value="/product/CartServlet1.do"/>">清空購物車</a></div>  
                </td>
                <td></td>
                <td></td>
                <td><h4>購物車尚無商品</h4></td>
                <td></td>
                <td></td>
            
              </tr>
             </c:if>
      	  </tbody>
             <c:if test="${not empty cart.orderItems}"> 
          <tr class="bottom_button">
                <td>
                 <div> 
            <a id="clear1" class="btn_1" href="<c:url value="/product/CartServlet1.do"/>">清空購物車</a></div>  
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            
              </tr>
           </c:if>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
               
                <td>
                  <h3>目前訂單總額</h3>
                </td>
                <td>
                  <h3 id="total">$${cart.total}</h3>
                </td>
              </tr>
               
               </tbody>          
      
          </table>
           </form>
		  <div class="checkout_btn_inner float-right">
            <a class="btn_1" href="${pageContext.request.contextPath}/product/allproducts">繼續購物</a>
            <a class="btn_1 checkout_btn_1" id="save" >填寫收件資料</a>
          </div>
        </div>
      </div>
      </div>
  </section>
  
  
  
  
			
</body>

<script>
	$(function() {
		$(".aaaa").click(function() {



			if(window.confirm('確定刪除?')){
				;
					return true;
					}else{
				
					return false;
					}

			})
		});
	
	$(function() {
		$(".checkout_btn_1").click(function() {


 			var pdn=document.getElementsByClassName("pdd");
              

                plength=pdn.length
                console.log( plength)  
                window.location.href
                 if(plength>0){
                	  window.location.href="${pageContext.request.contextPath}/product/saveorder"
                
                     }      
             
                 else if(plength==0){

                     var a=confirm('購物車無商品,要去購物嗎') 
                     if(a){
                    	  window.location.href="${pageContext.request.contextPath}/product/allproducts"
                       }else{
           				
       					return false;
       					}

                	 
                     }
             
			})
		});


	$(function() {
		$("#clear1").click(function() {
			if(window.confirm('確定清除?')){
				;
					return true;
					}else{
				
					return false;
					}
		});
	})

// 	$(function() {
// 		$("#clear").click(function() {
// 			if (confirm("確認更新?")) {
// 				var formobj = document.getElementById("myform");
// 			    var qt  =document.getElementsByClassName('qt');
// 				var value1 = document.getElementsByClassName('aaaa');
//                   var val  ="";
//                    var qtt  =""; 
// 				for(var i=0; i<value1.length; i++){
// 					val=value1[i].value
                    
// 					qtt=qt[i].value
					
// 					formobj.action = "update.do/pid"+val+"&quantity="+qtt;
					
// 					}
				

// 				 console.log(val);
// 				console.log(qtt);
// 			}
		
// 		});
// 	})
	
	
	$(function(){
		 
 	
			 
	$(".qt").change(function() {	 
		 var pid = this.id; 
		 var qtt = this.value; 
	console.log(this)
			console.log("數量: " + qtt)
			console.log("ID: " + pid)
           	$.ajax({
				url : "${pageContext.request.contextPath}/product/ProductDetail.do/update.do", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				data : {
					"quantity":qtt , "pid":pid,
				}, //引數值
				type : "GET", //請求方式
				success : function(req) {
					 console.log(req)                       
					  var obj= JSON.parse
					
					  for(var i=0; i<req.orderItems.length; i++){
                             
							 sb= req.orderItems[i].subtotal
							 console.log("money: " + sb) 
							 sub=document.getElementsByClassName("subtotal");
							 sub[i].innerHTML="$"+sb;

							  }
			
		             var t="$"+req.total
  
				
					to=document.getElementById("total");					
					to.innerHTML=t;
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
	
	
	
	//for(var i=0; i<value1.length; i++){
	//				val=value1[i].value
       ///             console.log(val);
		//			qtt=qt[i].value
		//			console.log(qtt);
					
			//		formobj.action = "CartServlet3.do?pid="+val+"&quantity="+qtt;
			//		console.log(formobj.action);
			//		}
</script>







</html>