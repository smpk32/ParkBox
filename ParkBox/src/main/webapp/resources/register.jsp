<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- datepicker  사용을 위한 설정 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
.register {
	background-color: #E0ECF8;
	width: 800px;
	justify-content: center;
	padding : 100px;
	margin : 100px;
	align-items: center;
}

.registerin {
	width: 350px;
	padding : 15px;
	margin: 0px auto;
}
</style>
<body>
	<div class="container register">
		<h2 class="form-input registerin">회원가입</h2>
		<div class="form-input registerin">
			<label class="field" for="name">이메일</label> <input type="text"
				id="email" name="email" class="form-control"> <input
				type="submit" value="중복확인" onclick="javascript:search()" />
		</div>
		<div class="form-input registerin">
			<label class="field" for="password">비밀번호</label> 
			<input type="text" id="password" name="password" class="form-control">
		</div>
		<div class="form-input registerin">
			<label class="field" for="passwordCheck">비밀번호확인</label> <input
				type="text" id="passwordCheck" name="passwordCheck"
				class="form-control">
		</div>
		<div class="form-input registerin">
			<label class="field" for="name">이름</label> <input type="text"
				id="name" name="name" class="form-control">
		</div>
		<div class="form-input registerin">
			<label class="field" for="name">생년월일</label> <input type="text"
				id="testDatepicker" name="name" class="form-control">
		</div>
		<div class="form-check registerin">
			<button type="button" class="btn btn-info" style="text-align: center">확인</button>
			<button type="button" class="btn btn-link" style="text-align: center">취소</button>
		</div>
	</div>
</body>
<script>
	$(function() {
		$("#testDatepicker").datepicker(
				{
					changeYear : true,
					changeMonth : true,
					nextText : '다음 달',
					prevText : '이전 달',
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					minDate : "-50Y"
				});
	});
</script>
<%@include file = "footer.jsp"%>