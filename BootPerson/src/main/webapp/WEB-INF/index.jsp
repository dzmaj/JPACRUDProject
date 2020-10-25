<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>

	<div class="container">
		<h1>Index</h1>
		<h3>Select by ID</h3>
		<form action="getPerson.do" method="GET">
			ID: <input type="text" name="pid" /> <input type="submit"
				value="Show Person" />
		</form>
		<br>
		<h3>Search by first name</h3>
		<form action="searchPerson.do" method="GET">
			First Name: <input type="text" name=fname /> <input type="submit"
				value="Search" />
		</form>
		<br>
		<h3>Search by last name</h3>
		<form action="searchPerson.do" method="GET">
			Last Name: <input type="text" name=lname /> <input type="submit"
				value="Search" />
		</form>
		<br>
		<h3>List all people</h3>
		<form action="listPeople.do" method="GET">
			 <input type="submit"
				value="List All People" />
		</form>
		<br>
		<h3>Create new person</h3>
		<form action="/create" method="GET">
			 <input type="submit"
				value="Create" />
		</form>
	</div>

</body>
</html>