<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
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
		<table>
			<tr>
				<th>Id Dipendente</th>
				<th>Nome Dipendente</th>
				<th>Ore Lavorate</th>
				<th>modifica</th>			
			</tr>
			<c:forEach items="${page.content}"  var="d" >
				<tr>
					<th>${d.idDipendente}</th>
					<th>${d.nomeDipendente}</th>
					<th>${d.oreLavorate}</th>
					<th>
						<a href="${pageContext.request.contextPath }/dipen/${d.idDipendente}">
							<button class="button">modifica</button>
						</a>
					</th>
				</tr>
			</c:forEach>
		</table>
		<div style=" margin-left: 16px;">
			Dipendenti: ${page.totalElements }&nbsp;&nbsp;
			Pagine totali: ${page.totalPages } &nbsp;&nbsp;
			Pagina ${page.number + 1 } &nbsp;&nbsp;
			<a href="?pageNo=${page.number + 1 - 1 }">
				<button class="button">Previous</button>
			</a>
			<a href="?pageNo=${page.number + 1 + 1 }">
				<button class="button">Next</button>
			</a>
		</div>
	</body>
</html>
