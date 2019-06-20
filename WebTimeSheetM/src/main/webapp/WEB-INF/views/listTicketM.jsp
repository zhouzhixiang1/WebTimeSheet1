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
<<<<<<< HEAD
			<p style="margin-top: 0px;">
=======
			<p style="margin-top: 0px; padding: 16px;">
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="naBu" type="button">Home</button>
				</a>
<<<<<<< HEAD
				<a href="${pageContext.request.contextPath}/listTicketM">
				<button class="naBu" type="button">Add Ticket</button>
=======
				<a href="${pageContext.request.contextPath}/listTicketMt/${idManager}">
				<button class="button" type="button">Add Ticket</button>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table cellpadding="10" style="width: 20vw">
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