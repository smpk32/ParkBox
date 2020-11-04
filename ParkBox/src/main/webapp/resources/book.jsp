<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매</title>
<style type="text/css">
#bookingArea, ##bookingArea > div {
	margin: 15px auto;
	margin-bottom: 0;
	width: 100%;
}
#bookingArea > div {
	margin: 0 auto;
	padding: 0;
	width: 100%;
}
.bookSection {
	height: 600px;
	padding: 0;
	margin: 0 auto;
	border: 1px solid #D8D8D8;
}
.headline {
	text-align: center;
	height: 40px;
	line-height: 40px;
	background-color: #0A0A2A;
}
.headline b {
	color: white;
	font-size: 18px;
	opacity: 80%;	
}
.bookContents {
	padding: 5px;
	font-size: 14px;
	height: 550px;
}
.navSection {
	height: 50px;
	padding: 0;
	margin: 0;
	text-align: center;
}
#movieSection div, #allTheater, #selectTime, #unselectTime{
	margin: 10px auto;
	height: 480px;
}
#selectRegion, #selectTheater, #selectTheater div, #selectDate {
	margin: 0;
	padding: 0;
	height: 480px;
}
.scroll {
	overflow-x: hidden; 
	overflow-y: auto;
	height: 100%;
}
#movieSection li, #allTheater li, #selectDate li{
	border: none;
	height: 35px;
	line-height: 35px;
	padding: 0 15px;
}
#movieSection span::before {
	content: " ";
}
.selected {
	background-color: #0B2161;
	color: white;
}
.colorWhite {
	color: white;
}

#nowYearMonth {
	font-size: 14px;
	text-align: center;
	font-weight: bold;
}
#nowMonth {
	font-size: 23px;
	padding: 0;
}
#selectDate li {
	text-align: center;
}
#selectTime li {
	border: none;
	height: 75px;
	padding: 0 15px;
	border-bottom: 1px solid #F2F2F2;
}
.timeTable { 
    align-items: center;
    margin: 0 auto;
    padding: 0;
    height: 75px;
}
.movieTime .seatInfo {
	text-align: center;
}
.startTime {
	font-size: 20px;
	font-weight: bold;
}
.movieName {
	color: #0B2161;
	font-size: 18px;
	font-weight: bold;
}
.screenInfo {
	font-size: 16px;
	text-align: center;
}
.seatInfo {
	font-size: 14px;
	font-weight: bold;
	border: 1px solid #F2F2F2;
}
.seatLeft {
	color: #0080FF;
}
#InfoArea {
	height: 130px;
	margin: 0 auto;
	padding: 10px;
	display: flex;
	align-items: center;
	background-color: #0A0A2A;
	color: white;
	opacity: 95%;
}
#InfoArea div {
	width:150px;
	margin: 0 auto;
	padding: 0;
	font-size: 25px;
	text-align: center;
}
#bookBtn:hover {
	background-color: #A9D0F5;
}
.newInfo {
	font-size: 20px;
	text-align: center;
}
.toggleHover {
	background-color: #F2F2F2;
	opacity: 80%;
	color: black;
}
#unselectTime {
	display: none;
	font-size: 18px;
	text-align: center;
}
#unselectTime span {
  display: table-cell;
  vertical-align: middle;
}
#selectTime {
	/* display:none; */
}
#timeNav {
	display: flex;
	align-items: center;
}
#timeNavWrap {
	display: inline-block;
	overflow: hidden;
	position: relative;
    z-index: 2;
    width: 75%;
    height: 30px;
    line-height: 30px;
    margin: 0 auto;
    padding: 0;
    white-space: nowrap; /*줄바꿈금지*/
}
.hourBtn {
	border:none;
	width: 30px;
	margin: 0 auto;
	padding: 0;
	background-color: white;
	
}
#timeLeftBtn, #timeRightBtn {
	overflow: hidden;
    border:none;
    width: 10%;
    height: 30px;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	//날짜 표현
	var now = new Date();	//현재시간
	var nowYear = now.getFullYear();
	var nowMonth = now.getMonth()+1 ; //월 구하기 0부터 시작해서 +1 해야함
	
	//날짜 영역에 연도, 월 표시하기
	$('#nowYear').html(nowYear);	
	$('#nowMonth').html(nowMonth);	
	
	//날짜 요일에 따른 색상 지정
	$('.dayweek').each(function(i, element) {
		var weekChk = $(this).html();
		if (weekChk == '일') {
			$(this).parent().css('color', 'red');
		}else if (weekChk == '토') {
			$(this).parent().css('color', 'blue');
		}
	});
	
	//지역선택 default로 서울선택
	$('#selectRegion li:eq(0)').css('background-color','#F2F2F2');
	
	$('#bookingInfoForm input:eq(0)').change(function() {
		var m = $(this).eq(0).val();
		var t = $(this).eq(1).val();
		var d = $(this).eq(2).val();
		alert(m + t + d);
		if(m!=null && t!=null && d!=null){
			$('selectTime').show();
			$('unselectTime').hide();
		}
	});
});

