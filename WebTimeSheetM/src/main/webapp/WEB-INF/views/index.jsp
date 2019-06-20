<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Manager-TS</title>
		<style type="text/css">
			<%@ include file="/css/stile.css" %>
		</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
<<<<<<< HEAD
			<p style=" margin-top: 0px;">
=======
			<p style=" margin-top: 0px; padding: 16px;">
>>>>>>> branch 'master' of https://github.com/zhouzhixiang1/WebTimeSheet1.git
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="naBu" type="button">Home</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<c:if test="${not empty manager }">
<!-- 		Benvenuto,&nbsp;${manager.managerName}&nbsp;<br> -->
			<form>
				<div>
					<a href="dipens/${manager.idManager }" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/manager2.jpg);">dipendenti</button>
					</a>
				</div>
				<div>
					<a href="tickets/${manager.idManager }" style=" text-decoration: none">
						<button class="split" type="button" style="background-image: url(images/code.jpg);">tickets</button>
					</a>
				</div>
			</form>
		</c:if>
		
		<c:if test="${empty manager }">
			Error login in ,Please 
			<a href="login.jsp">try again</a>
		</c:if>
	</body>
</html>