<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="loginform.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	
	<form method="post" action="GetLogin.jsp">
	<input type="text" id="ID" name="ID" placeholder="아이디를 입력하세요" required="required">
	<input type="password" id="PW" name="PW" placeholder="비밀번호를 입력하세요" required="required">
	
	
	<button type="submit" >
		로그인
	</button>
	
	
	
</form>
</body>
</html>