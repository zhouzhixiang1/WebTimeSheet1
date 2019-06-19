<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<style type="text/css">
		
th {
  padding-left: 5px;
  padding-right: 5px;	
}	
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
				<a href="home">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<table cellpadding="10">
			<tr>
				<th class="bg">Id Dipendente</th>
				<th class="bg">Nome Dipendente</th>
				<th class="bg">Ore Lavorate</th>
				<th class="bg"></th> <!-- colonna per modifica -->	
			</tr>

			<c:forEach items="${listd}"  var="d" >
				<tr>
					<th class="light">${d.idDipendente}</th>
					<th class="light">${d.nomeDipendente}</th>
					<th class="light">${d.oreLavorate}</th>
					<th class="light">
						<a href="${pageContext.request.contextPath }/dipen/${d.idDipendente}">
							<button class="button">modifica</button>
						</a>
					</th>
				</tr>
			</c:forEach>
				<!--  <tr>
				<td colspan="8">
					TotalEmps${page.totalElements }&nbsp;&nbsp;
					TotalPages${page.totalPages } &nbsp;&nbsp;
					CurrentPage${page.number + 1 } &nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 - 1 } ">Previous</a>&nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 + 1 }">Next</a>
				</td>
			</tr>-->
		</table>
	</body>
</html>