<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정확인</title>
<style type="text/css">
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
		<div class="col-2">
			<%@ include file="managerHeader.jsp"%>
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