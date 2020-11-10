<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<title>시간표</title>
<style type="text/css">
td{
	width : 200px;
	height: 200px;
}
</style>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<script>
$(function() {
	for(var i=1;i<6;i++){
		var a = "<tr>";
		a= a+"<td>"+i+"관</td>";
		for(var j=1;j<7;j++){
			a= a+"<td data-toggle=\"modal\" data-target=\"#timetableAddModal\">"
			
			+"</td>";
		}
		a=a+"</tr>";
		$("thead").append(a);
	}
	for(var i=1;i<6;i++){
		for(var j=1;j<7;j++){
			$('#timetable tr:eq('+i+') td:eq('+j+')').click(function(){
				rowIdx=$(this).parent().parent().children().index($(this).parent());
				colIdx=$(this).parent().children().index($(this));
			});
			}
	}
	$('.submit').click(function() {
		var theater = $('.mv-select option:selected').val();
		var date =$('.date').val();
		var mvName = $('.mv-name').val();
		var time = $('#timepicker').val().split(":");
		var startTime =new Date(0, 0, 0, time[0], time[1]);
		var endTime= new Date(0, 0, 0, time[0], time[1]);
		endTime.setMinutes(startTime.getMinutes()+120);
		
		alert("영화관 : " +theater+"\n"
				+"선택 날짜 : "+date+"\n"
				+"영화 명 : " +mvName+"\n"
				+"회차 : " +colIdx+"\n"
				+"관 : " +rowIdx+"\n"
				+"영화관 : " +theater+"\n"
				+"시작 시간 : "+startTime+ "\n"
				+"끝나는 시간 : "+endTime+ "\n");

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
		<h2>영화시간표</h2>
  		<form action="">
	 		 <div class="row">
	  			<div class="col-2">극장선택</div>
	  			<div class="col-2">
		  			<select name="theater" class="custom-select mb-3 mv-select">
			      		<option selected value="gangnam">강남</option>
			     		<option value="Wangsimni">왕십리</option>
			     		<option value="Yeongdeungpo">영등포</option>
			     		<option value="Mokdong">목동</option>
		    		</select>
	  			</div>
	  			<div class="col-2">날짜</div>
	  			<div class="col-2">
	  				<input class="date" type="date" name="date">
	  			</div>
	  		</div>
		</form>
  	
		<div>
 		 	<table class="table table-bordered" id="timetable">
    			<thead>
			      <tr>
			      	<th></th>
			        <th>1회차</th>
			        <th>2회차</th>
			        <th>3회차</th>
			        <th>4회차</th>
			        <th>5회차</th>
			        <th>6회차</th>
			      </tr>
			    </thead>
  			</table>
  		</div>
  </div>
</div>

  <!-- modal -->
  <div class="modal" id="timetableAddModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">시간표 관리</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="usr">영화 명 :</label> <select name="movie"
							class="custom-select mb-3 mv-name">
							<option selected value="삼진그룹">삼진그룹</option>
							<option value="도굴">도굴</option>
							<option value="노트북">노트북</option>
						</select>
					</div>
					<div>시작시간</div>
					<input id="timepicker" width="276" />
					<script>
						$('#timepicker').timepicker({
							uiLibrary : 'bootstrap4'
						});
					</script>
				</div>


				<!-- Modal footer -->
        <div class="modal-footer">
        	<button class="btn btn-primary submit" >저장</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>
</body>
 
<%@ include file="footer.jsp"%>