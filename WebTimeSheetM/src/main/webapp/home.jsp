<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home TS</title>
		<link rel="stylesheet" href="css/stile.css" type="text/css">
	</head>
	<body>
		<%@ include file="scripts/navbar.html"%>	
		<div style="width: 100vw; height: 50vh; position: relative; background-image: images/manager.jpg;">
			<a href="login">
				<button class="button1">manager</button>
			</a> 
		</div>
		<div style="width: 100vw; height: 50vh; position: relative; background-image: images/scorp.jpg;">
			<a href="loginD">
				<button class="button2">dipendente</button>
			</a> 
		</div>
	</body>
</html>