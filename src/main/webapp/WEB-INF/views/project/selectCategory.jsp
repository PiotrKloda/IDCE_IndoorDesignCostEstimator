<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
.error {
	background-color: red;
	color: white;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<%@ include file="../../../WEB-INF/headerProject.jsp"%>
	<div style="padding-left: 15px">
		<div>
			<h1>Current project: ${cart.name}</h1>
			<%-- <table class="table table-bordered well">
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
						<td>${product.linkToPhoto}</td> 
						<td><a
							href="http://localhost:8080/IDCE/product/${product.id}">Details</a></td>
						<td><a
							href="http://localhost:8080/IDCE/product/edit/${product.id}"
							class="btn btn-warning" role="button">Edit</a> <a
							href="http://localhost:8080/IDCE/product/delete/${product.id}"
							class="btn btn-danger" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</table> --%>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/productAttributeValue/list">back</a>
		</div>

	</div>

</body>
</html>