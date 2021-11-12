<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	/* POST 방식 한글깨짐 방지 */
	request.setCharacterEncoding("utf-8");
	
	Class.forName("oracle.jdbc.OracleDriver");
	String url 	="jdbc:oracle:thin:@localhost:1521:xe";
	String user	="jsp";
	String pwd	="1234";
	String sql 	= "";
	Connection conn = DriverManager.getConnection(url, user, pwd);
	PreparedStatement pstmt = null;
	
	
	out.print("Database 접속에 성공하였습니다.");
	
	
	
	
	

%>