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
		<style type="text/css">
h5{
  color:red;
  }
		
.error{
  color:red;
}
		<%@ include file="/css/stile.css" %>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p style=" margin-top: 0px; padding: 16px;">
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<div class="txtbox">
			<form method="post" id="signupFormD" action="dipendenteLogin">
			<p class="txt">
					<label for="idDipendente">Codice Dipendente</label>
					<input class="instxt" type="number" min="2001" max="2100"name="idDipendente" id="idDipendente" autofocus autocomplete="off">
		  		</p>
		  		<p class="txt">
		  			<label for="nomeDipendente">Nome Dipendente</label>
					<input class="instxt" type="text" name="nomeDipendente" id="nomeDipendente" autocomplete="off">
				</p>
				<p class="txt">
					<label for="passwordDipendente">Password</label> 
					<input class="instxt" type="password" name="passwordDipendente" id="passwordDipendente" autocomplete="off">
				</p>
				<h5>${msg}</h5>
				<button class="button" type="submit">login</button>
				<a href="home.jsp">
					<button class="button" type="button">Annulla</button>
				</a>
			</form>
		</div>
	</body>
</html>