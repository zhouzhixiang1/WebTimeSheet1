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
				<a href="home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		

		<form:form method="POST" action="${pageContext.request.contextPath }/listTicketD" modelAttribute="ticket">
			<table style=" text-align: left;">
				<tr>
					<td>Id Manager</td>
					<td>
						<form:select path="idManager.idManager" items="${managers}"
						itemLabel="managerName" itemValue="idManager">
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="bold">Cliente</td>
					<td>
						<form:input type="text" path="cliente"/>
					</td>
				</tr>
				<tr>
					<td class="bold">Sorgente Ticket</td>
					<td>
						<form:input type="text" path="sorgenteTicket" />
					</td>
				</tr>
				<tr>
					<td class="bold">Stato Ticket</td>
					<td>
						<form:select path="statoTicket">
				  			<option value="aperto">aperto</option>
				 			<option value="chiuso">chiuso</option>
				  			<option value="in lavorazione">in lavorazione</option>
				  			<option value="Rilasciato">Rilasciato</option>
				  			<option value="in attesa di riscontro">in attesa di riscontro</option>
		  				</form:select>
	  				</td>
				</tr>
				<tr>
					<td class="bold">Priorita</td>
					<td>
						<form:select path="priorita">
				  			<option value="alto">alto</option>
				 			<option value="medio">medio</option>
				  			<option value="basso">basso</option>
		  				</form:select>
		  			</td>
				</tr>
				<tr>
					<td class="bold">Tipologia</td>
					<td>
						<form:select path="tipologia">
	  						<option value="correttiva">correttiva</option>
	 						<option value="evolutiva">evolutiva</option>
	  						<option value="nuovo sviluppo">nuovo sviluppo</option>
	  					</form:select>
	  				</td>
				</tr>
				<tr>
					<td class="bold">Data Rilascio</td>
					<td>
						<form:input type="date" path="dataRilascio" />
					</td>
				</tr>
				<tr>
					<td class="bold">Stima</td>
					<td>
						<form:input type="number" path="stima" />
					</td>
				</tr>
				<tr>
					<td class="bold">Applicazione Riferimento</td>
					<td>
						<form:input type="text" path="applicazioneRiferimento" />
					</td>
				</tr>
				<tr>
					<td class="bold">Descrizione</td>
					<td>
						<form:textarea path="descrizione" />
					</td>
				</tr>
				<tr>
					<td class="bold">Totale Ore Lavorate</td>
					<td>
						<form:input type="number" path="totOreLavorate" />
					</td>
				</tr>
				<tr>
					<td class="bold">Commessa</td>
					<td>
						<form:input type="text" path="commessa" />
					</td>
				</tr>
				<tr>
					<td class="bold">Note</td>
					<td>
						<form:textarea path="note" />
					</td>
				</tr>
				<tr>
				<td><button class="button" type="submit">Aggiungi</button>
				<a href="${pageContext.request.contextPath}/main1">
					<button class="button" type="button">annulla</button>
				</a></td>
				</tr>
			</table>
			
		</form:form>
		
	</body>
</html>