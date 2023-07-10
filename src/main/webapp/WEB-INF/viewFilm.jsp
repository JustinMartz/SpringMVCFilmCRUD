<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Film details</title>
<style>
body {
	background-image:
		url('https://www.freeimageslive.co.uk/files/images010/video_tape.preview.jpg');
	background-repeat: no-repeat;
	background-size: 1700px 1100px ;
	margin-top: 15px;
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
	background-attachment: fixed;
}

span {
	font-weight: bold;
	font-family: serif;
}
table {
	border-collapse:separate;
	border-radius: 6px;
	border-spacing:0 10px;
	border: 1px solid darkgray;
	align: center;
	margin-left: auto;
	margin-right: auto;
	font-weight:bold;
	background-color:rgb(255,0,0,0.6);
	
}
</style>
</head>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${not empty list}">
				<c:forEach var="film" items="${list}">
					<h1 align="center">Search Results</h1>

					<hr style="width: 45%; height: 3px">
					<table>
					<tr>
					<td>

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
					<span>Actors in this film: </span>
					<br>
					<c:forEach var="actor" items="${film.cast}">
					${actor.firstName } ${actor.lastName }
					<br>
					</c:forEach>
					<br>
					<form action="deleteFilm.do" method="POST" align="center">
						<input type="hidden" name="filmId" value="${film.id}">
						<button>Delete This Film</button>
						
					</form>
					</td>
					</tr>
					</table>
					<br>
					<form action="editFilm.do" method="POST">
					<table width="700px">
    <tr>
        <td width="30%">Edit Title:</td>
        <td><input type="text" id="title" name="title" size="50" value="${film.title}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Description:</td>
        <td><input type="text" id="description" name="description" size="50" value="${film.description}" ></td>
    </tr>
    <tr>
        <td width="30%">Edit Release Year:</td>
        <td><input type="text" id="releaseYear" name="releaseYear" size="50" value="${film.releaseYear}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Language:</td>
        <td><input type="text" id="languageId" name="languageId" size="50" value="${film.languageId}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rental Duration:</td>
        <td><input type="text" id="rentalDuration" name="rentalDuration" size="50" value="${film.rentalDuration}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rental Rate:</td>
        <td><input type="text" id="rentalRate" name="rentalRate" size="50" value="${film.rentalRate}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Running Time:</td>
        <td><input type="text" id="length" name="length" size="50" value="${film.length}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Replacement Cost:</td>
        <td><input type="text" id="replacementCost" name="replacementCost" size="50" value="${film.replacementCost}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rating:</td>
        <td><input type="text" id="rating" name="rating" size="50" value="${film.rating}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Special Features:</td>
        <td><input type="text" id="specialFeatures" name="specialFeatures" size="50" value="${film.specialFeatures}"></td>
    </tr>
</table>
<div align="center">
					<input type="hidden" name="filmId" value="${film.id}">
							<button>Edit Film Data</button>
							</div>

					
			
						</form>
					

				</c:forEach>
			</c:when>

			<c:when test="${not empty film}">
			
				<span>ID:</span>${film.id}<br>
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
				<br>
				
				
					<h2 align="center">EDIT MOVIE</h2>
					<hr style="width: 45%; height: 3px">
				<form action="editFilm.do" method="POST">
					<table width="700px">
    <tr>
        <td width="30%">Edit Title:</td>
        <td><input type="text" id="title" name="title" size="50" value="${film.title}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Description:</td>
        <td><input type="text" id="description" name="description" size="50" value="${film.description}" ></td>
    </tr>
    <tr>
        <td width="30%">Edit Release Year:</td>
        <td><input type="text" id="releaseYear" name="releaseYear" size="50" value="${film.releaseYear}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Language:</td>
        <td><input type="text" id="languageId" name="languageId" size="50" value="${film.languageId}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rental Duration:</td>
        <td><input type="text" id="rentalDuration" name="rentalDuration" size="50" value="${film.rentalDuration}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rental Rate:</td>
        <td><input type="text" id="rentalRate" name="rentalRate" size="50" value="${film.rentalRate}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Running Time:</td>
        <td><input type="text" id="length" name="length" size="50" value="${film.length}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Replacement Cost:</td>
        <td><input type="text" id="replacementCost" name="replacementCost" size="50" value="${film.replacementCost}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Rating:</td>
        <td><input type="text" id="rating" name="rating" size="50" value="${film.rating}"></td>
    </tr>
    <tr>
        <td width="30%">Edit Special Features:</td>
        <td><input type="text" id="specialFeatures" name="specialFeatures" size="50" value="${film.specialFeatures}"></td>
    </tr>
</table>
<div align="center">
					<input type="hidden" name="filmId" value="${film.id}">
							<button>Edit Film Data</button>
							</div>

					
			
						</form>

		</c:when>
	</c:choose>
	
	<br>
	<br>
	<a href="home.do">Return to the Search Page</a>
</div>
</body>
</html>