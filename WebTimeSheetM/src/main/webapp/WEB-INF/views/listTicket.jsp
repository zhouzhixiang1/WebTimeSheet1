<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<<<<<<< HEAD
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1" cellpadding="10" cellspacing="0">
=======
	<head>
		<meta charset="ISO-8859-1">
		<title>Tickets-TS</title> <!-- lista ticket per manager  -->
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
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			<tr>
				
				<th>idTicket</th>
				<th>visualizza</th>
			</tr>
<<<<<<< HEAD
		<c:forEach items="${tlistM}"  var="tlm" >
=======
			<c:forEach items="${tpage.content}"  var="t" >
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
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
			<tr>
<<<<<<< HEAD
				<th>${tlm.idTicket}</th>
				<th><a href="/WebTimeSheetM/listTicketM/${tlm.idTicket}">visualizza</a></th>
			</tr>
		</c:forEach>
=======
				<td colspan="16">
					TotalEmps${tpage.totalElements }&nbsp;&nbsp;
					TotalPages${tpage.totalPages } &nbsp;&nbsp;
					CurrentPage${tpage.number + 1 } &nbsp;&nbsp;
					<a href="?pageNo=${tpage.number + 1 - 1 }">Previous</a>&nbsp;&nbsp;
					<a href="?pageNo=${tpage.number + 1 + 1 }">Next</a>
				</td>
			</tr>
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
		</table>
</body>

</html>