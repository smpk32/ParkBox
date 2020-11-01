<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<style type="text/css">
.text-center {
	text-align: center;
}

.book {
	background-color: #0B2161;
	color: white;
	height: 40px;
	line-height: 40px;
}

.boxmenu {
	margin-top: 5px;
	padding: 0 10px;
}

.like-btn {
	background-color: #0B2161;
	color: white;
	height: 40px;
}

.circle {
	border-radius: 10px;
}

.HTag {
	display: inline;
}
.nav-color{
color:#0B2161;
}
</style>
</head>
<body>
	<div class="container">
		<!-- 상당 영화 타이틀 -->
		<div class="row">
			<div class="col-9">
				<h2>영화제목</h2>
				<div class="row boxmenu pt-5 mt-5">
					<div class="row col-4 text-center pt-5 mt-5">
						<div class="col-8 m-auto book circle">예매</div>
						<div class="col-3 m-auto like-btn circle">
							<i class="far fa-heart" style="line-height: 40px;"></i>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-3">
						<h5>예매율</h5>
					</div>
					<div class="col-9">
						<h4>누적관객수</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h3 class="HTag">
							<i class="fas fa-ticket-alt"></i>1
						</h3>
						위 24.2%
					</div>
					<div class="col-9">
						<h3 class="HTag">
							<i class="fas fa-users"></i>6200
						</h3>
						명
					</div>
				</div>
			</div>
			<div class="col-3 text-center">
				<img alt="" src="" width="100%" height="400px"
					style="background-color: gray">
			</div>
		</div>

		<!-- 하단 영화 상세 -->
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active nav-color"
				data-toggle="tab" href="#information">주요 정보</a>
				<p></p></li>
			<li class="nav-item"><a class="nav-link nav-color"
				data-toggle="tab" href="#review">실관람평</a></li>
			<li class="nav-item"><a class="nav-link nav-color"
				data-toggle="tab" href="#video">예고편/스틸컷</a></li>
		</ul>
		<div class="tab-content">
			<!-- 첫번째 탭 -->
			<div class="tab-pane fade show active" id="information">
				<div>
					<h3>마이 드림 이즈 커리어우먼!</h3>
					<br>
					<p>
						1995년, 토익 600점만 넘기면 대리가 될 수 있다!<br> <br> 입사 8년차 동기인 말단
						여직원들이 ‘삼진그룹 영어토익반’에 모인다! 실무 능력 퍼펙트, 현실은 커피 타기 달인인 생산관리3부 오지랖
						‘이자영’(고아성), 추리소설 마니아로 뼈 때리는 멘트의 달인 마케팅부 돌직구 ‘정유나’(이솜), 수학 올림피아드 우승
						출신, 실체는 가짜 영수증 메꾸기 달인 회계부 수학왕 ‘심보람’(박혜수)은 대리가 되면 진짜 ‘일’을 할 수 있을
						것이라는 희망에 부푼다. <br> 내부고발이라도 하게? 나서지 마. 우리만 다쳐 <br> 잔심부름을
						하러 간 공장에서 검은 폐수가 유출되는 것을 목격한 ‘자영’은 ‘유나’, ‘보람’과 함께 회사가 무엇을 감추고자
						하는지, 결정적 증거를 찾으려 한다. 불가능해 보이는 싸움, 세 친구는 해고의 위험을 무릅쓰고 고군분투를 시작하는데…
						<br> 아이 캔 두 잇, 유 캔 두 잇, 위 캔 두 잇! 회사와 맞짱 뜨는 용감한 세 친구!
					</p>
				</div>
			</div>
			<hr>
			
			
			<div class="tab-pane fade" id="review">
				<p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin
					fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
			</div>
			<div class="tab-pane fade" id="video">
				<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis
					leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque
					commodo consectetur faucibus. Aenean eget ultricies justo.</p>
			</div>
		</div>

	</div>
</body>

<%@ include file="footer.jsp"%>