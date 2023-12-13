<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	5 + 5 = <%= 5 + 5 %><br>
	5 + 5 = ${ 5 + 5 }<br>
	12 div 5 = ${ 12 div 5 }<br>
	12 > 5 = <%= 12 > 5 %> <br>
	12 gt 5 = ${ 12 gt 5 }<br>
	12 != 5 = ${ 12 != 5 }<br>
	12 ne 5 = ${ 12 ne 5 }<br>
	90 <= 88 < 100 => ${ 90 <= 88 && 88 < 100 }<br>
	90 <= 88 < 100 => ${ 88 ge 90 and 88 lt 100 }<br>
	
	empty str : ${ empty str }<br>
	5의 짝/홀 판단 : ${ 5 % 2 == 0 ? "짝수" : "홀수" } <br>
	5의 짝/홀 판단 : ${ 5 mod 2 eq 0 ? "짝수" : "홀수" } <br>
</body>
</html>