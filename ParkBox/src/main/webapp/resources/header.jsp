<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PARKBOX</title>
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
<style type="text/css">
.container {
	width: 1200px;
	padding: 0;
	margin: 0 auto;
}
a {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color: #A9D0F5;
}
#header {
	background-color: #0B2161;
	position: relative;
	padding: 10px 20px;
}
#mainLogo {
	height: 100px;
	width: 300px;
    text-align: center;
    vertical-align: middle;
    margin: 0 auto;
    padding-top: 10px;
}
#logo {
	width: 300px;
}
#topLink {
    text-align: right;
    position: absolute;
    padding-top: 5px;
    right: 20px;
    width: 150px;
}

#mainMenu {
	font-size: 20px;
	color: white;
}
#menuRight {
	text-align: right;
}
.list-group { 
	display: none;
	text-align: center;
	position: absolute;
	z-index: 1;
	font-size: 15px;
	width: 200px;
	padding-top: 10px;
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
#siteMap {
	text-align: center;
	border: 1px solid #BDBDBD;
	background-color:white;
	display: none;
	position: absolute;
	z-index: 1;
}
#siteMap th,td {
	width: 150px;
	height: 50px;
	border-right: 1px solid #BDBDBD;
	color: #0B2161;
}
#siteMap a {
	color: black;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$('#allMenu').click(function() {	//allMenu버튼 클릭하면 siteMap div나오게 하기
		$('#allMenuIcon').toggleClass('fa-bars fa-times-circle');
		$('#siteMap').toggle();
	});
	
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

<div id="header" class="container">
	<div id="topLink" class="">
		<a href="#">로그인</a>
		<span>&nbsp;&nbsp;</span>
		<a href="#">회원가입</a>
	</div>
		
	<div id="mainLogo" class="">
		<a href="#"><img id="logo" src="./logow.png" alt="메인으로 가기"></a>
	</div>

	<div id="mainMenu" class="row">
		<div class="col-sm-2">
			<div class="row">
				<div class="col-sm-4">
					<a id="allMenu"><i id="allMenuIcon" class="fas fa-bars"></i></a>
				</div>
				<div class="col-sm-4">
					<a id="findMovie"><i class="fas fa-search"></i></a>
				</div>
			</div>
		</div>

		<div class="col-sm-8">
			<ul class="nav nav-pills nav-justified">
				<li class="nav-item">
					<a id="movie">영화</a>
					<div class="list-group list-group-flush">
						<a href="#" class="list-group-item list-group-item-action">박스오피스</a>
 						<a href="#" class="list-group-item list-group-item-action">상영중인영화</a>
						<a href="#" class="list-group-item list-group-item-action">개봉예정영화</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="ticketing">예매</a>
					<div class="list-group list-group-flush">
						<a href="#" class="list-group-item list-group-item-action">빠른예매</a>
 						<a href="#" class="list-group-item list-group-item-action">상영시간표</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="theater">극장</a>
					<div class="list-group list-group-flush">
						<a href="#" class="list-group-item list-group-item-action">전체극장</a>
 						<a href="#" class="list-group-item list-group-item-action">특별관</a>
					</div>
				</li>
				<li class="nav-item">
					<a id="event">이벤트</a>
					<div class="list-group list-group-flush">
						<a href="#" class="list-group-item list-group-item-action">진행중 이벤트</a>
 						<a href="#" class="list-group-item list-group-item-action">지난 이벤트</a>
 						<a href="#" class="list-group-item list-group-item-action">당첨자 발표</a>
					</div>
				</li>
			</ul>
		</div>

		<div id="menuRight" class="col-sm-2">
			<a id="myPage"><i class="far fa-user"></i></a>
		</div>
	</div> <!-- 헤더메인메뉴 끝 -->
</div> <!-- 컨테이너 끝 -->

	<div class="container" >
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
