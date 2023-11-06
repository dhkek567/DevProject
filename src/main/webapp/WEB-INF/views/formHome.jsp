<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>BOARD</title>
</head>
<body>
	<h3>FormHome</h3>
	
	<form action="/board/register">
		<input type="submit" value="register(GET)">
	</form>
	
	<form action="/board/register" method="post">
		<input type="submit" value="register(POST)">
	</form>
	
	<form action="/board/modify">
		<input type="submit" value="modify(GET)">
	</form>
	
	<form action="/board/modify" method="post">
		<input type="submit" value="modify(POST)">
	</form>
	
	<form action="/board/remove" method="post">
		<input type="submit" value="remove(POST)">
	</form>
	
</body>
</html>