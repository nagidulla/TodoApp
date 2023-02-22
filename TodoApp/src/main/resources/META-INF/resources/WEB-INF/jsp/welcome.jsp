<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/welcome.css">
<title>Home - TODO</title>
</head>
<body>

	<div class="background">
		<div class="shape"></div>
	</div>


<%@ include file="common/navigation.jspf" %>
			
		</div>

	<div class="container">
		<div class="content">
			<div class="text">
				<h1>
					Welcome ${name}<br> <span>Add TODOs Now</span>
				</h1>
				<p>Without leaps of imagination or dreaming, we lose the
					excitement of possibilities. Dreaming, after all is a form of
					planning.</p>
				<button class="btn" id="btn3" onclick="hrefFunc()">ADD</button>
			</div>
		</div>
		
	</div>
		
</body>

<script>
	function hrefFunc() {
		window.location.href = "add-todo";
	}
	function logoutFunc() {
		window.location.href = "logout";
	}
</script>
</html>