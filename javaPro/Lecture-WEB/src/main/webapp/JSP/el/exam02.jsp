<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	http://localhost:8080/Lecture-WEB/jsp/el/exam02.jsp
	?id=aaa&name=bbb
	호출되었을 때 id, name값을 추출하여 출력
	
	http://localhost:8080/Lecture-WEB/jsp/el/exam02.jsp
	?id=aaa&name=bbb&hobby=movie&hobby=game
--%>
<%			
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	String[] hobbies = request.getParameterValues("hobby");
%>

	id : <%= id %><br>
	name : <%= name %><br>
	id : ${ param.id }<br>
	name : ${ param.name }<br>
	hobby : <%= hobbies[0] %><br>
	hobby : <%= hobbies[1] %><br>
	hobby : ${ paramValues.hobby[0] } ${ paramValues.hobby[1] }<br>
</body>
</html>