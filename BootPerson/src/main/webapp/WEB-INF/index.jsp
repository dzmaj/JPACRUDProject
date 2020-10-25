<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Index</title>
</head>
<body>

	<div class="container-fluid">
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
<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>