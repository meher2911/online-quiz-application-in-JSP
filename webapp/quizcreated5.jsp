<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<p class="logo logoposition">QuizG</p>
<div id="cq1">
<h3>quiz successfully created!</h3>
<%
String subject=(String)session.getAttribute("subject");
int quizname=(int)session.getAttribute("quizname");
int num = (int)session.getAttribute("totalnoOfques");
out.println("<p class='info'>Your quiz of "+subject+" subject with "+num+" number of questions has been created with <b>quiz name : "+quizname+"</b></p>");
%>
<a class="signup-button b1" href="hometeacher.jsp">back to home</a>
</div>
</body>
</html>