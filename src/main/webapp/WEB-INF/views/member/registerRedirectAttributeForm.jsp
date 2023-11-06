<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegisterRedirectAttributeForm</title>
</head>
<body>
	<h3>registerRedirectAttributeForm</h3>
	
	<form action="/redirectattribute/register" method="post">
		userId : <input type="text" name="userId" value="hongkd">
		password : <input type="text" name="password" value="1234">
		<input type="submit" value="전송"/>
	</form> <br>
</body>
</html>