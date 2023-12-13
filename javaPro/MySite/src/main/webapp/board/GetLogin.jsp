<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
	request.setCharacterEncoding("utf-8");
	int cnt = 0;
	String id = request.getParameter("ID");
	String pw = request.getParameter("PW");
	session.setAttribute("cnt", cnt);
	System.out.println(id);
	System.out.println(pw);
	Connection conn = new ConnectionFactory().getConnection();
	String sql  = "select id, pw from customer where id=? and pw=?" ;
		  
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		cnt=1;
		session.setAttribute("id", id);
		session.setAttribute("cnt", cnt);
		System.out.println("로그인 성공");
	}else {
		System.out.println("로그인 실패");
	}
	
	JDBCClose.close(pstmt, conn);
%>

<script>
	window.onload = function(){
		<c:if test="${ 1 eq cnt }">
		document.location='mypage.jsp'
		</c:if>
		
		<c:if test="${ 0 eq cnt }">
		alert('로그인 실패! 다시 로그인 하세요.')
		document.location='loginForm.jsp'
		</c:if>
		
	}

</script>
