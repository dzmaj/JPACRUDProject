<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person</title>
</head>
<body>

	<div class="container">
		<h5>${person.name}</h5>
		<p>ID: ${person.id}</p>
	</div>
	
	<div class="container">
		<svg width="800" height="600">
		
		
			<!-- eyes -->
			<ellipse ry="${person.eyeSize }" rx="${person.eyeSize }" id="eye1" cy="90" cx="380" fill-opacity="null" stroke-opacity="null" stroke-width="1.5" stroke="#000" fill="${person.eyeColor }"/>
  			<ellipse ry="${person.eyeSize }" rx="${person.eyeSize }" id="eye2" cy="90" cx="420" fill-opacity="null" stroke-opacity="null" stroke-width="1.5" stroke="#000" fill="${person.eyeColor }"/>
		</svg>
	
	</div>

</body>
</html>