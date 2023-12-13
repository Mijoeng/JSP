<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<br>
		<hr>
		<h2>게시글 등록폼</h2>
		<hr>
		<br>
		<form action="write.jsp" method="post" >
			<table border="1" style="width:80%">
				<tr>
					<th width="25%">제목</th>
					<td>
						<input type="text" name="title" size="50">
					</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>	
						<input type="text" name="writer">
					</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>
						<textarea name="content" rows="7" cols="50"></textarea>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="등록" >
			<!-- <button type="submit">등록</button> -->
		</form>
	</div>
</body>
</html>



