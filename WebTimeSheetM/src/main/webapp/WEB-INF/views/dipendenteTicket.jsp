<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>idTicket</th>
				<th>Cliente</th>
				<th>Sorgente Ticket</th>
				<th>Tipologia</th>
				<th>Data Inserimento</th>
				<th>Data Rilascio</th>
				<th>Applicazione Riferimento</th>
				<th>Priorita</th>
				<th>Stato Ticket</th>
				<th>Stima</th>
				<th>Descrizione</th>
				<th>Totale Ore Lavorate</th>
				<th>Commessa</th>
				<th>note</th>
				<th>Modifica</th>
			</tr>
		<c:forEach items="${dticket}"  var="t" >
			<tr>
				<th>${t.idTicket}</th>
				<th>${t.cliente}</th>
				<th>${t.sorgenteTicket}</th>
				<th>${t.tipologia}</th>
				<th>${t.dataInserimento}</th>
				<th>${t.dataRilascio}</th>
				<th>${t.applicazioneRiferimento}</th>
				<th>${t.priorita}</th>
				<th>${t.statoTicket}</th>
				<th>${t.stima}</th>
				<th>${t.descrizione}</th>
				<th>${t.totOreLavorate}</th>
				<th>${t.commessa}</th>
				<th>${t.note}</th>
				<th><a href="">Modifica</a></th>
			</tr>
		</c:forEach>
	
		</table>
</body>


</html>