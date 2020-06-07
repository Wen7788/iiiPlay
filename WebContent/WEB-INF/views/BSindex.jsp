<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>後台管理</title>
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
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css"
	rel="stylesheet" />





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
	font-family: Arial;
	height: 40px;
	font-weight: bold;
	font-size: 32px;
	margin-right: 0;
}

.i {
	margin-left: 0;
}

.title {
	font-size: 24px;
	background-color: #272727; 
	font-family: Arial;
	letter-spacing: 3px;
	border-radius: 5px;
	color: #FFFFFF;
}

.top{
   font-size:20px;
}


</style>
</head>

<body>

	<jsp:include page="/WEB-INF/views/backstage/forinclude.jsp" />

	<!-- /#left-panel -->
	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">

		<header id="header" class="header" style="background-color: #3C3C3C ">
			<div class="top-left">
				<div class="navbar-header" style="background-color: #3C3C3C ">
					<a class="navbar-brand h1" style="color: #FFFFFF ">後台管理系統</a> <a id="menuToggle"
						class="menutoggle" style="text-align: left"> <i
						class="fa fa-bars"></i></a>
				</div>
			</div>


		</header>
		<!-- /#header -->
		<!-- Content -->
		<div class="content">
			<!-- Animated -->
			<div class="animated fadeIn">
				<!-- Widgets  -->
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-1">
										<i class="pe-7s-cash"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">${countsale}</span>
											</div>
											<div class="stat-heading"><a class="top">總營業額</a></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-2">
										<i class="pe-7s-cart"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">${countorder}</span>
											</div>
											<div class="stat-heading"><a class="top">總訂單數</a></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-3">
										<i class="pe-7s-browser"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">${countarticle}</span>
											</div>
											<div class="stat-heading"><a class="top">總文章數</a></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-4">
										<i class="pe-7s-users"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">${cmember}</span>
											</div>
											<div class="stat-heading"><a class="top">總會員數</a></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Widgets -->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body" style="text-align: center">
								<a class="title" style="color: white">每月成交量</a>
							</div>
							<div id="chart_div2"></div>
							<!-- /.row -->
							<div class="card-body"></div>
						</div>
					</div>
					<!-- /# column -->
				</div>


				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body" style="text-align: center">
								<a class="title" style="color: white">男女消費佔比</a>
								<div id="donutchart" style="width: 100%; height: 500px;"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="card">
							<div class="card-body" style="text-align: center">
								<a class="title" style="color: white">男女會員佔比</a>
								<div id="piechart" style="width: 100%; height: 500px;"></div>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body" style="text-align: center">
								<a class="title" style="color: white">每季成交量</a>
							</div>
							<div id="columnchart_material"></div>
							<!-- /.row -->
							<div class="card-body"></div>
						</div>
					</div>
					<!-- /# column -->
				</div>





			</div>
			<!-- .animated -->
		</div>
		<!-- /.content -->

		<div class="clearfix"></div>
		<!-- Footer -->
		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6">Copyright &copy; 2018 Ela Admin</div>
					<div class="col-sm-6 text-right">
						Designed by <a href="https://colorlib.com">Colorlib</a>
					</div>
				</div>
			</div>
		</footer>
		<!-- /.site-footer -->
	</div>
	<!-- /#right-panel -->



	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization.arrayToDataTable([

		[ 'Month', '滑鼠', '鍵盤' ,'耳機','滑鼠墊'], 
		[ '01', ${countm1},  ${listK[0]} ,${listE[0]}, ${listM[0]}],
		[ '02', ${countm2},  ${listK[1]} , ${listE[1]} , ${listM[1]}], 
		[ '03', ${countm3},  ${listK[2]} , ${listE[2]} , ${listM[2]}], 
		[ '04', ${countm4},  ${listK[3]} , ${listE[3]} , ${listM[3]}],
		[ '05', ${countm5},  ${listK[4]} , ${listE[4]} , ${listM[4]}], 
		[ '06', ${countm6},  ${listK[5]} , ${listE[5]} , ${listM[5]}], 
		[ '07', ${countm7},  ${listK[6]} , ${listE[6]} , ${listM[6]}],
		[ '08', ${countm8},  ${listK[7]} , ${listE[7]} , ${listM[7]}], 
		[ '09', ${countm9},  ${listK[8]} , ${listE[8]} , ${listM[8]}], 
		[ '10', ${countm10}, ${listK[9]} , ${listE[9]} , ${listM[9]}],
		[ '11', ${countm11}, ${listK[10]} ,${listE[10]} ,${listM[10]}], 
		[ '12', ${countm12} , ${countK12} ,${countM12} ,${countE12}] ]);
		var options = {
			title : '',
			hAxis : {
				title : '月份',
				titleTextStyle : {
					color : '#333'
				}
			},
			vAxis : {
				minValue : 0
			},
			height : 600 , 
			fontSize : 24,
			legend : {position :'top' , alignment : 'center'}
					
				
		};

		

		var chart = new google.visualization.AreaChart(document
				.getElementById('chart_div2'));
		chart.draw(data, options);
	}
</script>
	<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Member', 'cost' ], 
				[ '男性消費總數', ${countMm}], 
				[ '女性消費總數', ${countFf}],
				 ]);

		var options = {
			title : '',
			pieHole : 0.4,
			fontSize : 20,
			colors : ['#6495ED','#F08080'],
			legend : {position :'top' , alignment : 'center'}
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
		chart.draw(data, options);
	}
</script>
	<script type="text/javascript">
	google.charts.load('current', {'packages' : [ 'corechart' ]});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

		var data = google.visualization.arrayToDataTable([
				[ 'Member', 'number' ], 
				[ '男性會員', ${countMale}], 
				[ '女性會員', ${countFemale}],
				 ]);

		var options = {
			title : '',
			fontSize : 20,
			colors : ['#6495ED','#F08080'],
			legend : {position :'top' , alignment : 'center'}
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));

		chart.draw(data, options);
	}
</script>

	<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['', '羅技', '雷蛇', '曜越'],
          ['第一季', ${countL11}, ${countR11}, ${countY11}],
          ['第二季', ${countL22}, ${countR22}, ${countY22}],
          ['第三季', ${countL33}, ${countR33}, ${countY33}],
          ['第四季', ${countL44}, ${countR44}, ${countY44}]  ]);



        var options = {
        	height : 600 ,
        	width : '90%',
        	legend : {position :'left' , alignment : 'center'},
            fontSize : 24,
            chartArea:{left:200,right:200},
          chart: { 	
            title: '',
            subtitle: '',         
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>







</body>
</html>
