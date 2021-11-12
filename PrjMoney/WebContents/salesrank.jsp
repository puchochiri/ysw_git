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
			<h2>회원 매출 조회</h2>
			<table>
					<colgroup>
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
					</colgroup>
					<thead>
						<tr>
							<th>회원번호</th>
							<th>회원이름</th>
							<th>고객등급</th>
							<th>매출</th>
						</tr>
					</thead>
					<tbody>
						<% /* 회원정보 list 가져오기 */
						 sql 					= " SELECT M.CUSTNO, M.CUSTNAME, M.GRADE, SUM(Y.PRICE) tot ";
						 sql				+=	" FROM MEMBER_TBL M JOIN MONEY_TBL_02 Y ON M.CUSTNO = Y.CUSTNO ";
						 sql        +=	"	 GROUP BY M.CUSTNO, M.CUSTNAME, M.GRADE " ;
						 sql        +=	"	 ORDER BY tot desc " ;
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
						String grade 	= rs.getString("grade");
						switch(grade){
						case "A" : grade = "VIP"; break;
						case "B" : grade = "일반"; break;
						case "C" : grade = "직원"; break;
						case "D" : grade = "손님"; break;
						}

						%>
						<tr>
							<td>
							<a href="./view.jsp?custno=<%=rs.getInt("custno") %>">
							<%=rs.getInt("custno") %>
							</a>
							</td>
							<td><%=rs.getString("custname") %></td>
							<td><%=grade %></td>
							<td><%=rs.getString("tot") %></td>
						</tr>
						<%
						 }   //while end
							rs.close();
							pstmt.close();
							conn.close();
						
						  %>
					</tbody>
			</table>
					<div class="btn_group" style="text-align:center">
					<button type="button"><a href ="./add.jsp">추가</a></button>
					<button type="button" href="./add.jsp">추가1</button>
					<button type="button" onclick="history.back();">조회</button>
				</div>
		</div>
	</div>
	
	<%@ include file="bottom.jsp" %>

</body>
</html>