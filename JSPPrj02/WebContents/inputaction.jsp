<%@page import="calc.Sachic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String reqv1 	= request.getParameter("v1");
	String reqv2 	= request.getParameter("v2");
	
	int	v1 				= Integer.parseInt(reqv1); 
	int	v2 				= Integer.parseInt(reqv2); 
	// Dao 불러오기만하면됨, 
	// int v					= v1 + v2;
	calc.Sachic s1 		= new calc.Sachic();
	int v					= s1.add(v1,v2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<p>v1:<% out.print(v1); %>></p>
		<p>v2:<% out.print(v2); %>></p>
		<p>v:<% out.print(v); %>></p>
	</div>
</body>
</html>