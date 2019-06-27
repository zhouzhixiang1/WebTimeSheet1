<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<style type="text/css">
			<%@ include file="/css/stile.css" %>
			h2 {
    margin-left: 200px;
		}
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
			action="${pageContext.request.contextPath }/dipen/${idDipendente}"
			modelAttribute="dipendente">
			<form:hidden path="idManager.idManager" />
			<form:hidden path="idDipendente" />
			<form:hidden path="passwordDipendente" />
			<form:hidden path="ruolo" />
			<input type="hidden" name="_method" value="PUT" />
			<h2>Modifica ore Lavorate</h2>
			<table class="table">
				<tr>
					<td class="bold" style="padding: 10px;">Dipendente:</td>
					<td class="alR"><label>${dipendente.nomeDipendente}<form:hidden path="nomeDipendente" /></label></td>
				</tr>
				
				<tr>
					<td class="bold" style="padding: 10px;">Ore lavrate:</td>
					<td class="alR"><form:input type="number" path="oreLavorate" /></td>
				</tr>
				<tr>
					<td>
						<a>
							<button class="button">modifica</button>
						</a>
						<a href="${pageContext.request.contextPath}/dipens/${dipendente.idManager.idManager}">
							<button class="button" type="button">annulla</button>
						</a>
					</td>
				</tr>
			</table>
			
		</form:form>
	</body>
</html>