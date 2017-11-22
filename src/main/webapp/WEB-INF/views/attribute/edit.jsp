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

			<h1>Edit Attribute</h1>
			<f:form method="post" modelAttribute="attribute"
				class="col-xs-9 well">

				<div class="form-group">
					<label class="control-label">Name:</label>
					<f:input path="name" class="form-control" />
					<f:errors path="name" cssClass="error" />
				</div>
				
				<div class="form-group">
					<label class="control-label">Unit:</label>
					<f:input path="unit" class="form-control" />
					<f:errors path="unit" cssClass="error" />
				</div>


				<div class="form-group">
					<label class="control-label">Categories Applying:</label>
					<f:select path="categories" class="form-control" multiple="true">
						<f:option value="0" label="---No Category category---" />
						<f:options itemValue="id" itemLabel="name" items="${allCategories}" />
					</f:select>
				</div>




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
						Edited Attribute</button>

				</div>
			</f:form>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/category/list">back</a>
		</div>

	</div>

</body>
</html>