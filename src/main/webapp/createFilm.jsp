<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Film</title>
</head>
<body>
	<h2>Enter the information below to create a film:</h2>
<form action="createFilm.do" method="POST">
	<table>
		<tr>
			<td>Enter Title:</td>
			<td><input type="text" id="title" name="title" size="15"></td>
		</tr>
		<tr>
			<td>Enter Description:</td>
			<td><input type="text" id="description" name="description" size="25"></td>
		</tr>
		<tr>
			<td>Enter Release Year:</td>
			<td><input type="text" id="releaseYear" name="releaseYear"></td>
		</tr>
		<tr>
			<td>Enter Language:</td>
			<td><input type="text" id="languageId" name="languageId" size="25"></td>
		</tr>
		<tr>
			<td>Enter Rental Duration:</td>
			<td><input type="text" id="rentalDuration" name="rentalDuration" size="15"></td>
		</tr>
		<tr>
			<td>Enter Rental Rate:</td>
			<td><input type="text" id="rentalRate" name="rentalRate" size="10"></td>
		</tr>
		<tr>
			<td>Enter Running Time:</td>
			<td><input type="text" id="length" name="length" size="10"></td>
		</tr>
		<tr>
			<td>Enter Replacement Cost:</td>
			<td><input type="text" id="replacementCost" name="replacementCost" size="10"></td>
		</tr>
		<tr>
			<td>Enter Rating:</td>
			<td><input type="text" id="rating" name="rating" size="10"></td>
		</tr>
		<tr>
			<td>Enter Special Features:</td>
			<td><input type="text" id="specialFeatures" name="specialFeatures" size="15"></td>
		</tr>
	</table>
	<pre>     <button>Create Film Entry</button></pre>
</form>

</body>
</html>