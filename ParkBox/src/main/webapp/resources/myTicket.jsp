<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 예매내역</title>
<style type="text/css">
#selctTicket {
	height: 100px;
	display: flex;
	align-items: center;
	background-color: #F2F2F2;
}
#ticketList {
	margin: 30px auto;
}
.tickets {
	width: 100%;
	margin: 15px auto;
	padding: 15px;
	display: flex;
	align-items: center;
	border: 2px solid #F2F2F2;
	border-radius: 10px;
}
.ticketTable {
	width: 100%;
	margin-bottom: 10px;
}
.ticketTable th {
	width: 15%;
	height: 30px;
	text-align: right;
}
.ticketTable td {
	padding-left: 15px;
	width: 30%;
}
.payInfo {
	background-color: #F2F2F2;
	border-radius:10%;
	height: 50px;
	line-height: 50px;
}
#cancelTable {
	width: 100%;
	margin: 15px auto;
}
#cancelTable tr {
	height: 40px;
	border-bottom: 1px solid #F2F2F2;
	text-align: center;
}
#cancelTable :
</style>
<script type="text/javascript">
$(function() {
	//지난내역을 클릭했을 때만 월 선택할 수 있게 활성화
    $("input:radio[name=optionTicket]").click(function(){
 
        if($("input[name=optionTicket]:checked").val() == "now"){
            $("#monthPick").attr("disabled",true);
            // radio 버튼의 value 값이 now이라면 비활성화
 
        }else if($("input[name=optionTicket]:checked").val() == "last"){
              $("#monthPick").attr("disabled",false);
            // radio 버튼의 value 값이 last라면 활성화
        }
    });
	
	// 오늘날짜의 해당월 기본날짜로 셋팅
    $("#monthPick").val(new Date().toISOString().slice(0, 7));
	// 선택가능한 월을 이번달까지로 제한하기
    $("#monthPick").attr("max",new Date().toISOString().slice(0, 7));
	
});

//예매취소
function cancleTicket() {

	var movieTime = new Date('11/01/2020 21:30:00'); // 영화상영시간 (지금은 가상)
	var now = new Date();	//현재시간
	
	var leftTime = (movieTime - now) / 60000; // 1분이 60000ms초라서 몇분 남았는지 계산
	alert("남은시간: " + minutes +"분");

	//현재 시간 기준으로 영화 시간이 15분 이상 남았을 때만 취소 가능
	if (leftTime>=15) {
		alert('취소컨트롤러로이동');	
	} else if(leftTime>0 && leftTime < 15) {
		alert('상영시간이 15분 미만으로 남아 취소가 불가합니다.');
	} else {
		alert('상영시간이 지나 취소가 불가합니다.');
	}
}
</script>
</head>
<body>
<div class="container row">
	<!-- 마이페이지 네비게이션바 -->
	<div class="col-2">
		<%@ include file="managerHeader.jsp"%>
	</div>
	
	<!-- 마이페이지 컨텐츠영역 -->
	<div class="col-10">
		
		<!-- 나의 예매내역 -->
		<div style="margin:10px auto">
			<div>
				<h3>예매 내역</h3>
			</div>
			<!-- 예매내역 조회 구분 -->
			<div id="selctTicket">
				<form class="form-inline" action="#" style="margin:0 20px;">
  					<span style="margin:0 30px;"><b>구분</b></span>
   				 	
   				 	<label class="form-check-label" for="optionNow" style="margin:0 20px;">
   				 		<input type="radio" class="form-check-input" id="optionNow" name="optionTicket" value="now" checked>예매내역
    				</label>
					
					<label class="form-check-label" for="optionLast" style="margin:0 10px;">
						<input type="radio" class="form-check-input" id="optionLast" name="optionTicket" value="last">지난내역
  					</label>
			       
			        <input type="month" id="monthPick" name="month" disabled="disabled" style="margin:0 10px;">
			    	<button type="submit" class="btn btn-primary"><i class="fas fa-search"></i>&nbsp;조회</button>
				</form>
			</div>
			
			<!-- 예매내역 리스트-->
			<div id="ticketList">
				<!-- 조회 조건에 따라 개수만큼 div가 출력 -->
				<div class="row tickets">
					<div class="col-2" style="padding:0 0 0 15px;"> <!-- 포스터작게들어갈자리 -->
						<img alt="" src="" width="100%" height="200px;" style="background-color: gray">
					</div>
					<div class="col-10">
						<table class="ticketTable">
							<tr><th>예매번호</th><td colspan="3">####-###-####</td></tr>
							<tr><th>영화명</th><td colspan="3">삼진그룹 영어토익반</td></tr>
							<tr><th>극장/상영관</th><td>목동/2관</td><th>관람인원</th><td>성인 2명</td></tr>
							<tr><th>관람일시</th><td>2020.11.01(일) 13:10 (2회차)</td><th>관람좌석</th><td>I열 8번, I열 9번</td></tr>
							<tr class="payInfo">
								<th>결제일시</th>
								<td colspan="3">2020.10.31 <button class="btn btn-light btn-outline-dark">결제정보</button></td>
							</tr>
						</table>
						<div style="text-align:right;">
							<button class="btn btn-info" style=" width:150px;" data-toggle="modal" data-target="#cancelModal">예매취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br/><br/>
		
		<!-- 예매취소내역 -->
		<div style="margin:10px auto;">
			<div>
				<h3>예매취소내역</h3>
			</div>
			<span>상영일 기준 7일간 취소내역을 확인 할 수 있습니다.</span><br/>
			<table id ="cancelTable">
				<tr style="background-color:#F2F2F2">
					<th width="20%">취소일시</th>
					<th width="35%">영화명</th>
					<th width="15%">극장</th>
					<th width="20%">상영일시</th>
					<th width="10%">취소금액</th>
				</tr>
				<!-- 취소내역이 있다면 -->
				<tr>
					<td>2020.10.30 (20:55)</td>
					<td>에브리타임 아이 다이</td>
					<td>고양스타필드</td>
					<td>2020.10.29 (목) 13:45</td>
					<td>5,000원</td>
				</tr>
				<!-- 취소내역이 없다면 -->
				<tr><td colspan="5"">취소내역이 없습니다.</td></tr>
			</table>
		</div>
	</div>
</div>

<!-- The Modal -->
  <div class="modal" id="cancelModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <b class="modal-title">알림</b>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          예매를 취소하시겠습니까?
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        	<button type="button" class="btn btn-danger" data-dismiss="modal" onclick="cancleTicket()">확인</button>
         	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>
<%@ include file="footer.jsp"%>