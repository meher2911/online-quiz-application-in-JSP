<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try{

String uname=request.getParameter("username");
String userpass=request.getParameter("password");
String category;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
PreparedStatement ps=con.prepareStatement("select * from quizregister where username=? and password=?");
ps.setString(1,uname);
ps.setString(2,userpass);
ResultSet rs=ps.executeQuery();

if(rs.next()){
	category=rs.getString(5);
	session.setAttribute("username", String.valueOf(uname));
	session.setAttribute("category", category);
	session.setAttribute("islogin", "login successful");
//	String checkCat=String.valueOf(session.getAttribute("category"));
	//System.out.println(checkCat);
	if(category.equals("teacher"))
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
else{
	request.setAttribute("error", "Invalid username or password entered!");
	session.setAttribute("notloginmsg","Please sign in first." );
	%>
	<jsp:forward page="index.jsp"/>
	<% 
}
}catch(SQLException e2){
	e2.printStackTrace();
	}
%>

