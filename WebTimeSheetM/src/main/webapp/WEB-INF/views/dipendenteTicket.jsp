<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form method="POST"
		action="${pageContext.request.contextPath }/ticket/${idTicket}"
		modelAttribute="dticket">
		<form:hidden path="idTicket" />
		<!-- <input type="hidden" name="_method" value="PUT" /> -->
		<table border="1">
			<tr>
				<td>Cliente:</td>
				<td><label>${dticket.cliente}</label></td>
			</tr>
			<tr>
				<td>Commessa</td>
				<td><label>${dticket.commessa}</label></td>
			</tr>
			<tr>
				<td>Sorgente</td>
				<td><label>${dticket.sorgenteTicket}</label></td>
			</tr>
			<tr>
				<td>Stato Ticket</td>
				<td><label>${dticket.statoTicket}</label></td>
			</tr>
			<tr>
				<td>Priorita</td>
				<td><label>${dticket.priorita}</label></td>
			</tr>
			<tr>
				<td>Tipologia</td>
				<td><label>${dticket.tipologia}</label></td>
			</tr>
			<tr>
				<td>Data Inserimento</td>
				<td><label>${dticket.dataInserimento}</label></td>
			</tr>
			<tr>
				<td>Data Rilascio</td>
				<td><label>${dticket.dataRilascio}</label></td>
			</tr>
			<tr>
				<td>Applicazione Riferimento</td>
				<td><label>${dticket.applicazioneRiferimento}</label></td>
			</tr>
			<tr>
				<td>Stima</td>
				<td><label>${dticket.stima}</label></td>
			</tr>
			<tr>
				<td>Descrizione</td>
				<td><label>${dticket.descrizione}</label></td>
			</tr>
			<tr>
				<td>Totale Ore Lavorate</td>
				<td><label>${dticket.totOreLavorate}</label></td>
			</tr>
			<tr>
				<td>Note</td>
				<td><label>${dticket.note}</label></td>
			</tr>
			<tr>
				<td><input type="submit" value="Aggiungi Ore"></td>
			</tr>
		</table>
	</form:form>



</body>
</html>