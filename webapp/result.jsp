<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuizG-student</title>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>
<p class="logo logoposition">QuizG</p>
<div id="tq1">
<h3>Quiz submitted successfully</h3>
<form method="post" action="result.jsp">
<div id="buttons">
<button class='signup-button b1' type="submit" name="button1" value="button1">view score</button>
<button class='signup-button b1' type="submit" name="button2" value="button2">view solution</button>
</div>
</form>
<%
if((String)request.getParameter("button1")!=null){%>
<jsp:include page="result2.jsp"></jsp:include>
<%}%>
<%if(request.getParameter("button2")!=null){%>
<jsp:include page="result3.jsp"></jsp:include>
<%}%>
<a class="backhome" href="homestudent.jsp">back to home &rarr;</a>
</div>
</body>
</html>