$(function() {

	//리스트 hover시에 색상 변경
	$('#bookingArea li').hover(function() {
		$(this).toggleClass('toggleHover');
	});
	
	//지역 구분 선택시 배경색 변경 및 극장 선택 취소 
	$('#selectRegion li').click(function() {
		$(this).css('background-color', '#F2F2F2');
		$(this).siblings().css('background-color', '');
		
		//극장 선택값 없애기
		$('.bookingInfo:eq(1)').children().text('극장선택');
		$('.bookingInfo:eq(1)').children().removeClass('newInfo');
		$('#selectTheater li').removeClass('selected');
		$('#selectTheater li').find('span').removeClass('colorWhite');
	});
	
	
	//영화 선택시 값 받기 및 선택자 배경색 변경
	$('#movieSection li').click(function() {
		var movie = $(this).find('.movie').text();	//선택한 영화값
		addInfoArea(0, movie);						//영화값 Info영역에 저장
		addRemoveClass($(this));					//선택자 CSS변경
	});
	
	//극장 선택시 값 받기 및 선택자 배경색 변경
	$('#selectTheater li').click(function() {
		var theater = $(this).find('.theaterName').text();	//선택한 극장값 저장
		addInfoArea(1, theater);							//극장값 Info영역에 저장
		addRemoveClass($(this));							//선택자 CSS변경
	});
	
	//날짜 선택시 값 받기 및 선택자 배경색 변경
	$('#selectDate li').click(function() {
		var date = $(this).children('input').val();	//선택한 날짜값 저장
		addInfoArea(2, date);						//날짜값 Info영역에 저장
		addRemoveClass($(this));					//선택자 CSS변경
	});
	
	//시간 선택시 값 받기 및 선택자 배경색 변경
	$('#selectTime li').click(function() {
		var time = $(this).find('.startTime').text();		//선택한 시간값 저장
		var screen = $(this).find('.screenName').text();	//선택한 상영관 저장
		addInfoArea(3, time);								//시간값 Info영역에 저장
		addInfoArea(4, screen);								//상영관 Info영역에 저장
		
		addRemoveClass($(this));							//선택자 CSS변경
	});
	
	
});

// 리스트 선택했을 때 CSS적용하는 함수 
function addRemoveClass(target) {
	target.addClass('selected');				//선택영역 배경변경
	target.find('span').addClass('colorWhite');
	target.siblings().removeClass('selected');	//선택이외 영역 배경변경
	target.siblings().find('span').removeClass('colorWhite'); 
}

//선택된 값을 인포영역에 저장하는 함수
function addInfoArea(n,info) {
	if(n!=4){
		$('.bookingInfo:eq('+n+')').children().text(info);			// bookingInfo div 인덱스에 맞춰 넘어온 정보 저장
		$('.bookingInfo:eq('+n+')').children().addClass('newInfo');	
	}else {
		$('#booktheaterInfo').children().empty();
		$('#booktheaterInfo').append('<div><span class="newInfo">'+info+'</span></div>');	//n이4라면(screen) 영화관정보영역에 보이게 추가함
	}
	
	$('#bookingInfoForm input:eq('+n+')').val(info);	//form의 input 요소 인덱스에 맞춰 넘어온 정보 저장
}

