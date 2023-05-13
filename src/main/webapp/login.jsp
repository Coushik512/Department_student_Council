<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.project.service.login_dataservice" %>
    <%@ page import="com.project.controller.login_servlet" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<link rel="stylesheet" href="/Department_student_council/css/loginstyle.css" type="text/css">
</head>
<body>
<center><h1>LOGIN-PORTAL</h1></center>

<div>
  
  
  
    <label for="e">EMAIL</label>
    <input type="text" id="e" name="email" placeholder="Your Email">

    <label for="p">PASSWORD</label>
    <input type="password" id="p" name="password" placeholder="Your Password">
  
    <input type="submit" id="sub1" value="Submit">
  
</div>


<script  src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script>
	$(document).ready(function(){
		
		var x=$("#sub1");
		x.on("click",function(){
		
			var email=$("#e").val();
			var password=$("#p").val();
			
			console.log(email);console.log(password);
			$.post({
				url:"login_servlet",
				data:{  e:email,  p:password},
				success:function(e){
					console.log(e);
					if(e==1)
					   {
					   	
					   	window.location="success.jsp"
					   	
					   	 
					   	
					   }
					   else
					   {
						   window.location="failure.jsp"
					   }
					
					}
				
			})
		})
	})
</script>





</body>
</html>