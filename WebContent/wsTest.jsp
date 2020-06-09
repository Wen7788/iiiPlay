<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.3.0/sockjs.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
	<script>
	var contextRoot = "/iiiPlay";
	var wsEndpoint = contextRoot + "/greeting";

	toastr.options = {
			  "closeButton": false,
			  "debug": false,
			  "newestOnTop": true,
			  "progressBar": true,
			  "positionClass": "toast-bottom-right",
			  "preventDuplicates": true,
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			}
	
	function connect() {
	    var socket = new SockJS(wsEndpoint);
	    var stompClient = Stomp.over(socket);

	    stompClient.connect({}, function(frame) {

	        stompClient.subscribe("/user/queue/msg", function(message) {
	            console.log(message.body);
	            wrapper.notify();
	            toastr.into(message.body);
	        });
	    }, function(error) {
	        alert("STOMP error " + error);
	    });
	}

	var wrapper = new Vue({
		el: "#wrapper",
		data: {
			total:"",
			rows:"",
		},
		methods:{
			notify: function(){
				$.getJSON(contextRoot+"/forum/message",function(r){
					wrapper.total = r.total;
					wrapper.rows = r.rows;
				});
			}
		},
		created: function(){
			this.notify()
		}
	});
	
	</script>
	
	<div id="wrapper">
 <!--訊息通知開始-->
    <div class="small-chat-box fadeInRight animated">
        <div class="heading" draggable="true">
                 系統訊息
        </div>
        <div  id="version">
            <ul class="dropdown-messages" style="list-style: none;">
                <li v-for="row in rows" class="m-t-xs">
                    <div class="dropdown-messages-box">
                        <a class="pull-left" style="padding-right: 7px;">
                            <i class="fa fa-cloud-download fa-2x"></i>
                        </a>
                        <div class="media-body">
                            <small class="pull-right">{{row.before}}</small>
                            <strong>{{row.oper_table}}</strong><br/>
                            <small class="text-muted">{{row.crt_tm}}</small>
                        </div>
                    </div>
                    <div class="divider"></div>
                </li>
                <li>
                    <div class="text-center link-block" style="border-top: 1px solid #000;">
                        <a class="J_menuItem" href="#"> <i class="fa fa-envelope"></i> <strong> 檢視所有訊息</strong></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="small-chat" draggable="true">
        <span class="badge badge-warning pull-right">{{total}}</span>
        <a class="open-small-chat">
            <i class="fa fa-envelope"></i>
        </a>
    </div>
    <!--訊息通知結束-->
</div>
</body>
</html>