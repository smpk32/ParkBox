<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
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
$(function() {
	$('.beforeScroll li').click(function() {
		$(this).toggleClass('before after');
		if($(this).hasClass('after')){
			$('.afterScroll').append(this);
		}else{
			$('.beforeScroll').append(this);
		}
			
	});
});

</script>
</head>
<body>
	<div class="container">
		<div class="row">
		<!-- 왼쪽 영화 리스트 -->
			<div class="col-5">
			<h3>영화목록</h3>
				<ul class="list-group scroll scroll-size beforeScroll">
						 		<li class="list-group-item">
						 			<a href="#">12<span class="movie">삼진그룹영어토익반</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">담보</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">담보</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">테넷</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">테넷</span></a></li>
						 		<li class="list-group-item before">15<span class="movie">위플래쉬</span></a></li>
						 		<li class="list-group-item before">15<span class="movie">위플래쉬</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">도굴</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">도굴</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">도굴</span></a></li>
						 		<li class="list-group-item before">15<span class="movie">소리도없이</span></a></li>
						 		<li class="list-group-item before">15<span class="movie">소리도없이</span></a></li>
						 		<li class="list-group-item before">청<span class="movie">바스켓볼다이어리</span></a></li>
						 		<li class="list-group-item before">청<span class="movie">바스켓볼다이어리</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">엣지오브투모로우</span></a></li>
						 		<li class="list-group-item before">12<span class="movie">엣지오브투모로우</span></a></li>
						 		<li class="list-group-item before">청<span class="movie">다만악에서구하소서파이널컷</span></a></li>
					 		</ul>
			</div>
		<div class="col-2"></div>
		<!-- 추가할 영화 리스트 -->
			<div class="col-5 scroll-size">
			<h3>추가할 목록</h3>
				<ul class="list-group scroll scroll-size afterScroll">
				</ul>
			</div>

		</div>
		<div style="text-align:right"><input class="btn btn-primary" type="submit" value="저장"> </div>
	</div>
	
</body>
<%@ include file="footer.jsp"%>