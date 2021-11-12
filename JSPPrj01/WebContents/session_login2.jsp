<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 	String uid = request.getParameter("id") ;
	/* String uid = (String) session.getAttribute("id") ; */
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>넘어온 Id:<%=uid %></h2>
	
	
</body>
</html>