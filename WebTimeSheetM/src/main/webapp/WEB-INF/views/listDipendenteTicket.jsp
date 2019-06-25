<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tickets-TS</title> <!-- lista ticket per dipendenti  -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/delete3.js"></script>
		
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
				<a href="${pageContext.request.contextPath}/addDipenTicket">
					<button class="button" type="button">add DT</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<form action="" method="POST" id="_form">
		<input type="hidden"  id="_method" name="_method" />
		</form>
		<table cellpadding="10" style=" width: 20vw">
			<tr>
				<th class="bg">ID</th>
				<th class="bg">Id Ticket</th>
				<th class="bg">Id Dipendente</th>
				<th class="bg"></th>
				<th class="bg"></th>
			</tr>
			<c:forEach items="${listDT}"  var="tdt" >
				<tr class="light">
				<th>${tdt.id}</th>
				<th>${tdt.idTicket.idTicket}</th>
				<th>${tdt.idDipendente.idDipendente}</th>
					<th>
						<a href="${pageContext.request.contextPath}/editDipenTicket/${tdt.id}">
							<button class="button" type="button">modifica</button>
						</a>
					</th>
					<th>
						<a href="${pageContext.request.contextPath}/deleteDipenTicket/${tdt.id}" class="delete">
							<button class="button" type="button">cancella</button>
						</a>
						<input type="hidden" value="${tdt.id}"/>
					</th>
				</tr>
			</c:forEach>
		</table>
		<a href="${pageContext.request.contextPath }/main">
				<button class="button" type="button" style=" width: 120px; margin-left: 16px;">back</button>
		</a>
					
	</body>
</html>