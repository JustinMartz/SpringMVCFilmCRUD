<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>FULL-STACK FILMS, INC.</h1>
	<form action="showFilm.do" method="POST">
		<input type="number" name="filmId"> <br>
		<button>GET FILM RIGHT NOW!</button>
	</form>

	<c:if test="${not empty film }">
		<h2>${film.title }</h2>
	</c:if>

</body>
</html>