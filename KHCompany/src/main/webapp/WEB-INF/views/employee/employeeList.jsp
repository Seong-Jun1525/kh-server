<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>KH Company</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	
	<main class="container-lg">
		<table class="table table-primary table-striped">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>사원명</th>
					<th>부서명</th>
					<th>직급명</th>
					<th>입사일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${ empty list }">
						<%-- 주석은 choose 태그 안에 있으면 오류발생하므로 when, otherwise 태그안으로!! --%>
						<tr>
							<td colspan="5">조회된 결과가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="l" items="${ list }">
							<tr>
								<%-- 기본적으로 getter가 있어야 함. 없으면 오류 발생 --%>
								<td>${ l.empId }</td>
								<td>${ l.empName }</td>
								<td>${ l.dept }</td>
								<td>${ l.job }</td>
								<td>${ l.hireDate }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<div style="width:100%; display: flex; align-items: center; justify-content: flex-end;">
			<a class="btn btn-primary" href="employeeInsert.do">사원추가</a>
			<button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">사원추가</button>
		</div>
	</main>

	<jsp:include page="../common/footer.jsp" />
	
	<div class="modal fade modal-lg" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">사원추가양식</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="empName" class="col-form-label">사원이름</label>
							<input type="text" class="form-control" id="empName">
						</div>
						<div class="mb-3">
							<label for="empNo" class="col-form-label">주민번호</label>
							<input type="text" class="form-control" id="empNo">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>