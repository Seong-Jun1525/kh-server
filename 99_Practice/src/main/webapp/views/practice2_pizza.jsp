<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습 (2) - 피자 주문</title>
</head>
<body>
	<% String today = (String) request.getAttribute("today"); %>

	<h2>오늘은 <span style="color: pink;"><%= today %></span> 입니다.</h2>
	<h2>피자 아카데미</h2>
	
	<table border=1>
		<tbody>
			<tr>
				<td>종류</td>
				<td>이름</td>
				<td>가격</td>
				<td rowspan=13>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>종류</td>
				<td>이름</td>
				<td>가격</td>
			</tr>
			<tr>
				<td rowspan=5>피자</td>
				<td>치즈피자</td>
				<td>5000</td>
				<td rowspan=13>사이드</td>
				<td>오븐구이통닭</td>
				<td>9000</td>
			</tr>
			<tr>
				<td>콤비네이션피자</td>
				<td>6000</td>
				<td>치즈스틱&윙</td>
				<td>4900</td>
			</tr>
			<tr>
				<td>포테이토피자</td>
				<td>7000</td>
				<td>치즈오븐스파게티</td>
				<td>4000</td>
			</tr>
			<tr>
				<td>고구마피자</td>
				<td>7000</td>
				<td>새우링&웨지감자</td>
				<td>3500</td>
			</tr>
			<tr>
				<td>불고기피자</td>
				<td>8000</td>
				<td>찰릭포테이토</td>
				<td>3000</td>
			</tr>
			<tr>
				<td rowspan=6>토핑</td>
				<td>고구마무스</td>
				<td>1000</td>
				<td>콜라</td>
				<td>1500</td>
			</tr>
			<tr>
				<td>콘크림무스</td>
				<td>1500</td>
				<td>사이다</td>
				<td>1500</td>
			</tr>
			<tr>
				<td>파인애플토핑</td>
				<td>2000</td>
				<td>갈릭소스</td>
				<td>500</td>
			</tr>
			<tr>
				<td>치즈토핑</td>
				<td>2000</td>
				<td>피클</td>
				<td>300</td>
			</tr>
			<tr>
				<td>치즈크러스트</td>
				<td>2000</td>
				<td>핫소스</td>
				<td>100</td>
			</tr>
			<tr>
				<td>치즈바이트</td>
				<td>3000</td>
				<td>파마산 치즈가루</td>
				<td>100</td>
			</tr>
		</tbody>
	</table>
	<br><br>
	<form action="/practice/order.do" method="post">
		피자 : 
		<select name="pizza">
			<option value="치즈피자 5000">치즈피자</option>
			<option value="콤비네이션피자 6000">콤비네이션피자</option>
			<option value="포테이토피자 7000">포테이토피자</option>
			<option value="고구마피자 7000">고구마피자</option>
			<option value="불고기피자 8000">불고기피자</option>
		</select>
		<br>
		토핑 :
		<input type="checkbox" id="toping1" name="toping" value="고구마무스 1000"> <label for="toping1">고구마무스</label>&nbsp;
		<input type="checkbox" id="toping2" name="toping" value="콘크림무스 1500"> <label for="toping2">콘크림무스</label>&nbsp;
		<input type="checkbox" id="toping3" name="toping" value="파인애플토핑 2000"> <label for="toping3">파인애플토핑</label>&nbsp;
		<input type="checkbox" id="toping4" name="toping" value="치즈토핑 2000"> <label for="toping4">치즈토핑</label>&nbsp;
		<input type="checkbox" id="toping5" name="toping" value="치즈크러스트 2000"> <label for="toping5">치즈크러스트</label>&nbsp;
		<input type="checkbox" id="toping6" name="toping" value="치즈바이트 3000"> <label for="toping6">치즈바이트</label>&nbsp;
		<br>
		사이드 :
		<input type="checkbox" id="side1" name="side" value="오븐구이통닭 9000"> <label for="side1">오븐구이통닭</label>&nbsp;
		<input type="checkbox" id="side2" name="side" value="치즈스틱&윙 4900"> <label for="side2">치즈스틱&윙</label>&nbsp;
		<input type="checkbox" id="side3" name="side" value="치즈오븐스파게티 4000"> <label for="side3">치즈오븐스파게티</label>&nbsp;
		<input type="checkbox" id="side4" name="side" value="새우링&웨지감자 3500"> <label for="side4">새우링&웨지감자</label>&nbsp;
		<input type="checkbox" id="side5" name="side" value="찰릭포테이토 3000"> <label for="side5">찰릭포테이토</label>&nbsp;
		<input type="checkbox" id="side6" name="side" value="콜라 1500"> <label for="side6">콜라</label>&nbsp;
		<input type="checkbox" id="side7" name="side" value="사이다 1500"> <label for="side7">사이다</label>&nbsp;
		<input type="checkbox" id="side8" name="side" value="갈릭소스 500"> <label for="side8">갈릭소스</label>&nbsp;
		<input type="checkbox" id="side9" name="side" value="피클 300"> <label for="side9">피클</label>&nbsp;
		<input type="checkbox" id="side10" name="side" value="핫소스 100"> <label for="side10">핫소스</label>&nbsp;
		<input type="checkbox" id="side11" name="side" value="파마산 치즈가루 100"> <label for="side11">파마산 치즈가루</label>&nbsp;
		<br><br>
		<button>확인</button>
	</form>
</body>
</html>