// 시간nav버튼 클릭시 왼쪽/오른쪽으로 div이동
function moveScrollLR(n) {
	  var _scrollX = $('#timeNavWrap').scrollLeft()+n;
	  $('#timeNavWrap').scrollLeft(_scrollX);
}

function test() {
	var data = '';
	$.each( $('#bookingInfoForm').serializeArray(), function(key, val){
	    data += ","+val['name']+":"+val['value'];
	});
	alert(data);
}
</script>
</head>
<body>
<div class="container">
	<h3>빠른예매</h3>
	
	<!-- 예매창 시작 -->
	<div id="bookingArea">
		<div class="row">
			
			<!-- 영화 Section -->
			<div class="col-3 bookSection">
				<div class="headline"><b>영화</b></div>
				<div class="bookContents">
					<!-- 영화 조건선택 -->
					<div class="navSection">
						<ul class="nav nav-tabs nav-justified">
						    <li class="nav-item">
						      <a class="nav-link active" data-toggle="tab" href="#byRank">예매율순</a>
						    </li>
						    <li class="nav-item">
						      <a class="nav-link" data-toggle="tab" href="#byName">가나다순</a>
						    </li>
						 </ul>
					</div>
					
					<!-- 영화목록섹션 -->
				 	<div id="movieSection" class="tab-content">	
				 		<!-- 예매율순 -->
				 		<div id="byRank" class="tab-pane active">
					 		<ul class="list-group scroll">
						 		<li class="list-group-item">	<!-- 실제로는 li한개만 for문 안에 들어감 -->
						 			<a href="#"> 
						 				12	<!-- 관람가표시 이미지로 삽입 -->
						 				<span class="movie">삼진그룹영어토익반</span>
						 			</a>
						 		</li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">담보</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">담보</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">테넷</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">테넷</span></a></li>
						 		<li class="list-group-item"><a href="#" >15<span class="movie">위플래쉬</span></a></li>
						 		<li class="list-group-item"><a href="#" >15<span class="movie">위플래쉬</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">도굴</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">도굴</span></a></li>
						 		<li class="list-group-item"><a href="#" >15<span class="movie">소리도없이</span></a></li>
						 		<li class="list-group-item"><a href="#" >15<span class="movie">소리도없이</span></a></li>
						 		<li class="list-group-item"><a href="#" >청<span class="movie">바스켓볼다이어리</span></a></li>
						 		<li class="list-group-item"><a href="#" >청<span class="movie">바스켓볼다이어리</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">엣지오브투모로우</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span class="movie">엣지오브투모로우</span></a></li>
						 		<li class="list-group-item"><a href="#" >청<span class="movie">다만악에서구하소서파이널컷</span></a></li>
					 		</ul>
				 		</div>
				 		<!-- 가나다순 -->
				 		<div id="byName" class="tab-pane fade scroll">
					 		<ul class="list-group">
					 			<li class="list-group-item"><a href="#" >청<span>다만악에서구하소서파이널컷</span></a></li>
					 			<li class="list-group-item"><a href="#" >12<span>담보</span></a></li>
						 		<li class="list-group-item"><a href="#" >12<span>도굴</span></a></li>
					 		</ul>
				 		</div>
				 	</div><!-- 영화목록뿌리기끝 -->
				</div>
			</div>	<!-- 영화섹션끝 -->
			
			<!-- 극장 Section -->
			<div class="col-4 bookSection">
				<div class="headline"><b>극장</b></div>
				<div class="bookContents">
					<!-- 극장 조건선택 -->
					<div class="navSection">
						<ul class="nav nav-tabs nav-justified">
						    <li class="nav-item">
						      <a class="nav-link active" data-toggle="tab" href="#allTheater">전체</a>
						    </li>
						    <li class="nav-item">
						      <a class="nav-link" data-toggle="tab" href="#specialTheater">특별관</a>
						    </li>
						 </ul>
					</div>
					
					<!-- 극장목록섹션 -->
			 		<div id="allTheater" class="tab-pane active row">
			 			<!-- 지역선택 -->
						<div id="selectRegion" class="col-6" >
					 		<ul class="list-group" >
						 		<li class="list-group-item"><a data-toggle="tab" href="#seoul" ><span>서울(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#seoul2" ><span>경기(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>인천(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>강원(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>대전/충청(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>부산/대구/경상(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>광주/전라(*)</span></a></li>
						 		<li class="list-group-item"><a data-toggle="tab" href="#" ><span>제주(*)</span></a></li>
					 		</ul>
						</div>
						<!-- 지역세부목록 -->
						<div id="selectTheater" class="col tab-content">
							<div id="seoul" class="tab-pane active" >
								<ul class="list-group scroll"> 
									<li class="list-group-item">
										<a href="#" ><span class="theaterName">강남</span></a>
									</li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">강변</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">건대입구</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">구로</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">동대문</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">명동</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">목동</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">미아</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">상암월드컵경기장</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">성수</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트1</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트2</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트3</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트4</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트5</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트6</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span class="theaterName">테스트7</span></a></li>
								</ul>		
							</div>
							<div id="seoul2" class="tab-pane fade scroll" >
								<ul class="list-group"> 
									<li class="list-group-item"><a href="#" ><span>강남</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>강변</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>건대입구</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>구로</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>동대문</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>명동</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>목동</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>미아</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>상암월드컵경기장</span></a></li>
							 		<li class="list-group-item"><a href="#" ><span>성수</span></a></li>
								</ul>		
							</div>
						</div>
						
			 		</div>					
				</div>
			</div><!-- 극장섹션끝 -->
			
			
			<!-- 날짜 Section -->
			<div class="col-1 bookSection">
				<div class="headline"><b>날짜</b></div>
				<div class="bookContents">
					<div id="nowYearMonth" class="navSection">
						<div id="nowYear"></div>
						<div id="nowMonth"></div>
					</div>
					<!-- 날짜 목록 -->
					<div id="selectDate">
						<ul class="list-group scroll">
							<!-- jQuery를 통해 날짜 list 넣기 -->
							<%
								Calendar cal = Calendar.getInstance();
								int year = cal.get(Calendar.YEAR);
								int month = cal.get(Calendar.MONTH);
								int date = cal.get(Calendar.DATE);
								int lastDate = cal.getActualMaximum(Calendar.DAY_OF_MONTH);	//현재날짜기준 마지막날짜
								String[] weekNames = {"일","월","화","수","목","금","토"};
								String dayweek;
								
								for(int i = date; i<=lastDate ; i++ ) {
									cal.set(year, month, i);
									int week = cal.get(Calendar.DAY_OF_WEEK)-1;
									dayweek = weekNames[week];
									int realMonth = month +1;
							%>
							 	<li class="list-group-item">
							 		<input type="hidden" value=<%=year + "-" + realMonth + "-" + i  + "&nbsp;" + dayweek%>>
									<a href="#" class="days">
										<span class="dayweek"><%=dayweek%></span>
										<span class="date" style="font-weight:bold;"><%=i%></span>
									</a>
								</li>
							<% } %>
						</ul>					 
					</div>
				</div>
			</div><!-- 날짜섹션끝 -->
			
			<!-- 시간 Section -->
			<div class="col-4 bookSection">
				<div class="headline"><b>시간</b></div>
				<div class="bookContents">
					<!-- 시간 빠르게찾기 nav -->
					<div id="timeNav" class="navSection">
						<button type="button" id="timeLeftBtn" onclick="moveScrollLR(-100)"><i class="fas fa-chevron-left"></i></button>
						<div id="timeNavWrap">
						<%
							for (int i=8; i<=24 ; i++){
						%>
								<button type="button" class="hourBtn"><%=i%></button>
						<% 
							}
						%>
						</div>
						<button type="button" id="timeRightBtn" onclick="moveScrollLR(+100)"><i class="fas fa-chevron-right"></i></button>
					</div>
					
					<!-- 영화, 극장, 시간 모두 선택하기 전 div -->
					<div id="unselectTime">
						<span>영화, 극장, 날짜를 선택해주세요.</span>
					</div>
					<!-- 시간 목록 -->
					<div id="selectTime">
						<ul class="list-group scroll"> 
							<!-- 시간리스트 출력 -->
							<li class="list-group-item " >
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div><span class="startTime">10:00</span></div>
										<div><span class="endTime">~12:05</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">1관</span></div>
										<div class="seatInfo"><span class="seatLeft">112</span>/<span class="setAll">200</span></div>
									</div>
								</div>
							</li>
							<!-- 가짜데이터 -->
							<li class="list-group-item" >
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div><span class="startTime">11:30</span></div>
										<div><span class="endTime">~13:35</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">2관</span></div>
										<div class="seatInfo"><span class="seatLeft">88</span>/<span class="setAll">150</span></div>
									</div>
								</div>
							</li>
							<li class="list-group-item " >
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div><span class="startTime">12:30</span></div>
										<div><span class="endTime">~14:35</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">1관</span></div>
										<div class="seatInfo"><span class="seatLeft">92</span>/<span class="setAll">200</span></div>
									</div>
								</div>
							</li>
							<li class="list-group-item " >
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div><span class="startTime">12:00</span></div>
										<div><span class="endTime">~14:05</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">2관</span></div>
										<div class="seatInfo"><span class="seatLeft">100</span>/<span class="setAll">150</span></div>
									</div>
								</div>
							</li>
							<li class="list-group-item " >
								<input type="hidden" value="시간">
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div class="startTime"><span>14:55</span></div>
										<div class="endTime"><span>~17:00</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">1관</span></div>
										<div class="seatInfo"><span class="seatLeft">54</span>/<span class="setAll">200</span></div>
									</div>
								</div>
							</li>
							<li class="list-group-item " >
								<input type="hidden" value="시간">
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div class="startTime"><span>14:25</span></div>
										<div class="endTime"><span>~16:30</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">2관</span></div>
										<div class="seatInfo"><span class="seatLeft">5</span>/<span class="setAll">150</span></div>
									</div>
								</div>
							</li>
							<li class="list-group-item " >
								<input type="hidden" value="시간">
								<div class="row timeTable ">
									<div class="col-3 movieTime">
										<div class="startTime"><span>17:30</span></div>
										<div class="endTime"><span>~19:05</span></div>	<!-- 실제로 endTime은 시작시간에 상영시간 더한 시간으로 출력 -->
									</div>
									<div class="col movieName"><span>도굴</span></div>
									<div class="col-4 screenInfo">
										<div><span class="theaterInfo">강남</span>&nbsp;&nbsp;<span class="screenName">1관</span></div>
										<div class="seatInfo"><span class="seatLeft">74</span>/<span class="setAll">200</span></div>
									</div>
								</div>
							</li>
						</ul>		
					</div>
				</div>
			</div>
		</div> <!-- row(가로영역 끝) -->
	</div> <!-- 예매창 끝 -->	


	<div id="InfoArea">		
			<div class="bookingInfo"><span>영화선택</span></div><i class="fas fa-ellipsis-v fa-2x"></i>
			<div class="bookingInfo"><span id="booktheaterInfo">극장선택</span></div><i class="fas fa-ellipsis-v fa-2x"></i>
			<div class="bookingInfo"><span>날짜선택</span></div><i class="fas fa-chevron-right fa-2x"></i>
			<div class="bookingInfo"><span>시간선택</span></div>
			<div class="bookingInfo">
				<!-- 예매정보form -->
				<form id="bookingInfoForm" action="#">
					<input type="hidden" name="moviename"/>
					<input type="hidden" name="thename"/>
					<input type="hidden" name="screendate"/>
					<input type="hidden" name="starttime"/>
					<input type="hidden" name="screenname"/>
					<button id="bookBtn" type="button" class="btn btn-light" style="width:150px" onclick="test()">
						<i class="far fa-hand-point-right fa-4x"></i>
						<p style="margin:0 auto;">좌석선택</p>
					</button>
				</form>
			</div>
		
	</div>	
</div>
</body>
</html>
<%@ include file="footer.jsp"%>