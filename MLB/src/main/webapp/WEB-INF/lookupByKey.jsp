<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="master.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Lookup Players By Key Word</title>
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

	<h1>Lookup Players By Key Word</h1>

	<div class="container">
		<div class="row">
			<!-- Player lookup Card -->
			<div class="col-lg-4 col-lg-push-4">
				<div class="card" style="width: 18rem;">
					<img
						src="https://i.pinimg.com/originals/83/49/4a/83494af8cd9ca41136b99d34b9586512.jpg"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">Player Lookup</h5>
						<p class="card-text">Find a player by team, name, or ID.</p>
						<a href="playerLookup.do" class="btn btn-primary btn-block btn-lg">Search</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4"></div>
			<!-- Add A Player Card -->
			<div class="col-lg-4 col-lg-pull-4">
				<div class="card" style="width: 18rem;">
					<img
						src="https://thumbs.dreamstime.com/b/baseball-hit-ball-disintegrating-65434168.jpg"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">Add A Player</h5>
						<p class="card-text">Add a new player to the database.</p>
						<a href="playerCreate.do" class="btn btn-primary btn-block btn-lg">Search</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<form:form action="playersByKey.do" method="GET">
					<div class="form-group">
						<label for="key">Team Name, First Name, or Last Name</label> <input
							type="text" name="key" class="form-control"
							placeholder="Enter key word to search">
					</div>
					<button type="submit" class="btn btn-primary btn-block btn-lg">Search</button>
				</form:form>
			</div>
			<div class="col-3"></div>
		</div>
		<div class="container">
			<br>
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<form action="/" method="get">
						<button class="btn btn-success btn-block btn-lg">Back to
							Home</button>
					</form>
				</div>
				<div class="col-3"></div>
			</div>
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