<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<style type="text/css">
td {
  border-bottom: 0.5px solid gray;
}
			<%@ include file="/css/stile.css" %>
		</style>
		<title></title>
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
			action=""
			modelAttribute="dipendente">
			<form:hidden path="idDipendente" />
			<table style=" text-align: left; width: 20vw;">
				<tr>
					<td class="bold" style="padding: 10px;">Dipendente:</td>
					<td><label>${dipendente.nomeDipendente}<form:hidden path="nomeDipendente" /></label></td>
				</tr>
					<tr>
					<td class="bold" style="padding: 10px;">Password:</td>
					<td><label>${dipendente.passwordDipendente}<form:hidden path="passwordDipendente" /></label></td>
				</tr>
				
				<tr>
					<td class="bold" style="padding: 10px;">Ore lavrate:</td>
					<td><label>${dipendente.oreLavorate}<form:hidden path="oreLavorate" /></label></td>
				</tr>
				<tr>
					<td class="bold" style="padding: 10px;">Ruolo:</td>
					<td><label>${dipendente.ruolo}<form:hidden path="ruolo" /></label></td>
				</tr>
			</table>
			<a href="${pageContext.request.contextPath}/dipen2/${dipendente.idDipendente}">
				<button class="button" type=button>Add ore</button>
			</a>
			<a href="${pageContext.request.contextPath}/main1">
				<button class="button" type=button>back</button>
			</a>
		</form:form>
	</body>
</html>