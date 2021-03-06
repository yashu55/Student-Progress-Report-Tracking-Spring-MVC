<%@page import="com.cdac.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@  include file="MaintainSessionTeacherNonAdmin.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<title>Teacher Home</title>
</head>

<body class="bg-light">

	<!-- NavBar -->
	<jsp:include page="navbar.jsp" />

	<!-- Teacher home -->
	<div class="container-fluid my-4">
		<div class="row justify-content-around my-4">

			<div class="col-md-5 bg-light shadow px-4 py-4">
				<h1 class=" display-1 text-secondary text-center">
					<i class="fa fa-book"></i>
				</h1>
				<a class="btn btn-outline-secondary btn-block"
					href="LoggedTeacherModuleInfo" role="button">Module Info</a>
			</div>
			<div class="col-md-5 bg-light shadow px-4 py-4">
				<h1 class=" display-1 text-warning text-center">
					<i class="fa fa-chalkboard-teacher"></i>
				</h1>
				<a class="btn btn-outline-warning btn-block"
					href="LoggedTeacherTeacherInfo" role="button">Teacher Info</a>
			</div>


		</div>

		<div class="row justify-content-around my-4">
			<div class="col-md-5 bg-light shadow px-4 py-4">
				<h1 class=" display-1 text-success text-center">
					<i class="fa fa-tasks"></i>
				</h1>
				<br>
				<br>
				<a class="btn btn-outline-success btn-block"
					href="LoggedTeacherAddTask" role="button">Add Task</a>
			</div>

			<div class="col-md-5 bg-light shadow px-4 py-4">

				<h1 class=" display-1 text-primary text-center">
					<i class="fa fa-search"></i>
				</h1>
				<form class="was-validated" action="LoggedTeacherEvaluateStudent">
					<div class="form-group">
						<label></label> <select class="form-control" id="studentRollNo"
							name="studentRollNo" required>
							<%
								List<Student> studentList = (List<Student>) request.getAttribute("Student_List");
								for (Student student : studentList) {
							%>
							<option value="<%=student.getStudentRollNo()%>"><%=student.getStudentRollNo()%>
								(
								<%=student.getStudentName()%>)
							</option>
							<%
								}
							%>
						</select>
					</div>
					<div class="form-group my-4">
						<button type="submit" class="btn btn-block btn-outline-info">Progress
							Report</button>
					</div>

				</form>


			</div>
		</div>



	</div>







	<br>


	<!-- Footer -->
	<%@ include file="footer.htm"%>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>