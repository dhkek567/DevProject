<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home0102</title>
</head>
<body>
	<h3>4. 표현 언어(EL)</h3>
	
	<p>2) 자바빈즈 프로퍼티를 조회하는 경우 "속성명.프로퍼티명"을 지정한다. </p>
	<table border="1px">
		<tr>
			<td>\${memberMap.userId } </td>
			<td>${memberMap["userId"] } </td>
		</tr>
		<tr>
			<td>\${memberMap.password } </td>
			<td>${memberMap["password"] } </td>
		</tr>
		<tr>
			<td>\${memberMap.email } </td>
			<td>${memberMap["email"] } </td>
		</tr>
		<tr>
			<td>\${memberMap.userName } </td>
			<td>${memberMap["userName"] } </td>
		</tr>
	</table>

</body>
</html>