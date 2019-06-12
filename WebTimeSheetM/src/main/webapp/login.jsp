<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form method="post" action="managerLogin">
    CodiceManager<input type="number" min="1001" max="1003"name="idManager"><br>
	ManagerName<input type="text" name="managerName"><br>
	Password<input type="password" name="managerPassword"><br>
	<input type="submit" value="login">
 </form>
</div>
</body>
</html>