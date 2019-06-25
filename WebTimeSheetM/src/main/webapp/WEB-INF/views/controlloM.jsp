<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Manager-TS</title>
		<style type="text/css">
			<%@ include file="/css/stile.css" %>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p style=" margin-top: 0px; padding: 16px;">
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="button" type="button">Home</button>
				</a>
				<c:if test="${not empty manager }"><a href="logout">
					<button class="button" type="button">logout</button>
				</a></c:if>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<c:if test="${not empty manager }">
<!-- 		Benvenuto,&nbsp;${manager.managerName}&nbsp;<br> -->
			<form>
				<div>
					<a href="dipens/${manager.idManager }" style=" text-decoration: none">
						<button class="splitIn3" type="button" style="background-image: url(images/manager2.jpg);">dipendenti</button>
					</a>
				</div>
				<div>
					<a href="ticketsM/${manager.idManager }" style=" text-decoration: none">
						<button class="splitIn3" type="button" style="background-image: url(images/ticket.jpg);">tickets</button>
					</a>				
				</div>
				<div>
				<a href="listDipenTicket" style=" text-decoration: none">
						<button class="splitIn3" type="button" style="background-image: url(images/code.jpg);">Dipendente-Tickets</button>
					</a>
				</div>
			</form>
		</c:if>

		<c:if test="${empty manager}">
			Error login in ,Please 
			<a href="loginM">try again</a>
		</c:if>
	</body>
</html>