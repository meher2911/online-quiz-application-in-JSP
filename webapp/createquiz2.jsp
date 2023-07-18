<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
try{
String subject=request.getParameter("subject");
String numques=request.getParameter("noOfques");
session.setAttribute("subject",subject);
session.setAttribute("noOfques",Integer.parseInt(numques));
session.setAttribute("totalnoOfques",Integer.parseInt(numques));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
PreparedStatement ps1=con.prepareStatement("insert into quizinfo(subject,num_of_ques) values('"+subject+"','"+numques+"')");
int n = ps1.executeUpdate();

PreparedStatement ps=con.prepareStatement("select max(quizname) from quizinfo where subject=?");
ps.setString(1, subject);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	session.setAttribute("quizname", rs.getInt(1));
}

}catch(SQLException e2){
	e2.printStackTrace();
	}%>

<jsp:forward page="createquiz3.jsp"/>
