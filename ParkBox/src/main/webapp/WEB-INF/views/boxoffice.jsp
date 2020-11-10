<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<style type="text/css">
.text-center {
	text-align: center;
}

.boxmenu {
	margin-top: 5px;
	padding: 0 10px;
}

.book {
	background-color: #0B2161;
	color: white;
	height: 40px;
	line-height: 40px;
}

.like-btn {
	background-color: #0B2161;
	color: white;
	height: 40px;
}

.circle {
	border-radius: 10px;
}

.search-input2 {
	width: 300px;
	height: 80%;
}

.bar {
	border-left-style: solid;
	border-left-color: gray;
	border-left-width: 0.5px;
}

.search-box {
	text-align: right;
}

.moive-data-text {
	text-align: left;
	font-size: 13px;
}
.switch{
	z-index: 0;
}
</style>
</head>
<div class="container">
	<h2>박스오피스</h2>
	<div class="row mt-4 mb-4">
		<form class="col-6">
			<div class="custom-control custom-switch switch">
				<input type="checkbox" class="custom-control-input"
					id="customSwitch1"> <label class="custom-control-label"
					for="customSwitch1">상영작만</label>
			</div>
		</form>
		<div class="col-6 search-box ">
			<input class="search-input2 " type="text" name="searchMovie"
				placeholder="영화명을 입력하세요."> <a><i class="fas fa-search"></i></a>
		</div>
	</div>

	<!-- 영화 리스트 한줄 -->
	<div class="row mb-5">
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- 영화 리스트 한줄  끝-->

	<!-- 영화 리스트 한줄 -->
	<div class="row mb-5">
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- 영화 리스트 한줄  끝-->
	<!-- 영화 리스트 한줄 -->
	<div class="row mb-5">
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- 영화 리스트 한줄  끝-->
	<!-- 영화 리스트 한줄 -->
	<div class="row mb-5">
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
		<div class="col-3 text-center">
			<a href="movieDetail"><img alt="" src="" width="100%" height="400px"
				style="background-color: gray"></a>
			<div class="row">
				<h4 class="pl-3">영화제목</h4>
			</div>
			<div class="row">
				<div class="col-5 moive-data-text  ml-1">예매율 39%</div>
				<div class="col moive-data-text bar">개봉일 2020.11.01</div>
			</div>
			<div class="row boxmenu">
				<div class="col-8 m-auto book circle">예매</div>
				<div class="col-3 m-auto like-btn circle">
					<i class="far fa-heart" style="line-height: 40px;"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- 영화 리스트 한줄  끝-->
</div>




<%@ include file="footer.jsp"%>