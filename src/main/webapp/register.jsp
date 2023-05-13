<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER</title>
<link rel="stylesheet" href="/Department_student_council/css/registerstyle.css" type="text/css">
</head>
<body>
<center><h1>REGISTER-PORTAL</h1></center>

<div>
  
  <label for="name">NAME</label>
    <input type="text" id="n" name="name" placeholder="Your Name">
    <label for="email1">EMAIL</label>
    <input type="text" id="e1" name="email1" placeholder="Your Email">

    <label for="password1">PASSWORD</label>
    <input type="password" id="p1" name="password1" placeholder="Your Password">
    
      <label for="council">COUNCIL ACTIVITIES</label>
    <select id="council" name="council" >
      
      <option value="POSTER DESIGNING TEAM">POSTER DESIGNING TEAM</option>
      <option value="ADVERTISEMENT TEAM">ADVERTISEMENT TEAM</option>
      <option value="LOGISTICS">LOGISTICS</option>
      <option value="VIDEO EDITING TEAM">VIDEO EDITING TEAM</option>
      <option value="CHIEF GUEST APPROACHING TEAM">CHIEF GUEST APPROACHING TEAM</option>
      <option value="REFRESHMENT TEAM">REFRESHMENT TEAM</option>
       <option value="ACCOMMADATION TEAM">ACCOMMADATION TEAM</option>
        <option value="EVENT PLANNING TEAM">EVENT PLANNING TEAM</option>
    </select>
  
    <input type="submit" id="sub2" value="Submit">

</div>

<script  src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script>
	$(document).ready(function(){
		var x=$("#sub2");
		x.on("click",function(){
			var name=$("#n").val();
			var email=$("#e1").val();
			var password=$("#p1").val();
			var council =$("#council").val();
			console.log(name);console.log(email);console.log(password);console.log(council);
			$.post({
				url:"controller",
				data:{ n:name, e1:email,  p1:password,c:council},
				success:function(e){
					
					console.log(e);
					window.location ="register_success.jsp"
					}
				
			})
		})
	})
</script>






</body>
</html>