<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/delete.js"></script>

<style type="text/css">s
th {
  padding-left: 5px;
  padding-right: 5px;	
}	
	<%@ include file="/css/stile.css" %>
</style>
	</head>
	<body>
		<!-- NAVBAR -->
		<div class="navbar">
			<p style=" margin-top: 0px;">
				<a href="${pageContext.request.contextPath}/home.jsp">
					<button class="naBu" type="button">Home</button>
				</a>
				<a href="${pageContext.request.contextPath}/addDipen/${idManager}">
					<button class="button" type="button">Add Dipen</button>
				</a>
			</p>
		</div>
		<!-- ^NAVBAR^ -->
		<form action="" method="POST" id="_form">
		<input type="hidden"  id="_method" name="_method" />
		</form>
		<table cellpadding="10" border=1>
			<tr>
				<th class="bg">Id Dipendente</th>
				<th class="bg">Nome Dipendente</th>
				<th class="bg">Ore Lavorate</th>
				<th class="bg"></th> <!-- colonna per modifica -->	
				<th class="bg"></th>
			</tr>

			<c:forEach items="${listd}"  var="d" >
				<tr>
					<th class="light">${d.idDipendente}</th>
					<th class="light">${d.nomeDipendente}</th>
					<th class="light">${d.oreLavorate}</th>
					<th class="light">
						<a href="${pageContext.request.contextPath }/dipen/${d.idDipendente}">
							<button class="button">modifica</button>
						</a>
					</th>
					<th class="light">
						<a href="${pageContext.request.contextPath }/dipen/${d.idDipendente}" class="delete" >
							<button class="button">cancella</button>
						</a>
						<input type="hidden" value="${d.nomeDipendente}">
					</th>
				</tr>
			</c:forEach>
				<!--  <tr>
				<td colspan="8">
					TotalEmps${page.totalElements }&nbsp;&nbsp;
					TotalPages${page.totalPages } &nbsp;&nbsp;
					CurrentPage${page.number + 1 } &nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 - 1 } ">Previous</a>&nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 + 1 }">Next</a>
				</td>
			</tr>-->
		</table>
	</body>
</html>