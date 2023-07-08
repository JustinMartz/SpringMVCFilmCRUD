<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film details</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty film }">
			<h2>${film.title }</h2>
			${film.description }
			<br>
			<br>
			
		<form action="editFilm" method="POST">
				<button>Edit Film Data</button>
			</form>
			<br>
			<form action="deleteFilm" method="POST">
				<button>Delete Film</button>
			</form>

		</c:when>
	</c:choose>
<br>
<br>
<a href="home.do"> Return to the Search Page</a>

</body>
</html>