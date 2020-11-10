<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매-좌석선택</title>
<style type="text/css">
.bookingArea {
	margin: 15px auto;
	margin-bottom: 0;
	width: 100%;
}

.bookingArea>div {
	margin: 0 auto;
	padding: 0;
	width: 100%;
}

#seatTableArea {
	height: 580px;
	margin: 0 auto;
	padding: 15px;
}

#countArea {
	background-color: #F2F2F2;
	padding: 10px;
	height: 70px;
	align-items: center;
    justify-content: center;
}

.selectPeople {
	align-items: center;
	display: flex;
	width: 200px;
}

.people {
	float: left;
	margin-right: 10px;
}

.count {
	float: left;
}

.count .minusBtn, .count .plusBtn {
	border: 1px solid #D8D8D8;
	margin: 0;
	background-color: white;
	width: 30px;
	height: 30px;
	float: left;
}
.countPeople {
	border: 1px solid #D8D8D8;
	margin: 0;
	background-color: white;
	width: 50px;
	height: 30px;
	float: left;
}
#screenPositon {
	height: 100px;
	line-height: 100px;
	text-align: center;
}
#seatArea {
	margin: 10px auto;
	border: 1px solid #F2F2F2;
	text-align: center;
	padding: 15px;
}
#colNum {
	display: inline-block;
	width: 50px;
}
#rowNum  {
	display: inline-block;
	padding: 0;
}
#colNum td, #rowNum td {
	border: 1px solid #D8D8D8;
	width: 30px;
	height: 30px;
	text-align: center;
	font-size: 13px;
	padding: 0;
}


#seatInfo {
	margin: 20px auto;
	height: 50px;
	line-height: 50px;
	text-align: center;
}
#seatInfo span {
	display: inline-block;
	margin:0 15px 0 5px;
	height: 15px;
	font-size: 14px;
}

.bookInfoArea {
	margin-left: 15px;
}

.bookAllInfo {
    border-radius: 15px;
	background-color: #0B2161;
	padding: 20px 15px;
	color: white;
}
.bookMovieInfo {
	font-size: 20px;
	height: 40px;
	display: flex;
	align-items: center;
}
.bookOtherInfo {
	height: 180px;
	margin: 15px auto;
}
.bookOtherInfo span {
	display: block;
	height: 30px;
}
#selectSeat, #selectSeat table {
	text-align: center;
	margin: 0 auto;
}
.bookSeat{
	border: 1px solid #F2F2F2;
	margin: 5px;
	width: 50px;
	height: 50px;
}
#payAmountArea {
	margin: 15px auto;
	height: 50px;
	font-size: 18px;
	display: flex;
	align-items: center;
	justify-content: center;
}
#payAmount {
	display: inline-block;
	width: 40%;
	float: left;
	color: #A9D0F5;
	text-align: right;
	padding-right: 5px; 
	font-size: 22px;
	line-height: 22px;
}
#finalBookingInfo {
	text-align: center;
	margin: 10px auto;
}
#finalBookingInfo  button {
	width: 49%;
	margin: 0 auto;
	height: 50px;
}
.selectSeatBtn {
	border: none;
	margin: 0;
	width: 30px;
    height: 30px;
}
#colNum button {
	border: none;
	margin: 0;
	width: 30px;
    height: 30px;
    background: #0B2161;
    color:white;
}
.seatPossible {
	background: #0174DF;
}
.clickSeat {
	background: #A9D0F5;
}
#resetBtn {
	border: 1px solid #0B2161;
	background-color: white;
	float: right;
	font-size: 14px;
}
#seatHead {
	margin: 0 auto;
	height: 40px;	
}
</style>
<script type="text/javascript">
var seatCount = 0;				// 선택한 좌석의 갯수
var seatList = new Array();		// 선택한 좌석 저장하는 배열

$(document).on('click', '.resetAll', function() {	// resetAll 클래스가 있는 버튼 누르면 올리셋
	allReset();
	$('#modalOK').removeClass('resetAll');		//modalOK버튼에 resetAll 클래스 제거
});

