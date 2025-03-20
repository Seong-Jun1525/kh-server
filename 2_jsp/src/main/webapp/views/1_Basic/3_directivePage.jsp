<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@
	page import="java.util.ArrayList"
 %>
 
 <%-- 
 	해당 페이지만의 에러페이지일 경우 이렇게 내부에 작성하고 공용일 경우 web.xml에서 추가한다
	 <%@ page
	 	errorPage="error500.jsp"
	  %>
  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - page 지시어</title>
</head>
<body>
	<h1>page 지시어</h1>
	
	<%
		ArrayList<String> list = new ArrayList<>();
	
		list.add("사과");
		list.add("딸기");
	%>
	
	<h2>리스트의 길이 : <%= list.size() %></h2>
	<h2>리스트의 첫 번째 값 : <%= list.get(0) %></h2>
	
	<h2>리스트의 다섯번째 값 : <%= list.get(4) %></h2>
</body>
</html>