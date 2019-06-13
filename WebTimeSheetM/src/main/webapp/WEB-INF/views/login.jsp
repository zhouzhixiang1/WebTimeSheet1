<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/stile.css" type = "text / css">
		<title>Login TS</title>		
	</head>
	<body style=" font-family: calibri; font-size: 18; font-weight: 300;">
		<div class="navbar">
		<p class="p">
			<button class="button">Tickets</button> <!-- solo se si è fatto il login -->
			<a href="home.jsp">
				<button class="button">Home</button>
			</a>
			<button class="button"></button>
		</p>
		
		</div>
		<br>
		<div class="txtbox">
			<form method="post" action="managerLogin">
				<p class="p">Codice Manager
					<input type="number" min="1001" max="5003"name="idManager">
		  		</p>
		  		<p class="p">Nome 
					<input type="text" name="managerName">
				</p>
				<p class="p">Password 
					<input type="password" name="managerPassword">
				</p>
				<button class="button">login</button>
			</form>
		</div>
	</body>
</html>