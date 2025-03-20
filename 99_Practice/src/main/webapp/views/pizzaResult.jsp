<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 주문 결과</title>
</head>
<body>
	<%
		String pizza = (String)request.getAttribute("pizzaName");
		
		String[] topingStr = (String[])request.getAttribute("topingStr");
		String[] sideStr = (String[])request.getAttribute("sideStr");
		
		int total = (int) request.getAttribute("total");
	%>
	<h1>주문 내역</h1>
	<p style="font-weight: 900">피자는 <span style="color: red"><%= pizza %></span>, 토핑은 <span style="color: green"><%= String.join(", ", topingStr) %></span>, 사이드는 <span style="color: blue"><%= String.join(", ", sideStr) %></span> 주문하셨습니다.</p>

	<h3>총합 : <span style="text-decoration: underline"><%= total %>원</span></h3>
	
	<h3 style="color: pink">즐거운 시간 되세요 ~ </h3>
</body>
</html>