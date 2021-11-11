<%@page import="vo.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String name = (String) session.getAttribute("name");
	// 로그인되지 않았을 경우 login.html 로 이동
	if( name == null || name.equals("")    ) {
		response.sendRedirect("login.html");
		return;
	}
	
	MemberDao           mDao  = new  MemberDao();
	ArrayList<MemberVo> mlist = mDao.getMemberList();
	String tag  =  "";
	for(MemberVo member : mlist) {
		tag    +=  member.toHtmlString( name );
	}
	System.out.println(tag);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   table, td {  
      border:1px solid black;
      border-collapse: collapse;
   }  
   table {
      width:80%;
      margin:0 auto;
   }
   td, h2, p { text-align:center; }
</style>
</head>
<body>
  <h2>회원목록</h2>
  <p>로그인한 이름<%=name %></p>
  <table>
  <tr>
    <td>번호</td>
    <td>이름</td>
    <td>아이디</td>
    <td>비밀번호</td>
    <td>전화</td>
    <td>이메일</td>
    <td>포인트</td>
    <td>가입일</td>
  </tr>
  <%=tag %>
  </table>
</body>
</html>























