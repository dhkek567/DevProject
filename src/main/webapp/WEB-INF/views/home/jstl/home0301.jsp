<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h3>7장 JSP</h3>
	<p>JSTL 태그들의 Exam</p>
	<p>JSP에서 사용할 변수를 설정하지 않고 자바빈즈 프로퍼티 값을 바로 표시한다.</p>

	<table border="1px">
	<c:set var="memberId" value="${member.userId }"></c:set>
		<tr>
			<td>memberId</td>
			<td>${memberId}</td>
		</tr>
	</table><br><hr>
	
	<c:remove var="memberId"/>
	
	<table border="1px">
		<tr>
			<td>memberId</td>
			<td>${memberId}</td>
		</tr>
	</table><br><hr>
	
</body>
</html>