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
		<div class="txtbox">
		<form:form method="POST"
			action="${pageContext.request.contextPath }/addDipen" modelAttribute="dipendente">
				<p class="txt">Id Manager
					<form:input class="instxt" type="hidden" path="idManager.idManager" value="${idManager}"/>
				</p>
				<p class="txt">Nome Dipendente
					<form:input class="instxt" type="text" path="nomeDipendente"/>
				</p>
				<p class="txt">Password Dipendente
					<form:input class="instxt" type="text" path="passwordDipendente" />
				</p>
				<p class="txt">Ore Lavorate
					<form:input class="instxt" type="number" path="oreLavorate" defaultValue="0" />
				</p>
				<button class="button" type="submit" style=" width: 120px; margin-left: 16px;">Aggiungi</button>
			</form:form>
		</div>
	</body>

</html>