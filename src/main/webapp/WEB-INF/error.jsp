<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error!</title>
<style>
body {
	background-image: url('https://cdn.ttgtmedia.com/rms/editorial/062819_SED_BSOD_Fig2.png');
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 15px;
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
}

table {
	border-collapse: separate;
	border-radius: 6px;
	border-spacing: 0 10px;
	border: 1px solid darkgray;
	align: center;
	margin-left: auto;
	margin-right: auto;
	font-weight: bold;
	background-color: rgba(0, 0, 245, 0.9);
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table width="400px">
		<c:if test="${not empty film}">
			<tr>
				<td align="center">
					<h1>Error!</h1>
					<h2>Could not find film ID: ${film.id}</h2>
					<h1></h1>
					<a href="home.do">Return to search</a>
				</td>
			</tr>
		</c:if>

		<c:if test="${not empty keyword_error}">
			<tr>
				<td align="center">
					<h1>Error!</h1>
					<h2>${keyword_error}</h2>
					<h1></h1>
					<a href="home.do">Return to search</a>
				</td>
			</tr>
		</c:if>
	</table>
</body>
</html>