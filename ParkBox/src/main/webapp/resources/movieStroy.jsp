<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>무비스토리</title>

<style type="text/css">
.myPageNav th, .myPageNav td {
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

.myPageContent {
	background: black;
}

.story {
	position: absolute;
	top : 165px;
	left: 25%;
}

.mvstorytext {
	margin: 10px;
	top: 20px;
}

.movieStorylist {
	border-radius: 10px;
	border: 2px solid gray;
	text-align: center;
}

.storyimg {
	margin: 10px;
	float: left
}

.storynav {
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	width: 100%;
}

.storyfirst {
	float: left;
	width: 350px;
	margin-right: 10px;
	display: inline-block;
}

.storysecond {
	width: 350px;
	position: absolute;
	left: 400px;
}

.storyfirst_under {
	width: 350px;
	position: absolute;
	top: 320px;
}

.storysecond_under {
	width: 350px;
	position: absolute;
	left: 400px;
	top: 320px;
}

.storypage{
	position: absolute;
	top : 500px;
	left : 300px;
	margin-top: 5px;

	}
.storypage > li > a{
	float: none;
}

</style>
</head>
<body>
	<div class="container row">
		<!-- 마이페이지 네비게이션바 -->
		<div class="myPageNav col-2">
			<table style="border: 1px solid #D8D8D8;">
				<tr>
					<th style="background-color: #F2F2F2">나의 파크박스</th>
				</tr>
				<tr>
					<td><a href="#">예매내역</a></td>
				</tr>
				<tr>
					<td><a href="#">멤버십포인트</a></td>
				</tr>
				<tr>
					<td><a href="#">무비스토리</a></td>
				</tr>
				<tr>
					<td><a href="#">나의문의내역</a></td>
				</tr>
				<tr>
					<td><a href="#">회원정보수정</a></td>
				</tr>
			</table>
		</div>

		<!-- 마이페이지 - 무비스토리 -->
		<div class="container story">
			<h2>무비스토리</h2>
			<!-- 총 스토리 개수를 출력 -->
			총 ${map.count}건
			<p>
				<!-- 스토리 한줄 시작-->
			<div class="movieStorylist storyfirst">
				<img class="storyimg" alt="" src="" width="100px" height="100px"
					style="background-color: gray">
				<div class="mvstorytext">
					<h5>영화 제목</h5>
					<div>극장</div>
					<div>상영관</div>
					<div>관람날짜,회차정보</div>
				</div>
				<!--버튼-->
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
				<nav class="navbar navbar-expand-sm bg-light storynav"
					style="display: flex;">
					<!-- Links -->
					<ul class="navbar-nav" style="margin: auto">
						<li class="nav-item"><a class="nav-link" href="#">관람평 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">포스트 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">삭제</a></li>
					</ul>

				</nav>
			</div>
			<div class="movieStorylist storysecond">
				<img class="storyimg" alt="" src="" width="100px" height="100px"
					style="background-color: gray">
				<div class="mvstorytext">
					<h5>영화 제목</h5>
					<div>극장</div>
					<div>상영관</div>
					<div>관람날짜,회차정보</div>
				</div>
				<!--버튼-->
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
				<nav class="navbar navbar-expand-sm bg-light storynav"
					style="display: flex;">
					<!-- Links -->
					<ul class="navbar-nav" style="margin: auto">
						<li class="nav-item"><a class="nav-link" href="#">관람평 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">포스트 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">삭제</a></li>
					</ul>

				</nav>
			</div>
			<!--스토리 한줄 끝 -->
			<!-- 스토리 한줄 시작-->
			<div class="movieStorylist storyfirst_under">
				<img class="storyimg" alt="" src="" width="100px" height="100px"
					style="background-color: gray">
				<div class="mvstorytext">
					<h5>영화 제목</h5>
					<div>극장</div>
					<div>상영관</div>
					<div>관람날짜,회차정보</div>
				</div>
				<!--버튼-->
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
				<nav class="navbar navbar-expand-sm bg-light storynav"
					style="display: flex;">
					<!-- Links -->
					<ul class="navbar-nav" style="margin: auto">
						<li class="nav-item"><a class="nav-link" href="#">관람평 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">포스트 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">삭제</a></li>
					</ul>

				</nav>
			</div>
			<div class="movieStorylist storysecond_under">
				<img class="storyimg" alt="" src="" width="100px" height="100px"
					style="background-color: gray">
				<div class="mvstorytext">
					<h5>영화 제목</h5>
					<div>극장</div>
					<div>상영관</div>
					<div>관람날짜,회차정보</div>
				</div>
				<!--버튼-->
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
				<nav class="navbar navbar-expand-sm bg-light storynav"
					style="display: flex;">
					<!-- Links -->
					<ul class="navbar-nav" style="margin: auto">
						<li class="nav-item"><a class="nav-link" href="#">관람평 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">포스트 쓰기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">삭제</a></li>
					</ul>

				</nav>
			</div>
			<!--스토리 한줄 끝 -->
			<!-- 페이지 시작-->
				<ul class="pagination storypage" style ="justify-content: center;">
					<li class="page-item"><a class="page-link" href="#">&lt</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item active"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">&gt</a></li>
				</ul>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>