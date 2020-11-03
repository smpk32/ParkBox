<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<head>
<style type="text/css">
td{
	width : 200px;
	height: 200px;
}
</style>
<script>
$(function() {
	for(var i=1;i<6;i++){
		var a = "<tr>";
		a= a+"<td>"+i+"관</td>";
		for(var j=1;j<6;j++){
			a= a+"<td data-toggle=\"modal\" data-target=\"#timetableAddModal\">"
			
			+"</td>";
		}
		a=a+"</tr>";
		$("thead").append(a);
	}
});
$(function() {
	for(var i=1;i<6;i++){
		for(var j=1;j<6;j++){
			$('#timetable tr:eq('+i+') td:eq('+j+')').click(function(){
				var rowIdx=$(this).parent().parent().children().index($(this).parent());
				var colIdx=$(this).parent().children().index($(this));
				
				alert(rowIdx+","+colIdx);
			});
			}
	}
	i=7;
	j=7;
});
</script>
</head>
<body>
<div class="container">
  <h2>영화시간표</h2>
  <form action="">
  <div class="row">
  	<div class="col-2">극장선택</div>
  	<div class="col-2">
  		<select name="theater" class="custom-select mb-3">
      <option selected value="gangnam">강남</option>
      <option value="Wangsimni">왕십리</option>
      <option value="Yeongdeungpo">영등포</option>
      <option value="Mokdong">목동</option>
    </select>
  	</div>
  	<div class="col-2">날짜</div>
  	<div class="col-2">
  		
  <input type="date" name="date">
</form>
  	</div>
  	<div>
  	
  	</div>
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
      </tr>
    </thead>
  </table>
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
						<label for="usr">영화 명 :</label> 
						<select name="movie" class="custom-select mb-3">
							<option selected value="삼진그룹">삼진그룹</option>
							<option value="도굴">도굴</option>
							<option value="노트북">노트북</option>
						</select>
					</div>
				</div>

				<!-- Modal footer -->
        <div class="modal-footer">
        	<input type="submit" class="btn btn-primary" value="저장">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
<%@ include file="footer.jsp"%>