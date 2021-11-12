<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="DBConnection.jsp" %>

<%
   // 넘어온 값 저장
   // custno,custname,phone,address,joindate,grade,city
   request.setCharacterEncoding("UTF-8");
   
	String   custname  = request.getParameter("custname");
	String   phone     = request.getParameter("phone");
	String   address   = request.getParameter("address");
	String   joindate  = request.getParameter("joindate");
	String   grade     = request.getParameter("grade");
	String   city      = request.getParameter("city");
	
	sql     =  " INSERT INTO  MEMBER_TBL ";
	sql    +=  "  (  CUSTNO, CUSTNAME, PHONE, ADDRESS, JOINDATE, GRADE, CITY) ";
	sql    +=  "  VALUES (  MEMBER_SEQ.NEXTVAL,?, ?, ?, ?, ?, ? ) ";
	pstmt   =  conn.prepareStatement( sql );
	
	pstmt.setString(1, custname );
	pstmt.setString(2, phone    );
	pstmt.setString(3, address  );
	pstmt.setString(4, joindate );
	pstmt.setString(5, grade    );
	pstmt.setString(6, city     );
		
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	String  tourl   =  "./list.jsp";
	
	response.sendRedirect(tourl);

%>



















 