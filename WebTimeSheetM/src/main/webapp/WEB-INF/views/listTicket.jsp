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
		<c:forEach items="${tlistM}"  var="tlm" >
			<tr>
				<th>${tlm.idTicket}</th>
				<th><a href="/WebTimeSheetM/listTicketM/${tlm.idTicket}">visualizza</a></th>
			</tr>
		</c:forEach>
		</table>
</body>

</html>