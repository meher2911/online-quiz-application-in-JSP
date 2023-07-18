<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuizG</title>
<link rel="stylesheet" href="css/style1.css" />
</head>
<body>
<header>
      <a href="#" class="logo">QuizG</a>
      <nav class="main-nav">
        <ul class="main-nav-list">
          <li><a class="main-nav-link" href="#howcontainer1">how it works</a></li>
          <li>
            <a class="main-nav-link" href="createquiz1.jsp">generate quiz</a>
          </li>
          <li>
            <a class="main-nav-link" href="#aboutus">About us</a>
          </li>
          <li>
          <form method="post" action="logout.jsp">
          <button class="login-button" type="submit">logout</button></li>
          </form>
        </ul>
      </nav>
    </header>
    <%
System.out.println(session.getAttribute("islogin"));
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
	<div class="firstsection">
     <h1 id="fs-heading">welcome to QuizG!</h1>
     <p id="fs-text">Create multiple quiz on our platform with few simple steps for free!</p>
     <form method="post" action="createquiz1.jsp">
	<button class="signup-button" type="submit">create quiz</button>
	</form>
     </div>
     
     <div id="howcontainer1">
     <span class="subheading">steps to create a quiz</span>
     <ul class="createsteps">
     <li>Click on the create quiz button which will take you to a new page.</li>
     <li>on the new page you need to enter the subject name of the quiz and the number of questions.</li>
     <li>click on 'enter questions' button to start adding the questions of the quiz</li>
     <li>enter the questions, four options and select the option which is the answer</li>
     <li>descriptions is not mandatory.</li>
     <li>click on the next button till you have entered all the questions.</li>
     <li>A success message will be displayed if the quiz is created successfully</li>
     </ul>
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
</body>
</html>