<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<style>
.login{
	margin: 0 auto;
	justify-content: center;
	align-items: center;
	width: 600px;

}
.logininput {
	width: 350px;
	padding : 15px;
	margin: 0px auto;
}
</style>
<body>
<div class ="container">
	<div class ="login">
		<h2 class = "form-input logininput">로그인</h2>
		<form action="/parkbox/login" method = "post">
		<div class = "form-input logininput">
			<label class="field" for="email">아이디</label> 
			<input type="text"id="email" name="email" class="form-control">
		</div>
		<div class = "form-input logininput">
			<label class="field" for="password">비밀번호</label> 
			<input type="text"id="password" name="password" class="form-control">
		</div >
		<div class = "form-input logininput">
			<input type="checkbox" id = "idsave" name="" value="1"/>아이디 저장
		</div>
		<div class = "form-input logininput">
			<button type="submit" class="btn btn-secondary" style="width: 100%">로그인</button>
		</div>
		</form>
		<div class = "form-input logininput">
			<a href ="">ID/PW 찾기</a>
			|
			<a href ="register.jsp">회원가입</a>
			|
			<a href = "">비회원 예매확인</a>
		</div>
	</div>
</div>
</body>
<%@ include file="footer.jsp"%>