<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Get 방식 전송의 경우 한글이 깨지면
    // server.xml 에 <Connector URIEncoding="UTF-8" 추가
    // POST 방식 의 경우
    request.setCharacterEncoding("UTF-8");  
    String  name = request.getParameter("name"); // name=길동이
    String  tel  = request.getParameter("tel");  // tel=010-1234-5555    
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>넘어온 정보</h2>
   <div>이름:<%=name %></div>
   <div>전화:<%=tel %></div>
</body>
</html>










