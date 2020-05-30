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
    <form id="saveform" method="get" action="${pageContext.request.contextPath}/product/saveorder1" > 
   <section class="checkout_area padding_top">
    <div class="container">
     <div class="returning_customer">
   <div class="billing_details">
        <div class="row">
          <div class="col-lg-8">
            <h3>收件明細</h3>
            
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="first" name="name" value="" placeholder="收件人"/>
                
              </div>
             
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="number" name="number" value="" placeholder="電話號碼"/>
            
              </div>
               <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="company" name="address" placeholder="收件地址" value="" />
             
              </div>
              <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="company" name="email" placeholder="電子郵件" value="" />
              </div>
          
           
          </div>
          	
          <div style="width:1000px" class="col-lg-4">
            <div style="width:530px" class="order_box">
              <h2 style="border-bottom:none">你的訂單</h2>
           <table class="table">
           
            <thead>
             
              <tr>
                
                <th scope="col">商品名稱</th>       
                <th scope="col">數量</th>
                <th scope="col">總額</th>
        
              </tr>
            </thead>
               <c:forEach var="item" varStatus="status" items="${order.items}">
             <tbody>                                                                                                                                                                                                                                                                   
              <tr>     
                <td>                  
                    <div class="media-body">
                       <span class="last">${item.product.productName}</span>
                    </div>
             
                </td>           
                <td>                
                       <span class="middle">x${item.quantity}</span>               
                </td>

                <td>
                  <span class="last">$${item.total}</span>
                </td>
             
              </tr>
  
               </c:forEach>      
         
       <tr>
                 <td></td> 
                 <td style="font-size:20px">總金額</td>
                 <td>
                    <span style="font-size:20px">$${order.total}</span>
               </td>
           </tr>  
              </tbody>   
                </table>
             
             <input type="button"  class="btn_3" id="save" value="結帳" >
            </div>
          </div>
   
        </div>
      </div>
</div>
	</div>
	</section>
	 </form>
</body>

<script>
$(function(){
	$("#save").click(function(){
 var formobj=document.getElementById("saveform");
 //formobj.action="/CartServlet.do";
 //formobj.method="post";
 formobj.submit();	
});
})
</script>



</html> 
	 
	 
	 
	 
	 
	 
	 
	 
    <!-- jquery plugins here-->
             
