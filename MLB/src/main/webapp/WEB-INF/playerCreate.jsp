<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="Result.css">
<title>Add New Player</title>
</head>
<body>

	<header class="masthead bg-dark text-white text-center">
		<div class="container d-flex align-items-center flex-column">

			<!-- Masthead Heading -->
			<h1 class="masthead-heading text-uppercase mb-0">MLB Players</h1>

			<!-- Masthead Subheading -->
			<p class="masthead-subheading font-weight-light mb-0">Spring Boot
				Database App</p>

		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<h1 style="color: red">Add a New Player</h1>
				<c:choose>
					<c:when test="${createStatus}">
						<h2>Player Creation Failed!</h2>
					</c:when>
				</c:choose>
				<div class="col-4"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="playerCreate.do" method="POST">
					<div class="form-group">
						<label class="label label-inverse" for="firstName">First
							Name</label> <input type="text" name="firstName" class="form-control"
							placeholder="First Name" required="required"> <br> <label
							for="lastName">Last Name</label> <input type="text"
							name="lastName" class="form-control" placeholder="Last Name"
							required="required"> <br> <label for="homeruns">Home
							Runs</label> <input type="text" name="homeruns" class="form-control"
							placeholder="Home Runs" required="required"> <br> <label
							for="rbi">RBI (runs batted in)</label> <input type="text"
							name="rbi" class="form-control" placeholder="RBI"
							required="required"> <br> <label
							for="battingAverage">Batting Average</label> <input type="text"
							name="battingAverage" class="form-control"
							placeholder="Batting Average" required="required"> <br>

						<label for="position">Position</label> <input type="text"
							name="position" class="form-control" placeholder="Position"
							required="required"> <br> <label for="team">Team</label>
						<input type="text" name="team" class="form-control"
							placeholder="Team" required="required"> <br> <label
							for="age">Age</label> <input type="text" name="age"
							class="form-control" placeholder="Age" required="required">
						<br> <label for="uniformNumber">Uniform Number</label> <input
							type="text" name="uniformNumber" class="form-control"
							placeholder="Uniform Number" required="required"> <br>
						<br>

					</div>
					<button type="submit" class="btn btn-primary btn-block btn-lg">Create</button>
				</form:form>
				<div class="col-2"></div>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form action="index.do" method="get">
					<button class="btn btn-success btn-block btn-lg">Back to
						Home</button>
				</form>
			</div>
			<div class="col-2"></div>
		</div>
	</div>

	<footer id="footer">
		<p>
			<em>Created by Kelly Cromeans</em>
		</p>

	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>