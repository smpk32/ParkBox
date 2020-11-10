<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매-결제</title>
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
#discountPayment {
	height: 580px;
}
#discountArea {
	height: 200px;
	padding: 15px;
}
#discountArea button {
	border: 1px solid #0B2161;
	background-color: white;
	float: right;
	font-size: 14px;
}
#discount {
	margin: 10px auto;
	width: 600px;
	height: 70px;
}
#discount div {
	height: 50px;
	border: 1px solid black;
	text-align: center;
	line-height: 50px;
}
#payMethodArea {
	padding: 15px;
}
#payMethodArea >div {
	margin: 20px;
	padding: 15px;
}
#paymentMethod, #card {
	border: 1px solid #d8d8d8;
	height: 80px;
	padding: 10px;
	margin:0;
	align-items: center;
	display: flex;
}
#payMethodArea label {
	margin: 0 10px;
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
	margin: 15px auto;
	padding-left: 30px;
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
.payAmountArea {
	margin: 15px auto;
	height: 50px;
	font-size: 18px;
	display: flex;
	align-items: center;
	justify-content: center;
}
.payAmount {
	display: inline-block;
	width: 40%;
	float: left;
	color: #A9D0F5;
	text-align: right;
	padding-right: 5px; 
	font-size: 22px;
	line-height: 22px;
}
.finalBookingInfo {
	text-align: center;
	margin: 10px auto;
}
.finalBookingInfo  button {
	width: 49%;
	margin: 0 auto;
	height: 50px;
}
.discountAmount, .finalAmount {
	margin: 0 auto;
	padding: 15px;
}
.discountAmount {
	position: relative;
}
.discountAmount table{
	width: 100%;
	background-color: #F2F2F2;
	border-radius: 15px;
    color: black;
}
.discountAmount td {
	padding: 5px 15px;
}
.rowName {
	width: 30%;
}
.amount {
	width: 50%;
	text-align: right;
}
.afterDiscount {
	height: 50px;
	margin-top: 15px;
	font-weight: bold;
}
#minusIcon {
	position: absolute;
    top: 50%;
    left: 45%;
    width: 50px;
}
.finalAmount div {
	margin: 10px auto;
	font-size: 18px;
	width: 100%;
}
.realAmount {
	display: inline-block;
	width: 60%;
	color: #A9D0F5;
	text-align: right;
	padding-right: 5px; 
	font-size: 22px;
}
.paymethod {
	display: inline-block;
    text-align: right;
    width: 75%;
}
.finalAmount div:last-child {
	border-top: 1px solid #E2E2E2;
	padding-top: 10px;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('.beforeDiscount tr').last().css({'border-top':'1px solid white','font-weight':'bold'});
});

function booking() {
	
}
</script>
</head>
<body>

<div class="container">
	<h3>빠른예매</h3>
	
	<!--예매 영역 시작-->
	<div class="bookingArea row">

		<!-- 포인트 및 할인적용 -->
		<div class="col-8" id="discountPayment">
			<div id="discountArea">
				<h5 style="display: inline-block;">포인트 및 할인적용</h5>
				<button onclick="allReset()"><i class="fas fa-undo"></i>&nbsp;초기화</button>
			
				<div class="row" id="discount">
					<div class="col-3 m-auto">멤버십포인트</div>
					<div class="col-3 m-auto">할인쿠폰</div>
					<div class="col-3 m-auto">관람권</div>
				</div>
			</div>
	
			<div id="payMethodArea">
				<h5>결제수단 및 카드선택</h5>
				<div>
					<div class="row" id="paymentMethod">
						<div class="col"><input type="radio" name="payment"><label>신용/체크카드</label></div>
						<div class="col"><input type="radio" name="payment"><label>카카오페이</label></div>
						<div class="col"><input type="radio" name="payment"><label>휴대폰결제</label></div>
					</div>
				
					<div id="card">
						<label>카드사선택</label> 
						<select name="card" >
						    <option value="none" selected>=== 선택 ===</option>
						    <option value="">신한카드</option>
						    <option value="">국민카드</option>
						    <option value="">우리카드</option>
						    <option value="">BC카드</option>
						 </select>
					</div>
				</div>
			</div>
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
				<div class="bookOtherInfo" >
						<span>강남</span>
						<span>5관</span>
						<span>2020.11.06 (금)</span>
						<span>15:10~17:10</span>
						<span>F10,F11</span>
				</div>
				
				
				<!-- 할인 적용 결제금액 -->
				<div class="discountAmount">
					<table class="beforeDiscount">
						<tr><td class="rowName">성인</td><td class="countP">1</td><td class="amount">10,000</td></tr>
						<tr><td class="rowName">청소년</td><td class="countP">2</td><td class="amount">16,000</td></tr>
						<tr><td class="rowName">금액</td><td class="countP"></td><td class="amount">26,000</td></tr>
					</table>
					<img id="minusIcon" src="./img/minus.png" >
					<table class="afterDiscount">
						<tr><td class="rowName">할인적용</td><td class="countP"></td><td class="amount">-6,000</td></tr>
					</table>
				</div>
					
				<!-- 최종결제금액 -->
				<div class="finalAmount">
					<div><span>최종결제금액</span><span class="realAmount">20,000</span><span>원</span></div>
					<div><span>결제수단</span><span class="paymethod">카카오페이</span></div>
				</div>
			
			<!-- 하단 버튼 부분 -->
			<div class="finalBookingInfo">
				<!-- 예매정보form -->
				<form id="" action="#">
					<input type="hidden" name="moviename" /> 
					<input type="hidden" name="thename" /> 
					<input type="hidden" name="screendate" /> 
					<input type="hidden" name="starttime" /> 
					<input type="hidden" name="screenname" />
					<input type="hidden" name="seatnum" id="seatNum"/>
					<input type="hidden" name="total" id="total"/>
					<button type="button" class="btn btn btn-secondary">돌아가기</button>
					<button type="button" class="btn btn-info" onclick="booking()">결제</button>
				</form>
			</div>
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