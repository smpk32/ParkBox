<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정확인</title>
<style type="text/css">
.myPageNav th, .myPageNav td {
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
.updateCheck{
	position: absolute;
	top: 40%;
	left: 40%;
	justify-content: center;
	align-items: center;
}
.updateText{
	text-align: center;
}
</style>
</head>
<body>
	<div class="container row">
		<!-- 마이페이지 네비게이션바 -->
		<div class="myPageNav col-2">
			<table style="border: 1px solid #D8D8D8;">
				<tr>
					<th style="background-color: #F2F2F2">나의 파크박스</th>
				</tr>
				<tr>
					<td><a href="#">예매내역</a></td>
				</tr>
				<tr>
					<td><a href="#">멤버십포인트</a></td>
				</tr>
				<tr>
					<td><a href="#">무비스토리</a></td>
				</tr>
				<tr>
					<td><a href="#">나의문의내역</a></td>
				</tr>
				<tr>
					<td><a href="#">회원정보수정</a></td>
				</tr>
			</table>
		</div>

		<!-- 마이페이지 - 회원정보수정 -->
		<div class="updateCheck">
			<h2>회원정보</h2>
			<hr style = "border-bottom: 2px solid gray"/>
			<div class ="updateText">
				<p>회원님의 개인정보 보호를 위해 비밀번호를 입력하셔야 합니다.</p>
				<p style ="font-size:small">로그인 시 사용하는 비밀번호를 입력해주세요.</p>
				<input type="text" id="password">
				<hr/>
				<button type="button" class="btn btn-outline-dark">취소</button>
				<button type="button" class="btn btn-primary">확인</button>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>