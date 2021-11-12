<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="DBConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css" />
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="container">
		<div class="content">
			<h2>호실정보 샘플 데이터</h2>
			<table>
					<colgroup>
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="20%">
					</colgroup>
					<thead>
						<tr>
							<th>회원번호</th>
							<th>회원성명</th>
							<th>고객등급</th>
							<th>매출</th>
						</tr>
					</thead>
					<tbody>
						<% /* 회원정보 list 가져오기 */
						 sql 					= "SELECT * FROM money_tbl_02 ORDER BY salenol ";
						 pstmt 		 		= conn.prepareStatement(sql);
						 ResultSet rs	= pstmt.executeQuery();
						 
						 
			/* 			 custno,
						    custname,
						    phone,
						    address,
						    joindate,
						    grade,
						    city  */
						

						 while(rs.next()){ 
						String sdate	=	rs.getString("sdate").substring(0,10);

						%>
						<tr>
							<td>
							<a href="./view.jsp?custno=<%=rs.getInt("custno") %>">
							<%=rs.getInt("custno") %>
							</a>
							</td>
							<td><%=rs.getInt("salenol") %></td>
							<td><%=rs.getInt("pcost") %></td>
							<td><%=rs.getInt("amount") %></td>
							<td><%=rs.getInt("price") %></td>
							<td><%=rs.getString("pcode") %></td>
							<td><%=sdate %></td>
						</tr>
						<%
						 }   //while end
							rs.close();
							pstmt.close();
							conn.close();
						
						  %>
					</tbody>
			</table>
		</div>
	
	</div>
	
	
	<%@ include file="bottom.jsp" %>

</body>
</html>