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

	<div style="padding-left: 15px">
	<%@ include file="../../../WEB-INF/header.jsp" %>
		<div>
		
			<h1>Edit category</h1>
			<f:form method="post" modelAttribute="category" class="col-xs-9 well">

				<div>
					<f:errors path="*" class="has-error" />
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
					<label class="control-label">Subcategory of:</label>
					<f:select path="parent" class="form-control">
						<f:option value="0" label="---No parent category---" />
						<f:options itemValue="id" itemLabel="name" items="${parents}" />
					</f:select>
				</div>
				<div>
					<input type="submit" value="Save edited category" class="btn btn-success">
				</div>
			</f:form>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/category/list">back</a>
		</div>

	</div>

</body>
</html>