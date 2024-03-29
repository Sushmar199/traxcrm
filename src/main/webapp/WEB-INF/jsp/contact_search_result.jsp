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
			<th>Billing</th>
		</tr>
		<c:forEach items="${contacts}" var="contact">
		<tr>
			<td><a href="getContactById?id=${contact.id}">${contact.firstName}</a></td>
			<td>${contact.lastName}</td>
			<td>${contact.email}</td>
			<td>${contact.mobile}</td>
			<td>${contact.leadSource}</td>
			<td>${contact.gender}</td>
			<td><a href="generateBill?id=${contact.id}">billing</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>