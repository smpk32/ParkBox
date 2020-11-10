<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- JSTL -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 아이콘 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

<!-- 데이트피커 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" />
<!-- 데이트피커 한국어설정 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous"></script>


<style type="text/css">
@font-face {
    font-family: 'NanumSquare';
    src: url('./NanumSquare_acR.ttf') format('truetype'), 
}
@font-face {
    font-family: 'NanumBarunGothic';
    src: url('./NanumBarunGothic.ttf') format('truetype'), 
}
body {
	font-family: 'NanumBarunGothic';
}
.container {
	width: 1200px;
	padding: 30px 0;
	margin: 0 auto;
}
a, a:link, a:visited, a:hover {
	text-decoration: none;
	color: black;
}
.row {
	width: 100%;
    margin: 0 auto;
}
#header {
	background-color: #0B2161;
	padding: 0 20px;
}
#mainLogo {
	height: 100px;
	width: 300px;
    text-align: center;
    vertical-align: middle;
    margin: 0 auto;
}
#topLink {
    text-align: right;
    padding-top: 5px;
}
#topLink a {
	color: white;
}
#topLink a:hover {
	color: #A9D0F5;
}
#mainMenu {
	font-size: 20px;
	color: white;
}
#menuRight {
	text-align: right;
}
.headerMenu { 
	display: none;
	text-align: center;
	position: absolute;
	z-index: 1;
	font-size: 15px;
	width: 200px;
	padding-top: 10px;
}
.headerMenu a {
	color:white;
	height: 45px;
	border: none;
}
.nav-item:hover .list-group {
	display: block;
}
.nav-item > .list-group {
	text-align: center;
}
.list-group-item-action {
	background-color: #0B2161;
	color: #FFFFFF;
}
#siteMapWrap {
	background-color: white;
	text-align: center;
	display: none;
	position: absolute;
	z-index: 1;
	width: 100%;
}
#siteMap {
	text-align: center;
	border: 1px solid grey;
	width: 1100px;
	margin: 0 auto;
}
#siteMap th, #siteMap td {
	width: 150px;
	height: 50px;
	border-right: 1px dotted grey;
	color: #0B2161;
}
#siteMap a {
	color: black;
}
/* 스크롤 바 넓이 16px */
::-webkit-scrollbar{width: 15px;}
/* 스크롤 바 트랙 색상 */
::-webkit-scrollbar-track {
    background-color: #E6E6E6;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
  }
/* 스크롤 구간 색상 */
::-webkit-scrollbar-thumb {
	background-color:#0B2161;
	border-radius: 10px;
    background-clip: padding-box;
    border: 2px solid transparent;
} 
/* 스크롤 바 위에 마우스 올렸을 때(hover) 색상 */
::-webkit-scrollbar-thumb:hover {background-color: #0174DF;} 
</style>

<script type="text/javascript">
$(function () {
	//allMenu버튼 클릭하면 siteMap div나오게 하기
	$('#allMenu').click(function() {	
		$('#allMenuIcon').toggleClass('fa-bars fa-times-circle');
		$('#siteMapWrap').toggle();
	});
	
	//siteMap버튼 누르면 사이트맵 보였다가 안보였다가
	$('#siteMap a').hover(function() {	
		$(this).parent().css('background-color','#0B2161');
		$(this).css('color','white');
	},function() {
		$(this).parent().css('background-color','white');
		$(this).css('color','black');
	});
});
</script>
</head>
<body>
<div id="header">
<div class="container" style="padding: 10px 0;">
	<!-- 로그인/회원가입 링크 -->
	<div id="topLink">
		<a href="#">로그인</a>
		<span>&nbsp;&nbsp;</span>
		<a href="#">회원가입</a>
	</div>
	
	<!-- 메인로고 -->
	<div id="mainLogo">
		<a href="#"><img id="logo" src="/parkbox/resources/logow.png" alt="메인으로 가기" width="300px"></a>
	</div>
	
	<!-- 상단왼쪽아이콘(전체메뉴/영화검색) -->
	<div id="mainMenu" class="row">
		<div class="col-2">
			<div class="row">
				<div class="col-4">
					<a id="allMenu"><i id="allMenuIcon" class="fas fa-bars"></i></a>
				</div>
				<div class="col-4">
					<a id="findMovie"><i class="fas fa-search"></i></a>
				</div>
			</div>
		</div>
		
		<!-- 상단 주메뉴 -->
		<div class="col-8">
			<ul class="nav nav-pills nav-justified">
				<li class="nav-item">
					<a id="movie">영화</a>
					<div class="list-group list-group-flush headerMenu">
						<a href="#" class="list-group-item list-group-item-action">박스오피스</a>
 						<a href="#" class="list-group-item list-group-item-action">상영중인영화</a>
						<a href="#" class="list-group-item list-group-item-action">개봉예정영화</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="ticketing">예매</a>
					<div class="list-group list-group-flush headerMenu">
						<a href="#" class="list-group-item list-group-item-action">빠른예매</a>
 						<a href="#" class="list-group-item list-group-item-action">상영시간표</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="theater">극장</a>
					<div class="list-group list-group-flush headerMenu">
						<a href="#" class="list-group-item list-group-item-action">전체극장</a>
 						<a href="#" class="list-group-item list-group-item-action">특별관</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="event">이벤트</a>
					<div class="list-group list-group-flush headerMenu">
						<a href="#" class="list-group-item list-group-item-action">진행중 이벤트</a>
 						<a href="#" class="list-group-item list-group-item-action">지난 이벤트</a>
 						<a href="#" class="list-group-item list-group-item-action">당첨자 발표</a>
					</div>
				</li>
			</ul>
		</div>
		
		<!-- 마이페이지 아이콘 -->
		<div id="menuRight" class="col-2">
			<a id="myPage"><i class="far fa-user"></i></a>
		</div>
	</div> <!-- 헤더메인메뉴 끝 -->
</div> <!-- 컨테이너 끝 -->
</div> <!-- 헤더 끝 -->

<!-- 사이트맵 -->
	<div id="siteMapWrap" >
    	<table id="siteMap">
                <tr>
                    <th>영화</th>
                    <th>예매</th>
                    <th>극장</th>
                    <th>이벤트</th>
                    <th>나의 파크박스</th> 	<!-- 해당 라인 클릭시 로그인 여부 확인 -->
                    <th>고객센터</th>
                </tr>
                <tr>
                    <td><a href="#">박스오피스</a></td>
                    <td><a href="#">빠른예매</a></td>
                    <td><a href="#">전체극장</a></td>
                    <td><a href="#">진행중이벤트</a></td>
                    <td><a href="#">나의 파크박스 홈</a></td>
                    <td><a href="#">고객센터 홈</a></td>
                </tr>
                <tr>
                    <td><a href="#">상영예정작</a></td>
                    <td><a href="#">상영시간표</a></td>
                    <td><a href="#">특별관</a></td>
                    <td><a href="#">지난이벤트</a></td>
                    <td><a href="#">예매내역</a></td>
                    <td><a href="#">공지사항</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">당첨자발표</a></td>
                    <td><a href="#">멤버십포인트</a></td>
                    <td><a href="#">1:1문의</a></td>
                </tr>
                 <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">무비스토리</a></td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">나의문의내역</a></td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">회원정보수정</a></td>
                    <td></td>
                </tr>
          </table>      
    </div>

</body>

</html>
