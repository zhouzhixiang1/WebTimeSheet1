<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<<<<<<< HEAD
<head>
<meta charset="ISO-8859-1">
<title>Tickets-TS</title>
<!-- lista ticket per manager  -->
<style type="text/css">
<%@include file="/css/stile.css"%>
</style>
</head>
<body>
	<!-- NAVBAR -->
	<div class="navbar">
		<p style="margin-top: 0px; padding: 16px;">
			<a href="">
				<button class="button" type="button">Tickets</button> <!-- solo se si � fatto il login -->
			</a> <a href="home.jsp">
				<button class="button" type="button">Home</button>
			</a>
			<a href="${pageContext.request.contextPath}/listTicketM">
				<button class="button" type="button">Add Ticket</button>
			</a>
		</p>
	</div>
	<!-- ^NAVBAR^ -->
	<table border="0.5" cellpadding="10">
		<tr>
			<th>idTicket</th>
			<th>visualizza</th>
=======
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
				<a href="../../home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table border="0.5" cellpadding="10" style=" width: 20vw">
			<tr>
				<th class="bg">Ticket</th>
				<th class="bg"></th>
			</tr>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			<c:forEach items="${tlistM}" var="tlm">
				<tr>
<<<<<<< HEAD
					<th>${tlm.idTicket}</th>
					<th><a href="${pageContext.request.contextPath }/listTicketM/${tlm.idTicket}">visualizza</a></th>
=======
					<th class="light">${tlm.idTicket}</th>
					<th>
						<a href="/WebTimeSheetM/listTicketM/${tlm.idTicket}">
							<button class="button" type="button">visualizza</button>
						</a>
					</th>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
				</tr>
			</c:forEach>
		</table>
	</body>
</html>