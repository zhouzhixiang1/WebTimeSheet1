<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="ISO-8859-1">
		<title>Add Ticket-TS</title>
		<style type="text/css">
td {
  margin: 10px;
}

form {
  width: 160px;
  
}
			<%@ include file="/css/stile.css" %>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p style=" margin-top: 0px; padding: 16px;">
				<a href="../../home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		
		<div class="txtbox">
			<form:form method="POST" action="${pageContext.request.contextPath }/listTicketM" modelAttribute="ticket">
				<p class="txt bold">Riempi i campi
					<form:input class="instxt" type="hidden" path="idManager.idManager" value="${idManager}"/></td>
				</p>
				<p class="txt">Cliente
					<form:input class="instxt" type="text" path="cliente"/>
				</p>
				<p class="txt">Sorgente Ticket
					<form:input class="instxt" type="text" path="sorgenteTicket" />
				</p>
				<p class="txt">Stato Ticket
					<form:select class="instxt" path="statoTicket">
				  		<option value="aperto">aperto</option>
			 			<option value="chiuso">chiuso</option>
				 		<option value="in lavorazione">in lavorazione</option>
				 		<option value="Rilasciato">Rilasciato</option>
				  		<option value="in attesa di riscontro">in attesa di riscontro</option>
		  			</form:select>
				</p>
				<p class="txt">Priorita
					<form:select class="instxt" path="priorita">
				  		<option value="alto">alto</option>
						<option value="medio">medio</option>
			  			<option value="basso">basso</option>
	  				</form:select>
				</p>
				<p class="txt">Tipologia
					<form:select class="instxt" path="tipologia">
	  					<option value="correttiva">correttiva</option>
	 					<option value="evolutiva">evolutiva</option>
	  					<option value="nuovo sviluppo">nuovo sviluppo</option>
	  				</form:select>
				</p>
				<p class="txt">Data Rilascio
						<form:input class="instxt" type="date" path="dataRilascio" />
				</p>
				<p class="txt">Stima
					<form:input class="instxt" type="number" path="stima" />
				</p>
				<p class="txt">Applicazione Riferimento
					<form:input class="instxt" type="text" path="applicazioneRiferimento" />
				</p>
				<p class="txt">Descrizione
					<form:textarea class="instxt" path="descrizione" />
				</p>
				<p class="txt">Totale Ore Lavorate
					<form:input class="instxt" type="number" path="totOreLavorate" />
				</p>
				<p class="txt">Commessa
					<form:input class="instxt" type="text" path="commessa" />
				</p>
				<p class="txt">Note
					<form:textarea class="instxt" path="note" />
				</p>
				<p>
					<button class="button" type="submit">Aggiungi</button>
					<a href="${pageContext.request.contextPath}/ticketsM/${idManager}">
						<button class="button" type="button">annulla</button>
					</a>
				</p>
			</form:form>
		</div>
	</body>
</html>