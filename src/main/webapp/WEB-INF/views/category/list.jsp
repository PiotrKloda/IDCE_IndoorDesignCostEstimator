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
	<%@ include file="../../../WEB-INF/header.jsp"%>
	<div style="padding-left: 15px">
		<h1>List of Categories</h1>
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
						href="http://localhost:8080/IDCE/category/edit/${category.id}">Edit</a>
						<a
						href="http://localhost:8080/IDCE/category/delete/${category.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

		<br> <a href="http://localhost:8080/IDCE/category/add"
			class="link">Add Category</a>
	</div>
</body>
</html>