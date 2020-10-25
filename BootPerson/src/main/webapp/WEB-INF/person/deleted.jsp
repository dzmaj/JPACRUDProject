<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
<c:choose>
	<c:when test="${wasDeleted }">Person was deleted</c:when>
	<c:otherwise>Unable to delete person</c:otherwise>
</c:choose>
<a href="/">Index</a>


</body>
</html>