<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ABOUT</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>Electronics and Instrumentation Department Student's Council</h1>
  <h4>Puducherry Technological University</h4>
 
</div>

<h2 style="text-align:center">Events Conducted</h2>
<div class="row">

  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>JAM-Technical</h2>
        <p class="title">Just A Minute</p>
        <p>Just a Minute is an impromptu speech event which focusses on how the
participants express their ideas within a minute with perfect control over their
speech pattern.</p>
       
        <p><a href="https://en.wikipedia.org/wiki/Jam_session#:~:text=To%20%22jam%22%20is%20to%20improvise,covers%20of%20existing%20popular%20songs."><button class="button">Know More</button></a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>IN-QUIZIN-TIME</h2>
        <p class="title">Technical-quiz(group event)</p>
        <p>The rules for the quiz will be discussed at the venue, teams of three are
permitted andno restriction on inter-departmental teams, only restriction is all team
mates should be in the same year of study.</p>
       
        <p><a href="https://www.investintech.com/resources/blog/archives/8157-tech-quiz-fun.html"><button class="button">Know more</button></a></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
    
      <div class="container">
        <h2>Debate</h2>
        <p class="title">Debate on current affairs around the globe.</p>
        <p>To those exploring for opportunities to enhance your debating skills,
explore no more, and sign up right here! The format for the debate will be
informed by the student mentors on the day of the event</p>
     
        <p><a href="https://en.wikipedia.org/wiki/Debate#:~:text=Debate%20is%20a%20process%20that,forward%20for%20common%20opposing%20viewpoints."><button class="button">Know more</button></a></p>
      </div>
    </div>
  </div>
</div>
<div class="row">

  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Group discussion</h2>
        <p class="title">A topic to be dealt within that stipualted time</p>
        <p>Groups will be formed by the student mentors, a topic is provided and the
discussion is begun, and will continue to wind down the road taken by each individual
participant’scontribution to the discussion.</p>
     
        <p><a href="https://en.wikipedia.org/wiki/Discussion_group#:~:text=A%20discussion%20group%20is%20a,solve%20problems%2C%20or%20make%20comments."><button class="button">Know more</button></a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2>VISION FOR THE FUTURE</h2>
        <p class="title">A futuristic talk is encouraged!</p>
        <p>The agent of change in all facets of life on campus are woven together,
the fabric which encompasses the entire story. You are welcome to share your vision
on any thread of the fabric of college life, your vision for the future, the future of
this campus which we were all introduced to experience the way of life, a future for
all to believe in. Participants are also encouraged to use visual aids to whilst
explaining their ‘VISION FOR THE FUTURE.
</p>
        
        <p><a href="https://en.wikipedia.org/wiki/Visions_of_the_Future"><button class="button">Know more</button></a></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2>TRIVIA-QUIZ</h2>
        <p class="title">Non-Technical quiz</p>
        <p>The rules for the quiz will be discussed at the venue, teams of three are permitted
and no restriction on inter-departmental teams, only restriction is all team mates should be in the same
year of study. Questions will be from famous movies / series / software games.</p>
       
        <p><a href="https://en.wikipedia.org/wiki/Quiz"><button class="button">Know more</button></a></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
