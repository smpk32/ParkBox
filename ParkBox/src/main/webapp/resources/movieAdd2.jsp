<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%
    // 파라메터 설정	
	String movieCd = request.getParameter("movieCd")==null?"":request.getParameter("movieCd");						//영화코드
	
	// 발급키
	String key = "db07044ab4c230017b51adcdb03b9855";	
	
	// KOBIS 오픈 API SOAP Client를 통해 호출
	/* movieInfoResult movieInfoResult = new MovieAPIServiceImplService().getMovieAPIServiceImplPort().searchMovieInfo(key, movieCd); 
	request.setAttribute("movieInfoResult",movieInfoResult);	
	*/
    %>
<script type="text/javascript" src="./js/KobisOpenAPIRestService.js"></script>
<head>
<title>상영작관리</title>
<style type="text/css">
.textCenter {
	text-align: center;
}

.scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 100%;
}

.scroll-size {
	height: 600px;
}

.BeforeMovieListbox {
	height: 500px;
}

#boxtab th {
	height: 50px;
}
</style>
<script type="text/javascript">
 $(function(){

		
	});
</script>
</head>
<body>
	<div class="container row">
		<div class="col-2">
			<%@ include file="managerHeader.jsp"%>
		</div>

		<div class="col">
			<table border="1">
				<tr>
					<td>영화명</td><td>영화명(영)</td><td>상영시간</td><td>제작년도</td><td>개봉일</td><td>영화형태</td>
					<td>장르</td><td>제작국가</td><td>감독</td><td>배우</td><td>제작사</td>
				</tr>
				
			<c:if test="${not empty movieInfoResult.movieInfo}">	
				<tr>
					<td><c:out value="${movieInfoResult.movieInfo.movieNm}"/></td><td><c:out value="${movieInfoResult.movieInfo.movieNmEn }"/></td>
					<td><c:out value="${movieInfoResult.movieInfo.showTm }"/><td><c:out value="${movieInfoResult.movieInfo.prdtYear }"/></td>
					<td><c:out value="${movieInfoResult.movieInfo.openDt }"/></td><td><c:out value="${movieInfoResult.movieInfo.typeNm}"/></td>			
					<td><c:forEach items="${movieInfoResult.movieInfo.genres.genre}" var="genre"><c:out value="${genre.genreNm}"/>,</c:forEach></td>
					<td><c:forEach items="${movieInfoResult.movieInfo.nations.nation}" var="nation"><c:out value="${nation.nationNm}"/>,</c:forEach></td>
					<td><c:forEach items="${movieInfoResult.movieInfo.directors.director}" var="director"><c:out value="${director.peopleNm}"/>,</c:forEach></td>			
					<td><c:forEach items="${movieInfoResult.movieInfo.actors.actor}" var="actor"><c:out value="${actor.peopleNm}"/>,</c:forEach></td>
					<td><c:forEach items="${movieInfoResult.movieInfo.companys.company}" var="company"><c:out value="${company.companyNm}"/>,</c:forEach></td>
				</tr>	
			</c:if>
			</table>
			
			<%-- <form action="">
				감독명:<input type="text" name="directorNm" value="<%=directorNm %>">		
				영화명:<input type="text" name="movieNm" value="<%=movieNm %>"> <br/>
				개봉연도조건:<input type="text" name="openStartDt" value="<%=openStartDt %>"> ~ <input type="text" name="openEndDt" value="<%=openEndDt %>">
				제작연도조건:<input type="text" name="prdtStartYear" value="<%=prdtStartYear %>"> ~ <input type="text" name="prdtEndYear" value="<%=prdtEndYear %>">		
		
				국적:<select name="repNationCd">
					<option value="">-전체-</option>
					<c:forEach items="${nationCd.codes}" var="code">
					<option value="<c:out value="${code.fullCd}"/>"<c:if test="${param.repNationCd eq code.fullCd}"> selected="seleted"</c:if>><c:out value="${code.korNm}"/></option>
					</c:forEach>
					</select><br/>
				영화형태:
					<c:forEach items="${movieTypeCd.codes}" var="code" varStatus="status">
					<input type="checkbox" name="movieTypeCdArr" value="<c:out value="${code.fullCd}"/>" id="movieTpCd_<c:out value="${code.fullCd}"/>"/> <label for="movieTpCd_<c:out value="${code.fullCd}"/>"><c:out value="${code.korNm}"/></label>
					<c:if test="${status.count %4 eq 0}"><br/></c:if>
					</c:forEach>
					<br/>
				<input type="submit" name="" value="조회">
			</form> --%>
		</div>
	</div>



</body>
<%@ include file="footer.jsp"%>