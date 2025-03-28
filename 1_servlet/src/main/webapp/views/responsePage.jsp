<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답용 페이지</title>
<style>
	span {
		color : red;
	}
</style>
</head>
<body>
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	<h1>##응답완료##</h1>
	
	<%-- 자바코드 작성하기 --%>
	<%
		// System.out.println("Hello JSP"); // 자바용 주석도 가능하다
		// scriptlet(스크립틀릿) : HTML 문서 내에서 Java 코드를 작성할 수 있는 영역
		
		// 서블릿을 통해 전달된 데이터를 추출
		String userName = (String)request.getAttribute("userName");
		String gender = (String)request.getAttribute("gender");
		int age = (int)request.getAttribute("age");
		String addr = (String)request.getAttribute("addr");
		double height = (double)request.getAttribute("height");
		String[] foods = (String[]) request.getAttribute("foods");
	%>
	
	<%-- 변수의 값을 화면상에 출력하고자 할 때 %=를 붙여서 표현 --%>
	이름 : 
		<% if(userName.isEmpty()) { %>
			익명<br>
		<% } else {%>
				<span><%= userName %></span><br>
		<% } %>
	성별 : 
		<% if(gender == null) { %>
				선택하지 않음
		<% } else { %>
			<span><%= gender %></span><br>
		<% } %>
	나이 : <span><%= age %></span><br>
	주소 : <span><%= addr %></span><br>
	키 : <span><%= height %></span><br>
	좋아하는 음식 : 
		<% if(foods == null) { %>
			선택된 음식이 없습니다.
		<% } else { %>
				<ol>
					<% for(String f : foods) { %>
							<li><%= f %></li>
					<% } %>
				</ol>
		<% } %>
		
</body>
</html>