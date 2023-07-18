<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
try{
String name=request.getParameter("name");
String uname=request.getParameter("username");
String userpass=request.getParameter("password");
String category=request.getParameter("category");
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
PreparedStatement ps1=con.prepareStatement("select username from quizregister where username='"+uname+"'");
ResultSet rs=ps1.executeQuery();
if(rs.next()){

request.setAttribute("usernameExist", "Username already exist.Please login now!");
%>
<jsp:forward page="index.jsp"/>
<% 
}
else{
PreparedStatement ps=con.prepareStatement("insert into quizregister values(?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,uname);
ps.setString(4,userpass);
ps.setString(5,category);
int s=ps.executeUpdate();
//setting session on register
	session.setAttribute("username", String.valueOf(uname));
	session.setAttribute("category", String.valueOf(category));
	session.setAttribute("islogin", "login successful");
	if(String.valueOf(session.getAttribute("category")).equals("teacher"))
		//forword tohome
		{
		%>
		<jsp:forward page="hometeacher.jsp"/>
		<%
		}
		else{
			%>
				<jsp:forward page="homestudent.jsp"/>
			<% 		
		} 
}
}catch(SQLException e2){
	e2.printStackTrace();
	}
%>
