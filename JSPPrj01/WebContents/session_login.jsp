<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid 	= request.getParameter("id");
	String pwd	= request.getParameter("pass");
	
	
	
	// session에 값 저장
	if(uid.equals("sky") && pwd.equals("1234")){		
		session.setAttribute("id",uid);
	}
	else{
		response.sendRedirect("session_login.html");
		return ;
	}
		
	session.setAttribute("id",uid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div></div><b>넘어온 아이디: <%=uid %></b></div>
	<div><b>넘어온 암호: <%=pwd %></b></div>
	<a href="session_login2.jsp?id=<%=uid %>">session_login2 이동</a>
	<a href="session_login3.jsp">session_login3.jsp 이동</a>
	<!-- //http://localhost:9090/JSPPrj01/session_login.jsp?id=abcd&pass=12341 -->
</body>
</html>