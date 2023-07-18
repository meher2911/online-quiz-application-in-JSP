<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>


<% 
int num = (int)session.getAttribute("noOfques");
try{
String question=request.getParameter("question");
String option1=request.getParameter("option1");
String option2=request.getParameter("option2");
String option3=request.getParameter("option3");
String option4=request.getParameter("option4");
String answer=request.getParameter("answer");
String description=request.getParameter("description");
String subject=(String)session.getAttribute("subject");
int quizname=(int)session.getAttribute("quizname");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");

PreparedStatement ps1=con.prepareStatement("insert into quizques(`question`, `option 1`, `option 2`, `option 3`, `option 4`, `answer`, `description`, `quizname`) value(?,?,?,?,?,?,?,?)");
ps1.setString(1,question );
ps1.setString(2,option1 );
ps1.setString(3,option2 );
ps1.setString(4,option3 );
ps1.setString(5,option4 );
ps1.setString(6,answer );
ps1.setString(7, description);
ps1.setInt(8,quizname );
int n = ps1.executeUpdate();
}catch(SQLException e2){
	e2.printStackTrace();
	}
	
num--;
session.setAttribute("noOfques",num);
%>
<jsp:forward page="createquiz3.jsp"></jsp:forward>