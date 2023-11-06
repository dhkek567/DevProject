<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home0401</title>
</head>
<body>
	<h3>4. 표현 언어(EL)</h3>
	
	<p>비교 연사자를 이용 </p>
	<table border="1px">
		<tr>
			<td>\${coin == 1000 && userId == "hongkd" } </td>
			<td>${coin == 1000 && userId == "hongkd" } </td>
		</tr>
		<tr>
			<td>\${coin == 1000 and userId eq "hongkd" } </td>
			<td>${coin == 1000 and userId eq "hongkd" } </td>
		</tr>
		<tr>
			<td>\${not empty member && userId eq "hongkd" } </td>
			<td>${not empty member and userId eq "hongkd" } </td>
		</tr>
		<tr>
			<td>\${! empty member && userId eq "hongkd" } </td>
			<td>${! empty member and userId eq "hongkd" } </td>
		</tr>
		
	</table>
</body>
</html>