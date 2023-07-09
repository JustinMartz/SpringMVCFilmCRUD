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

body{
	background-image: url('https://www.freeimageslive.co.uk/files/images010/video_tape.preview.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 20px;
	margin-left: 15px;
	margin-right: 15px;
	
}
span {
	font-weight: bold;
	font-family: serif;
		
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${not empty list}">
			<c:forEach var="film" items="${list}">
				<h1 align="center">Search Results</h1>
				
				<hr style="width:45%; height:3px">
				
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
				<span>Actors in this film: </span><br>
				<c:forEach var="actor" items="${film.cast}">
					${actor.firstName } ${actor.lastName }
					<br>
				</c:forEach>
				<br>
				<form action="deleteFilm.do" method="POST">
					<input type="hidden" name="filmId" value="${film.id}">
					<button>Delete This Film</button>
				</form>
				<br>
				<h2 align="center">EDIT MOVIE</h2>
				<hr style="width:45%; height:3px">
				<form action="editFilm.do" method="POST">
				Edit Title: <input type="text" id="title" name="title" size="25"
						value="${film.title}">           
				Edit Description: <input
						type="text" id="description" name="description" size="35" value="${film.description}"><br> 
				Edit Release Year: <input
						type="text" id="releaseYear" name="releaseYear" value="${film.releaseYear}">      
				Edit Language: <input type="text" id="languageId" name="languageId" size="5"
						value="${film.languageId}"><br> 
				Enter Rental Duration: <input type="text" id="rentalDuration"
						name="rentalDuration" size="5" value="${film.rentalDuration}">
				Enter Rental Rate: <input type="text" id="rentalRate"
						name="rentalRate" size="10" value="${film.rentalRate}"><br>
				Enter Running Time: <input type="text" id="length" name="length"
						size="10" value="${film.length}"> 
				Enter Replacement Cost: <input type="text" id="replacementCost"
						name="replacementCost" size="10" value="${film.replacementCost}">
				Enter Rating: <input type="text" id="rating" name="rating"
						size="10" value="${film.rating}"><br> 
				Enter Special Features: <input type="text" id="specialFeatures"
						name="specialFeatures" value="${film.specialFeatures}" size="45"> <input type="hidden" name="filmId" value="${film.id}"><br>
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