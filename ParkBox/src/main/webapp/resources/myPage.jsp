<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
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
#memInfo {
	background-color: #0A0A2A;
	color: white;
}
.infoFirst {
	height: 150px;
	display: flex;
	align-items: center;
}
.infoSecond {
	height: 150px;
	display: flex;
	align-items: center;
}
#memTicket, #memAsk {
	margin: 30px auto;
	width: 90%;
}
.askSecond {
	height: 100px;
	display: flex;
	align-items: center;
}
</style>
<script type="text/javascript">

function seeMore(val) {
	var target = val;
	alert(target);
	
	// target이 point면 포인트페이지로 이동
	// target이 watch면 무비스토리 - 내가 본 영화 목록으로 이동
	// target이 review면 무비스토리 - 한줄 평 목록으로 이동
	// target이 like면 무비스토리 - 내가 찜한 영화 목록으로 이동
}
</script>
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
	
	<!-- 마이페이지 컨텐츠영역 -->
	<div class="col-10">
		
		<!-- 회원등급, 포인트, 무비스토리 -->
		<div id="memInfo">
			<div class="row infoFirst">
				<div class="col-2 ml-auto">
					<a><i class="fas fa-user-astronaut fa-7x"></i></a>
				</div>
				<div class="col-8 mr-auto">
					<h3>ㅇㅇㅇ님 환영합니다</h3>
					<h3>고객님은 ㅇㅇㅇ등급입니다</h3>
				</div>		
			</div>
			<div class="row infoSecond">
				<div class="col-2 m-auto">
					<h4>보유포인트</h4>
					<div onclick="seeMore('point')" >
						<h2>###P</h2>
						<span>소멸포인트 ##</span>
					</div>
				</div>
				<div class="col-8">
					<h4>무비스토리</h4>
					<div class="row">
						<div class="col" onclick="seeMore('watch')">
							<h2>###</h2>
							<span>본 영화</span>
						</div>
						<div class="col" onclick="seeMore('review')">
							<h2>###</h2>
							<span>한줄평</span>
						</div>
						<div class="col" onclick="seeMore('like')">
							<h2>###</h2>
							<span>찜한 영화</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br/><br/>
		<!-- 나의 예매내역 -->
		<div id="memTicket">
			<div class="row" style="border-bottom: 2px solid #D8D8D8;">
				<div class="col-10"><h3>나의 예매 내역</h3></div>
				<div class="col-2">더보기 > </div>
			</div>
			<div class="row infoSecond" style="border-bottom: 1px solid #D8D8D8;">
				<div class="col-2"> <!-- 포스터작게들어갈자리 -->
					<img alt="" src="" width="100%" height="130px" style="background-color: gray">
				</div>
				<div class="col-8">
					<p>결제일시 : 2020-11-01</p>
					<p>예매내역이 들어가있음~~</p>
					<p>예매내역예매내역</p>
				</div>
				<div class="col-2"><button class="btn btn-info">예매취소</button></div>
			</div>
		</div>
		<br/><br/>
		<!-- 문의내역 -->
		<div id="memAsk">
			<div class="row" style="border-bottom: 2px solid #D8D8D8;">
				<div class="col-10"><h3>문의내역</h3></div>
				<div class="col-2">더보기 > </div>
			</div>
			<div class="askSecond">
				<table class="table-borderless" style="width:100%;">	<!-- 문의내역이 있는 경우에만 불러오기 -->
					<tr>
						<th style="width:13%">문의종류</th>
						<td style="width:73%">문의날짜</td>
						<td rowspan="2" style="width:15%"><button class="btn btn-outline-info" disabled>답변여부</button></td>
					</tr>
					<tr>
						<td colspan="2">문의글 제목 ~~~어쩌구저쩌구</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>