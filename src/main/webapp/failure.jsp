<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/Department_student_council/css/failure.css" type="text/css">
<link rel="stylesheet" href="/Department_student_council/css/button.css" type="text/css">
</head>
<body>

<div class="text">
  <h1>404</h1>
	<h2>Uh, Ohh</h2>
  <h3>Sorry check your login credentials..!!</h3>
</div>
<div class="torch"></div>
 <a href="home.jsp"><button class="button-49" role="button">HOME</button></a>
<script  src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script>
$(document).mousemove(function (event) {
	  $('.torch').css({
	    'top': event.pageY,
	    'left': event.pageX
	  });
	});
</script>

</body>
</html>