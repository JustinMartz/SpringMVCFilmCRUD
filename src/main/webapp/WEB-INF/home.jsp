
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SD39 Database Project</title>
</head>
<body>

	<h1>FULL-STACK FILMS, INC.</h1>
	<h2>Search by Film ID</h2>
	<form action="showFilm.do" method="POST">
		<input type="text" name="filmId"> <br>
 		<pre>     <button>Get Film</button></pre>
	</form>

	<c:if test="${not empty film }">
		<h2>${film.title }</h2>
	</c:if>
	<h2>Search by Keyword</h2>
	<form action="showFilm.do" method="POST">
		<input type="text" name="keyword"> <br>
		<pre>     <button>Search</button></pre>

	</form>

	<h2>Add a New Film</h2>
		<a href="createFilm.jsp"> 
		<pre>  <button>Create New Film</button></pre></a>

</body>
</html>