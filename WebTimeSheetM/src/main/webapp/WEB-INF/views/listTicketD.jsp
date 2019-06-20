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
<<<<<<< HEAD
			<p style=" margin-top: 0px;">
=======
			<p style=" margin-top: 0px; padding: 16px;">
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="naBu" type="button">Home</button>
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
						<a href="${pageContext.request.contextPath}/listTicket/${tl.idTicket.idTicket}">
							<button class="button" type="button">visualizza</button>
						</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>