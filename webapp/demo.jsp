<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sql example</title>
</head>
<body>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=st.executeQuery("select * from table1");

if(rs.next()) 
%>
	<font size="3" color="red">
	<%  
	out.println("name : "+rs.getString(1)+" id:"+rs.getInt(2));
	con.close();
	}

	catch(Exception ex){
	%>
	</font>
	<font size="+3" color="red">
	<%
	out.println("Unable to connect to database.");
	}
	%>
	</font>
</body>
</html>