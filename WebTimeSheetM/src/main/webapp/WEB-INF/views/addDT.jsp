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
		<c:set value="${pageContext.request.contextPath }/addDipenTicket" var="url"></c:set>
	<c:if test ="${listDT.id != null}">
		<c:set value="${pageContext.request.contextPath }/editDipenTicket/${listDT.id }" var="url"></c:set>
	</c:if>
		<form:form method="POST" action="${url}" modelAttribute="listDT">
		<c:if test="${listDT.id != null }">
				<form:hidden path="id" />
				<input type="hidden" name="_method" value="PUT"/>
		</c:if>
			<table >
				<tr>
					<td class="bold">Id Ticket</td>
					<td>
						<form:select path="idTicket.idTicket" items="${tickets}"
						itemLabel="Commessa" itemValue="idTicket">
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="bold">Id Dipendente</td>
					<td>
						<form:select path="idDipendente.idDipendente" items="${dipendenti}"
						itemLabel="nomeDipendente" itemValue="idDipendente">
						</form:select>
					</td>
				</tr>
			</table>
			<button class="button" type="submit" style=" width: 120px; margin-left: 16px;">Aggiungi</button>
			
		</form:form>
	</body>

</html>