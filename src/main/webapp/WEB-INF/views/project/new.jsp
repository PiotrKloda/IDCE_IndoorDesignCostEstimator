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
			<h1>New project</h1>
			<f:form method="post" modelAttribute="cart"
				class="col-xs-9 well">

				<div class="form-group">
					<label class="control-label">New project name:</label>
					<f:input path="name" class="form-control" />
					<f:errors path="name" cssClass="error" />
				</div>



				<div>
					<button type="submit" value="Submit" class="btn btn-success">Begin new project</button>
				</div>
			</f:form>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/project">back</a>
		</div>

	</div>

</body>
</html>