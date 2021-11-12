<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "DBConnection.jsp" %>
<%
	// custno	  : 10009
	// phone	  : 010-2222-2299
	// address  : 부산 남구 대연1동
	// grade		: B
	// city			: 02
	request.setCharacterEncoding("UTF-8");
	String custno = request.getParameter("custno");
	String phone  = request.getParameter("phone");
	String address	= request.getParameter("address");
	String grade		= request.getParameter("grade");
	String city			= request.getParameter("city");
	
	sql  = " UPDATE MEMBER_TBL SET ";
	sql += " PHONE 				= ?, ";
	sql += " ADDRESS 			= ?, ";
	sql += " GRADE 				= ?, ";
	sql += " CITY 				= ? ";
	sql += " WHERE CUSTNO = ? ";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString( 1, phone );
	pstmt.setString( 2, address );
	pstmt.setString( 3, grade );
	pstmt.setString( 4, city );
	pstmt.setString( 5, custno );
	
	pstmt.executeUpdate();
	
	String tourl = "./view.jsp?custno="+custno;
	response.sendRedirect(tourl);
	
	
	

%>
