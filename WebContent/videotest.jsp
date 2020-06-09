<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="<c:url value='/css/video.css'/>"/> --%>

<style>
.video{
	position:absolute;
	top:0;
	left:0;
/* 	min-width:100%; */
	overflow:hidden;
/* 	min-height:100%; */
	display: flex;
	align-items: center;
	justify-content: center;
	overflow: hidden;
	background-size: cover;
}

</style>




</head>
<body>
	<div class="video">
		<video autoplay muted loop  >
			<source src="video/backgroundvideo.mp4" type="video/mp4" />
		</video>


	</div>


</body>
</html>