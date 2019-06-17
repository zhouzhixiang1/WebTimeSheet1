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
		<jsp:include page="scripts/navbar.html"></jsp:include>
		<form>
		<div>
			<a href="login">
				<button class="split" style="background-image: images/manager2.jpg;">manager</button>
			</a>
		</div>	
		<div>
			<a href="loginD">
				<button class="split" style="background-image: images/code.jpg;">dipendente</button>
			</a>
		</div>
		</form>	
	</body>
</html>