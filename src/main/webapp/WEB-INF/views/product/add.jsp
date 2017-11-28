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

			<h1>Add product</h1>
			<f:form method="post" modelAttribute="product" class="col-xs-9 well">


				<div class="form-group">
					<label class="control-label">Category:</label>
					<f:select path="category" class="form-control">
						<f:option value="0" label="---Select Category---" />
						<f:options itemValue="id" itemLabel="name" items="${allCategories}" />
					</f:select><f:errors path="category" cssClass="error" />
				</div>



				<div class="form-group">
					<label class="control-label">Name:</label>
					<f:input path="name" class="form-control" />
					<f:errors path="name" cssClass="error" />
				</div>

				<div class="form-group">
					<label class="control-label">Description:</label>
					<f:textarea path="description" column="30" rows="2"
						class="form-control" />
					<f:errors path="description" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="control-label">Producent:</label>
					<f:input path="producent" class="form-control" />
					<f:errors path="producent" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="control-label">Price:</label>
					<f:input type="number" path="price" class="form-control" />
					<f:errors path="price" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="control-label">Quantity unit:</label>
					<f:input path="quantityUnit" class="form-control" />
					<f:errors path="quantityUnit" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="control-label">Photo Link:</label>
					<f:input path="linkToPhoto" class="form-control" />
					<f:errors path="linkToPhoto" cssClass="error" />
				</div>
				


				<%-- <div class="form-group">
					<label class="control-label">Subcategory of:</label>
					<f:select path="parent" class="form-control">
						<f:option value="0" label="---No parent category---" />
						<f:options itemValue="id" itemLabel="name" items="${parents}" />
					</f:select>
				</div> --%>

				<%-- <div>
			Attributes:
			<f:checkboxes itemValue="id" itemLabel="name" path="attributes"
				items="${attributes}" />
			<f:errors path="attributes" cssClass="error" />
		</div> --%>

				<!-- INTENTIONALLY DO NOT ADD POSSIBILITY TO ADD PRODUCTS - OPPOSITE DIRECTION - CATTEGORY CAN BE ASSIGNED TO NEW PRODUCT  -->

				<%-- 	<div>
			Attributes:
			<f:select itemValue="id" itemLabel="name" path="attributes"
				items="${attributes}" multiple="true"/>
			<f:errors path="attributes" cssClass="error" />
		</div> --%>

				<%-- <div>
			Publisher:
			<f:select itemValue="id" itemLabel="name" path="publisher"
				items="${publishers}" />
		</div>
		<div>
			Author:
			<f:select itemValue="id" itemLabel="lastName" path="author"
				items="${authors}" />
			<f:errors path="author" cssClass="error" />
		</div>
		<div>
			Author:
			<f:checkboxes itemValue="id" itemLabel="lastName" path="authors"
				items="${authors}" />
			<f:errors path="authors" cssClass="error" />
		</div>
		<div>
			Rating:
			<f:input path="rating" />
			<f:errors path="rating" cssClass="error" />
		</div>
		<div>
			Active:
			<f:radiobutton path="active" value="true" />
			<f:radiobutton path="active" value="false" />
		</div> --%>
				<div>

					<button type="submit" value="Submit" class="btn btn-success">Save
						Product</button>

				</div>
			</f:form>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/product/list">back</a>
		</div>

	</div>

</body>
</html>