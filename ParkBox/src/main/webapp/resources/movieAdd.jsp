<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<title>상영작관리</title>
<style type="text/css">
.textCenter{
	text-align:center;
}
.scroll {
	overflow-x: hidden; 
	overflow-y: auto;
	height: 100%;
}
.scroll-size{
height: 600px;
}
</style>
<script>
$(function(){
	$('.beforeScroll li').click(function() {
		$(this).toggleClass('before after');
		if($(this).hasClass('after')){
			$('.afterScroll').append(this);
		}else{
			$('.beforeScroll').append(this);
		}
			
	});
	
	$('.submit').click(function(){
		var arr=[];
		$(document)
		$('.after').each(function(index, element1) {
			arr.push($(this).val());
		})
		
		alert(arr);
	});
});

</script>
</head>
<body>
<div class="container row">
	<div class="col-2">
		<%@ include file="managerHeader.jsp"%>
	</div>
	
	<div class="col">
		<div class="row">
			<!-- 왼쪽 영화 리스트 -->
			<div class="col-5">
				<h3>영화목록</h3>
				<ul class="list-group scroll scroll-size beforeScroll">
			 		<li class="list-group-item before" value="0">12<span class="movie">삼진그룹영어토익반</span></li>
			 		<li class="list-group-item before" value='1'>12<span class="movie">담보</span></li>
			 		<li class="list-group-item before" value='2'>12<span class="movie" >테넷</span></li>
			 		<li class="list-group-item before" value='3'>12<span class="movie" >테넷</span></li>
			 		<li class="list-group-item before" value='4'>15<span class="movie" >위플래쉬</span></li>
			 		<li class="list-group-item before" value='5'>15<span class="movie" >위플래쉬</span></li>
			 		<li class="list-group-item before" value='6'>12<span class="movie" >도굴</span></li>
			 		<li class="list-group-item before" value='7'>12<span class="movie" >도굴</span></li>
			 		<li class="list-group-item before" value='8'>12<span class="movie" >도굴</span></li>
			 		<li class="list-group-item before" value='9'>15<span class="movie" >소리도없이</span></li>
			 		<li class="list-group-item before" value='10'>15<span class="movie" >소리도없이</span></li>
			 		<li class="list-group-item before" value='11'>청<span class="movie" >바스켓볼다이어리</span></li>
			 		<li class="list-group-item before" value='12'>청<span class="movie" >바스켓볼다이어리</span></li>
			 		<li class="list-group-item before" value='13'>12<span class="movie" >엣지오브투모로우</span></li>
			 		<li class="list-group-item before" value='14'>12<span class="movie" >엣지오브투모로우</span></li>
			 		<li class="list-group-item before" value='15'>청<span class="movie" >다만악에서구하소서파이널컷</span></li>
		 		</ul>
			</div>
			
			<div class="col-1"></div>
			
			<!-- 추가할 영화 리스트 -->
			<div class="col-5 scroll-size">
				<h3>추가할 목록</h3>
				<ul class="list-group scroll scroll-size afterScroll"></ul>
			</div>
		</div>
		
		<div style="text-align:right"><button class="btn btn-primary submit">저장</button> </div>
	</div>
</div>

</body>
<%@ include file="footer.jsp"%>