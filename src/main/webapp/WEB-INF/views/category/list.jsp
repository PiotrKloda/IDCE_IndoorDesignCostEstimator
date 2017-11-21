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
		<h1>Categories</h1>
		<table class="table table-bordered well">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Description</th>
				<th>Subcategory of</th>
				<th>All products</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${categories}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td>${category.parent.name}</td>
					<td><a href="">All products---</a></td>
					<td><a
						href="http://localhost:8080/IDCE/category/edit/${category.id}" class="btn btn-warning" role="button">Edit</a>
						<a
						href="http://localhost:8080/IDCE/category/delete/${category.id}" class="btn btn-danger" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</table>



		<form action="http://localhost:8080/IDCE/category/add" method="get">
			<button type="submit" value="Submit" class="btn btn-success">Add
				Category</button>
		</form>



		<br> <a href="http://localhost:8080/IDCE/db" >Back
			to DataBase management menu</a>
	</div>
</body>
</html>