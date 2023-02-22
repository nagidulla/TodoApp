<!DOCTYPE html>
<html>
<head>
<title>Contact Me</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/contact.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>



	<%@ include file="common/navigation.jspf" %>
	<h2>Contact Me</h2>
	<div class="card">
		<img
			src="C:\Users\dulkumar\Desktop\nagendra sai kumar dulla_46263924.jpg"
			alt="Avatar" style="width: 100%">
		<div class="container">
			<h4>
				<b>Nagendra S K D</b>
			</h4>
			<p>Senior Software Engineer</p>

			<h4>
				<b>Details</b>
			</h4>
			<i class="fa fa-phone"> +123456789</i><br><br> <i
				class="fa fa-envelope"> nagendrasaikumardulla@gmail.com</i><br><br>
			<i class="fa fa-linkedin-square">  <a
				href="https://www.linkedin.com/in/nagendra-sai-kumar-dulla-864b901a8" >Profile</a></i>
		</div>
	</div>
</body>
<script>

function logoutFunc() {
	window.location.href = "logout";
}

</script>

</html>
