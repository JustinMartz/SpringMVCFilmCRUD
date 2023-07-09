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
		<c:when test="${not empty list}">
			<c:forEach var="film" items="${list}">
				<span>ID: </span>${film.id}<br>
				<span>Title: </span>${film.title}<br>
				<span>Description: </span>${film.description}<br>
				<span>Released in: </span>${film.releaseYear}<br>
				<span>Language ID: </span>${film.languageId}<br>
				<span>Rented for: </span>${film.rentalDuration} days<br>
				<span>Rented rate: </span>
				<fmt:formatNumber value="${film.rentalRate}" type="currency" /> per day<br>
				<span>Running time: </span>${film.length} minutes<br>
				<span>Replacement cost: </span>
				<fmt:formatNumber value="${film.replacementCost}" type="currency" />
				<br>
				<span>Rated: </span>${film.rating}<br>
				<span>Special features: </span>${film.specialFeatures}<br>
				<span>Genre: </span>${film.genre }<br>
				<br>
				<c:forEach var="actor" items="${film.cast}">
					${actor.firstName } ${actor.lastName }
					<br>
				</c:forEach>
				<br>
				<form action="deleteFilm.do" method="POST">
					<input type="hidden" name="filmId" value="${film.id}">
					<button>Delete Film</button>
				</form>
				<br>
				<form action="editFilm.do" method="POST">
					Edit Title: <input type="text" id="title" name="title" size="15"
						value="${film.title}"><br> Edit Description: <input
						type="text" id="description" name="description" size="25"
						value="${film.description}"><br> Edit Release Year: <input
						type="text" id="releaseYear" name="releaseYear"
						value="${film.releaseYear}"><br> Edit Language: <input
						type="text" id="languageId" name="languageId" size="25"
						value="${film.languageId}"><br> Enter Rental
					Duration: <input type="text" id="rentalDuration"
						name="rentalDuration" size="15" value="${film.rentalDuration}"><br>
					Enter Rental Rate: <input type="text" id="rentalRate"
						name="rentalRate" size="10" value="${film.rentalRate}"><br>
					Enter Running Time: <input type="text" id="length" name="length"
						size="10" value="${film.length}"><br> Enter
					Replacement Cost: <input type="text" id="replacementCost"
						name="replacementCost" size="10" value="${film.replacementCost}"><br>
					Enter Rating: <input type="text" id="rating" name="rating"
						size="10" value="${film.rating}"><br> Enter Special
					Features: <input type="text" id="specialFeatures"
						name="specialFeatures" value="${film.specialFeatures}"> <input
						type="hidden" name="filmId" value="${film.id}">
					<button>Edit Film Data</button>
				</form>
			</c:forEach>
		</c:when>

		<c:when test="${not empty film}">
			<span>ID: </span>${film.id}<br>
			<span>Title: </span>${film.title}<br>
			<span>Description: </span>${film.description}<br>
			<span>Released in: </span>${film.releaseYear}<br>
			<span>Language ID: </span>${film.languageId}<br>
			<span>Rented for: </span>${film.rentalDuration} days<br>
			<span>Rented rate: </span>
			<fmt:formatNumber value="${film.rentalRate}" type="currency" /> per day<br>
			<span>Running time: </span>${film.length} minutes<br>
			<span>Replacement cost: </span>
			<fmt:formatNumber value="${film.replacementCost}" type="currency" />
			<br>
			<span>Rated: </span>${film.rating}<br>
			<span>Special features: </span>${film.specialFeatures}<br>
			<span>Genre: </span>${film.genre }<br>
			<br>
			<c:forEach var="actor" items="${film.cast}">
					${actor.firstName } ${actor.lastName }
					<br>
			</c:forEach>

			<br>
			<form action="deleteFilm.do" method="POST">
				<input type="hidden" name="filmId" value="${film.id}">
				<button>Delete Film</button>
			</form>
			<br>

			<form action="editFilm.do" method="POST">
				Edit Title: <input type="text" id="title" name="title" size="15"
					value="${film.title}"><br> Edit Description: <input
					type="text" id="description" name="description" size="25"
					value="${film.description}"><br> Edit Release Year: <input
					type="text" id="releaseYear" name="releaseYear"
					value="${film.releaseYear}"><br> Edit Language: <input
					type="text" id="languageId" name="languageId" size="25"
					value="${film.languageId}"><br> Enter Rental Duration:
				<input type="text" id="rentalDuration" name="rentalDuration"
					size="15" value="${film.rentalDuration}"><br> Enter
				Rental Rate: <input type="text" id="rentalRate" name="rentalRate"
					size="10" value="${film.rentalRate}"><br> Enter
				Running Time: <input type="text" id="length" name="length" size="10"
					value="${film.length}"><br> Enter Replacement Cost: <input
					type="text" id="replacementCost" name="replacementCost" size="10"
					value="${film.replacementCost}"><br> Enter Rating: <input
					type="text" id="rating" name="rating" size="10"
					value="${film.rating}"><br> Enter Special Features: <input
					type="text" id="specialFeatures" name="specialFeatures"
					value="${film.specialFeatures}"> <input type="hidden"
					name="filmId" value="${film.id}">
				<button>Edit Film Data</button>
			</form>
		</c:when>
	</c:choose>

	<br>
	<br>
	<a href="home.do">Return to the Search Page</a>

</body>
</html>