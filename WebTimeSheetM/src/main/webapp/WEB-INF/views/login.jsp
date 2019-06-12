<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/stile.css">
		<title>Insert title here</title>
		
	</head>
	<body style=" font-family: calibri; font-size: 16;">
		<jsp:include page="../scripts/navbar.html"></jsp:include>
		<div class="txtbox"></div>
		<form method="post" action="managerLogin">
		    Codice Manager<input type="number" min="1001" max="1003"name="idManager"><br>
			Nome<input type="text" name="managerName"><br>
			Password<input type="password" name="managerPassword"><br>
			<input type="submit" value="login">
		 </form>
	
	</body>
</html>