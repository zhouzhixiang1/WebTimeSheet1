<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tickets-TS</title> <!-- lista ticket per dipendenti  -->
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
				<a href="${pageContext.request.contextPath}/listTicketDt">
					<button class="button" type="button">Add Ticket</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table cellpadding="10" style=" width: 20vw">
			<tr>
				<th class="bg">Ticket</th>
				<th class="bg"></th>
			</tr>
			<c:forEach items="${tlist}"  var="tl" >
				<tr class="light">
					<th>${tl.idTicket.idTicket}</th>
					<th>
						<a href="${pageContext.request.contextPath}/listTicket2/${tl.idTicket.idTicket}">
							<button class="button" type="button">visualizza</button>
						</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>