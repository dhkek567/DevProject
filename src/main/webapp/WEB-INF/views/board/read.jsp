<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>READ</title>
</head>
<body>
	<h3>READ</h3>
	
	
	<form action="/board/get" method="get">
		<input type="submit" name="modify" value="Modify"/>
		<input type="submit" name="remove" value="Remove"/>
	</form>
	
	<a href="/board/get?list">List</a>
</body>
</html>