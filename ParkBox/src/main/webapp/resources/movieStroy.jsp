<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>무비스토리</title>
<style type="text/css">
.myPageNav th, .myPageNav td  {
	width: 150px;
	height: 80px;
	text-align: center;
	border: 1px solid #D8D8D8;
	color: #0B2161;
}
.myPageNav a {
	color: #0B2161;
}
.myPageNav a:hover {
	color: #A9D0F5;
}
.myPageContent {
	background: black;
}

</style>
</head>
<body>
<div class="container row">
	<!-- 마이페이지 네비게이션바 -->
	<div class="myPageNav col-2">
		<table style="border: 1px solid #D8D8D8;">
			<tr><th style="background-color:#F2F2F2 ">나의 파크박스</th></tr>
			<tr><td><a href="#">예매내역</a></td></tr>
			<tr><td><a href="#">멤버십포인트</a></td></tr>
			<tr><td><a href="#">무비스토리</a></td></tr>
			<tr><td><a href="#">나의문의내역</a></td></tr>
			<tr><td><a href="#">회원정보수정</a></td></tr>
		</table>
	</div>
	
	<!-- 마이페이지 - 무비스토리 -->
	<div class="myPageContent col-10">
	
	</div>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>