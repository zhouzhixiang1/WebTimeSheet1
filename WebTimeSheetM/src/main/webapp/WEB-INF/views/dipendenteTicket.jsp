<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="shortcut icon" type="image/png" href="zero.png"/>
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
=======
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
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			<tr>
				<td>Cliente</td>
				<td><label>${dticket.cliente}</label></td>
			</tr>
<<<<<<< HEAD
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
=======
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
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
		</table>
<<<<<<< HEAD
	</body>
</html>



=======
	</form:form>



</body>
</html>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
