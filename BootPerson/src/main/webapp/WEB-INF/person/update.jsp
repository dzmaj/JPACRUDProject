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
	<td><form:select path="eyeColor">
		<form:option value="${person.eyeColor }"/>
		<form:options items="${colorList }"/>
	</form:select></td>
	<td><form:errors path="eyeColor"/></td>
</tr>
<tr>
	<td><form:label path="skinColor">Face Color</form:label></td>
	<td><form:select path="skinColor">
		<form:option value="${person.skinColor }"/>
		<form:options items="${colorList }"/>
	</form:select></td>
	<td><form:errors path="skinColor"/></td>
</tr>
<tr>
	<td><form:label path="expression">Expression</form:label></td>
	<td><form:select path="expression">
		<form:option value="${person.expression }"/>
		<form:options items="${expressionList }"/>
	</form:select></td>
	<td><form:errors path="expression"/></td>
</tr>
<tr>
	<td><form:label path="eyeSize">Eye Size</form:label></td>
	<td><form:input path="eyeSize" value="${person.eyeSize }"/></td>
	<td><form:errors path="eyeSize"/></td>
</tr>
<tr>
	<td><form:label path="torsoThickness">Torso Thickness</form:label></td>
	<td><form:input path="torsoThickness" value="${person.torsoThickness }"/></td>
	<td><form:errors path="torsoThickness"/></td>
</tr>
<tr>
	<td><form:label path="legThickness">Leg Thickness</form:label></td>
	<td><form:input path="legThickness" value="${person.legThickness }"/></td>
	<td><form:errors path="legThickness"/></td>
</tr>
<tr>
	<td><form:label path="armThickness">Arm Thickness</form:label></td>
	<td><form:input path="armThickness" value="${person.armThickness }"/></td>
	<td><form:errors path="armThickness"/></td>
</tr>

</table>

<input type="hidden" name="id" value="${person.id }" />
<input type="submit" value="Update"/>

<a href="/">Index</a>
</form:form>
</body>
</html>