$(document).ready(function() {
	var screenDate = $('#book_screendate').text();				//날짜 저장
	var dayWeek = screenDate.substr(screenDate.length-2, 1);	//요일 자르기
	var startTime = $('#book_starttime').text().substr(0,2);	//시작 시간 자르기
	var weekdays = ['월','화','수','목','금'];
	
	if(weekdays.indexOf(dayWeek)){	
		
		if(startTime<11){	//평일 & 11시 이전이면
			$('#adult').val($('#paymentTable tr:eq(1) td:eq(2)').text());
			$('#youth').val($('#paymentTable tr:eq(1) td:eq(3)').text());	
			$('#special').val($('#paymentTable tr:eq(1) td:eq(4)').text());	
		}else {				//평일 & 11시 이후
			$('#adult').val($('#paymentTable tr:eq(2) td:eq(2)').text());
			$('#youth').val($('#paymentTable tr:eq(2) td:eq(3)').text());	
			$('#special').val($('#paymentTable tr:eq(2) td:eq(4)').text());	
		}
	
	}else {
		
		if(startTime<11){	//주말 & 11시 이전
			$('#adult').val($('#paymentTable tr:eq(3) td:eq(2)').text());
			$('#youth').val($('#paymentTable tr:eq(3) td:eq(3)').text());	
			$('#special').val($('#paymentTable tr:eq(3) td:eq(4)').text());			
		
		}else {				//주말 & 11시 이후
			$('#adult').val($('#paymentTable tr:eq(4) td:eq(2)').text());
			$('#youth').val($('#paymentTable tr:eq(4) td:eq(3)').text());	
			$('#special').val($('#paymentTable tr:eq(4) td:eq(4)').text());		
		}
	}	
});

$(function() {
	//인원선택 - 마이너스버튼
	$('.minusBtn').click(function() {
		var nowCount = Number($(this).next().text()); //현재 몇명인지 가져오기

		if (nowCount != 0) { //현재 숫자가 0이 아닐때만 -1 실행
			
			// 선택 가능한 좌석 수(seatPossible)랑 선택한 좌석수(seatCount)가 같은지 확인
			if($('.seatPossible').length==seatCount){
				$('#modalForm .modal-body').text('선택하신 좌석을 모두 취소하고 다시 선택하시겠습니까');
				$('#modalOK').addClass('resetAll');		//확인버튼에 모두취소하는 클래스 추가하기
	 			$('#modalForm').modal('show');
					
			}else {
				//활성화된 좌석 중 마지막꺼 하나 지우기 
				$(".seatPossible").last().removeClass('seatPossible');
				
				//인원수 감소
				$(this).next().text(nowCount - 1);
			}
		}
		
	});

	//인원선택 - 플러스버튼
	$('.plusBtn').click(function() {
		var nowCount = Number($(this).prev().text()); //현재 몇명인지 가져오기
		var allCount = 0; //전체 인원수 저장할 변수

		$('.countPeople').each(function() {
			var count = Number($(this).text());
			allCount += count; // 선택한 모든 인원수 저장
		});

		if (allCount < 8) { 
			//전체인원이 8보다 작으면 숫자 증가하기
			$(this).prev().text(nowCount + 1);
			
			//좌석 선택 가능하도록 활성화
			$("#selectTable td").each(function(i, element) {
 				if( !$(this).hasClass('seatPossible')){
 					$(this).addClass('seatPossible');
 					return false;
 				}
 			});	
		}
	});
	
	
	//좌석 선택	
 	$('.selectSeatBtn').click(function() {
 		var possbieNum = $('.seatPossible').length;	// 좌석선택할 수 있는 총 개수
 		var clickSeat = $(this).val();			// 현재 선택한 자리
 			
 		if(possbieNum==0){				//인원선택을 안했으면 좌석선택 불가 모달창 띄우기
 			$('#modalForm .modal-body').text('관람하실 인원을 먼저 선택해주세요.');
 			$('#modalForm').modal('show');		
 			
 		} else if ($(this).hasClass('clickSeat')) {		//지금 클릭한 좌석이 이미 선택된 좌석이라면
 			$(this).removeClass('clickSeat');			// 미선택 상태로 변경하기
 			seatList.splice($.inArray(clickSeat, seatList), 1);	//splice(index,몇자리) 배열에 담긴 값 지우기
 			seatCount -=1;										//선택한 좌석 수 감소
 			$('#bookBtn').prop('disabled', true);				//결제버튼 비활성화
 			
 			$(".seatPossible").each(function(i, element) {	// 정보창에 입력된 값 제거해주기
				$(this).text('-');		
			});
 			
 			$(".seatPossible").each(function(i, element) {	// 선택된 좌석배열 다시 정보창에 뿌려주기
					$(this).text(seatList[i]);		
			});
 			
 			calPayment();	//좌석금액 계산
 			
 		} else {					//인원선택이 0이 아니고, 이미 클릭한 좌석도 아니면 
 			
 			if(seatCount<possbieNum){
 				seatCount +=1;		//클릭수 증가
 				seatList.push(clickSeat);	// 선택한 자리값을 배열에 저장
 	 			seatList.sort();				// 좌석번호 순서대로 정렬 
 				
 				$(".seatPossible").each(function(i, element) {	//배열에 저장된 자리 값 뿌려주기
 	 					$(this).text(seatList[i]);		
 	 			});
 	 			
 	 			$(this).addClass('clickSeat');	// 클릭한 좌석 스타일 변경
 	 			
 	 			calPayment();	//좌석금액 계산
 	 			
 	 			//선택된 좌석 수랑 선택 인원수랑 같다면 결제버튼 활성화
 	 			if(seatList.length==possbieNum) $('#bookBtn').prop('disabled', false);
 	 			
 			}else{
 				alert('좌석 선택이 완료되었습니다.');
 			}
 		}
	}); 
	
});


