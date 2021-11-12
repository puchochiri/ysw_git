<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String tag = "";
	for(int i=0; i<5; i++){
		tag +="<h1>Hello</h1>";
	}
	System.out.println(tag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.print(tag); %>
</body>
</html>