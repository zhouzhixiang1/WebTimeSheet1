<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/stile.css">
		<title>Login TS</title>
		<style>
		
.txtbox {
  width: 260px;
  margin: 10px;
  position: center;
}

.button {
  width: 80px;
  padding: 5px;
  color: white;
  font-weight: bold;
  border-radius:20px;
  -moz-border-radius: 20px;
  background-color: #729aff; 
  border: 2px solid #729aff;
  -webkit-border-radius: 20px;
}

.navbar {
  top: 0;
  left: 0;
  right: 0;
  z-index: 1;
  position: sticky;	
  min-width: 800px;
  min-height: 100px;
  position: -webkit-sticky;
  background-color: #729aff !important;
}

p {
  width: 120px;
  padding: 2px;
  align: justify;
  
}

input {
  width: 180px;
  height: 20px;
  padding: 5px;
  color: black;
  font-weight: bold;
  border-radius: 10px;
  -moz-border-radius: 10px;
  border: 2px solid #d2d2d2;
  -webkit-border-radius: 10px;
}
		</style>
		
	</head>
	<body style=" font-family: calibri; font-size: 18; font-weight: 300;">
		<div class="navbar">
		</div>
		<br>
		<div class="txtbox">
			<form method="post" action="dipendenteLogin">
			<p>Codice Dipendente
					<input type="number" min="2001" max="2050"name="idDipendente">
		  		</p>
		  		<p>NomeDipendente 
					<input type="text" name="nomeDipendente">
				</p>
				<p>Password 
					<input type="password" name="passwordDipendente">
				</p>
				<button class="button">login</button>
				<a href="home.jsp">back</a>
				
			</form>
		</div>
	</body>
</html>