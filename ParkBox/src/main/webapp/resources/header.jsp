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
	min-width: 1200px;
}
#header {
	background-color: 
}
#mainLogo {
	min-height: 100px;
    text-align: center;
    vertical-align: middle;
    margin-bottom: 10px;
}
#logo {
	width: 350px;
}
#topLink {
    text-align: right;
    margin-top: 10px;
}

#mainMenu {
	font-size: 23px;	
}
#menuRight {
	text-align: right;
}
.nav-item {
	text-align: center;
}
.list-group { 
	display: none;
	text-align: center;
	position: absolute;
	z-index: 1;
	font-size: 17px;
}
.nav-item:hover .list-group {
	display: block;
}
</style>
</head>
<body>

<div id="header" class="container">

	<div id="topLink" class="">
		<a href="#">로그인</a>
		<span>&nbsp; | &nbsp;</span>
		<a href="#">회원가입</a>
	</div>
		
	<div id="mainLogo" class="">
		<a href="#"><img id="logo" src="./LOGO.png" alt="메인으로 가기"></a>
	</div>

	<div id="mainMenu" class="row">
		<div class="col-sm-2">
			<div class="row">
				<div class="col-sm-4">
					<a id="siteMap"><i class="fas fa-bars"></i></a>
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
						<a href="#" class="list-group-item disabled">진행중 이벤트</a>
 						<a href="#" class="list-group-item disabled">지난 이벤트</a>
 						<a href="#" class="list-group-item disabled">당첨자 발표</a>
					</div>
				</li>
			</ul>
		</div>

		<div id="menuRight" class="col-sm-2">
			<a id="myPage"><i class="far fa-user"></i></a>
		</div>
	</div> <!-- 헤더메인메뉴 끝 -->
	
</div> <!-- 컨테이너 끝 -->
</body>

</html>
