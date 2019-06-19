<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Tickets-TS</title> <!-- lista ticket per manager  -->
		<style type="text/css">
			<%@include file="/css/stile.css"%>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p style="margin-top: 0px; padding: 16px;">
				<a href="">
					<button class="button" type="button">Tickets</button> <!-- con il login fatto -->
				</a>
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="button" type="button">Home</button>
				</a>
				<a href="${pageContext.request.contextPath}/listTicketM">
				<button class="button" type="button">Add Ticket</button>
			</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table border="1" cellpadding="10" style="width: 20vw">
			<tr>
				<th class="bg">Ticket</th>
				<th class="bg"></th>
			</tr>

			<c:forEach items="${tlistM}" var="tlm">
				<tr>
					<th class="light">${tlm.idTicket}</th>
					<th>
						<a href="${pageContext.request.contextPath}/listTicketM/${tlm.idTicket}">
							<button class="button" type="button">visualizza</button>
						</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>