<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
			<form action="./addaction.jsp" method="post">
			<h2>매출 입력 화면</h2>
			<table>
					<colgroup>
						<col width="40%">
						<col width="60%">
					</colgroup>
					<tbody>
						<tr>
							<td>고객번호</td>
							<td><input type="number" name="custno" /></td>						
						</tr>
						<tr>
							<td>판매번호</td>
							<td><input type="number" name="salenol" /></td>						
						</tr>
						<tr>
							<td>단가</td>
							<td><input type="number" name="pcost" /></td>						
						</tr>
						<tr>
							<td>수량</td>
							<td><input type="number" name="amount" /></td>						
						</tr>
						<tr>
							<td>가격</td>
							<td><input type="number" name="price" /></td>						
						</tr>
						<tr>
							<td>상품코드</td>
							<td><input type="text" name="pcode" /></td>						
						</tr>
						<tr>
							<td>판매일자</td>
							<td><input type="date" name="sdate" /></td>						
						</tr>
						
								
				
					</tbody>
			</table>
				<div class="btn_group" style="text-align:center">
					<button type="submit">등록</button>
					<button type="button" onclick="history.back();">조회</button>
				</div>
			</form>
		</div>
	
	</div>
	
	
	<%@ include file="bottom.jsp" %>

</body>
</html>