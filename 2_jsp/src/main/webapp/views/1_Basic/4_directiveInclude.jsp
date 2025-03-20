<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 지시어 - include</title>
</head>
<body>
	<h1>include 지시어</h1>
	<div style="witth:100%; height: 300px; border: 3px solid #F00">
		<%@ include file="2_scriptElement.jsp" %>
	</div>
	
	1부터 100까지의 합 = <%= sum %><br>
	* 페이지를 포함시키면 해당 페이지의 변수를 사용할 수 있음
</body>
</html>