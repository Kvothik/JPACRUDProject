<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Player Results</title>
</head>
<body>
	<c:choose>
		<c:when test="${fn: length(player) gt 0}">
			<c:forEach var="p" items="${player}">
				<div class="table-responsive tableFixHead">
					<table
						class="table table-striped table-bordered table-hover text-align: center">
						<thead class="table-dark text-center">
							<tr>
								<td><strong>Player ID</strong></td>
								<td><strong>First Name</strong></td>
								<td><strong>Last Name</strong></td>
								<td><strong>Home Runs</strong></td>
								<td><strong>RBI (Runs batted in)</strong></td>
								<td><strong>batting average</strong></td>
								<td><strong>Position</strong></td>
								<td><strong>Team</strong></td>
								<td><strong>Age</strong></td>
								<td><strong>Uniform Number</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${p.getId()}</td>
								<td>${p.getFirstName()}</td>
								<td>${p.getLastName()}</td>
								<td>${p.getHomeruns()}</td>
								<td>${p.getRbi()}</td>
								<td>${p.getBattingAverage()}</td>
								<td>${p.getPosition()}</td>
								<td>${p.getTeam()}</td>
								<td>${p.getAge()}</td>
								<td>${p.getUniformNumber()}</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="3"><form action="playerUpdate.do" method="get">
										<button class="btn btn-outline-warning btn-block btn-lg"
											>Update this Player</button>
										<input type="hidden" name="id" value="${p.id}">
									</form></td>
								<td colspan="3"><form action="playerDelete.do" method="get">
										<button class="btn btn-outline-danger btn-block btn-lg"
											>Delete this Player</button>
										<input type="hidden" name="id" value="${p.id}">
									</form></td>
							</tr>
						</tfoot>
					</table>

				</div>
			</c:forEach>
		</c:when>


		<c:when test="${deleteStatus}">
			<h2>Player Delete Successful!</h2>
		</c:when>
		<c:otherwise>
			<h2>No Matching Player Found</h2>
		</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${updateStatus}">
			<h2>Player Update Successful!</h2>
		</c:when>
	</c:choose>

	<form action="/" method="get">
		<button class="btn btn-success btn-lg">Back to Home</button>
	</form>

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