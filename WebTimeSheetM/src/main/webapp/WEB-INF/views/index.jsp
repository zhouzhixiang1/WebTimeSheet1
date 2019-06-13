<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${not empty manager }">
		Benvenuto,${manager.managerName}&nbsp;	
		<a href="logout">logout</a><br>
		<a href="dipens/${manager.idManager}">tabella dipendente</a><br>
		<a href="">tabella ticket</a>
	</c:if>
	
	<c:if test="${empty manager }">
		Error logggin in ,Please try again
	<a href="login.jsp">try again</a>
	</c:if>
	
</body>
</html>