<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="master.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>MLB Spring Boot Database App</title>
</head>
<body>
  
  <header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">


      <!-- Masthead Heading -->
      <h1 class="masthead-heading text-uppercase mb-0">MLB Players</h1>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Masthead Subheading -->
      <p class="masthead-subheading font-weight-light mb-0"> Spring Boot Database App</p>

    </div>
  </header>
 

 
<br>
	<br> 
	
        
	<!-- Player lookup Card -->
        <div class="card" style="width: 18rem;">
  <img src="https://i.pinimg.com/originals/83/49/4a/83494af8cd9ca41136b99d34b9586512.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Player Lookup</h5>
    <p class="card-text">Find a player by team, name, or ID.</p>
    <a href="playerLookup.do" class="btn btn-primary btn-block btn-lg">Search</a>
  </div>
</div>
	<!-- Add A Player Card -->
        <div class="card" style="width: 18rem;">
  <img src="https://thumbs.dreamstime.com/b/baseball-hit-ball-disintegrating-65434168.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Add A Player</h5>
    <p class="card-text">Add a new player to the database.</p>
    <a href="playerCreate.do" class="btn btn-primary btn-block btn-lg">Search</a>
  </div>
</div>

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