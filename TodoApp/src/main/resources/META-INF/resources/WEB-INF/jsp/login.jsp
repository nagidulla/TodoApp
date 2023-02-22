


<!DOCTYPE html>
<html>
<head>
<!-- Design by foolishdeveloper.com -->
<title>Login - TODO</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
	
<link rel="stylesheet" href="css/login.css">

</head>
<body>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form method="post">
		<h3>Login Here</h3><br>
		<div class="error">
		
			<p id="errorMessage"> ${errorMsg}</p>
		
		</div>
		<label for="username">Username</label> 
		<input type="text"
			placeholder="Email or Phone" id="username" name="username">
		 <label for="password">Password</label> 
		 <input type="password"
			placeholder="Password" id="password" name="password">
			
		<button type="submit">Log In</button>
		<div class="forgetPassword" >
		<a href="">Forget Password?</a>
		</div>
	</form>
</body>
</html>