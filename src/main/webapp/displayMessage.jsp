<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>
body {
	background-color: rgb(0, 0, 245, 0.9);
	background-size: 1700px 1100px;
	margin-top: 15px;
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
	background-attachment: fixed;
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
	background-color: rgb(0, 0, 245, 0.9);
}
</style>
</head>
<body>
	<h1>${headline }</h1>
	<p>${message }</p>
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
	<br>

	<c:if test="${headline == 'Failure!'}">
		<table width="400px">
			<tr>
				<td align="center">
					<h1>Error!</h1>
					<h2>Could not find that film</h2>
					<h1>
						<a href="home.do">Return to search</a>
					</h1>
				</td>
			</tr>
		</table>
	</c:if>

</body>
</html>