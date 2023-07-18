<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuizG-student</title>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>
<div id="solsec">
<%
try{
	String quizname = (String)session.getAttribute("quizname");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
	PreparedStatement ps = con.prepareStatement("Select * from quizques where quizname='"+quizname+"'");
	PreparedStatement ps2;
	
	ResultSet rs = ps.executeQuery();
	PreparedStatement ps1 = con.prepareStatement("select * from quizques where qid=?");
	while(rs.next()){
		//out.println("<p> question: "+rs.getString(1)+"</p>");
		//ps1.setString(1,rs.getString(6));
		//ps1.setInt(2,rs.getInt(9));
		//ResultSet rs1 = ps1.executeQuery();
		//if(rs1.next()) {
		//out.println("<p>correct answer:"+rs.getString(6)+"-"+rs1.getString(1)+"</p>");}
		//ps2 = con.prepareStatement("Select answer from useranswer where qid="+rs.getInt(9)+" and username='"+(String)session.getAttribute("username")+"'");
		//ResultSet rs2 = ps2.executeQuery();
		//if(rs2.next()){ out.println("<p>Your answer:"+rs2.getString(1)+"</p>");
		//System.out.println(rs2.getString(1));}
		//out.println("<p> description: "+rs.getString(7)+"</p>");
		out.println("<p><b>question:</b> "+rs.getString(1)+"</p>");
		//ps1.setString(1,rs.getString(6));
		ps1.setInt(1,rs.getInt(9));
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next()) {
		out.println("<p><b>correct answer: </b>("+rs.getString(6)+") "+rs1.getString(rs.getString(6))+"</p>");
		}
		ps2 = con.prepareStatement("Select answer from useranswer where qid="+rs.getInt(9)+" and username='"+(String)session.getAttribute("username")+"'");
		ResultSet rs2 = ps2.executeQuery();
		if(rs2.next()){ 
			if(rs2.getString(1).equals(rs.getString(6))){
			out.println("<p style='background-color:rgb(116, 254, 165);'><b>Your answer:</b><span style='color:rgb(57, 186, 31);'><b>&#10003;</b></span> "+rs2.getString(1)+"</p>");
			System.out.println(rs2.getString(1));
				}
			else{
				out.println("<p style='background-color:rgb(250, 100, 100);'><b>Your answer: </b><span style='color:crimson;'><b>&#10008;</b></span> "+rs2.getString(1)+"</p>");
				System.out.println(rs2.getString(1));
			}
			}
		out.println("<p style='margin-bottom:35px;'><b>description: </b>"+rs.getString(7)+"</p>");
		out.println("<hr>");
	}
}catch(SQLException e){}
%>
</div>
</body>
</html>