<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
<form:form action="create.do" method="POST" modelAttribute="person">
<table>
<tr>
	<td><form:label path="firstName">First Name</form:label></td>
	<td><form:input path="firstName" value="First"/></td>
	<td><form:errors path="firstName"/></td>
</tr>
<tr>
	<td><form:label path="lastName">Last Name</form:label></td>
	<td><form:input path="lastName" value="Last"/></td>
	<td><form:errors path="lastName"/></td>
</tr>
<tr>
	<td><form:label path="eyeColor">Eye Color</form:label></td>
	<td><form:select path="eyeColor">
		<form:option value="Select"/>
		<form:options items="${colorList }"/>
	</form:select></td>
	<td><form:errors path="eyeColor"/></td>
</tr>
<tr>
	<td><form:label path="skinColor">Face Color</form:label></td>
	<td><form:select path="skinColor">
		<form:option value="Select"/>
		<form:options items="${colorList }"/>
	</form:select></td>
	<td><form:errors path="skinColor"/></td>
</tr>
<tr>
	<td><form:label path="expression">Expression</form:label></td>
	<td><form:select path="expression">
		<form:option value="neutral"/>
		<form:options items="${expressionList }"/>
	</form:select></td>
	<td><form:errors path="expression"/></td>
</tr>
<tr>
	<td><form:label path="eyeSize">Eye Size</form:label></td>
	<td><form:input path="eyeSize" value="8"/></td>
	<td><form:errors path="eyeSize"/></td>
</tr>
<tr>
	<td><form:label path="torsoThickness">Torso Thickness</form:label></td>
	<td><form:input path="torsoThickness" value="4"/></td>
	<td><form:errors path="torsoThickness"/></td>
</tr>
<tr>
	<td><form:label path="legThickness">Leg Thickness</form:label></td>
	<td><form:input path="legThickness" value="4"/></td>
	<td><form:errors path="legThickness"/></td>
</tr>
<tr>
	<td><form:label path="armThickness">Arm Thickness</form:label></td>
	<td><form:input path="armThickness" value="4"/></td>
	<td><form:errors path="armThickness"/></td>
</tr>

</table>

<input type="hidden" name="id" value="0" />
<input type="submit" value="Create"/>
</form:form>
<a href="/">Index</a>

</body>
</html>