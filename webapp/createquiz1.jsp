<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuizG-teacher</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
	<p class="logo logoposition">QuizG</p>
	<div id="cq1"> 
	<h3>Quiz details</h3>
	<form method="post" action="createquiz2.jsp">
	<div id="subjectdiv">
	<label for="subject">enter subject name: </label>
	<input type="text" id="subject" name="subject"><br>
	</div>
	<div id="numquesdiv">
	<label for="noOfques">enter number of questions :</label>
	<input type="number" id="numques" name="noOfques" min="1" max="100"><br>
	</div>
	<button class="signup-button b1" type="submit">enter questions</button>
	</form>
	</div>
</body>
</html>