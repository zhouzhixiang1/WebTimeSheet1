


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dipendente-TS</title>
		<style type="text/css">
			<%@ include file="/css/stile.css" %>
		</style>
		
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<h1 style=" margin-top: 0px;">
				<a href="home.jsp">
					<button class="naBu" type="button">Home</button>
				</a>
			</h1>
		</div>
		<!-- ^NAVBAR^ -->
		<c:if test="${not empty dipendente }">
<!-- 		Benvenuto,&nbsp;${dipendente.nomeDipendente}&nbsp;<br> -->
			<form>
				<div>
					<a href="ticketsD/${dipendente.idDipendente}" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/ticket.jpg);">ticket</button>
					</a>
				</div>
			</form>
		</c:if>
		
		<c:if test="${empty dipendente }">
			Error login in ,Please 
			<a href="loginD">try again</a>
		</c:if>
	</body>
</html>