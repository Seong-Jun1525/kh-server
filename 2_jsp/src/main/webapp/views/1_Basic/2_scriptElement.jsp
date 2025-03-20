<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - 스크립트 원소</title>
</head>
<body>
	<%
		/*
			스크립틀릿 : 해양영역내에서는 자바 코드 작성 
		*/
		
		int sum = 0;
	
		for(int i = 1; i<= 100; i++) {
			sum+= i;
		}
	%>
	
	<p>
		화면에 출력<br>
        <%= sum %>
        <% out.println(sum); %>
        <%-- out : JSP 내장객체 중 하나(PrintWriter 타입) --%>
	</p>

    <%
        String[] sArr = {"사과", "포도", "메론", "오렌지"};
    %>

    <h5>배열 길이 : <%= sArr.length %></h5>
    <h5>배열 담긴 값 : <%= String.join(", ", sArr) %> </h5>
</body>
</html>