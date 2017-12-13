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
			<h1>All projects</h1>

			<table class="table table-bordered well">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Created</th>
					<th>Updated</th>
					<th>Choose to work with the Project</th>

				</tr>

				<c:forEach items="${allProjects}" var="project">
					<tr>
						<td>${project.id}</td>
						<td>${project.name}</td>
						<td>${project.created}</td>
						<td>${project.saved}</td>
						<td><a
							href="http://localhost:8080/IDCE/project/build/${project.id}"
							class="btn btn-info" role="button">Choose</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div style="clear: both" style="padding-left: 15px">
			<a href="http://localhost:8080/IDCE/project">back to Project
				HomePage</a>
		</div>

	</div>

</body>
</html>