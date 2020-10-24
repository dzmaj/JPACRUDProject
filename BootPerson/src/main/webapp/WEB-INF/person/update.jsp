<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<form:form action="updated.do" method="POST" modelAttribute="person">
<table>
<tr>
	<td><form:label path="firstName">First Name</form:label></td>
	<td><form:input path="firstName" value="${person.firstName }"/></td>
	<td><form:errors path="firstName"/></td>
</tr>
<tr>
	<td><form:label path="lastName">Last Name</form:label></td>
	<td><form:input path="lastName" value="${person.lastName }"/></td>
	<td><form:errors path="lastName"/></td>
</tr>
<tr>
	<td><form:label path="eyeColor">Eye Color</form:label></td>
	<td><form:input path="eyeColor" value="${person.eyeColor }"/></td>
	<td><form:errors path="eyeColor"/></td>
</tr>




</table>

<input type="hidden" name="expression" value="${person.expression }" />
<input type="hidden" name="skinColor" value="${person.skinColor }" />
<input type="hidden" name="torsoThickness" value="${person.torsoThickness }" />
<input type="hidden" name="legThickness" value="${person.legThickness }" />
<input type="hidden" name="armThickness" value="${person.armThickness }" />
<input type="hidden" name="eyeSize" value="${person.eyeSize }" />
<input type="hidden" name="id" value="${person.id }" />
<input type="submit" value="Update"/>
</form:form>
</body>
</html>