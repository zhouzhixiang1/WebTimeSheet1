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
			<p style=" margin-top: 0px; padding: 16px;">
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
			<form method="post" action="managerLogin">
				<p class="txt">Codice Manager
					<input class="instxt" type="number" min="1001" max="1003"name="idManager" required>
		  		</p>
		  		<p class="txt">Nome 
					<input class="instxt" type="text" name="managerName" required>
				</p>
				<p class="txt">Password 
					<input class="instxt" type="password" name="managerPassword" required>
				</p>
				<a href="home.jsp">
					<button class="button" type="button">Annulla</button>
				</a>
				<button class="button">login</button>
			</form>
		</div>
	</body>
</html>