// 요금 계산하기
function calPayment() {
	var allAmount = 0;
	var payList = new Array();				//요금 저장할 배열
	var nowAdult = $('#adult').text();		//성인 선택 인원수
	var nowYouth = $('#youth').text();		//청소년 선택 인원수
	var nowSpecial = $('#special').text();	//우대 선택 인원수
	
	for(i=0; i<nowAdult; i++){				// 성인 - 청소년 - 우대 인원수만큼 각 요금 배열에 담기
		payList.push(Number($('#adult').val()));
	}
	for(i=0; i<nowYouth; i++){
		payList.push(Number($('#youth').val()));
	}
	for(i=0; i<nowSpecial; i++){
		payList.push(Number($('#special').val()));
	}

	$('.clickSeat').each(function(i, element) {		//선택한 좌석 수만큼 배열에 있는 요금을 총계산 요금에 추가
		allAmount += payList[i];
	});
	
	$('#payAmount').text(allAmount);		// 계산된 총 요금 뿌려주기
}


// 선택 모두 초기화 
function allReset() {
	seatCount = 0;
	seatList = new Array();
	
	$('#bookBtn').prop('disabled', true);	//결제버튼 비활성화
	
	$('.countPeople').each(function() {		// 인원수 선택 초기화
		$(this).text(0);
	});
	
	$('.clickSeat').each(function() {		// 클릭된 좌석들 초기화
		$(this).removeClass('clickSeat');
	});
	
	$(".seatPossible").each(function(i, element) {	// 정보창에 활성화된 좌석수랑 좌석정보 지우기
		$(this).removeClass('seatPossible');
		$(this).text('-');
	});
 
	calPayment();		// 요금 초기화
}

//결제 버튼 클릭 
function nextToPay() {
	$('#seatNum').val(seatList);	//좌석번호 저장
	$('#total').val($('#payAmount').text());	//총금액 저장
	var data = $('form').serialize();
	alert(data);
}
</script>
</head>
<body>

