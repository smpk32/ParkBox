<%@page import="com.thein.parkbox.testVo.vo"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<%
List<vo> list = (List<vo>)request.getAttribute("memList");
%>
<c:if test="${!empty list}">
<table border="1">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>취미</td>
		</tr>
		<c:forEach items = "${list}" var="ob">
		<tr>
			<td>${ob.name}</td>
			<td>${ob.pw}</td>
		</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>
