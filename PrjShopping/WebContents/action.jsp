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
	String custname 	= request.getParameter("custname");
	String phone 			= request.getParameter("phone");
	String address 		= request.getParameter("address");
	String joindate 	= request.getParameter("joindate");
	String grade 			= request.getParameter("grade");
	String city 			= request.getParameter("city");
	
	sql				= "INSERT INTO member_tbl"; 
	sql				+= " ( custno, custname, phone, address, joindate, grade, city) ";
	sql				+= " VALUES (MEMBER_SQL.NEXTVAL,?,?,?,?,?,?) ";
	pstmt			= conn.prepareStatement( sql );
	
	pstmt.setString(1, custname	);
	pstmt.setString(2, phone		);
	pstmt.setString(3, address	);
	pstmt.setString(4, joindate	);
	pstmt.setString(5, grade		);
	pstmt.setString(6, city			);
	
	pstmt.executeUpdate();
	System.out.println("저장되었습니다.");
	out.println("<h2>저장되었습니다.</h2>");
	
	pstmt.close();
	conn.close();
	
	String tourl = "./list.jsp";
	response.sendRedirect(tourl);	// a tag와 같은 방식으로 동작
	
%>
