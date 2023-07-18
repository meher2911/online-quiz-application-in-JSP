<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>index page</title>
  <link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>
<%@include file="header.jsp"%>
<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
  <% 
  					session.setAttribute("islogin", null);
					if(request.getAttribute("usernameExist")!=null){
					out.print("<center><font size='5' color='red'>");
					out.print(request.getAttribute("usernameExist"));
					out.print("</font></center>");
					}
					%>
					
					  <% 
					if(request.getAttribute("error")!=null){
					out.print("<center><font size='5' color='red'>");
					out.print(request.getAttribute("error"));
					out.print("</font></center>");
					}
					%>
					
					
 <!-- login -->
    <div class="overlay hidden" onclick="close()"></div>
    <div class="login hidden">
      <button class="close" onclick="closelogin()">&times;</button>
      <h2 class="login-heading">login</h2>
      <form method="post" action="loginprocess.jsp">
        <div class="uname">
          <input
            type="text"
            id="name"
            name="username"
            placeholder="enter username"
          />
        </div>
        <div class="pswd">
          <input
            type="password"
            id="pwd"
            name="password"
            placeholder="enter password"
          />
        </div>
    
        <!-- <a class="forget-pass" href="#">forget password?</a> -->
        <button id="sub" type="submit">login</button>
        <div class="remember">
          <input type="checkbox" />
          <span>remember me</span>
        </div>
      </form>
      <p class="registernow">
        Not signed-up yet? <a onclick="opensignupfromlogin()">Register now</a>
      </p>
    </div>

    <!-- signup -->
    <div class="signup hidden">
      <button class="close1" onclick="closesignup()">&times;</button>
      <h2 class="login-heading">Register</h2>
      <div id="location"></div>
      <form method="post" action="registerprocess.jsp">
        <div class="uname">
          <input
            type="text"
            id="name"
            name="name"
            placeholder="enter full name"
          />
        </div>
        <div class="gmail">
          <input
            type="email"
            id="gmail"
            name="email"
            placeholder="enter valid email"
          />
        </div>
        <div class="setusername">
          <input
            type="text"
            id="uname"
            name="username"
            onkeyup="sendInfo()"
            placeholder="set username"
          />
        </div>
        <div class="pswd">
          <input
            type="password"
            id="pwd"
            name="password"
            placeholder="set password"
          />
        </div>
        <div class="pswd">
          <input
            type="password"
            id="conpwd"
            name="conpassword"
            placeholder="confirm password"
          />
        </div>
        <div class="category">
        <label for="category" style="font-size:33px">category :</label>
          <select id="category" name="category">
          <option>student</option>
          <option>teacher</option> 
          </select>
        </div>
        
        <button id="sub" type="submit">Sign up!</button>
      </form>
      <p class="registernow">
        Already registered? <a onclick="openloginfromsignup()">login now!</a>
      </p>
    </div>
     
     <div class="firstsection">
     <h1 id="fs-heading">Generate quiz anywhere!</h1>
     <p id="fs-text">QuizG provides you a platform where you can generate quiz in few simple steps and also take that quiz on the same platform for free!</p>
     <button class="signup-button" onclick="opensignup()">Get started!</button>
     </div>
     
     
     <div id="how">
     <div id="howcontainer1">
     <span class="subheading">how our site works</span>
     <div id="createquizsec" class="howcontainer2">
     
          <div id="quiz-text">
            <h3>
              create quiz in few simple steps
            </h3>
            <p class="textdescription">
              log in to our website and create quiz by just giving us the quiz name and add questions to the quiz with its options and answers. Your quiz will be generated with a unique name which can be used to access that quiz!
            </p>
            <button class="signup-button b1" onclick="opensignup()">create quiz!</button>
          </div>
          
          <div class="quiz-img">
            <img
              src="scripts/cquizimg.jpg"
              class="take-img"
              alt="create quiz image"
            />
          </div>

         
          <div id="takequizsec" class="quiz-img">
            <img
              src="scripts/tquizimg.jpg"
              class="take-img"
              alt="take quiz image"
            />
          </div>
          
          <div id="quiz-text">
            <h3>
              Give quiz in few simple steps
            </h3>
            <p class="textdescription">
              log in to our website, enter the subject name then select the quiz you want to give and start giving answers and get results with descriptions at the end!
            </p>
            <button class="signup-button b1" onclick="opensignup()">take quiz!</button>
          </div>
          </div>
     </div>
     </div>
     
     <div id="aboutus">
     <h3>About us</h3>
     <p class="aboutustext">QuizG provides a platform where you can create multiple quiz with any number of questions if you registered as a teacher and if you are registered as a student you can give quiz by entering the subject name and then select any quiz from the suggestions and get results with description at the end.</p>
     </div>
     
     <footer>
     <a href=# class="footer-links">FAQ | </a>
     <a href=# class="footer-links">Contact us | </a>
     <a href=# class="footer-links">terms of service | </a>
     <a href=# class="footer-links">Privacy policy </a>
     </footer>
     <script src="scripts/script1.js"></script>
</body>
</html>