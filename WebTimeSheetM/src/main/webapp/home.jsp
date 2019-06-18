<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home-TS</title>
		<link rel="shortcut icon" type="image/png" href="zero.png"/>
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
		<form>
		<div>
			<a href="loginM">
				<button class="split" type="button" style="background-image: url(images/manager2.jpg);">manager</button>
			</a>
		</div>	
		<div>
			<a href="loginD">
				<button class="split" type="button" style="background-image: url(images/code.jpg);">dipendente</button>
			</a>
		</div>
		</form>	
	</body>
</html>