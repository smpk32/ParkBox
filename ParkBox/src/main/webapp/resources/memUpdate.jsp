<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
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

.tableupdate {
	top: 30%;
	left: 30%;
	margin: 5px;
	width: 800px;
}

.updtblrow {
	width: 20%;
}

.updOk {
	left: 60%;
	padding: 20px;
	width: 30%;
}

.modal-content {
	color: #585858;
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

		<!-- 마이페이지 - 회원정보수정 -->
		<div class="container tableupdate">
			<h3>개인정보 수정</h3>
			<table class="table table-striped">
				<tr>
					<td>이름</td>
					<td>DB</td>
				</tr>
				<tr>
					<td class="updtblrow">생년월일</td>
					<td>DB</td>
				</tr>
				<tr>
					<td class="updtblrow">휴대폰</td>
					<td>
						<button type="button" class="btn btn-secondary"
							data-toggle="modal" data-target="#changePhone">휴대폰번호 변경</button>
						<div class="modal fade" id="changePhone">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">휴대폰번호 변경</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<h5>수정할 휴대폰 번호</h5>
										<input type="text" name = "#"/>
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">확인</button>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="updtblrow">이메일</td>
					<td>DB</td>
				</tr>
				<tr>
					<td class="updtblrow">비밀번호</td>
					<td>
						<button type="button" class="btn btn-secondary"
							data-toggle="modal" data-target="#changepassword">비밀번호
							변경</button>
						<div class="modal fade" id="changepassword">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">비밀번호 변경</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<h6>기존 비밀번호</h6>
										<input type="text"  name= "#"/>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">확인하기</button>
										<h6>변경할 휴대폰 번호</h6>
										<input type="text" name = "#"/>
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">확인</button>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
									</div>

								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="updtblrow">주소</td>
					<td>
							<h6>우편번호</h6>
							<input type="text" name="zip" style="width: 80px; height: 26px;" />
							<button type="button" class="btn btn-secondary"
								onclick="openZipSearch()">우편번호검색</button>
							<h6>주소</h6>
							<input type="text" name="addr1"
								style="width: 300px; height: 30px;" readonly /><br>
							<h6>상세주소</h6>
							<input type="text" name="addr2"
								style="width: 300px; height: 30px;" />
					</td>
				</tr>
			</table>
			<div class="updOk">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-outline-dark">취소</button>
			</div>
		</div>
	</div>
	<script>
		function openZipSearch() {
			new daum.Postcode({
				oncomplete : function(data) {
					$('[name=zip]').val(data.zonecode);//우편번호 (5자)
					$('[name=addr1]').val(data.address);
					$('[name=addr2]').val(data.buildingName);
				}
			}).open();
			self.close();
		}
	</script>
</body>
</html>

<%@ include file="footer.jsp"%>