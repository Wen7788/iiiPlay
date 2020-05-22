<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加入會員</title>
    <script
  src="https://code.jquery.com/jquery-3.5.0.js"
  integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc="
  crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body style="background: #f2f2f2" >
<%@ include file="top.jsp" %>
    <div class="container" >
    <br>
         <H1 style="text-align: center ">加入會員</H1>
        <form action="insertMember.do"  method='POST' >
            <div class="form-group row">
                <label for="id" class="col-sm-2 col-form-label">id</label>
                <div class="col-sm-10">
                  <input type="text" name="id" class="form-control" id="id" placeholder="abc123456" value="${param.id}">
                  <font color='red' size='-1'>${error.id}</font>
                </div>
              </div>
            <div class="form-group row">
              <label for="password" class="col-sm-2 col-form-label">Password</label>
              
              <div class="col-sm-10">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" value="${param.password}" >
                <font color='red' size='-1'>${error.password}</font>
              </div>
            </div>
            
              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" name="name" class="form-control" id="name" placeholder="王曉明" value="${param.name}">
                  <font color='red' size='-1'>${error.name}</font>
                </div>
              </div>
              <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">E-mail</label>
                <div class="col-sm-10">
                  <input type="text" name="email" class="form-control" id="email" placeholder="email@example.com" value="${param.email}">
                  <font color='red' size='-1'>${error.email}</font>
                </div>
              </div>
              <div class="form-group row">
                <label for="age" class="col-sm-2 col-form-label">Age</label>
                
                <div class="col-sm-10">
                  <input type="text" name="age" class="form-control" id="age" placeholder="20" value="${param.age}">
                  <font color='red' size='-1'>${error.age}</font>
                </div>
              </div>
              <div class="form-group row">
                <label for="gender" class="col-sm-2 col-form-label">Gender</label>
                <div class="col-sm-10">
                    <label>
                        <input type="radio" name="gender" value="male" checked>male
                    </label>
                    <label>
                        <input type="radio" name="gender" value="female">female
                    </label>
                </div>
              </div>
              <div class="form-group row">
                <label for="gender" class="col-sm-2 col-form-label">Games</label>
                <div class="col-sm-10">
                    
                    <label>
                        <input type="checkbox" name="games" value="LOL" checked>LOL
                    </label>
                    <label>
                        <input type="checkbox" name="games" value="PUBG">PUBG
                    </label>
                    <label>
                        <input type="checkbox" name="games" value="CSGO">CSGO
                    </label>
                    <input type="hidden" name="status"  value="1" >
                </div>
                <br>
                <br>
                <br>
                <div style="margin: auto;">
                <button type="submit" class="btn btn-primary">送出</button>

                <button type="reset" class="btn btn-danger">清除</button>
                </div>

            </div>
            
          </form>
    </div>

    
</body>
</html>