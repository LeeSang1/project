<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result>0 }">
			<script type="text/javascript">
				alert("회원가입이 되셨습니다.");
				location.href="loginForm.jsp"
			</script>
			</c:if>
			<c:if test="${result<=0 }">
			<script type="text/javascript">
				alert("회원가입 오류");
				history.go(-1);
			</script>
			</c:if>
</body>
</html>