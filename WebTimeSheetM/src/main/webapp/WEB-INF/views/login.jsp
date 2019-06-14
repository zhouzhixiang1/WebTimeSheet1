<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">

		<link rel="stylesheet" href="../../css/stile.css" type = "text / css">
		<title>Login TS</title>		
	</head>
	<body>
		<%@ include file="../../scripts/navbar.html" %>
		<br>
	<body style=" font-family: calibri; font-size: 18; font-weight: 300;">
		<div class="txtbox">
			<form method="post" action="managerLogin">
				<p class="txt">Codice Manager
					<input type="number" min="1001" max="1003"name="idManager">
		  		</p>
		  		<p class="txt">Nome 
					<input type="text" name="managerName">
				</p>
				<p class="txt">Password 
					<input type="password" name="managerPassword">
				</p>
				<button class="button">login</button>
				<a href="home.jsp">back</a>
			</form>
		</div>
	</body>
</html>