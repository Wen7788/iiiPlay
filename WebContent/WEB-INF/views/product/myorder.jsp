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
                  <th scope="col">商品數量</th>
                <th scope="col">總額</th>
                <th scope="col">詳情明細</th>
              </tr>
            </thead>
            	
   	
            	
            	<c:forEach var="mem" varStatus="status" items="${oitem}">
            <tbody>                                                                                                                                                                                                                                                                   
              <tr>
           <td class="d-flex">
			<img  width='130' class="single_product_item" src="<c:url value="/product/Images.do/${mem.pdId.productId}"/>" alt="" />
		   
		   </td>    
       
      
                <td>
                  <div class="media">
                    
                    <div class="media-body">
                      <p>${mem.pdId.productName}</p>
                    </div>
                  </div>
             
                </td>
            
                <td>
                  <h5>${mem.pdId.price}</h5>
                </td>
              
                 <td>
                  <h5>${mem.quantity}</h5>
                </td>
                <td>
                  <h5 class="subtotal">${mem.total}</h5>
                </td>
                <td>
                <a  class="btn_1" href="<c:url value="/product/findorder1"/>">訂單明細</a></div>
                </td>

               </c:forEach>

               </tbody>          
          </table>
           </form>
		 
      </div>
      </div>
  </section>
  
  
  
  
			
</body>

<script>
	$(function() {
		$(".delete").click(function() {
			if (confirm("確認刪除?")) {
			

			}

		});
	})
	$(function() {
		$("#clear1").click(function() {
			if (confirm("確認清除?")) {
				
	

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
							 sub[i].innerHTML=sb;

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