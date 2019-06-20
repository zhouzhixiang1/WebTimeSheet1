<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>Login-TS</title>	
		
	<script type="text/javascript" src="scripts/jquery-1.11.3.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="scripts/validate.js"></script>

	<style>
	.error{
		color:red;
	}
	</style>
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
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<div class="txtbox">
			<form method="post" id="signupFormM" action="managerLogin">
				<p class="txt">
					<label for="idManager">Codice Manager</label>
					<input class="instxt" type="number" min="1001" max="1003"name="idManager" id="idManager">
		  		</p>
		  		<p class="txt"> 
		  			<label for="managerName">Nome Manager</label>
					<input class="instxt" type="text" name="managerName" id="managerName">
				</p>
				<p class="txt"> 
					<label for="managerPassword">Password</label>
					<input class="instxt" type="password" name="managerPassword" id="managerPassword">
				</p>
				<button class="button">login</button>
				
				<a href="home.jsp">
					<button class="button" type="button">Annulla</button>
				</a>
			</form>
		</div>
	</body>
</html>