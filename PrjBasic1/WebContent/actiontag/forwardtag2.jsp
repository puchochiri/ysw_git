<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forwardtag2.jsp</title>
</head>
<body>
forwardtag2.jsp 파일입니다.<hr>
귀하의 아이디는 <%=request.getParameter("id") %>입니다.<br>
귀하의 패스워드는 <%=request.getParameter("pass") %>입니다.
</body>
</html>