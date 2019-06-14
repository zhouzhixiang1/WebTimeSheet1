<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login TS</title>		
		<link rel="stylesheet" href="css/stile.css">
	</head>
	<body style=" font-family: calibri; font-size: 18; font-weight: 300;">
		<div class="navbar">
		</div>
		<br>
		<div class="txtbox">
			<form method="post" action="dipendenteLogin">
			<p class="txt">Codice Dipendente
					<input class="instxt" type="number" min="2001" max="2050"name="idDipendente">
		  		</p>
		  		<p class="txt">NomeDipendente 
					<input class="instxt" type="text" name="nomeDipendente">
				</p>
				<p class="txt">Password 
					<input class="instxt" type="password" name="passwordDipendente">
				</p>
				<button class="button">login</button>
				<a href="home.jsp">back</a>
				
			</form>
		</div>
	</body>
</html>