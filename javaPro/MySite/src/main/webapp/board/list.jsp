<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/*
		작업순서
		1. [자바코드로실행]t_board 테이블에서 전체게시글 조회하여 list에 저장
		2. 공유 영역에(pageContext) 게시글 등록
		3. [JSP 이용해서] 게시물 출력하고 싶음
	*/
	
	//1단계
	List<BoardVO> list = new ArrayList<>();
	
	Connection conn = new ConnectionFactory().getConnection();
	String sql  = "select no, title, writer ";
		   sql += "     , to_char(reg_date, 'yyyy-mm-dd') reg_date ";	
	       sql += "  from t_board ";
	       sql += " order by no desc ";
	       
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()) {
		int no = rs.getInt("no");
		String title = rs.getString("title");
		String writer = rs.getString("writer");
		String regDate = rs.getString("reg_Date");
		
		BoardVO board = new BoardVO(no, title, writer, regDate);
		list.add(board);
	}
	
	JDBCClose.close(pstmt, conn);
	
	//2단계
	pageContext.setAttribute("list", list);
%>    

    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="writeformcss.css">
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
			<c:forEach items="${ list }" var="board">
				<tr>
					<td>${ board.no }</td>
					<td>
						<a href = "detail.jsp?no=${ board.no }">
							<c:out value ="${ board.title }" /></td>
						</a>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
					
					
				</tr>
			</c:forEach>
			
		</table>
		<br>
		<button id="addBtn">새글등록</button>
		
		<button type = "button" onclick="location.href='login.jsp'">
			로그아웃
		</button>
		<button type = "button" onclick="location.href='mypage.jsp'">
			마이페이지
		</button>
	</div>
</body>
</html>




