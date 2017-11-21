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


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>
<div style="padding-left: 15px">
		<%@ include file="../../../WEB-INF/header.jsp"%>

	
	<h3>DATABASE MANAGEMENT</h3>
	
	
	<a href="http://localhost:8080/IDCE/category/list"> <div class="well well-nl col-xs-3" style="clear: both">Manage Categories</div> </a> <br>
	<a href="http://localhost:8080/IDCE/attribute/list"> <div class="well well-nl col-xs-3" style="clear: both">Manage Attributes</div> </a> 
	<a href="http://localhost:8080/IDCE/product/list"> <div class="well well-nl col-xs-3" style="clear: both">Manage Products</div> </a> 
	<a href=""> <div class="well well-nl col-xs-3" style="clear: both">---Manage AttributeValues</div> </a> 
	
	<div style="clear: both">
	<br>
	<a href="http://localhost:8080/IDCE/">Back to HomePage</a>
	</div>
	</div>
	

</body>
</html>