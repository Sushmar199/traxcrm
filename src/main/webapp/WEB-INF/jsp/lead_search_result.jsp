<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
</head>
<body>
	<h2>Lead | Search Result</h2>
	<table>
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>LeadSource</th>
			<th>Gender</th>
		</tr>
		<c:forEach items="${leads}" var="lead">
		<tr>
			<td><a href="getLeadById?id=${lead.id}">${lead.firstName}</a></td>
			<td>${lead.lastName}</td>
			<td>${lead.email}</td>
			<td>${lead.mobile}</td>
			<td>${lead.leadSource}</td>
			<td>${lead.gender}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>