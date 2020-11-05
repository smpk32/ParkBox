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

.bookSection2 {
	height: 450px;
	padding: 0;
	margin: 0 auto;
	border: 1px solid #D8D8D8;
}

#countArea {
	background-color: #F2F2F2;
	padding: 10px;
	height: 50px;
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
	margin: 20px auto;
	text-align: center;
}
#colNum {
	display: inline-block;
	width: 50px;
}
#rowNum  {
	display: inline-block;
}
#colNum td, #rowNum td {
	border: 1px solid #D8D8D8;
	width: 30px;
	height: 30px;
	text-align: center;
	font-size: 13px;
}
#seatInfoArea {
	background-color: #0B2161;
	height: 450px;
	padding: 0;
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

	});

	$(function() {

		//인원선택 - 마이너스
		$('.minusBtn').click(function() {
			var nowCount = Number($(this).next().text()); //현재 몇명인지 가져오기

			if (nowCount != 0) { //현재 숫자가 0이 아닐때만 -1 실행
				$(this).next().text(nowCount - 1);
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

			if (allCount < 8) { //전체인원이 8보다 작으면 숫자 증가하기
				$(this).prev().text(nowCount + 1);
			}

		});

	});
</script>
</head>
<body>

	<div class="container">
		<h3>빠른예매</h3>
		<br />
		<h6 style="margin: 0;">관람인원선택 (최대8매)</h6>
		<!--예매 영역 시작-->
		<div class="bookingArea row">

			<!-- 관람인원선택 및 좌석선택 -->
			<div class="col-8 bookSection2">
				
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
								<td><%=colName%></td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
	
					<!-- 좌석 열번호 -->
					<div id="rowNum">
						<table >
							<%
								for (int i = 1; i <= 8; i++) { //행
							%>
							<tr>
								<%
									for (int j = 1; j <= 12; j++) { //열
								%>
								<td><%=j%></td>
								<%
									}
								%>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</div>
			</div>
			
			<!-- 선택좌석정보영역  -->
			<div class="col" id="seatInfoArea">
				
			</div>
		</div>

	</div>

</body>
</html>
<%@ include file="footer.jsp"%>