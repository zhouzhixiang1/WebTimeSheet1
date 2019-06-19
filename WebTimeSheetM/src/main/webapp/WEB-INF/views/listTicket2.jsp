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
				<a href="">
					<button class="button" type="button">Tickets</button> <!-- solo se si è fatto il login -->
				</a>
				<a href="home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table border="0.5" cellpadding="10">
			<tr>
				<th>idTicket</th>
				<th>visualizza</th>
			</tr>
			<c:forEach items="${tlist}"  var="tl" >
				<tr>
					<th>${tl.idTicket.idTicket}</th>
					<th>
						<a href="${pageContext.request.contextPath }/listTicket/${tl.idTicket.idTicket}">visualizza</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>