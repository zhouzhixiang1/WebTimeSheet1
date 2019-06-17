<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/stile.css" type = "text/css">
	</head>
	<body>
		<jsp:include page="../../scripts/navbar.html"></jsp:include>
		<c:if test="${not empty manager }">
			Benvenuto,&nbsp;${manager.managerName}&nbsp;<br>	
			<a href="logout" style=" text-decoration: none">logout</a><br>
			<a href="dipens/${manager.idManager }" style=" text-decoration: none">tabella dipendente</a><br>
			<a href="tickets/${manager.idManager }" style=" text-decoration: none">tabella ticket</a>
		</c:if>
		
		<c:if test="${empty manager }">
			Error login in ,Please 
			<a href="login.jsp">try again</a>
		</c:if>
	</body>
</html>