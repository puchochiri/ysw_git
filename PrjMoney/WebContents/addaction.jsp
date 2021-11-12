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
	String pcost 			= request.getParameter("pcost");
	String amount 		= request.getParameter("amount");
	String price 	= request.getParameter("price");
	String pcode 			= request.getParameter("pcode");
	String sdate 			= request.getParameter("sdate");
	
	sql				= "INSERT INTO MONEY_TBL_02"; 
	sql				+= " ( custno,salenol ,pcost, amount, price, pcode, sdate) ";
	sql				+= " VALUES (?,MONEY_SEQ.NEXTVAL,?,?,?,?,?) ";
	pstmt			= conn.prepareStatement( sql );
	
	pstmt.setString(1, custno	);
	pstmt.setString(2, pcost		);
	pstmt.setString(3, amount	);
	pstmt.setString(4, price	);
	pstmt.setString(5, pcode		);
	pstmt.setString(6, sdate			);
	
	pstmt.executeUpdate();
	System.out.println("저장되었습니다.");
	out.println("<h2>저장되었습니다.</h2>");
	
	pstmt.close();
	conn.close();
	
	String tourl = "./salesrank.jsp";
	response.sendRedirect(tourl);	// a tag와 같은 방식으로 동작
	
%>
