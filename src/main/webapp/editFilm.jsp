<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film Data</title>
</head>
<body>
	<h2>Enter the information below to create a film: </h2>
	<form action="createFilm.do" method="POST">
		Edit Title: <input type="text" id="title" name="title" size="15" value="Pre-populated film title"> 
		Edit Description: <input type="text" id="description" name="description" size="25" value="Change me"> <br>
		Enter Release Year: <input type="text" id="releaseYear" name="releaseYear"> <br>
		Enter Language: <input type="text" id="languageId" name="languageId" size="25">
	<!-- 	<label for="languageId">Select Language: </label>
			<select name="languageId" id="languageId">
			<option value="English" selected> English </option>
			<option value="Italian">Italian</option>
			<option value="Japanese"> Japanese </option>
			<option value="Mandrin"> Mandarin </option>
			<option value="French"> French </option>
			<option value="German"> German </option>
			 </select>-->
			
			<br>
		Enter Rental Duration: <input type="text" id="rentalDuration" name="rentalDuration" size="15"> 
		Enter Rental Rate: <input type="text" id="rentalRate" name="rentalRate" size="10"> <br>
		Enter Running Time: <input type="text" id="length" name="length" size="10"> 
		Enter Replacement Cost: <input type="text" id="replacementCost" name="replacementCost" size="10"> <br>
		Enter Rating: <input type="text" id="rating" name="rating" size="10">
		<!-- <label for="rating">Select Rating: </label>
			<select name="rating" id="rating">
			<option value="g" selected> G </option>
			<option value="pg">PG</option>
			<option value="pg13"> PG-13</option>
			<option value="r"> R </option>
			<option value="nc17"> NC-17</option>
			
			</select> -->
		<br>
		Enter Special Features: <input type="text" id="specialFeatures" name="specialFeatures" size="15">
 		<!-- <input type="checkbox" id="trailers" name="specialFeatures" value="trailers">
		<label for="specialFeatures">Trailers</label>
		<input type="checkbox" id="commentaries" name="specialFeatures" value="commentaries">
		<label for="specialFeatures">Commentaries</label>
		<input type="checkbox" id="deletedScenes" name="specialFeatures" value="deletedScenes">
		<label for="specialFeatures">Deleted Scenes</label>
		<input type="checkbox" id="behindTheScenes" name="specialFeatures" value="behindTheScenes">
		<label for="specialFeatures">Behind the Scenes</label> -->
		
		
		<pre>     <button>Create Film Entry</button></pre>
	</form>
</body>
</html>