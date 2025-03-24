<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - fmt</title>
</head>
<body>
	<h1>* formatNumber</h1>
	<p>
		숫자 데이터의 형식(포맷) 지정<br>
		- 표현하고자하는 숫자데이터의 형식을 통화기호, %등으로 원하는 방식에 맞게 지정하는 태그<br>
	</p>
	<br>
	<pre>
		fmt:formatNumber value="출력할 값"
						(이 밑에 속성은 생략 가능)
						groupingUsed="true|false" -- 기본값은 true
						type="percent|currency"
						currencySymbol="문자"	 -- type 속성 값이 currency일 경우에만 사용가능
	</pre>
	
	<c:set var="n1" value="123456789" />
	<c:set var="n2" value="0.65" />
	<c:set var="n3" value="50000" />
	
	* n1 : ${ n1 } <br>
	<fmt:formatNumber value="${n1 }" /> <br>
	<fmt:formatNumber value="${n1 }" groupingUsed="false" /> <br>
	<br>
	<fmt:formatNumber value="${n2 }" /> <br>
	<fmt:formatNumber value="${n2 }" type="percent" /> <br>
	<br>
	<fmt:formatNumber value="${n3 }" type="currency" /> <br>
	<br>
	<fmt:formatNumber value="${n3 }" type="currency" currencySymbol="$" /> <br>
	
	<h1>* formatDate</h1>
	<p>날짜 및 시간 데이터의 포맷(형식) 지정하여 출력</p>
	<i>단, java.util.Date 객체 사용한다</i>
	<br>
	<c:set var="now" value="<%= new java.util.Date() %>" /> <%-- set : setAttribute 사용하는 것과 같음 --%>
	- now : ${ now }
	<br>
	
	<ul>
		<li>
			날짜 : <fmt:formatDate value="${now }" type="date" /> <%-- 기본값 --%>
		</li>
		<li>
			시간 : <fmt:formatDate value="${now }" type="time" />
		</li>
		<li>
			날짜 + 시간 : <fmt:formatDate value="${now }" type="both" />
			<ul>
				<li>
					medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium" /> <%-- 기본값 --%>
				</li>
				<li>
					long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long" />
				</li>
				<li>
					short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short" />
				</li>
				<li>
					full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" />
				</li>
				<li>
					pattern : <fmt:formatDate value="${now }" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss" />
				</li>
			</ul>
		</li>
	</ul>
</body>
</html>