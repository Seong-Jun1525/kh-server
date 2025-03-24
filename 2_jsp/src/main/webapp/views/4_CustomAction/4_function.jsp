<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Function Library</title>
</head>
<body>
	<h2>* Function Library</h2>
	<p>
		EL 내에서 사용할 수 있는 문자열, 배열, 컬렉션 조작함수를 제공
	</p>
	
	<c:set var="data" value="The die is cast." /> <%-- 주사위는 던져졌다. --%>
	
	- data : ${ data }<br>
	- 문자열 길이 : ${ data.length() } 또는 ${ fn:length(data) }<br>
	- 'my' 시작인덱스 : ${ fn:indexOf(data, 'is') }<br>
	- 모든 영문자를 대문자로 : ${ fn:toUpperCase(data) }<br>
	- 모든 영문자를 소문자로 : ${ fn:toLowerCase(data) } <br>
</body>
</html>