<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>idTicket</th>
				<th>visualizza</th>
			</tr>
		<c:forEach items="${tlist}"  var="tl" >
			<tr>
				<th>${tl.idTicket.idTicket}</th>
				<th><a href="/WebTimeSheetM/listTicket/${tl.idTicket.idTicket}">visualizza</a></th>
			</tr>
		</c:forEach>
		</table>
</body>


</html>