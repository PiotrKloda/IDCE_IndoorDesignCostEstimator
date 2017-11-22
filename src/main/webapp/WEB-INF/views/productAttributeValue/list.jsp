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
		<h1>Product Attribute Values</h1>
		<table class="table table-bordered well">
			<tr>
				<th>Id</th>
				<th>Product</th>
				<th>Attribute</th>
				<th>Value</th>
				<th>Unit</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${values}" var="value">
				<tr>
					<td>${value.id}</td>
					<td>${value.product.name}</td>
					<td>${value.attribute.name}</td>
					<td>${value.value}</td>
					<td>${value.attribute.unit}</td>
					<td><a
						href="http://localhost:8080/IDCE/productAttributeValue/edit/${value.id}" class="btn btn-warning" role="button">Edit</a>
						<a
						href="http://localhost:8080/IDCE/productAttributeValue/delete/${value.id}" class="btn btn-danger" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</table>


		
		<br> <a href="http://localhost:8080/IDCE/productAttributeValue/add"
			class="btn btn-success" role="button">Add
				Product Attribute Value</a>



		<br> <a href="http://localhost:8080/IDCE/db" >Back
			to DataBase management menu</a>
	</div>
</body>
</html>