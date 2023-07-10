<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>
body {
	background-image:
		url('https://cdn.ttgtmedia.com/rms/editorial/062819_SED_BSOD_Fig2.png');
background-repeat: no-repeat;
	background-size: 1700px 1100px ;
	margin-top: 15px;
	margin-left: 10px;
	margin-right: 10px;
	font-size: 16px;
	background-attachment: fixed;
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
	background-color:rgb(0,0,245,0.9);
	
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
<table width="400px">
	<tr>
	<td align="center">
	<h1>Error!</h1>
	<h2>Could not find that film</h2>
	<h1><a href="home.do">Return to search</a></h1>
	</td>
	</tr>
	</table>

</body>
</html>