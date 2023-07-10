<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film Data</title>
</head>
<body>
	<form action="editFilm.do" method="POST">
    <table width="700px">
        <tr>
            <td width="30%">Edit Title:</td>
            <td><input type="text" id="title" name="title" size="50" value="${film.title}"></td>
        </tr>
        <tr>
            <td width="30%">Edit Description:</td>
            <td><input type="text" id="description" name="description" size="50" value="${film.description}"></td>
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

</body>
</html>