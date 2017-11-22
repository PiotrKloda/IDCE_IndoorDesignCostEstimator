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
		<h1>Products</h1>
		<table class="table table-bordered well">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Description</th>
				<th>Category</th>
				<th>Producent</th>
				<th>Price</th>
				<th>Quantity unit</th>
				<!-- <th>Photo link</th> -->
				<th>Details</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${allProducts}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.category.name}</td>
					<td>${product.producent}</td>
					<td>${product.price}</td> 
					<td>${product.quantityUnit}</td> 
					<%-- <td>${product.linkToPhoto}</td>  --%>
					<td><a href="http://localhost:8080/IDCE/product/${product.id}">Details</a></td> 
					<td><a
						href="http://localhost:8080/IDCE/product/edit/${product.id}" class="btn btn-warning" role="button">Edit</a>
						<a
						href="http://localhost:8080/IDCE/product/delete/${product.id}" class="btn btn-danger" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

		<br> <a href="http://localhost:8080/IDCE/product/add"
			class="btn btn-success" role="button">Add product</a>
			

			
			
			<br>
		<br> <a href="http://localhost:8080/IDCE/db"
			class="link">Back to DataBase management menu</a>
	</div>
</body>
</html>
