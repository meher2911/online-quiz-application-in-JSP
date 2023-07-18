<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%! static int count = 0; static int count1=0; %>

<%
try{
	String quizname = (String)session.getAttribute("quizname");
	int quesnum = (int)session.getAttribute("quesnum");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");

	if(count==0){
	PreparedStatement ps=con.prepareStatement("select min(qid) from quizques where quizname='"+quizname+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		count = rs.getInt(1);
		count1 = count + quesnum -1;
		System.out.println("quizname:"+quizname+"\tmin qid:"+count+"\tmax:"+count1);
		session.setAttribute("minqid", count);
		session.setAttribute("maxqid", count1);
	}
	}
		
	if(count>0){
		PreparedStatement ps=con.prepareStatement("select * from quizques where quizname='"+quizname+"' and qid='"+count+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			session.setAttribute("question", rs.getString(1));
			session.setAttribute("option1", rs.getString(2));
			session.setAttribute("option2", rs.getString(3));
			session.setAttribute("option3", rs.getString(4));
			session.setAttribute("option4", rs.getString(5));
			session.setAttribute("answer", rs.getString(6));
		}
		
		count++;

		session.setAttribute("count", count);
		if(count>(Integer)session.getAttribute("maxqid")){
			count=0;
			session.setAttribute("total",0);
			session.setAttribute("ans",null);
			}
		}
		
}catch(Exception e){e.printStackTrace();}
%> 
<%out.println("<html><body>hello</body></html>"); %>
<jsp:forward page="takequiz3.jsp"></jsp:forward>