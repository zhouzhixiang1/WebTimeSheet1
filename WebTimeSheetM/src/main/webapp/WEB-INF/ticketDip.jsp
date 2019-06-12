<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html style="height: -webkit-fill-available;">
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>Home MyChef</title>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/stile.css">
<title>lista ticket - Dipendente</title>
</head>
<body>

<table class="table" style="font-weight: 100;">
			<tr>
				<th scope="col">ID pianta</th>
				<th scope="col">Nome pianta</th>
				<th scope="col">zona</th>
			</tr>
			<c:forEach class="col">
				<tr>
					<th></th>
					<th></th>
					<th>
							<a href="PId.do?ID_pianta=${p.ID_pianta}">Modifica</a>
							<a href="del.do?ID_pianta=${p.ID_pianta}">Elimina</a>
					</th>
				</tr>
			</c:forEach>
		</table>
		

</body>
</html>