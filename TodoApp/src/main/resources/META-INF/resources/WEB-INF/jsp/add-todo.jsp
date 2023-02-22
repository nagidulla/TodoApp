
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/add-todo.css">
<title>ADD TODO</title>
</head>
<body>
<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>

		<form:form method="post" modelAttribute="todo">
			<h3>ADD YOUR TODO</h3>
			<br>
			<form:label for="Goal" path="goalErrorMsg">Goal</form:label> <form:input path="description" type="text"
				placeholder="Your Goal" id="goal" name="goal" />
			<form:errors path="description" cssClass="errorMessage" />
			<form:label for="TargetDate" path="dateErrorMsg">Target Date</form:label> <form:input type="date" path="targetDate"
				placeholder="Target Date" id="TargetDate" name="TargetDate" />
				
				<form:input type="hidden" path="id"/>
			 	<form:input type="hidden" path="done"/>
			 	
			 	<form:errors path="targetDate" cssClass="errorMessage"/>
				
			
			<button type="submit">Add</button>
		</form:form>
	</div>
</body>
</html>