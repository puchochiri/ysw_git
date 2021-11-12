<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection.jsp" %>
<%
	// 넘어온 값 저장
	request.setCharacterEncoding("UTF-8");

/* custno,custname,phone,address,joindate,grade,city  */
	String custno 	= request.getParameter("custno");
	String custname 	= request.getParameter("custname");
	String phone 			= request.getParameter("phone");
	String address 		= request.getParameter("address");
	String grade 			= request.getParameter("grade");
	/* String city 			= request.getParameter("city"); */
	
	sql				= " UPDATE MEMBER_TBL ";
	sql += " SET CUSTNAME = ?, ";    
	sql += " PHONE = ?, ADDRESS = ?,  ";   
	sql += " GRADE = ? "	 ;     
  sql += " WHERE CUSTNO = ?  ";		        
		        
	pstmt			= conn.prepareStatement( sql );
	
	pstmt.setInt(6, Integer.parseInt(custno));

	
	pstmt.setString(1, custname	);
	pstmt.setString(2, phone		);
	pstmt.setString(3, address	);
	pstmt.setString(4, grade		);
/* 	pstmt.setString(5, city			); */
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	String tourl = "./list.jsp";
	response.sendRedirect(tourl);
	
%>
