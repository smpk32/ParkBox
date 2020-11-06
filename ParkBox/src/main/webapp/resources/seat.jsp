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
#bookInfoArea {
	margin-left: 15px;
	height: 580px;
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

#bookAllInfo {
    border-radius: 15px;
	background-color: #0B2161;
	padding: 20px 15px;
	color: white;
}
#bookMovieInfo {
	font-size: 20px;
	height: 40px;
	display: flex;
	align-items: center;
}
#bookOtherInfo {
	height: 180px;
	margin: 15px auto;
}
#bookOtherInfo span {
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
#setaHead {
	margin: 0 auto;
	height: 40px;	
}
</style>
<script type="text/javascript">
var clickCount = 0;			// 선택한 좌석수
var seats = new Array();	// 선택한 좌석 저장하는 배열

$(document).on('click', '.resetAll', function() {	// resetAll 클래스가 있는 버튼 누르면 올리셋
	allReset();
	$('#modalOK').removeClass('resetAll');
});

$(function() {
	//인원선택 - 마이너스
	$('.minusBtn').click(function() {
		var nowCount = Number($(this).next().text()); //현재 몇명인지 가져오기

		if (nowCount != 0) { //현재 숫자가 0이 아닐때만 -1 실행
			
			// 선택 가능한 좌석 수(seatPossible)랑 선택한 좌석수(clickCount)가 같은지 확인
			if($('.seatPossible').length==clickCount){
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

	//인원선택 - 플러스
	$('.plusBtn').click(function() {
		var nowCount = Number($(this).prev().text()); //현재 몇명인지 가져오기
		var allCount = 0; //전체 인원수 저장할 함수

		$('.countPeople').each(function() {
			var count = Number($(this).text());
			allCount += count; // 모든 인원수 저장
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
 		var clickSeat = $(this).val();			// 선택한 자리
 			
 		if(possbieNum==0){				//인원선택을 안했으면 좌석선택 불가 모달창 띄우기
 			$('#modalForm .modal-body').text('관람하실 인원을 먼저 선택해주세요.');
 			$('#modalForm').modal('show');		
 			
 		} else if ($(this).hasClass('clickSeat')) {		//클릭한 좌석이 이미 클릭된 좌석인지 확인
 			$(this).removeClass('clickSeat');			// 미선택 상태로 변경하기
 			seats.splice($.inArray(clickSeat, seats), 1);	//splice(index,몇자리) 배열에 담긴 값 지우기
 			clickCount -=1;							
 			
 			$(".seatPossible").each(function(i, element) {	// 정보창에 입력된 값 제거해주기
				$(this).text('-');		
			});
 			
 			$(".seatPossible").each(function(i, element) {	// 다시 정보창에 뿌려주기
					$(this).text(seats[i]);		
			});
 			
 		} else {
 			if(clickCount<possbieNum){
 				clickCount +=1;		//클릭수 증가
 				seats.push(clickSeat);	// 선택한 자리값을 배열에 저장
 	 			seats.sort();				// 좌석번호 순서대로 정렬 
 				
 				$(".seatPossible").each(function(i, element) {	//배열에 저장된 자리 값 뿌려주기
 	 					$(this).text(seats[i]);		
 	 			});
 	 			
 	 			$(this).addClass('clickSeat');	// 클릭한 좌석 스타일 변경
 	 			
 			}else{
 				alert('좌석 선택이 완료되었습니다.');
 			}
 			
 		}
 		
	}); 
});

// 선택 모두 초기화 
function allReset() {
	clickCount = 0;
	seats = new Array();
	
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
}

//결제 넘어가기 전에 좌석값 form에 저장 
function addSeatInfo() {
	$('#seatNum').val(seats);
	alert($('#seatNum').val());
	
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
			<div id="setaHead">
				<span>관람인원선택 (최대8매)</span>
				<button id="resetBtn" onclick="allReset()"><i class="fas fa-undo"></i>초기화</button>
			</div>
			
			<!-- 관람인원 선택 -->
			<div class="row" id="countArea">
				<div class="selectPeople">
					<span class="people">성인</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople">0</button>
						<button type="button" class="plusBtn">+</button>
					</div>
				</div>
				<div class="selectPeople">
					<span class="people">청소년</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople">0</button>
						<button type="button" class="plusBtn">+</button>
					</div>
				</div>
				<div class="selectPeople">
					<span class="people">우대</span>
					<div class="count">
						<button type="button" class="minusBtn">-</button>
						<button type="button" class="countPeople">0</button>
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
		<div class="col" id="bookInfoArea">
			
			<div id="bookAllInfo">
				<!-- 영화제목 -->
				<div id="bookMovieInfo">
					<img src="./age12.png" alt="12세" width="35px">
					<span id="book_moviename">삼진그룹 영어토익반</span>
				</div>
				
				<!-- 극장, 상영관, 날짜, 시간 정보 -->
				<div id="bookOtherInfo" class="row">
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
					<input type="hidden" name="moviename" /> 
					<input type="hidden" name="thename" /> 
					<input type="hidden" name="screendate" /> 
					<input type="hidden" name="starttime" /> 
					<input type="hidden" name="screenname" />
					<input type="hidden" name="seatnum" id="seatNum"/>
					<button type="button" class="btn btn btn-secondary">돌아가기</button>
					<button id="bookBtn" type="button" class="btn btn-info" onclick="addSeatInfo()">결제</button>
				</form>
			</div>
		</div>
	</div>
</div>


  
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