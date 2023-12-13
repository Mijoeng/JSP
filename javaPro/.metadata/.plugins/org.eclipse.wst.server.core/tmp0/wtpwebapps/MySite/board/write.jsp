<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		작업순서
		1. 파라미터 추출(title, writer, content)
		2. t_board 테이블에 추출된 파라미터로 삽입(insert)
	*/
	// 1.날라오는 파라미터 추출
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	/*
	System.out.println("title : " + title);
	System.out.println("writer : " + writer);
	System.out.println("content : " + content);
	*/
	
	// 2. DB(t_board) 새로운 데이터 삽입
	Connection conn = new ConnectionFactory().getConnection();
		
	String sql  = "insert into t_board(no, title, writer, content) ";
		   sql += " values(seq_t_board_no.nextval, ?, ?, ?) ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);

	pstmt.executeUpdate();
	
	JDBCClose.close(pstmt, conn);
%>    

<script>
	alert('새글등록이 완료되었습니다')
	location.href = "list.jsp"
</script>








