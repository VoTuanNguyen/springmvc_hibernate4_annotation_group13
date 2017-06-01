<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Registration Form</title>

	<style>

		.error {
			color: #ff0000;
		}
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<style type="text/css">
		.myrow-container{
			margin: 20px;
		}
	</style>

</head>

<body class=".container-fluid">

<div class="container myrow-container">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">
				Student Details
			</h3>
		</div>
		<div class="panel-body">
			<form:form method="POST" modelAttribute="student">
				<form:input type="hidden" path="id" id="id"/>

				<div class="row">
					<div class="control-label col-xs-3"><label for="name">Name </label> </div>
					<div class="col-xs-6"><form:input class="form-control" path="name" id="name"/></div>
					<div class="col-xs-3"><form:errors path="name" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="control-label col-xs-3"><label for="enteringDate">Date of birth </label> </div>
					<div class="col-xs-6"><form:input class="form-control" path="enteringDate" id="enteringDate"/></div>
					<div class="col-xs-3"><form:errors path="enteringDate" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="control-label col-xs-3"><label for="gender">Gender </label> </div>
						<%--<td><form:input path="gender" id="gender"/></td>--%>
					<div class="col-xs-6">
						<%--<select class="form-control" id="gender">
							<option path="gender" name="gender" value="Nam">Male</option>
							<option path="gender" name="gender" value="N&#7919;">Female</option>
						</select>--%>
						<c:choose>
							<c:when test="${male}">
								<div path="gender" id="gender">
									<input type="radio" name="gender" value="Nam" checked>Male
									<input style="margin-left: 50px;" type="radio" name="gender" value="N&#7919;">Female
								</div>
							</c:when>
							<c:otherwise>
								<div path="gender" id="gender">
									<input type="radio" name="gender" value="Nam">Male
									<input style="margin-left: 50px;" type="radio" name="gender" value="N&#7919;" checked>Female
								</div>
							</c:otherwise>
						</c:choose>
						<%--<form:input class="form-control" path="gender" id="gender"/>--%>
					</div>
					<div class="col-xs-3"><form:errors path="gender" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="control-label col-xs-3"><label for="nationality">Nationality </label> </div>
					<div class="col-xs-6"><form:input class="form-control" path="nationality" id="nationality"/></div>
					<div class="col-xs-3"><form:errors path="nationality" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="control-label col-xs-3"><label for="address">Address </label> </div>
					<div class="col-xs-6"><form:input class="form-control" path="address" id="address"/></div>
					<div class="col-xs-3"><form:errors path="address" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="control-label col-xs-3"><label for="code">MSSV </label> </div>
					<div class="col-xs-6"><form:input class="form-control" path="code" id="code"/></div>
					<div class="col-xs-3"><form:errors path="code" cssClass="error"/></div>
				</div><br>

				<div class="row">
					<div class="col-xs-5"></div>
					<div class="col-xs-2">
						<c:choose>
							<c:when test="${edit}">
								<input type="submit" value="Update" class="btn btn-primary"/>
							</c:when>
							<c:otherwise>
								<input type="submit" value="Register" class="btn btn-primary"/>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-xs-5"></div>
				</div>
			</form:form>
			<br/>
			<br/>
			Go back to <a href="<c:url value='/list' />">List of All Students</a>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>