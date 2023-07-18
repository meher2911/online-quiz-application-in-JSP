<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
int score = (int)session.getAttribute("finaltotal");
out.println("<h3>your score is "+score+" !</h3>");
%> 