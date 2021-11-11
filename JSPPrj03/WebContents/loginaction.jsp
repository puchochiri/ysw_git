<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="lg.Member"%>
    
<%
    String   uid   =  request.getParameter("userid");
    String   pwd   =  request.getParameter("passwd");
    
    Member   mem   = new Member();
    String   name  = mem.getLogin( uid,  pwd);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div>
   <h2>로그인 정보</h2>
   <div><%=name %></div>
  </div> 
</body>
</html>




