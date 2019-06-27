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
		<!-- NAVBAR -->
		<div class="navbar">
			<p style=" margin-top: 0px; padding: 16px;">
				<a href="home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<form>
		<div>
			<a href="manager/loginM">
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