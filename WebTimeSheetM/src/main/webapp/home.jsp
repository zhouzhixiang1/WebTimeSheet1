<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home-TS</title>
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
		<form>
		<div>
			<a href="loginM">
				<button class="split" type="button" style="background-image: images/manager2.jpg;">manager</button>
			</a>
		</div>	
		<div>
			<a href="loginD">
				<button class="split" type="button" style="background-image: images/code.jpg;">dipendente</button>
			</a>
		</div>
		</form>	
	</body>
</html>