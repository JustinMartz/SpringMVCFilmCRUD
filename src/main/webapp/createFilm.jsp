<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Film</title>
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
	<h2>Enter the information below to create a film:</h2>
<form action="createFilm.do" method="POST">
	<table width="700px">
		<tr>
			<td width="30%"> Enter Title:</td>
			<td><input type="text" id="title" name="title" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Description:</td>
			<td><input type="text" id="description" name="description" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Release Year:</td>
			<td><input type="text" id="releaseYear" name="releaseYear" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Language:</td>
			<td><input type="text" id="languageId" name="languageId" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Rental Duration:</td>
			<td><input type="text" id="rentalDuration" name="rentalDuration" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Rental Rate:</td>
			<td><input type="text" id="rentalRate" name="rentalRate" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Running Time:</td>
			<td><input type="text" id="length" name="length" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Replacement Cost:</td>
			<td><input type="text" id="replacementCost" name="replacementCost" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Rating:</td>
			<td><input type="text" id="rating" name="rating" size="70%"></td>
		</tr>
		<tr>
			<td width="30%">Enter Special Features:</td>
			<td><input type="text" id="specialFeatures" name="specialFeatures" size="70%"></td>
		</tr>
	</table>
	<pre>     <button>Create Film Entry</button></pre>
</form>

</body>
</html>