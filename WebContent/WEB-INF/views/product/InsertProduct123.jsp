<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp"/>
	
	<div class="container" style="margin-top: 100px">
		<form method="post"
			action="Insertpd.do">

			<fieldset>
				<legend>上架商品資料</legend>
				
				<div class="form-group">
					<label for="exampleFormControlInput1">上架商品no</label> <input
						type="text" class="form-control" id="exampleFormControlInput1"
						placeholder="" name="pdno" value="${param.pdno}">
					<font color='red' size='-1'>${error.pdno}</font>
				</div>
				<div class="form-group">
					<label for="exampleFormControlInput1">上架商品名稱</label> <input
						type="text" class="form-control" id="exampleFormControlInput1"
						placeholder="" name="pdname" value="${param.pdname}">
					<font color='red' size='-1'>${error.pdname}</font>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">上架商品類型</label> <select
						class="form-control" id="exampleFormControlSelect1"
						name="category">
						<option selected="selected" disabled="disabled"
							style='display: none' value=''></option>
						<option>滑鼠</option>
						<option>鍵盤</option>
						<option>耳機</option>
						<option>滑鼠墊</option>
					
					</select> <font color='red' size='-1'>${error.category}</font>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">上架品牌類型</label> <select
						class="form-control" id="exampleFormControlSelect1"
						name="companyId">
						<option selected="selected" disabled="disabled"
							style='display: none' value=''></option>
						<option>羅技</option>
						<option>曜越</option>
						<option>雷蛇</option>
			
					
					</select> <font color='red' size='-1'>${error.companyId}</font>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">上架商品價錢</label> <input
						type="text" class="form-control" id="exampleFormControlSelect1"
						name="price" value="${param.price}">
					
					 <font color='red' size='-1'>${error.price}</font>
				</div>
				<button type="submit" class="btn btn-dark">送出</button>

			</fieldset>
		</form>
	</div>
</body>
</html>