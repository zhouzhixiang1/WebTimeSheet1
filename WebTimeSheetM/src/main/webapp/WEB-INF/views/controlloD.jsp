<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/stile.css">
		<title>Insert title here</title>
	</head>
	<body style=" font-family: calibri; font-size: 16;">
		<jsp:include page="../../scripts/navbar.html"></jsp:include>
		<c:if test="${not empty dipendente }">
			Benvenuto,&nbsp;${dipendente.nomeDipendente}&nbsp;<br>	
			<a href="logoutD" style=" text-decoration: none">logout</a><br>
			<a href="" style=" text-decoration: none">visualizza ticket</a><br>
			<a href="" style=" text-decoration: none">visualizza dati</a>
		</c:if>
		
		<c:if test="${empty dipendente }">
			Error login in ,Please 
			<a href="loginD.jsp">try again</a>
		</c:if>
	</body>
</html>