<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common2.css">
</head>
<body>
<form action="login.jsp">
<table><caption>LOG-IN</caption>
	<tr><th>ID</th><td><input type="text" name="id" required="required"></td></tr>
	<tr><th>PASSWORD</th><td><input type="password" name="password" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="login" align="center"></th></tr>
</table>
</form>
<button onclick="location.href='joinForm.jsp'">가입하기</button> 
</body>
</html>