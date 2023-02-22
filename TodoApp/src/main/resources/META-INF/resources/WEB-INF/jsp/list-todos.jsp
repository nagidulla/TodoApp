<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/list-todos.css">
<title>My Todos</title>
</head>
<body>


	<%@ include file="common/navigation.jspf" %>

	<div class="container">


		<h1>My TODOs</h1>

		<div class="table-horizontal-container">
			<table class="unfixed-table" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>Goal</th>
						<th>Target Date</th>
						<th>Done?</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">.
        
        				<tr>
							<td>${todo.getId()}</td>
							<td>${todo.getDescription()}</td>
							<td>${todo.getTargetDate()}</td>
							<c:choose>
								<c:when test="${todo.isDone()}">
									<td>Yes</td>
								</c:when>
								<c:otherwise>
									<td>No</td>
								</c:otherwise>

							</c:choose>

							<td><button onclick="deleteFunc(${todo.getId()})" class="btn">Delete</button></td>
							<td><button onclick="updateFunc(${todo.getId()})" class="btn">Update</button></td>
						</tr>
					</c:forEach>
				<tbody>
			</table>
		</div>
	</div>
</body>

<script>

function deleteFunc(id) {
	window.location.href = "delete-todo?id="+id;
}

function updateFunc(id) {
	
	window.location.href = "update-todo?id="+id;
}


function logoutFunc() {
	window.location.href = "logout";
}
</script>
</html>