<div class="container">
	<h3>빠른예매</h3>
	<br />
	
	<!--예매 영역 시작-->
	<div class="bookingArea row">

		<!-- 관람인원선택 및 좌석선택 -->
		<div class="col-8" id="seatTableArea">
			<div id="seatHead">
				<span>관람인원선택 (최대8매)</span>
				<button id="resetBtn" onclick="allReset()"><i class="fas fa-undo"></i>&nbsp;초기화</button>
			</div>
			
			<!-- 관람인원 선택 -->
			<div class="row" id="countArea">
				<div class="selectPeople">
					<span class="people">성인</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople" id="adult">0</button>
						<button type="button" class="plusBtn">+</button>
					</div>
				</div>
				<div class="selectPeople">
					<span class="people">청소년</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople" id="youth">0</button>
						<button type="button" class="plusBtn">+</button>
					</div>
				</div>
				<div class="selectPeople">
					<span class="people">우대</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople" id="special">0</button>
						<button type="button" class="plusBtn">+</button>
					</div>
				</div>
			</div>
			<!-- 관람인원 선택 끝 -->
			
			<!-- 좌석도 -->
			<div id="seatArea">
			<p>SCREEN</p>
				<!-- 좌석 행번호 -->
				<div id="colNum">
					<table>
						<%
							for (int i = 0; i < 8; i++) {
								char colName = (char) (i + 65);
						%>
						<tr>
							<td><button><%=colName%></button></td>
						</tr>
						<%
							}
						%>
					</table>
				</div>

				<!-- 좌석 열번호 -->
				<div id="rowNum">
					<table id="seatTable">
						<%
							for (int i = 0; i < 8; i++) { //행
								char colName = (char)(i+65);
						%>
						<tr>
							<%
								for (int j = 1; j <= 12; j++) { //열
							%>
							<td><button class="selectSeatBtn" value="<%=colName%><%=j%>"><%=j%></button></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</table>
				</div>
			
		<!-- 좌석상태정보 -->
		<div id="seatInfo">
			<img src="./seat.png" alt="선택" width="15px"><span>선택</span>
			<img src="./seat.png" alt="예매완료" width="15px"><span>예매완료</span>
			<img src="./seat.png" alt="일반" width="15px"><span>일반</span>
		</div>
			</div><!-- 좌석도 끝 -->
	
		</div><!-- 왼쪽영역 끝 -->
		
		<!-- 예매 모든 정보 영역  -->
		<div class="col bookInfoArea">
			
			<div class="bookAllInfo">
				<!-- 영화제목 -->
				<div class="bookMovieInfo">
					<img src="./age12.png" alt="12세" width="35px">
					<span id="book_moviename">삼진그룹 영어토익반</span>
				</div>
				
				<!-- 극장, 상영관, 날짜, 시간 정보 -->
				<div class="bookOtherInfo row">
					<div class="col">
						<span id="book_thename">강남</span>
						<span id="book_screenname">5관</span>
						<span id="book_screendate">2020.11.06 (금)</span>
						<span id="book_starttime">15:10~17:10</span>
					</div>
					<!-- 포스터이미지 -->
					<div class="col">
						<img alt="" src="" width="100%" height="170px"
								style="background-color: gray">
					</div>
				</div>
				
				<!-- 선택좌석정보 -->
				<div id="selectSeat">
					<p>선택좌석</p>
					<table id="selectTable">
						<%	for(int i=0; i<2; i++) {	%>
						<tr>
						<% 		for(int j=0; j<4; j++){		%>			
							<td class="bookSeat">-</td>			
						<%	} %>
						</tr>			
						<% } %>
					</table>
				</div>
				
				<!-- 최종결제금액 -->
				<div id="payAmountArea">
					최종결제금액
					<span id="payAmount">0</span>
					원
				</div>
			</div><!-- 예약정보부분 끝 -->
			
			<!-- 하단 버튼 부분 -->
			<div id="finalBookingInfo">
				<!-- 예매정보form -->
				<form id="bookingForm" action="#">
					<input type="hidden" name="moviename" value=""/> 
					<input type="hidden" name="thename" value=""/> 
					<input type="hidden" name="screendate" value=""/> 
					<input type="hidden" name="starttime" value=""/> 
					<input type="hidden" name="screenname" value=""/>
					<input type="hidden" name="seatnum" id="seatNum"/>
					<input type="hidden" name="total" id="total"/>
					<button type="button" class="btn btn btn-secondary">돌아가기</button>
					<button id="bookBtn" type="button" class="btn btn-info" onclick="nextToPay()" disabled="disabled">결제</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 결제 금액 테이블 -->
<table id="paymentTable" style="display:none;">
	<tr><td>요일</td><td>시간</td><td>일반</td><td>청소년</td><td>우대</td></tr>
	<tr><td>평일</td><td>조조</td><td>7000</td><td>6000</td><td>5000</td></tr>
	<tr><td>평일</td><td>일반(11:00~)</td><td>11000</td><td>9000</td><td>5000</td></tr>
	<tr><td>주말</td><td>조조</td><td>8000</td><td>7000</td><td>5000</td></tr>
	<tr><td>주말</td><td>일반(11:00~)</td><td>12000</td><td>10000</td><td>5000</td></tr>
</table>
  
  <!-- The Modal -->
  <div class="modal" id="modalForm" style="top:300px;">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <b class="modal-title">알림</b>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        	<button type="button" class="btn btn-danger" data-dismiss="modal" id="modalOK">확인</button>
         	<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalNO">취소</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>
<%@ include file="footer.jsp"%>