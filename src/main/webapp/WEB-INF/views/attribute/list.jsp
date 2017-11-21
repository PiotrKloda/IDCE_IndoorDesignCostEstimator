<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	
	<div style="padding-left: 15px">
	<%@ include file="../../../WEB-INF/header.jsp"%>
		<h1>Attributes</h1>
		<table class="table table-bordered well">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Unit</th>
				<th>Details</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${attributes}" var="attribute">
				<tr>
					<td>${attribute.id}</td>
					<td>${attribute.name}</td>
					<td>${attribute.unit}</td>
					<td><a href="http://localhost:8080/IDCE/attribute/${attribute.id}">---Details</a></td> 
					<td><a
						href="http://localhost:8080/IDCE/attribute/edit/${attribute.id}" class="btn btn-warning" role="button">Edit</a>
						<a
						href="http://localhost:8080/IDCE/attribute/delete/${attribute.id}" class="btn btn-danger" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

		<br> <a href="http://localhost:8080/IDCE/attribute/add"
			class="btn btn-success" role="button">Add product</a>
			

			
			
			<br>
		<br> <a href="http://localhost:8080/IDCE/db"
			class="link">Back to DataBase management menu</a>
	</div>
</body>
</html>
