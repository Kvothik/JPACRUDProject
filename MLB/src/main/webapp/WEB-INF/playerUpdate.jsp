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
<title>Update Player</title>
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
<body>
	<h1>Update this Player</h1>

	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<c:choose>
					<c:when test="${updateStatus}">
						<h2>Film Update Failed!</h2>
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
				<form:form action="playerUpdate.do" method="POST" items="${player}">
					<div class="form-group">
						<input type="hidden" name="id" value="${player.id}" /> <label
							for="firstName">First Name</label> <input type="text"
							name="firstName" class="form-control" value="${player.firstName}">
						<br> <label for="lastName">Last Name</label> <input
							type="text" name="lastName" class="form-control"
							value="${player.lastName}"> <br> <label
							for="homeruns">Home Runs</label> <input type="text"
							name="homeruns" class="form-control" value="${player.homeruns}">
						<br> <label for="rbi">RBI</label> <input type="text"
							name="rbi" class="form-control" value="${player.rbi}"> <br>
						<label for="battingAverage">Batting Average</label> <input
							type="text" name="battingAverage" class="form-control"
							value="${player.battingAverage}"> <br> <label
							for="position">Position</label> <input type="text"
							name="position" class="form-control" value="${player.position}">
						<br> <label for="team">Team</label> <input type="text"
							name="team" class="form-control" value="${player.team}">
						<br> <label for="age">Age</label> <input type="text"
							name="age" class="form-control" value="${player.age}"> <br>
						<label for="uniformNumber">Uniform Number</label> <input
							type="text" name="uniformNumber" class="form-control"
							value="${player.uniformNumber}"><br>
					</div>
					<button type="submit"
						class="btn btn-outline-warning btn-block btn-lg">Update
						Player</button>
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
				<form action="/" method="get">
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