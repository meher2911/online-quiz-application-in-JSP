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
<%
if((int)session.getAttribute("noOfques")==0){
	%>
	<jsp:forward page="quizcreated5.jsp"></jsp:forward>
	<% 
}
%>
<p class="logo logoposition">QuizG</p>
<div id="cq2">
<h3>Question details</h3>
<form method="post" action="createquizques4.jsp" class="left">
	<div class="quescon">
	<label for="question">write question here:</label><br>
	<textarea rows="3" cols="52" name="question" id="question" required></textarea><br>
	</div>
	<div class="optioncon">
	<label for="option1"> option 1:</label>
	<input type="text" name="option1" id="option" required><br>
	</div>
	<div class="optioncon">
	<label for="option2"> option 2:</label>
	<input type="text" name="option2" id="option"  required><br>
	</div>
	<div class="optioncon">
	<label for="option3"> option 3:</label>
	<input type="text" name="option3" id="option" required><br>
	</div>
	<div class="optioncon">
	<label for="option4"> option 4:</label>
	<input type="text" name="option4" id="option"  required><br>
	</div>
	<div class="answer">
	<label for="answer"> answer:</label>
	<select name="answer" id="answer"required>
	<option>option 1</option>
	<option>option 2</option>
	<option>option 3</option>
	<option>option 4</option>
	</select>
	</div>
	<div>
	<div class="description">
	<label for="description">description :</label><br>
	<textarea rows="2" cols="30" id="question" name="description"></textarea>
	<button type="submit" class="signup-button b1 right">Next</button>
	</div>
	</div>
	</form>
</div>
</body>
</html>