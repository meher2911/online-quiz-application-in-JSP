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
<h3>Search for the quiz</h3>
<form method="post" action="takequiz2.jsp">
<div id="sscon">
<label id="ssheading" for="searchsubject">subject name: </label>
<input type="text" id="searchsubject" name="searchsubject" onkeyup="searchquizname()">
</div>
<div id="location">
<table id="quizsearchtable">
<thead>
<tr>
<th>subject</th>
<th>quiz name</th>
</tr>
</thead>
<tbody id="searchtablebody"></tbody>
</table></div>
</form>
</div>
<script src="scripts/script1.js"></script>
</body>
</html>