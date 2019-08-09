<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$("#send").on("click", function(){
			$.ajax({
				method : "GET",
				url : "firstAjax",
				data : "msg=Hi~", // url로 보내는 값
				success : function(res){ // Controller로 부터 return 받아온 값
					alert(res.name);
				}
			}) // XMLHttpRequest 객체를 생성
		});
	})
</script>
</head>
<body>
	<form action="" method=""></form>
	<input id="send" type="button" value="ClICK ME!"><br>
	<img src="http://cdn.dealbada.com/restapi/image/resizeWidth/1080/data/editor/1810/e034112c64f9ad75f5c88a00a9522aa5_1539700857_9796.jpg" width="300px">
</body>
</html>