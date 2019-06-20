


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
<<<<<<< HEAD
			<h1 style=" margin-top: 0px;">
				<a href="home.jsp">
					<button class="naBu" type="button">Home</button>
				</a>
			</h1>
=======
			<p style=" margin-top: 0px; padding: 16px;">
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="button" type="button">Home</button>
				</a>
				<c:if test="${not empty dipendente }"><a href="logoutD">
					<button class="button" type="button">logout</button>
				</a>
			
					</c:if>
			</p>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
		</div>
		<!-- ^NAVBAR^ -->
		<c:if test="${not empty dipendente }">
	<!-- <h2>Benvenuto,&nbsp;${dipendente.nomeDipendente}&nbsp;</h2> -->
			<form>
				<div>
					<a href="ticketsD/${dipendente.idDipendente}" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/ticket.jpg);">ticket</button>
					</a>
				</div>
<<<<<<< HEAD
=======
				<div>
					<a href="" style="text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/code.jpg);">visualizza dati</button>
					</a>
				</div>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			</form>
		</c:if>
		
		<c:if test="${empty dipendente }">
			Error login in ,Please 
			<a href="loginD">try again</a>
		</c:if> -->
	</body>
</html>