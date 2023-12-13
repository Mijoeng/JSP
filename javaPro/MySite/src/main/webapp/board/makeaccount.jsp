<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("NAME");
	String id = request.getParameter("ID");
	String pw = request.getParameter("PW");
	String email = request.getParameter("E-MAIL");
	String address = request.getParameter("ADDRESS");
	String age = request.getParameter("AGE");
	
	Connection conn = new ConnectionFactory().getConnection();
	String sql  = "insert into customer values (?, ?, ?, ?, ?, ?) ";
		  
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, pw);
	pstmt.setString(4, email);
	pstmt.setString(5, address);
	pstmt.setString(6, age);
	
	int cnt = pstmt.executeUpdate();
	if (cnt > 0) {
		System.out.println("데이터 저장 성공");
	}else {
		System.out.println("데이터 저장 실패");
	}
	
	JDBCClose.close(pstmt, conn);
%>

<script>
	window.onload = function(){
		alert("회원가입 성공!");
		document.location = "loginForm.jsp";
	}

</script>