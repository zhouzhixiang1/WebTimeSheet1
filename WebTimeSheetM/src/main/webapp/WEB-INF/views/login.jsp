<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>Login TS</title>	
		<style type="text/css">
		<%@ include file="/css/stile.css" %>	
		</style>
	</head>
	<body>
		<div class="navbar">
	<p>
		<a href="">
			<button class="button" type="button">Tickets</button> <!-- solo se si è fatto il login -->
		</a>
		<a href="home.jsp">
			<button class="button" type="button">Home</button>
		</a>
	</p>
</div>
		
		<div class="txtbox">
			<form method="post" action="managerLogin">
				<p class="txt">Codice Manager
					<input class="instxt" type="number" min="1001" max="1003"name="idManager">
		  		</p>
		  		<p class="txt">Nome 
					<input class="instxt" type="text" name="managerName">
				</p>
				<p class="txt">Password 
					<input class="instxt" type="password" name="managerPassword">
				</p>
				<button class="button">login</button>
				<a href="home.jsp">
					<button class="button">back</button>
				</a>
			</form>
		</div>
	</body>
</html>