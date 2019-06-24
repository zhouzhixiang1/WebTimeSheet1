<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettaglio ticket-TS</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/delete2.js"></script>
		<style type="text/css">
td {
  border-bottom: 0.5px solid gray;
}
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
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<form:form method="POST"
			action=""
			modelAttribute="mticket" id="_form">
			<form:hidden path="idTicket" />
			<input type="hidden"  id="_method" name="_method" />
			<table style=" text-align: left;">
				<tr>
					<td>Cliente</td>
					<td><label>${mticket.cliente}</label></td>
				</tr>
				<tr>
					<td>Commessa</td>
					<td><label>${mticket.commessa}</label></td>
				</tr>
				<tr>
					<td>Sorgente</td>
					<td><label>${mticket.sorgenteTicket}</label></td>
				</tr>
				<tr>
					<td>Stato Ticket</td>
					<td><label>${mticket.statoTicket}</label></td>
				</tr>
				<tr>
					<td>Priorita</td>
					<td><label>${mticket.priorita}</label></td>
				</tr>
				<tr>
					<td>Tipologia</td>
					<td><label>${mticket.tipologia}</label></td>
				</tr>
				<tr>
					<td>Data Inserimento</td>
					<td><label>${mticket.dataInserimento}</label></td>
				</tr>
				<tr>
					<td>Data Rilascio</td>
					<td><label>${mticket.dataRilascio}</label></td>
				</tr>
				<tr>
					<td>Applicazione Riferimento</td>
					<td><label>${mticket.applicazioneRiferimento}</label></td>
				</tr>
				<tr>
					<td>Stima</td>
					<td><label>${mticket.stima}</label></td>
				</tr>
				<tr>
					<td>Descrizione</td>
					<td><label>${mticket.descrizione}</label></td>
				</tr>
				<tr>
					<td>Totale Ore Lavorate</td>
					<td><label>${mticket.totOreLavorate}</label></td>
				</tr>
				<tr>
					<td>Note</td>
					<td><label>${mticket.note}</label></td>
				</tr>	
			</table>
		</form:form>
		<button class="button" type="button" style=" width: 120px; margin-left: 16px;">Modifica</button>
		<a href="${pageContext.request.contextPath }/ticketsM/${idTicket}" class="delete">
		<button class="button" style=" width: 120px; margin-left: 16px;">Cancella</button>
		</a>
		<input type="hidden" value="${mticket.commessa}">
	</body>
</html>