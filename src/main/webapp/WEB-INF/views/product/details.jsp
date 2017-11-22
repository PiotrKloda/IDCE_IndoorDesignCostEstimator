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
		<h1>Product details</h1>
		<table class="table table-bordered well">
			<tr>
				<th>Feature</th>
				<th>Value</th>
			</tr>

			<tr>
				<td>Name</td>
				<td>${product.name}</td>
			</tr>
			<tr>
				<td>Description</td>
				<td>${product.description}</td>
			</tr>
			<tr>
				<td>Category</td>
				<td>${product.category.name}</td>
			</tr>
			<tr>
				<td>Producent</td>
				<td>${product.producent}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>${product.price}</td>
			</tr>
		</table>





		<h3>
			Products Attributes <a
				href="http://localhost:8080/IDCE/productAttributeValue/addForProduct/${product.id}"
				class="btn btn-success" role="button">Add attribute</a>
		</h3>

		<table class="table table-bordered well">
			<tr>
				<th>Feature</th>
				<th>Value</th>
				<th>Unit</th>
				<th>Action</th>
			</tr>

			<c:forEach items="${productAttributeValues}"
				var="productAttributeValue">
				<tr>
					<td>${productAttributeValue.attribute.name}</td>
					<td>${productAttributeValue.value}</td>
					<td>${productAttributeValue.attribute.unit}</td>
					<td><a
						href="http://localhost:8080/IDCE/productAttributeValue/editForProduct/${productAttributeValue.id}"
						class="btn btn-warning" role="button">Edit</a> <a
						href="http://localhost:8080/IDCE/productAttributeValue/deletedForProduct/${productAttributeValue.id}"
						class="btn btn-danger" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

		<br> <br> <a href="http://localhost:8080/IDCE/db"
			class="link">Back to DataBase management menu</a>
	</div>
</body>
</html>
