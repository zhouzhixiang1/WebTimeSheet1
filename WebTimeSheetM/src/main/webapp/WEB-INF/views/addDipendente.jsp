<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="ISO-8859-1">
		<title>Add Dipendente</title>
		<script type="text/javascript" src="scripts/jquery-1.11.3.min.js"></script>
		<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/validateAD.js"></script>	
		<style type="text/css">
			<%@ include file="/css/stile.css" %>
		</style>
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
		<div class="txtbox">
		<form:form method="POST" id="signupFormAD"
			action="${pageContext.request.contextPath }/addDipen" modelAttribute="dipendente">
				<h3>Aggiunge Dipendente</h3>
					<form:hidden class="instxt" path="idManager.idManager" value="${idManager}"/>
					<form:hidden class="instxt" path="oreLavorate" value="0" />
				<p class="txt">Nome Dipendente
					<form:input class="instxt" type="text" path="nomeDipendente"/>
				</p>
				<p class="txt">Password Dipendente
					<form:input class="instxt" type="text" path="passwordDipendente" />
				</p>
				<!-- <p class="txt">Ore Lavorate
					<form:input class="instxt" type="number" path="oreLavorate" defaultValue="0" />
				</p> -->
				<p class="txt">Ruolo
					<form:select  class="instxt" path="ruolo" >
				  		<option value="M">M</option>
				 		<option value="D">D</option>
		  			</form:select>
				</p>
					<button class="button" type="submit">Aggiungi</button>
				<a href="${pageContext.request.contextPath }/dipens/${idManager}">
					<button class="button" type="button">Annulla</button>
				</a>
			</form:form>
		</div>
	</body>

</html>