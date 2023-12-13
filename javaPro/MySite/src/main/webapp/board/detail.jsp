<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.xml.transform.Result"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

   int boardNo = Integer.parseInt(request.getParameter("no"));


   Connection conn = new ConnectionFactory().getConnection();
   StringBuilder sql = new StringBuilder();
   sql.append("select no, title, writer, content, view_cnt");
   sql.append("  ,to_char(reg_date, 'yyyy-mm-dd') reg_date");
   sql.append(" from t_board");
   sql.append(" where no = ? ");
   
   PreparedStatement pstmt = conn.prepareStatement(sql.toString());
   pstmt.setInt(1, boardNo);
   
   ResultSet rs = pstmt.executeQuery();
   rs.next();
   
   int no = rs.getInt("no");
   String title = rs.getString("title");
   String writer = rs.getString("writer");
   String content = rs.getString("content");
   int viewCnt = rs.getInt("view_cnt");
   String regDate = rs.getString("reg_date");
   
   BoardVO board = new BoardVO(no, title, writer, content, viewCnt, regDate);
   
   JDBCClose.close(pstmt, conn);
   
   //공유영역 등록(pageContext)
   pageContext.setAttribute("board", board);
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

   <div align = "center">
         <br>
         <hr>
         <h2> 게시판 상세 </h2>
         <br>
         <table border="1" style="width:80%;">
         
            <tr>
               <th width="25%">번호</th>
               <td>${ board.no } </td>
            </tr>
            <tr>
               <th width="25%">제목</th>
	            <td>
	                <c:out value="${ board.title }"></c:out>
				</td>
            </tr>
            <tr>
               <th width="25%">작성자</th>
	            <td>
	                <c:out value="${ board.writer }"></c:out>
				</td>
            </tr>
            <tr>
               <th width="25%">내용</th>
	            <td>
		             <c:out value="${ board.content }"></c:out>
				</td>
            </tr>
            <tr>
               <th width="25%">조회수</th>
               <td>${ board.viewCnt }</td>
            </tr>
            <tr>
               <th width="25%">등록일</th>
               <td>${ board.regDate }</td>
            </tr>
         </table>
      </div>
</body>
</html>
</html>