


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
	<body style=" font-family: calibri; font-size: 16;">
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
		<c:if test="${not empty dipendente }">
<!-- 		Benvenuto,&nbsp;${dipendente.nomeDipendente}&nbsp;<br> -->
			<form>
				<div>
					<a href="ticketsD/${dipendente.idDipendente}" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/manager2.jpg);">ticket</button>
					</a>
				</div>
				<div>
					<a href="" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/code.jpg);">visualizza dati</button>
					</a>
				</div>
			</form>
		</c:if>
		
		<c:if test="${empty dipendente }">
			Error login in ,Please 
			<a href="loginD.jsp">try again</a>
		</c:if>
	</body>
</html>