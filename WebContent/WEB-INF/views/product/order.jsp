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
            <input type="text" class="form-control" id="first" name="name" value="${param.name}" placeholder="收件人(必填)" onblur="checkName()"/>  
                  <font color='red' id="first1" size='-1'></font> 
              </div>
             
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="number" name="number" value="${param.number}" placeholder="電話號碼(必填)"onblur="checknum()"/>
                 <font color='red' id="number1" size='-1'></font> 
              </div>
               <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="address" name="address" placeholder="收件地址(必填)" value="${param.address}" onblur="checkadr()"/>
                  <font color='red' id="address1" size='-1'></font>
              </div>
              <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="" name="email" placeholder="電子郵件" value="${param.email}" />
              <font color='red' id="" size='-1'></font>
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
           
            <tr>
                 <td>  <input type="button"  class="btn_3" id="save" value="結帳" ></td> 
                 <td >  <input type="button"  class="btn_3" id="save1" value="生成訂單" ></td>
                 <td>
                  
           </tr>  
              </tbody>   
                </table>
             <div></div>
            
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


 function checkName() {
           
            let spanName = document.getElementById("first1");
            let theName = document.querySelector("#first");
            let theNameVal = theName.value;
            let theNameLen = theNameVal.length;
          
            if (theNameVal == "") {
                spanName.innerHTML = "名稱不能為空"
            } 

            }

 function checknum() {
     
     let spanName = document.getElementById("number1");
     let theName = document.querySelector("#number");
     let theNameVal = theName.value;
     let theNameLen = theNameVal.length;
   
     if (theNameVal == "") {
         spanName.innerHTML = "電話不能為空"
     } 

     }
 function checkadr() {
     
     let spanName = document.getElementById("address1");
     let theName = document.querySelector("#address");
     let theNameVal = theName.value;
     let theNameLen = theNameVal.length;
   
     if (theNameVal == "") {
         spanName.innerHTML = "地址不能為空"
     } 

     }

 </script>






<script>
$(function(){
	$("#save").click(function(){
 var formobj=document.getElementById("saveform");
 var id = document.getElementById("first");
 var num = document.getElementById("number");
 var adr = document.getElementById("address");
 if (id.value == "" || num.value == ""|| num.value == "") {
     alert("請輸入完整資訊");
 } else {
	 var formobj=document.getElementById("saveform");

	 formobj.submit();	
 }

});
})


$(function(){
	$("#save1").click(function(){
 var formobj=document.getElementById("saveform");
 formobj.action="<c:url value='/product/saveorder2'/>";
 //formobj.method="post";
 var id = document.getElementById("first");
 var num = document.getElementById("number");
 var adr = document.getElementById("address");
 if (id.value == "" || num.value == ""|| num.value == "") {
     alert("請輸入完整資訊");
 } else {
	 var formobj=document.getElementById("saveform");
	 formobj.action="<c:url value='/product/saveorder2'/>";
	 formobj.submit();	
 }
	});
})

</script>



</html> 
	 
	 
	 
	 
	 
	 
	 
	 
    <!-- jquery plugins here-->
             
