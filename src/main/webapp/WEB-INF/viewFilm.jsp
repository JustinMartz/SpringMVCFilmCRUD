<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			<span>Replacement cost: </span>
			<fmt:formatNumber value="${film.replacementCost}" type="currency" />
			<br>
			<span>Rated: </span>${film.rating }
			<br>
			<span>Special features: </span>${film.specialFeatures }
			<br>

			<br>
			<form action="deleteFilm.do" method="POST">
		   	<input type="hidden" name="filmId" value="${film.id }">
				<button>Delete Film</button>

			</form>
			<br>

			<c:set var="filmId" value="${film.id}" />
	<!-- 		<form action="editFilm.do" method="POST">
				<button>Enter film ID to edit film</button>
			</form> -->
			<form action="editFilm.do" method="POST">
					Edit Title: <input type="text" id="title" name="title" size="15">
					<br> 
					Edit Description: <input type="text" id="description" name="description" size="25"> <br> 
					Edit Release Year: <input type="text" id="releaseYear" name="releaseYear"> <br>
					Edit Language: <input type="text" id="languageId" name="languageId" size="25"><br>
				<form action="editFilm" method="POST">
				<input type="hidden" name="filmId" value="${film.id }">
					<button>Edit Film Data</button>
				</form>
		</c:when>
	</c:choose>
	<br>
	<br>
	<a href="home.do"> Return to the Search Page</a>

</body>
</html>