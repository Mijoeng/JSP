<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
	pageContext.setAttribute("msg", "page영역에 객체등록");

	request.setAttribute("id", "rlagkqls");
	request.setAttribute("msg", "request영역에 객체등록");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	EL에서 공유영역 4가지
	pageScope, requestScope, sessionScope, applicationScope
 --%>
	msg : <%= pageContext.getAttribute("msg") %><br>
	msg : ${ msg }<br>
	id : ${ id }<br>
	
	request msg : ${ requestScope.msg }<br>
</body>
</html>