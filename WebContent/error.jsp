<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Error</title>
</head>

<body class="bg-light">

	<!-- NavBar -->


	<jsp:include page="navbar.jsp" />



	<div class="container-fluid mb-4 mt-4">
		<div class="row justify-content-around">

			<!--Login Page -->
			<div class="col-md-7 bg-light shadow p-4">
				<h2 class="display-4 ">
					<i class="fa fa-exclamation-circle"></i> OOPs!!! 
				</h2>
				<h2 >
					An Error has
					occurred!! Error code: 404
				</h2>

				<p class="text-secondary">We cannot find what you are looking
					for.</p>
				<hr>
				

			</div>
		</div>
	</div>










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