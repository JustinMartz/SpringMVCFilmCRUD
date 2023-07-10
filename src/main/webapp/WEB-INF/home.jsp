
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SD39 Database Project</title>
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
<br>
<br>
<br>
<table width="700px">
 <tr>
 <td align="center">
	<h1>FULL-STACK FILMS, INC.</h1>
	<h2>Search by Film ID</h2>
	<form action="showFilm.do" method="POST">
		<input type="text" name="filmId"> <br>
 		<button>Get Film</button>
	</form>

	<c:if test="${not empty film }">
		<h2>${film.title }</h2>
	</c:if>
	</td>
 </tr>
 <tr>
 <td align="center">
	<h2>Search by Keyword</h2>
	<form action="showFilm.do" method="POST">
		<input type="text" name="keyword"> <br>
		<button>Search</button>

	</form>

	<h2>Add a New Film</h2>
		<a href="createFilm.jsp"> 
		<button>Create New Film</button></a>
		</td>
	</tr>
</table>
</body>
</html>