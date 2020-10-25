<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty person }">
			<div class="container">
				<h5>${person.firstName} ${person.lastName }</h5>
			<a href="update.do?pid=${person.id }">Update</a>
			<a href="delete.do?pid=${person.id }">Delete</a>
				<p>ID: ${person.id}</p>
			</div>

			<div class="container">
				<svg width="800" height="600">
			<!-- head -->	
			<ellipse stroke="#000" ry="50" rx="50" id="head" cy="100" cx="400"
						fill-opacity="null" stroke-opacity="null" stroke-width="1.5"
						fill="${person.skinColor }" />
			<!-- torso -->
			  <line stroke-linecap="null" stroke-linejoin="null" id="torso"
						y2="150" x2="400" y1="300" x1="400" fill-opacity="null"
						stroke-opacity="null" stroke-width="${person.torsoThickness }"
						stroke="#000" fill="none" />
						
			<!-- legs -->
  	<line stroke-linecap="null" stroke-linejoin="null" id="leg1"
						y2="426.45313" x2="325" y1="300" x1="400" fill-opacity="null"
						stroke-opacity="null" stroke-width="${person.legThickness }" stroke="#000" fill="none" />
  	<line stroke-linecap="null" stroke-linejoin="null" id="leg2"
						y2="427.45313" x2="473" y1="299.45313" x1="400"
						fill-opacity="null" stroke-opacity="null" stroke-width="${person.legThickness }"
						stroke="#000" fill="none" />
			
			<!-- arms -->
		  <line stroke-linecap="null" stroke-linejoin="null" id="arm1"
						y2="161.45313" x2="544" y1="178.45313" x1="400"
						fill-opacity="null" stroke-opacity="null"
						stroke-width="${person.armThickness }" stroke="#000" fill="none" />
		  <line stroke-linecap="null" stroke-linejoin="null" id="arm2"
						y2="169.45313" x2="276" y1="180" x1="400" fill-opacity="null"
						stroke-opacity="null" stroke-width="${person.armThickness }"
						stroke="#000" fill="none" />
		
		
			<!-- eyes -->
			<ellipse ry="${person.eyeSize }" rx="${person.eyeSize }" id="eye1"
						cy="90" cx="380" fill-opacity="null" stroke-opacity="null"
						stroke-width="1.5" stroke="#000" fill="${person.eyeColor }" />
  			<ellipse ry="${person.eyeSize }" rx="${person.eyeSize }" id="eye2"
						cy="90" cx="420" fill-opacity="null" stroke-opacity="null"
						stroke-width="1.5" stroke="#000" fill="${person.eyeColor }" />
						
			<!-- expression -->
			<c:choose>
				<c:when test="${person.expression == 'smile' }">
					<!-- smile -->
					<path
								d="m376,125.45313c0,1 0.29291,0.29289 1,1c0.70709,0.70711 0,1 0,1c0,0 1,1 1,1c1,1 1.29291,1.29289 2,2c0.70709,0.70711 2,1 3,1c0,0 1,0 2,1c0,0 2,1 3,1c1,0 2,1 2,1c1,0 2,0 4,0c1,0 1,0 1,0c2,0 3,0 4,0c1,0 1.82376,-0.48625 4,-1c1.9465,-0.4595 3,0 4,0c1,0 2,-1 2,-1c1,0 1.07611,0.38269 2,0c1.30655,-0.5412 1.29291,-0.29289 2,-1c0.70709,-0.70711 0,-1 1,-1c0,0 0,0 0,0c0,-1 0,-1 1,-2c0,0 0.29291,0.70711 1,0c0.70709,-0.70711 0,-1 1,-1c0,0 0,0 0,-1c0,0 -0.70709,-0.29289 0,-1c0.70709,-0.70711 1,0 1,-1c0,0 0,0 0,0l1,-1l0,0"
								id="svg_26" fill-opacity="null" stroke-opacity="null"
								stroke-width="1.5" stroke="#000" fill="none" />
				</c:when>
				<c:when test="${person.expression == 'sad' }">
					<!-- sad -->
					<path
								d="m384.5,134c0,0 0,-1 0,-1c0,0 0,-1 0,-1c1,0 1.07611,-0.61731 2,-1c1.30655,-0.5412 2,-2 3,-3c1,-1 1,-1 2,-1c0,0 0.07611,-0.61732 1,-1c1.30655,-0.5412 1.07611,-0.61732 2,-1c1.30655,-0.5412 2,-1 2,-1c1,0 1,0 2,0c1,0 2,0 2,0c1,0 1,0 2,0c0,0 1,0 2,0c0,0 1,0 2,0c1,0 2,1 2,1c2,1 2.29291,0.29289 3,1c0.70709,0.70711 0,1 1,1c0,0 0,1 0,1c1,0 1,1 1,1c1,1 1,2 1,2c0,0 0,1 0,1c0,0 0,1 0,1c0,0 0,0 0,1c0,0 0,0 0,0l0,1"
								id="svg_34" fill-opacity="null" stroke-opacity="null"
								stroke-width="1.5" stroke="#000" fill="none" />
				</c:when>
				<c:when test="${person.expression == 'neutral' }">
					<!-- neutral -->
					  <path
								d="m380.5,128c1,0 1,0 2,0c2,0 2,0 3,0c1,0 2,0 3,0c1,0 2,0 2,0c1,0 1,0 2,0c1,0 1,0 2,0c1,0 1,0 1,0c1,0 2,0 2,0c1,0 1,0 2,0c0,0 1,0 1,0c1,0 1,0 2,0c0,0 1,-1 2,-1c1,0 2,0 3,0c0,0 1,0 2,0c0,0 1,0 1,0c0,0 1,0 1,0c0,0 0,0 1,0c0,0 1,0 1,0l1,0l0,0l0,0"
								id="svg_35" fill-opacity="null" stroke-opacity="null"
								stroke-width="1.5" stroke="#000" fill="none" />
					
				</c:when>
			
			
			</c:choose>
		</svg>

			</div>
		</c:when>
		<c:otherwise>
			<h3>No Result!</h3>
		</c:otherwise>

	</c:choose>
	<a href="/">Index</a>
	
</body>
</html>