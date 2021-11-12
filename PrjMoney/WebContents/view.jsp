<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection.jsp" %>
<%
	// 넘어온 정보처리
	// http://localhost:9090/view.jsp?custno=10001
	String custno = request.getParameter("custno"); // 10001
	
	// db 조회 정보 검색 custno = 10001;
	sql = "SELECT * FROM MEMBER_TBL WHERE CUSTNO = ? ";
	pstmt = conn.prepareStatement(sql);
	
	// null point exception . 앞이  null이다.
	pstmt.setInt(1, Integer.parseInt(custno));
	
/* 			 custno,custname,phone,address,joindate,grade,city  */
 	String custname =""
	,phone=""
	,address=""
	,joindate=""
	,grade=""
	,city="";
	 
	ResultSet rs = pstmt.executeQuery();
	if( rs.next() ){
		// Stiring    custno 	= rs.getString("custno");
		custname = rs.getString("custname"); //nvl
		phone 		= rs.getString("phone");
		address 	= rs.getString("address");
		joindate = rs.getString("joindate");
		grade 		= rs.getString("grade");
		city 		= rs.getString("city");
		
	}
	
	rs.close();
	pstmt.close();
	conn.close();
	

	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css" />
<script>
	window.onload = function(){
		var btnUpdate = document.getElementById('btnUpdate');
		btnUpdate.onclick = function(){
			// 수정페이지로 이동
			var url 			= './update.jsp?custno=<%= custno %>';
			location.href = url;
			
		}
		var btnDelete = document.getElementById('btnDelete');
			btnDelete.addEventListener('click',function(e){
				var url				=  './delete.jsp?custno=<%= custno %>'
				location.href = url;
				
			});
		var btnList 	= document.getElementById('btnList');
			btnList.addEventListener('click',function(e){
				var url				=  './list.jsp';
				location.href = url;
				
			});
	}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="container">
		<div class="content">
			<h2>홈쇼핑 회원 수정 화면</h2>
			<table>
					<colgroup>
						<col width="40%">
						<col width="60%">
					</colgroup>
					<tbody>
						<tr>
							<td>회원번호</td>
							<td><%= custno %></td>						
						</tr>
						<tr>
							<td>회원성명</td>
							<td><%= custname %></td>						
						</tr>
						<tr>
							<td>전화번호</td>
							<td><%= phone %></td>						
						</tr>
						<tr>
							<td>주소</td>
							<td><%= address %></td>						
						</tr>
						<tr>
							<td>가입일자</td>
							<td><%= joindate %></td>						
						</tr>
						<tr>
							<th>고객등급</th>
							<td>
								<%
								String gradeStr = "";
								switch( grade ){
									case "A": gradeStr = "VIP"; break;
									case "B": gradeStr = "일반"; break;
									case "C": gradeStr = "직원"; break;
									case "D": gradeStr = "손님"; break;
								}
								%>
								<%=gradeStr %>
							</td>						
						
						</tr>
						<tr>
							<td>도시코드</td>
							<td><%=city %></td>						
						</tr>			
				
					</tbody>
			</table>
				<div class="btn_group" style="text-align:center">
					<button id="btnUpdate">수정</button>
					<button id="btnDelete">삭제</button>
					<button id="btnList">목록</button>
				</div>
		</div>
	
	</div>
	
	
	<%@ include file="bottom.jsp" %>

</body>
</html>