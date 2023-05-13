<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ENROLL</title>
<link rel="stylesheet" href="/Department_student_council/css/enrollstyle.css" type="text/css">
</head>
<body>
<div id="main">
  
  <!-- Banner for the background -->
  <div id="banner"></div>
  
  <!-- Content of the form -->
  <div class="content">
   
        
      <!-- Purple banner at the top of the form -->
        <div id="form-banner"></div>
        <div id="form-content">
          
          <!-- Start of header -->
          <h1 id="title">EIE Student Council Event Registration</h1>
          <p id="description">Great news for all students! In ONE DAY, we have 3 WORKSHOPS lead by experienced speakers .Simply choose one of these workshops you're interested to join.</p>
          <!-- End of header -->
          
          <!-- Start of Name label & input -->
          <div class="items">
            <div class="labels">
              <label id="name-label" for="name">Name <span class="red-star">*</span></label>
              <div class="input-field">
                <input class="input" autofocus type="text" name="name" id="name" required placeholder="Enter your name">
             
                <div class="underline"></div>
              </div>
            </div>
          </div>
      <!-- End of Name label & input -->
      
      <!-- Start of Email label & input -->
          <div class="items">
            <div class="labels">
              <label id="email-label" for="email">Email <span class="red-star">*</span></label>
              <div class="input-field">
                <input class="input" type="email" name="email" id="email" required placeholder="Enter your Email">
              
                <div class="underline"></div>
              </div>
            </div>
          </div>
    <!-- End of Email label & input -->
    
    <!-- Start of Age label & input -->
          <div class="items">
            <div class="labels">
              <label id="number-label" for="age">Age <span class="red-star">*</span></label>
              <div class="input-field">
                <input class="input" type="number" name="age" id="number" min="1" max="100" placeholder="Enter your age">
            
                <div class="underline"></div>
              </div>
            </div>
          </div>
  <!-- End of Name label & input -->
          
  <!-- Start of Dropdown label & input -->
          <div class="items">
            <div class="labels">
              <label for="currentPos">Which option best describes your current program?</label><br>
                <select name="currentPos" id="dropdown">
                  <option disabled value>Select an option</option>
                  <option value="ug">Undergraduate Student</option>
                  <option value="mba">MBA Student</option>
                  <option value="pg">Postgraduate Student</option>
                </select>
            </div>
          </div>
  <!-- End of Dropdown label & input -->
  
  <!-- Start of Radio button label & input -->
          <div class="items">
            <div class="labels">
              <label  for="workshop">Choose the workshop you wish to attend <span class="red-star">*</span></label>
              <select name="workshop" id="workshop">
                  <option disabled value>Select an option</option>
                  <option value="Laravel web development">Laravel web development</option>
                  <option value="Mobile application development">Mobile application development</option>
                  <option value="Arduino">Arduino</option>
                </select>
              
            </div>
          </div>
  <!-- End of Radio button label & input -->
  
  <!-- Start of Checkbox label & input -->
          <div class="items">
              <div class="labels">
                <label  for="diet">Food diet or allergy (Check all that apply):</label>
                
                 <select name="diet" id="diet">
                  <option disabled value>Select an option</option>
                  <option value="Vegetarian">Vegetarian</option>
                  <option value="Vegan">Vegan</option>
                  <option value="Non-Vegetarian">Non-Vegetarian</option>
                </select>
                
              </div>
          </div>

  <!-- End of Dropdown label & input -->
        </div>
        <div style="text-align: center;">
            <button id="submit" type="submit">Submit</button>
        </div>
  
  </div>
</div>

<script  src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script>
	$(document).ready(function(){
		var x=$("#submit");
		x.on("click",function(){
			var name=$("#name").val();
			var email=$("#email").val();
			var number=$("#number").val();
			var programme=$("#dropdown").val();
			var workshop_intrested =$("#workshop").val();
			var food =$("#diet").val();
			console.log(name);console.log(email);console.log(number);console.log(programme);console.log(workshop_intrested);console.log(food);
			$.post({
				url:"enroll_servlet",
				data:{ n:name, e:email, nu:number, p:programme, w:workshop_intrested, f:food},
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
