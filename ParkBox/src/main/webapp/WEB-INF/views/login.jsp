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
		<form name = "form" method = "post">
		<div class = "form-input logininput">
			<label class="field" for="email">아이디</label> 
			<input type="text"id="email" name="email" class="form-control">
		</div>
		<div class = "form-input logininput">
			<label class="field" for="password">비밀번호</label> 
			<input type="text"id="pw" name="pw" class="form-control">
		</div >
		<div class = "form-input logininput">
			<input type="checkbox" id = "idsave" name="" value="1"/>아이디 저장
		</div>
		</form>
		<div class = "form-input logininput">
			<button id = "login_btn2" class="btn btn-secondary" style="width: 100%">로그인</button>
		</div>
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
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
				$("#login_btn2").on('click', function() {
					var formdata = $('form').serializeArray();
				$.ajax({
					url: "/parkbox/login",
					data : formdata,
					type: "POST",
					async:true,
					success: function(data){
						if(data == "ok"){
							alert("로그인에 성공했습니다.");
							window.location.href ="/parkbox/";
						
						}
						else{
							alert("로그인에 실패하였습니다.");
						}
					}
				});
				});
			

			
</script>