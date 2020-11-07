<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<style>
#register {
	border: 1px solid #0B2161;
	justify-content: center;
	width: 700px;
	padding: 30px;
	margin : 15px auto;
	align-items: center;
}

#registerForm {
	width: 400px;
	margin: 40px auto;
}

#registerForm label {
	display: block;
}

#registerForm input {
	display: inline-block;
	width: 300px;
}
.registerBtn {
	text-align: center;
	margin-top: 40px;
}
.registerBtn button {
	width: 250px;
	height: 50px;
	margin: 0 auto;
	background-color: #0B2161;
	color: white;
	border: none;
}
</style>
<body>
<div class = "container">
	<div id="register">
		<h2 style="text-align: center;">회원가입</h2>
		
		<form id="registerForm" action="/register" method="post" class="needs-validation" novalidate>
		    <div class="form-group">
		      <label for="email">이메일</label>
		      <input type="email" class="form-control" id="email" placeholder="이메일을 입력해주세요" name="email" required>
		      <button type="button" onclick="checkEmail()" class="btn btn-info">중복확인</button>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
		    
		    <div class="form-group">
		      <label for="pw">비밀번호</label>
		      <input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력해주세요" name="pw" required>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
		    
		     <div class="form-group">
		      <label for="pwdChk">비밀번호 확인</label>
		      <input type="password" class="form-control" id="pwdChk" placeholder="비밀번호를 재입력해주세요" name="pwdChk" required>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
		    
		    <div class="form-group">
		      <label for="name">이름</label>
		      <input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요" name="name" required>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
		    
		    <div class="form-group">
		      <label for="phone">휴대폰번호</label>
		      <input type="tel" class="form-control" id="phone" placeholder="휴대폰번호를 입력해주세요" name="phone" required>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
		    
		    <div class="form-group">
		      <label for="birth">생년월일</label>
		      <input type="date" class="form-control" id="birth" name="birth" required>
		      <div class="invalid-feedback">Please fill out this field.</div>
		    </div>
    		
    		<div class="registerBtn">
		    	<button type="submit" class="btn" onclick="#">회원가입</button>
	    	</div>
 	 	</form>
	
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

	// Disable form submissions if there are invalid fields
	(function() {
	  'use strict';
	  window.addEventListener('load', function() {
	    // Get the forms we want to add validation styles to
	    var forms = document.getElementsByClassName('needs-validation');
	    // Loop over them and prevent submission
	    var validation = Array.prototype.filter.call(forms, function(form) {
	      form.addEventListener('submit', function(event) {
	        if (form.checkValidity() === false) {
	          event.preventDefault();
	          event.stopPropagation();
	        }
	        form.classList.add('was-validated');
	      }, false);
	    });
	  }, false);
	})();	
</script>
<%@include file = "footer.jsp"%>