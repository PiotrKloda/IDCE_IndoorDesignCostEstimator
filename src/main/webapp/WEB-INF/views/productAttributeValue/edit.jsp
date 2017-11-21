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
	<%@ include file="../../../WEB-INF/header.jsp"%>
	<div style="padding-left: 15px">
		<div>
			<h1>Edit Product Attribute Value</h1>
			<f:form method="post" modelAttribute="productAttributeValue"
				class="col-xs-9 well">

				<div class="form-group">
					<label class="control-label">Product:</label>
					<f:select path="product.id" class="form-control">
						<f:option value="0" label="---Choose product---" />
						<f:options itemValue="id" itemLabel="name" items="${products}" />
					</f:select>
				</div>

				<div class="form-group">
					<label class="control-label">Attribute:</label>
					<f:select path="attribute.id" class="form-control">
						<f:option value="0" label="---Choose attribute---" />
						<f:options itemValue="id" itemLabel="name" items="${attributes}" />
					</f:select>
				</div>

				<div class="form-group">
					<label class="control-label">Value:</label>
					<f:input path="value" class="form-control" />
					<f:errors path="value" cssClass="error" />
				</div>

				<div>
					<button type="submit" value="Submit" class="btn btn-success">Save edited
						Product Attribute Value</button>
				</div>
			</f:form>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/productAttributeValue/list">back</a>
		</div>

	</div>

</body>
</html>