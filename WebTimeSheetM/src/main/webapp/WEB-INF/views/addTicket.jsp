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
		action="${pageContext.request.contextPath }/listTicketM"
		modelAttribute="ticket">
		<table>
			<tr>
				<td>Id Manager</td>
				<td><form:select path="idManager.idManager" items="${managers}"
					itemLabel="managerName" itemValue="idManager"></form:select></td>
			</tr>
			<tr>
				<td>Cliente</td>
				<td><form:input type="text" path="cliente"/></td>
			</tr>
			<tr>
				<td>Sorgente Ticket</td>
				<td><form:input type="text" path="sorgenteTicket" /></td>
			</tr>
			<tr>
				<td>Stato Ticket</td>
				<td><form:select path="statoTicket">
  			<option value="aperto">aperto</option>
 			<option value="chiuso">chiuso</option>
  			<option value="in lavorazione">in lavorazione</option>
  			<option value="Rilasciato">Rilasciato</option>
  			<option value="in attesa di riscontro">in attesa di riscontro</option>
  				</form:select></td>
			</tr>
			<tr>
				<td>Priorita</td>
				<td><form:select path="priorita">
  			<option value="alto">alto</option>
 			<option value="medio">medio</option>
  			<option value="basso">basso</option>
  				</form:select></td>
			</tr>
			<tr>
				<td>Tipologia</td>
				<td><form:select path="tipologia">
  			<option value="correttiva">correttiva</option>
 			<option value="evolutiva">evolutiva</option>
  			<option value="nuovo sviluppo">nuovo sviluppo</option>
  				</form:select></td>
			</tr>
			<tr>
				<td>Data Rilascio</td>
				<td><form:input type="date" path="dataRilascio" /></td>
			</tr>
			<tr>
				<td>Stima</td>
				<td><form:input type="number" path="stima" /></td>
			</tr>
			<tr>
				<td>Applicazione Riferimento</td>
				<td><form:input type="text" path="applicazioneRiferimento" /></td>
			</tr>
			<tr>
				<td>Descrizione</td>
				<td><form:textarea path="descrizione" /></td>
			</tr>
			<tr>
				<td>Totale Ore Lavorate</td>
				<td><form:input type="number" path="totOreLavorate" /></td>
			</tr>
			<tr>
				<td>Commessa</td>
				<td><form:input type="text" path="commessa" /></td>
			</tr>
			<tr>
				<td>Note</td>
				<td><form:textarea path="note" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="aggiungi"></td>
			</tr>
		</table>
	</form:form>



</body>
</html>