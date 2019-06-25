<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettaglio ticket-TS</title>
		<style type="text/css">
td {
  border-bottom: 0.5px solid gray;
}

label {
  font-weight: lighter;
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
			action="${pageContext.request.contextPath }/ticket/${idTicket}"
			modelAttribute="dticket">
			<form:hidden path="idTicket" />
			<!-- <input type="hidden" name="_method" value="PUT" /> -->
			<table style=" text-align: left;">
				<tr>
					<td class="bold">Cliente:</td>
					<td><label>${dticket.cliente}</label></td>
				</tr>
				<tr>
					<td class="bold">Commessa:</td>
					<td><label>${dticket.commessa}</label></td>
				</tr>
				<tr>
					<td class="bold">Sorgente:</td>
					<td><label>${dticket.sorgenteTicket}</label></td>
				</tr>
				<tr>
					<td class="bold">Stato Ticket:</td>
					<td><label>${dticket.statoTicket}</label></td>
				</tr>
				<tr>
					<td class="bold">Priorita:</td>
					<td><label>${dticket.priorita}</label></td>
				</tr>
				<tr>
					<td class="bold">Tipologia:</td>
					<td><label>${dticket.tipologia}</label></td>
				</tr>
				<tr>
					<td class="bold">Data Inserimento:</td>
					<td><label>${dticket.dataInserimento}</label></td>
				</tr>
				<tr>
					<td class="bold">Data Rilascio:</td>
					<td><label>${dticket.dataRilascio}</label></td>
				</tr>
				<tr>
					<td class="bold">Applicazione Riferimento:</td>
					<td><label>${dticket.applicazioneRiferimento}</label></td>
				</tr>
				<tr>
					<td class="bold">Stima:</td>
					<td><label>${dticket.stima}</label></td>
				</tr>
				<tr>
					<td class="bold">Descrizione:</td>
					<td><label>${dticket.descrizione}</label></td>
				</tr>
				<tr>
					<td class="bold">Totale Ore Lavorate:</td>
					<td><label>${dticket.totOreLavorate}</label></td>
				</tr>
				<tr>
					<td class="bold">Note:</td>
					<td><label>${dticket.note}</label></td>
				</tr>
			</table>
			<!-- <button class="button" type="button" style=" width: 120px; margin-left: 16px;">Aggiungi Ore</button> -->
			<a href="${pageContext.request.contextPath }/main1">
				<button class="button" type="button" style=" width: 120px; margin-left: 16px;">back</button>
			</a>
		</form:form>
	</body>
</html>
