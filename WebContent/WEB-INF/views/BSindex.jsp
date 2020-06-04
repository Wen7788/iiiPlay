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
		[ '12', ${countm12}, ${countK12} ,${countM12} ,${countE12}] ]);
		var options = {
			title : '',
			hAxis : {
				title : 'Month',
				titleTextStyle : {
					color : '#333'
				}
			},
			vAxis : {
				minValue : 0
			}
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
			title : '男女消費佔比',
			pieHole : 0.7,
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
			title : 'My Daily Activities'
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



// 		 function drawChart() {
//         var data = google.visualization.arrayToDataTable([
//           ['Year', 'Sales', 'Expenses', 'Profit'],
//           ['2014', ${countL11}, ${countR11}, ${countY11}],
//           ['2015', ${countL22}, ${countR22},  ${countY22}],
//           ['2016', ${countL33}, ${countR33}, 300],
//           ['2017', ${countL44}, ${countR44}, 350]     ]);



        var options = {
          chart: {
            title: '',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>


<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['',            '羅技',      '雷蛇',       '曜越'],
          ['第一季', ${countL11}, ${countR11}, ${countY11}],
          ['第二季', ${countL22}, ${countR22}, ${countY22}],
          ['第三季', ${countL33}, ${countR33}, ${countY33}],
          ['第四季',  ${countL44},${countL44}, ${countL44}]
        ]);

        var options = {
          title : 'Monthly Coffee Production by Country',
          vAxis: {title: 'Cups'},
          hAxis: {title: 'Month'},
          seriesType: 'bars',
          series: {5: {type: 'line'}}        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>



<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['', 'Sales', 'Expenses', 'Profit', 'Sales', 'Expenses', 'Profit', 'Sales', 'Expenses', 'Profit'],
          [' ', 1000, 400, 200, 1000, 400, 200, 1000, 400, 200],
         
        ]);

        var options = {
          chart: {
            title: '',
            subtitle: '',
          },
          bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>


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
</style>
</head>

<body>
	<!-- Left Panel -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/bs'/>"><i
							class="menu-icon fa fa-laptop"></i>儀錶板 </a></li>
							
							
							
							
					<li class="menu-title">會員管理</li>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-cogs"></i>會員資料
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-puzzle-piece"></i><a
								href="ui-buttons.html">Buttons</a></li>
							<li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Badges</a></li>
							<li><i class="fa fa-bars"></i><a href="ui-tabs.html">Tabs</a></li>

							<li><i class="fa fa-id-card-o"></i><a href="ui-cards.html">Cards</a></li>
							<li><i class="fa fa-exclamation-triangle"></i><a
								href="ui-alerts.html">Alerts</a></li>
							<li><i class="fa fa-spinner"></i><a
								href="ui-progressbar.html">Progress Bars</a></li>
							<li><i class="fa fa-fire"></i><a href="ui-modals.html">Modals</a></li>
							<li><i class="fa fa-book"></i><a href="ui-switches.html">Switches</a></li>
							<li><i class="fa fa-th"></i><a href="ui-grids.html">Grids</a></li>
							<li><i class="fa fa-file-word-o"></i><a
								href="ui-typgraphy.html">Typography</a></li>
						</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-table"></i>備用
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="tables-basic.html">Basic
									Table</a></li>
							<li><i class="fa fa-table"></i><a href="tables-data.html">Data
									Table</a></li>
						</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-th"></i>備用
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-th"></i><a
								href="forms-basic.html">Basic Form</a></li>
							<li><i class="menu-icon fa fa-th"></i><a
								href="forms-advanced.html">Advanced Form</a></li>
						</ul></li>

					<li class="menu-title">商品管理</li>
					<!-- /.menu-title -->

					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-tasks"></i>商品上下架
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-fort-awesome"></i><a
								href="font-fontawesome.html">商品補貨</a></li>
							<li><i class="menu-icon ti-themify-logo"></i><a
								href="font-themify.html">訂單管理</a></li>
						</ul></li>

					<li><a href="<c:url value='/backstage/SearchOrdersFinal'/>">
							<i class="menu-icon ti-email"></i>訂單查詢
					</a></li>

					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-bar-chart"></i>圖表
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-line-chart"></i><a
								href="charts-chartjs.html">Chart JS</a></li>
							<li><i class="menu-icon fa fa-area-chart"></i><a
								href="charts-flot.html">Flot Chart</a></li>
							<li><i class="menu-icon fa fa-pie-chart"></i><a
								href="charts-peity.html">Peity Chart</a></li>
						</ul></li>

					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-area-chart"></i>備用
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-map-o"></i><a
								href="maps-gmap.html">Google Maps</a></li>
							<li><i class="menu-icon fa fa-street-view"></i><a
								href="maps-vector.html">Vector Maps</a></li>
						</ul></li>
					<li class="menu-title">討論區</li>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-glass"></i>看板管理
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="page-login.html">Login</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="page-register.html">Register</a></li>
							<li><i class="menu-icon fa fa-paper-plane"></i><a
								href="pages-forget.html">Forget Pass</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>
	<!-- /#left-panel -->
	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">
		<!-- Header-->
		<header id="header" class="header">
			<div class="top-left">
				<div class="navbar-header">
					<a class="navbar-brand h1">後台管理系統</a> <a id="menuToggle"
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
											<div class="stat-heading">總營業額</div>
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
											<div class="stat-heading">總訂單數</div>
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
											<div class="stat-heading">總文章數</div>
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
											<div class="stat-heading">總會員數</div>
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
							<div class="card-body">
								<h1>每月成交量</h1>
							</div>
							<div id="chart_div2" style="width: 100%; height: 600px;"></div>
							<!-- /.row -->
							<div class="card-body"></div>
						</div>
					</div>
					<!-- /# column -->
				</div>
				
				
				
				
				


				<div class="content">
					<div class="animated fadeIn">
						<div class="row">
							<div class="col-lg-6">
								<div class="card">
									<div class="card-body">
										<h3 class="mb-3">男女消費佔比</h3>
										<div id="donutchart" style="width: 100%; height: 500px;"></div>
									</div>
								</div>
							</div>

							<div class="col-lg-6">
								<div class="card">
									<div class="card-body">
										<h3 class="mb-3">男女會員佔比</h3>
										<div id="piechart" style="width: 100%; height: 500px;"></div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>





				<!-- Content -->
				

							<div class="row">
								<div class="col-lg-12" >
									<div class="card" >
										<div class="card-body">
											<h1 >每季成交量</h1>
										</div>
										<div id="columnchart_material" style="width: 100%; height: 500px;margin: 30px"></div>
										<!-- /.row -->
										<div class="card-body"></div>
									</div>
								</div>
								<!-- /# column -->
							</div>

							
								<div class="row">
								<div class="col-lg-12" >
									<div class="card" >
										<div class="card-body">
											<h1 >看板點擊數統計</h1>
										</div>
										<div id="barchart_material" style="width: 100%; height: 500px;"></div>
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

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>

	<!--  Chart js -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

	<!--Chartist Chart-->
	<script
		src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
	<script src="assets/js/init/weather-init.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
	<script src="assets/js/init/fullcalendar-init.js"></script>

	<!--Local Stuff-->
	
</body>
</html>
