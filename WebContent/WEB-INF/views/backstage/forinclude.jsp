<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ela Admin - HTML5 Admin Template</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet"
	href="<c:url value='/assets/css/cs-skin-elastic.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/lib/datatable/dataTables.bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/style.css'/>">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

<!-- Scripts -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="<c:url value='/assets/js/main.js'/>">
	
</script>


<script
	src="<c:url value='/assets/js/lib/data-table/datatables.min.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/dataTables.bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/dataTables.buttons.min.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/buttons.bootstrap.min.js'/>"></script>
<script src="<c:url value='/assets/js/lib/data-table/jszip.min.js'/>"></script>
<script src="<c:url value='/assets/js/lib/data-table/vfs_fonts.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/buttons.html5.min.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/buttons.print.min.js'/>"></script>
<script
	src="<c:url value='/assets/js/lib/data-table/buttons.colVis.min.js'/>"></script>
<script src="<c:url value='/assets/js/init/datatables-init.js'/>"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#bootstrap-data-table-export').DataTable();
	});
</script>



</head>
<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}

.h1 {
	font-family: Microsoft Yahei;
	height: 40px;
	font-weight: bold;
	font-size: 32px;
	margin-right: 0;
}

.i {
	margin-left: 0;
}

.bs {
	background-color: #3C3C3C;
}
</style>
<body>
	<!-- Left Panel -->

	<aside id="left-panel" class="left-panel"
		style="background-color: #3C3C3C">
		<nav class="navbar navbar-expand-sm navbar-default bs">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active" style="background-color: #3C3C3C "><a style="font-size:18px"
						href="<c:url value='/bs'/>"><i class="menu-icon fa fa-laptop  "></i>儀錶板
					</a></li>
					<li class="menu-title" ><font style="color: #FFFFFF ; font-size:18px" >會員管理</font></li>
					<!-- /.menu-title -->
					<!-- 					<li class="menu-item-has-children dropdown"><a href="#" -->
					<!-- 						class="dropdown-toggle" data-toggle="dropdown" -->
					<!-- 						aria-haspopup="true" aria-expanded="false"> <i -->
					<!-- 							class="menu-icon fa fa-cogs"></i>會員資料 -->
					<!-- 					</a> -->

					<li><a 
						href="<c:url value='/getAllMember'/>"> <i
							style="color: #FFFFFF" class="menu-icon fa fa-cogs"></i><font style="color: #FFFFFF ; font-size:18px">會員列表</font>
					</a></li>
				



					<li class="menu-title" style="color: #FFFFFF ; font-size:18px">商品管理</li>
					<!-- /.menu-title -->



					<li><a style="color: #FFFFFF "
						href="<c:url value='/product/insert'/>"><i
							style="color: #FFFFFF" class="menu-icon fa fa-tasks"></i><font style="font-size:18px">商品上架</font> </a></li>



					<li><a style="color: #FFFFFF ; font-size:18px"
						href="<c:url value='/backstage/SearchOrdersFinal'/>"> <i
							class="menu-icon ti-email" style="color: #FFFFFF"></i>訂單查詢
					</a></li>




					<li class="menu-title" style="color: #FFFFFF ; font-size:18px">討論區</li>
					<!-- /.menu-title -->


					<li><a style="color: #FFFFFF ; font-size:18px"
						href="<c:url value='/forum/showAllBoard'/>"><i
							style="color: #FFFFFF" class="menu-icon fa fa-glass"></i>看板維護清單</a></li>



					<li class="active" style="background-color: #3C3C3C "><a style=" font-size:18px"
						href="<c:url value='/'/>">前台首頁 </a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>






</body>
</html>

