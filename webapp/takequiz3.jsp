<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-student</title>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>
<p class="logo logoposition">QuizG</p>

<div id="tq2">
<%
String quizname = (String)session.getAttribute("quizname");
String sub = (String)session.getAttribute("subjectname");
out.println("<h3>Subject : "+sub+"</h3>");
out.println("<h3>quiz : "+quizname+"</h3>");
%>
<form method="post" action="takequiz4.jsp">
<% 
String question=(String)session.getAttribute("question");
String option1= (String)session.getAttribute("option1");
String option2= (String)session.getAttribute("option2");
String option3= (String)session.getAttribute("option3");
String option4= (String)session.getAttribute("option4");
out.println("<p id='que'>question : "+question+"</p>");
%>
<div id="opt">
<input type="radio" name="radio" value="option 1"/><%=option1%>
</div>
<div id="opt">
<input type="radio" name="radio" value="option 2"/><%=option2%>
</div>
<div id="opt">
<input type="radio" name="radio" value="option 3"/><%=option3%>
</div>
<div id="opt">
<input type="radio" name="radio" value="option 4"/><%=option4%>
</div>
<div id="centerb">
<% 
if((int)session.getAttribute("count")-1==(int)session.getAttribute("maxqid")) out.print("<button class='signup-button b1' type='submit'>Submit quiz</button>");	
else out.print("<button class='signup-button b1' type='submit'>Next</button>");
%>
</div>
</form>
</div>
</body>
</html>