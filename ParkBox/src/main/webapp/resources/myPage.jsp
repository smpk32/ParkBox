<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<style type="text/css">
#memInfo {
	background-color: #0A0A2A;
	color: white;
}
.infoFirst {
	height: 150px;
	display: flex;
	align-items: center;
}
.infoSecond {
	height: 150px;
	display: flex;
	align-items: center;
}
#memTicket, #memAsk {
	margin: 30px auto;
	width: 90%;
}
.askSecond {
	height: 100px;
	display: flex;
	align-items: center;
}
</style>
<script type="text/javascript">

function seeMore(val) {
	var target = val;
	alert(target);
	
	// target이 point면 포인트페이지로 이동
	// target이 watch면 무비스토리 - 내가 본 영화 목록으로 이동
	// target이 review면 무비스토리 - 한줄 평 목록으로 이동
	// target이 like면 무비스토리 - 내가 찜한 영화 목록으로 이동
}


//예매취소
function cancleTicket() {

	var movieTime = new Date('11/01/2020 21:30:00'); // 영화상영시간 (지금은 가상)
	var now = new Date();	//현재시간
	
	var leftTime = (movieTime - now) / 60000; //1분이 60000ms초 영화 시간 - 현재시간해서 몇분 남았는지 계산하기
	alert("남은시간: " + leftTime +"분");

	//현재 시간 기준으로 영화 시간이 15분 이상 남았을 때만 취소 가능
	if (leftTime>15) {
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
		
		<!-- 회원등급, 포인트, 무비스토리 -->
		<div id="memInfo">
			<div class="row infoFirst">
				<div class="col-2 ml-auto">
					<a><i class="fas fa-user-astronaut fa-7x"></i></a>
				</div>
				<div class="col-8 mr-auto">
					<h3>ㅇㅇㅇ님 환영합니다</h3>
					<h3>고객님은 ㅇㅇㅇ등급입니다</h3>
				</div>		
			</div>
			<div class="row infoSecond">
				<div class="col-2 m-auto">
					<h4>보유포인트</h4>
					<div onclick="seeMore('point')" >
						<h2>###P</h2>
						<span>소멸포인트 ##</span>
					</div>
				</div>
				<div class="col-8">
					<h4>무비스토리</h4>
					<div class="row">
						<div class="col" onclick="seeMore('watch')">
							<h2>###</h2>
							<span>본 영화</span>
						</div>
						<div class="col" onclick="seeMore('review')">
							<h2>###</h2>
							<span>한줄평</span>
						</div>
						<div class="col" onclick="seeMore('like')">
							<h2>###</h2>
							<span>찜한 영화</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br/><br/>
		<!-- 나의 예매내역 -->
		<div id="memTicket">
			<div class="row" style="border-bottom: 2px solid #D8D8D8;">
				<div class="col-10"><h3>나의 예매 내역</h3></div>
				<div class="col-2">더보기 > </div>
			</div>
			<div class="row infoSecond" style="border-bottom: 1px solid #D8D8D8;">
				<div class="col-2"> <!-- 포스터작게들어갈자리 -->
					<img alt="" src="" width="100%" height="130px" style="background-color: gray">
				</div>
				<div class="col-8">
					<p>결제일시 : 2020-11-01</p>
					<p>예매내역이 들어가있음~~</p>
					<p>예매내역예매내역</p>
				</div>
				<div class="col-2"><button class="btn btn-info" data-toggle="modal" data-target="#cancelModal">예매취소</button></div>
			</div>
		</div>
		<br/><br/>
		<!-- 문의내역 -->
		<div id="memAsk">
			<div class="row" style="border-bottom: 2px solid #D8D8D8;">
				<div class="col-10"><h3>문의내역</h3></div>
				<div class="col-2">더보기 > </div>
			</div>
			<div class="askSecond">
				<table class="table-borderless" style="width:100%;">	<!-- 문의내역이 있는 경우에만 불러오기 -->
					<tr>
						<th style="width:13%">문의종류</th>
						<td style="width:73%">문의날짜</td>
						<td rowspan="2" style="width:15%"><button class="btn btn-outline-info" disabled>답변여부</button></td>
					</tr>
					<tr>
						<td colspan="2">문의글 제목 ~~~어쩌구저쩌구</td>
					</tr>
				</table>
			</div>
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