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
		$("#one").on("click", function(){
			$.ajax({
				method : "GET",
				url : "ajaxone",
				success : one
			})
		})
		$("#two").on("click", function(){
			$.ajax({
				method : "GET",
				url : "ajaxtwo",
				success : two
			})
		})
		$("#three").on("click", function(){
			$.ajax({
				method : "GET",
				url : "ajaxthree",
				success : three
			})
		})
		$("#four").on("click", function(){
			$.ajax({
				method : "GET",
				url : "ajaxfour",
				success : four
			})
		})
	});
	
	function one(res){
		var temp= "<p>" + res + "</p>" 
		$("#result").html(temp);
	}
	function two(res){
		var company = res.company;
		var title = res.title;
		
		var tag ="<p>회사명 : " + company 
		tag += ", 직책 : " + title + "</p>"
		$("#result").html(tag);
	}
	function three(res){
		// 완성 : 10 분
		var tag = '';
		$.each(res, function(index, item){
			var company = item.company;
			var title = item.title;
			tag += "<p>회사명 : " + company 
			tag += ", 직책 : " + title + "</p>"
		});
		$("#result").html(tag);
	};
	function four(res){
		var tag = '';
		$.each(res, function(index, item){
			var company = item.company;
			var title = item.title;
			tag += "<p>" + index, + " 회사명 : " + company 
			tag += ", 직책 : " + title + "</p>"
		});
		$("#result").html(tag);
	};
</script>
</head>
<body>
	<p><a href="next">다음 처리 페이지</a></p>
	<div id="main" >
		<ul>
			<li><input id="one" type="button" value="Ajax 요청 --- 문자열" /></li>
		</ul>
		<ul>
			<li><input id="two" type="button" value="Ajax 요청 --- VO" /><li>
		</ul>
		<ul>
			<li><input id="three" type="button" value="Ajax 요청 --- ArrayList" /><li>
		</ul>
		<ul>
			<li><input id="four" type="button" value="Ajax 요청 --- Map" /><li>
		</ul>
	</div>
	
	<div id="result" style="color:red;">결과물</div>
</body>
</html>