<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
 <%! static int total=0; static int current=0; %>

 <% 
 if(String.valueOf((int)session.getAttribute("count"))!= null){
 String useranswer = (String)request.getParameter("radio");
 int count = (int)session.getAttribute("count");
 String username = (String)session.getAttribute("username");
 int quizname = Integer.parseInt((String)session.getAttribute("quizname")); 

 
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","");
 if(current == 0){
	 current = count - 1;
	 System.out.println("1) "+count+"\n current:"+current);


	 PreparedStatement ps1=con.prepareStatement("select answer from quizques where qid='"+current+"'");
	 ResultSet rs = ps1.executeQuery();
	 if(rs.next()){
		 if(useranswer.equals(rs.getString(1))){
			 total++;
		 }
	 }
	 PreparedStatement ps=con.prepareStatement("insert into useranswer values(?,?,?,?)");
	 ps.setInt(1,quizname);
	 ps.setInt(2,current);
	 ps.setString(3, useranswer);
	 ps.setString(4, username);
	 int n = ps.executeUpdate();
 }

 
 else{
	 current=count-1;
	 System.out.println(count+"\n current: "+current);
	 PreparedStatement ps1=con.prepareStatement("select answer from quizques where qid='"+current+"'");
	 ResultSet rs = ps1.executeQuery();
	 if(rs.next()){
		 if(useranswer.equals(rs.getString(1))){
			 total++;
		 }
	 }
	 PreparedStatement ps=con.prepareStatement("insert into useranswer values(?,?,?,?)");
	 ps.setInt(1,quizname);
	 ps.setInt(2,current);
	 ps.setString(3, useranswer);
	 ps.setString(4, username);
	 int n = ps.executeUpdate();
 }
 
 if(current==((Integer)session.getAttribute("maxqid"))){
	 
	 session.setAttribute("finaltotal", total);
	 session.setAttribute("total", 0);
	 total = 0;
	 System.out.println("total:"+String.valueOf(session.getAttribute("total")));
	 System.out.println("final total:"+String.valueOf(session.getAttribute("finaltotal")));

	 %>
	 <jsp:forward page="result.jsp"></jsp:forward>
	 <% 
 }

}
 
%>

<jsp:forward page="takequiz2.jsp"></jsp:forward>