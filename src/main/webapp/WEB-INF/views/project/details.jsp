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

			<h1>Project details: ${currentProject.name}</h1>
			<table class="table table-bordered well">
				<tr>
					<th>Feature</th>
					<th>Value</th>
				</tr>

				<tr>
					<td>Id</td>
					<td>${currentProject.id}</td>
				</tr>
				<tr>
					<td>Name</td>
					<td>${currentProject.name}</td>
				</tr>
				<tr>
					<td>Created</td>
					<td>${currentProject.created}</td>
				</tr>
				<tr>
					<td>Updated</td>
					<td>${currentProject.saved}</td>
				</tr>
			</table>





			<h3>
				Added products: <a
					href="http://localhost:8080/IDCE/productAttributeValue/addForProduct/${product.id}"
					class="btn btn-success" role="button">Add product</a>
			</h3>

			<%-- <table class="table table-bordered well">
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
			</table> --%>
			
			
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/project">back to Project
				HomePage</a>
		</div>

	</div>

</body>
</html>