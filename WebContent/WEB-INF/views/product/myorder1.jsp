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
         
          <table class="table">
            <thead>
              <tr>
                <th scope="col">訂單編號</th>
                <th scope="col">收件人</th>
                <th scope="col">下單日期</th>
                <th scope="col">送貨地址</th>
              <th scope="col">總金額</th>
                <th scope="col">詳情明細</th>
                <th scope="col">付款</th>
              </tr>
            </thead>
            	
   	
            	
            	<c:forEach var="mem" varStatus="status" items="${order}">
            <tbody>                                                                                                                                                                                                                                                                   
              <tr>
           <td class="d-flex">
		    <p>${mem.orderId}</p>
		   
		   </td>    
       
      
                <td>
                  <div class="media">
                    
                    <div class="media-body">
                      <p>${mem.name}</p>
                    </div>
                  </div>
             
                </td>
            
                <td>
                  <h5>${mem.orderDate}</h5>
                </td>
              
                 <td>
                  <h5>${mem.shippingAddress}</h5>
                </td>
                <td>
                  <h5 class="subtotal">$${mem.total}</h5>
                </td>           
                <td>
                <a  class="btn_1" id="odd" href="<c:url value="/product/findorder/${mem.orderId}"/>">訂單明細</a></div>
                </td>
                <td>
                     <c:if test="${mem.state==1}" >
                     <a  class="btn_1" href="<c:url value="/product/findorder1"/>">付款</a>
                     </c:if>
                      <c:if test="${mem.state==2}" >
                     <h5 class="subtotal">已付款</h5>
                     </c:if>
                
                </td>
<!--                 <td class="remove-pr"> -->
<%--                 <a href="${pageContext.request.contextPath}/product/remove.do/${mem.pdId}" id="${mem.productId}" class="delete">結帳</a> --%>
			
<!-- 	            </td> -->
<!--               </tr> -->
               </c:forEach>

               </tbody>          
          </table>
          
		 
        </div>
      </div>
      </div>
  </section>
  
  
  
  
			
</body>

<script>
	

	
	
	
	
</script>







</html>