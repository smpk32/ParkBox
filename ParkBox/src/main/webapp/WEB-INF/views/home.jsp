<%@page import="com.thein.parkbox.testVo.MemVo"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
     <table border="1">
   		<c:if test="${!empty memlist}">
         <tr>
            <td>이름</td>
            <td>비밀번호</td>
            <td>이메일</td>
         </tr>
         <c:forEach items="${memlist}" var="mem">
         <tr>
            <td>${mem.name}</td>      <!-- getter가 있어야 함 -->
            <td>${mem.pw}</td>
            <td>${mem.email}</td>
         </tr>
         </c:forEach>
   </c:if>
   <c:if test="${empty memlist}">
   		<tr><td colspan="5">작성된 글이 없습니다.</td></tr>
	</c:if>
	</table>
</body>
</html>
