<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login-TS</title>		
		<style type="text/css">
		<%@ include file="/css/stile.css" %>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p class="zero">
				<a href="">
					<button class="button" type="button">Tickets</button> <!-- solo se si è fatto il login -->
				</a>
				<a href="home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<div class="txtbox">
			<form method="post" action="dipendenteLogin">
			<p class="txt">Codice Dipendente
					<input class="instxt" type="number" min="2001" max="2050"name="idDipendente" required>
		  		</p>
		  		<p class="txt">Nome Dipendente 
					<input class="instxt" type="text" name="nomeDipendente" required>
				</p>
				<p class="txt">Password 
					<input class="instxt" type="password" name="passwordDipendente" required>
				</p>
				<button class="button">login</button>
				<a href="home.jsp">
					<button class="button" type="button">back</button>
				</a>
			</form>
		</div>
	</body>
</html>