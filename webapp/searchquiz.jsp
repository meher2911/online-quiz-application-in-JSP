<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<%
String c = request.getParameter("val");
System.out.println(c);
if(c.length()>0){
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
	PreparedStatement ps=con.prepareStatement("select * from quizinfo where subject like '"+c+"%'");
	ResultSet rs=ps.executeQuery();
	if(!rs.next()){
		out.println("<tr><td colspan='2'>No such subject exist</td></tr>");
	}
	rs.beforeFirst();
	while(rs.next()){
	out.print("<tr><td>"+rs.getString(2)+"</td><td><a class='quizlinks' href='#' name="+rs.getInt(1)+" onclick='javascript:viewAll(this.name)'>Quiz-"+rs.getInt(1)+"</a></td></tr>");
	}
	
	
	con.close();
}catch(Exception e){e.printStackTrace();}
}
%>