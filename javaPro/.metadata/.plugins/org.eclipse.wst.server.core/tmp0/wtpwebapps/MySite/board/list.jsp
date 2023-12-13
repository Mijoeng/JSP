<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		작업순서
		1. t_board 테이블에서 전체게시글 조회
		2. 조회된 게시물들을 <tr></tr>에 출력
	*/
	
	Connection conn = new ConnectionFactory().getConnection();
	String sql  = "select no, title, writer ";
		   sql += "     , to_char(reg_date, 'yyyy-mm-dd') reg_date ";	
	       sql += "  from t_board ";
	       sql += " order by no desc ";
	       
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		let btn = document.getElementById("addBtn");
		btn.addEventListener('click', function() {
			location.href = 'writeForm.jsp'
//			location.href = '/MySite/board/writeForm.jsp'
		})
	}
</script>
</head>
<body>
	<div align="center">
		<br>
		<hr>
		<h2>게시판 목록</h2>
		<hr>
		<br>
		<table border="1" style="width:80%">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">작성자</th>
				<th width="20%">등록일</th>
			</tr>
	<%
		while(rs.next()) {
	%>			
			<tr>
				<td><%= rs.getInt("no") %></td>
				<td>
					<a href = "detail.jsp?no=<%= rs.getInt("no") %>">
						<%= rs.getString("title") %>
					</a>
				</td>	
				
				<td><%= rs.getString("writer") %></td>
				<td><%= rs.getString("reg_date") %></td>
			</tr>
	<%
		}
	%>		
		</table>
		<br>
		<button id="addBtn">새글등록</button>
	</div>
</body>
</html>
<%
	JDBCClose.close(pstmt, conn);
%>




