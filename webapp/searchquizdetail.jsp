<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<% 
String c = request.getParameter("val");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
	PreparedStatement ps=con.prepareStatement("select * from quizinfo where quizname='"+c+"' ");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	out.print("<p class='info'>Quiz-"+c+" has "+rs.getInt(3)+" questions and each one is of 1 point</p>");
	%>
	<button class="signup-button b1" type="submit">start quiz!</button> 
	<% 
	session.setAttribute("quizname",c);
	session.setAttribute("quesnum", rs.getInt(3));
	session.setAttribute("subjectname",rs.getString(2));
	}
	con.close();
}
catch(SQLException e)
{e.printStackTrace();}
%>

