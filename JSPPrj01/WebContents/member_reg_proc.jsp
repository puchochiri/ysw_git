<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); // POST 방식의 한글을 처리하기 위해서
	String userid = request.getParameter("userid");
	String userpass = request.getParameter("userpass");
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String amount = request.getParameter("amount");
	String price = request.getParameter("price");
	
//	if(amount == null) amount = "0";
//	if(price 	== null) price = "0";
	//계산
	double kum	= Double.parseDouble(amount) * Double.parseDouble(price);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>넘어온 결과</h2>
	<ul>
		<li>아이디:<% out.print(userid); %></li>
		<li>암호:<%=userpass %></li>
		<li>이름:<%=username %></li>
		<li>이메일:<%=email %></li>
		<li>수량:<%=amount %></li>
		<li>금액:<%=price %></li>
		<li>합계:<%=kum %></li>
	</ul>

</body>
</html>