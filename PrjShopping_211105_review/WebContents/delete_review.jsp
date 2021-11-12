<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection_review.jsp" %>
<%
	// 넘어온 값 저장
	//request.setCharacterEncoding("UTF-8");

/* custno,custname,phone,address,joindate,grade,city  */
	String custno = request.getParameter("custno"); // 10001

	
	sql				= " DELETE FROM MEMBER_TBL WHERE CUSTNO = ? "; 
	pstmt			= conn.prepareStatement( sql );
	
	pstmt.setInt(1, Integer.parseInt(custno));

	
		
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	
	String tourl = "./list_review.jsp";
	response.sendRedirect(tourl);
	
%>
