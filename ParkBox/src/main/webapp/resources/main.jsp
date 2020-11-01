<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<style type="text/css">
.subTitle{
text-decoration: underline;
font-size: 30px;
margin: 30px;
}
.boxmenu {
	margin-top: 5px;
	padding: 0 10px;
}
.book{
background-color: #0B2161;
 color: white; 
 height:40px;
 line-height: 40px;
}
.text-center{
text-align: center;
}
.like-btn{
background-color: #0B2161; 
color: white; 
height:40px;

}
.bg-maincolor{
background-color: #0B2161;
}
.bar{
border-right-style: solid; 
border-color: white;
border : solid white;
color:white; 
text-align: center; 
}
.search-input{
background-color: #0B2161; 
color:white; 
width:80%;
height:80%;
border: 0px; 
}
.middlebar{
height:50px;
line-height: 50px;
}
.circle {
    border-radius: 10px;
}

</style>
</head>
<body>
	<div class="container">
	<center class="subTitle">박스오피스</center>
	<!-- 상단 박스오피스 리스트 -->
	<div class="row">
		<div class="col-3 text-center">
			<img alt="" src="" width="100%" height="400px" style="background-color: gray">
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle"><i class="far fa-heart" style="line-height:40px;"></i></div>
			</div>
		</div>
		<div class="col-3 text-center">
			<img alt="" src="" width="100%" height="400px" style="background-color: gray">
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle"><i class="far fa-heart" style="line-height:40px;"></i></div>
			</div>
		</div>
		<div class="col-3 text-center">
			<img alt="" src="" width="100%" height="400px" style="background-color: gray">
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle"><i class="far fa-heart" style="line-height:40px;"></i></div>
			</div>
		</div>
		<div class="col-3 text-center">
			<img alt="" src="" width="100%" height="400px" style="background-color: gray">
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle"><i class="far fa-heart" style="line-height:40px;"></i></div>
			</div>
		</div>
	</div>
	
	<br><br><br>
	
	<!-- 검색창,상영시간표, 박스오피스 상세보기 이동, 예매하기  -->
	<div class="row bg-maincolor middlebar circle">
		<!-- 영화검색 -->
		<div class="col-4 bar">
			<input class="search-input" type="text" name="searchMovie" placeholder="영화명을 입력하세요.">
			<a><i class="fas fa-search"></i></a>
		</div>
		<!-- 상영시간표 -->
		<div class="col bar">
			<i class="far fa-calendar-alt"></i>
			<a>상영시간표</a>
		</div>
		<!-- 박스오피스 -->
		<div class="col bar">
			<i class="fas fa-film"></i>
			<a>박스오피스</a>
		</div>
		<!-- 빠른 예매 -->
		<div class="col bar">
			<i class="fas fa-ticket-alt"></i>
			<a>빠른 예매</a>
		</div>
	</div>
	
	<br><br><br><br><br>
	
	<div class="row">
		<div class="col-9">
			<iframe width="100%" height="500px" src="https://www.youtube.com/embed/Vg8VH4BH6uo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		<div class="col-3" style="background-color:#0B2161; ">
		
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
</div>
</body>
<%@ include file="footer.jsp"%>