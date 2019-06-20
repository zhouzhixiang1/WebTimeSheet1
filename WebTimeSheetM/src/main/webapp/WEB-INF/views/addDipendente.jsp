<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
				<a href="home.jsp">
					<button class="button" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<form:form method="POST"
			action="${pageContext.request.contextPath }/addDipen"
			modelAttribute="dipendente">
	
			<table >
				<tr>
					<td class="bold">Id Manager</td>
					<td><form:input type="hidden" path="idManager.idManager" value="${idManager}"/></td>
				</tr>
				<tr>
					<td class="bold">Nome Dipendente</td>
					<td><form:input type="text" path="nomeDipendente"/></td>
				</tr>
				<tr>
					<td class="bold">Password Dipendente</td>
					<td><form:input type="text" path="passwordDipendente" /></td>
				</tr>
				<tr>
					<td class="bold">Ore Lavorate</td>
					<td><form:input type="number" path="oreLavorate" defaultValue="0" /></td>
				</tr>
				
			</table>
			<button class="button" type="submit" style=" width: 120px; margin-left: 16px;">Aggiungi</button>
		</form:form>
	</body>

</html>