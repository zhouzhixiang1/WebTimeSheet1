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
  border: 2px solid #96b4ff;
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
  position: fixed;
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
		<p>
		<button class="button">Tickets</button> <!-- solo se si è registrati -->
		<button class="button">Home</button>
		<button class="button"></button>
		</p>
		
		</div>
		<br>
		<div class="txtbox">
			<form method="post" action="managerLogin">
				<p>Codice Manager
					<input type="number" min="1001" max="5003"name="idManager">
		  		</p>
		  		<p>Nome 
					<input type="text" name="managerName">
				</p>
				<p>Password 
					<input type="password" name="managerPassword">
				</p>
				<button class="button">login</button>
			</form>
		</div>
	</body>
</html>