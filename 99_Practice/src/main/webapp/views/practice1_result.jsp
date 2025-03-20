<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습 (1) - 랜덤 숫자 뽑기 - 결과페이지</title>
</head>
<body>
	<%-- 1 ~ 45까지 랜덤 숫자 6개를 뽑아 출력하기 --%>
	
	<% String[] arr = (String[]) request.getAttribute("random"); %>
	
	<h1>랜덤숫자</h1>
	
	<% if(arr != null) { %>
		<ul>
			<% for(String s : arr) { %>
				<li><%= s %></li>
			<% } %>
		</ul>
	<% } %>
</body>
</html>