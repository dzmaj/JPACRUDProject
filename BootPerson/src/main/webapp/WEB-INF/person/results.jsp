<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ID</th><th>Name</th>
			</tr>
		</thead>
			<c:forEach items="${people }" var="p">
				<tr>
					<td>${p.id }</td><td><a href="getPerson.do?pid=${p.id }">${p.firstName } ${p.lastName }</a>
				</tr>
			</c:forEach>
	
	</table>
<a href="/">Index</a>

</body>
</html>