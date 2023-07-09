<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film details</title>
<style>
span {
	font-weight: bold;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${not empty film }">
			<span>ID: </span>${film.id }
			<br>
			<span>Title: </span>${film.title }
			<br>
			<span>Description: </span>${film.description }
			<br>
			<span>Released in: </span>${film.releaseYear }
			<br>
			<span>Language ID: </span>${film.languageId}
			<br>
			<span>Rented for: </span>${film.rentalDuration } days
			<br>
			<span>Rented rate: </span>
			<fmt:formatNumber value="${film.rentalRate}" type="currency" /> per day
			<br>
			<span>Running time: </span>${film.length } minutes
			<br>
			<span>Replacement cost: </span><fmt:formatNumber value="${film.replacementCost}" type="currency" />
			<br>
			<span>Rated: </span>${film.rating }
			<br>
			<span>Special features: </span>${film.specialFeatures }
			<br>

			<form action="editFilm" method="POST">
				<button>Edit Film Data</button>
			</form>
			<br>
			<form action="deleteFilm.do" method="POST">
				<button>Delete Film</button>
			</form>

		</c:when>
	</c:choose>
	<br>
	<br>
	<a href="home.do"> Return to the Search Page</a>

</body>
</html>