<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student List</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="left"><b><h2>List of Students</h2></b> </div>
                <div align="right"><a href="/new" >Add New Student</a></div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty students}">
                There are no Student
            </c:if>
            <c:if test="${not empty students}">           	
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Name</th>
                        <th>Date of birth</th>
                        <th>Gender</th>
                        <th>Nationality</th>
                        <th>Address</th>
                        <th>MSSV</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${students}" var="student">
							<tr>
							<td>${student.name}</td>
							<td>${student.enteringDate}</td>
							<td>${student.gender}</td>
							<td>${student.nationality}</td>
							<td>${student.address}</td>
							<td><a href="<c:url value='/edit-${student.code}-student' />">${student.code}</a></td>
							<td><a href="<c:url value='/delete-${student.code}-student' />">delete</a></td>
							</tr>
						</c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <%-- <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
     --%>

</body>
</html>