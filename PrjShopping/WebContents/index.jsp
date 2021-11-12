<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//jsp import 단축키 : ctrl_shift+M
	HashMap<String, String> cityMap = new HashMap<>();
	cityMap.put("01","서울");
	cityMap.put("02","부산");
	cityMap.put("03","대구");
	cityMap.put("04","인천");
	cityMap.put("05","대전");
	cityMap.put("06","광주");
	cityMap.put("41","울릉");
	cityMap.put("07","제주");
	
	String tag = "<select name='city'>";
	Iterator<String> keys = cityMap.keySet().iterator();
	while(keys.hasNext()){
		String strKey		= keys.next();
		String strValue	= cityMap.get(strKey);
		tag += "<option value='" + strKey + "'>";
		tag += strValue;
		tag += "</option>";
		
	}
	tag 			+= "</select>";
	

%>
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
			<form action="./action.jsp" method="post">
			<h2>홈쇼핑 회원 등록 화면</h2>
			<table>
					<colgroup>
						<col width="40%">
						<col width="60%">
					</colgroup>
					<tbody>
						<tr>
							<td>회원번호(자동발생)</td>
							<td><input type="text" /></td>						
						</tr>
						<tr>
							<td>회원성명</td>
							<td><input type="text" name="custname" /></td>						
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="text" name="phone" /></td>						
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="address" /></td>						
						</tr>
						<tr>
							<td>가입일자</td>
							<td><input type="text" name="joindate" /></td>						
						</tr>
						<tr>
							<th>고객등급</th>
							<td>
								<input type="radio" name="grade" value="A" id="rbvip" />
								<label for="rbvip">VIP</label> &nbsp;
								<input type="radio" name="grade" value="B" id="rbnormal" checked />
								<label for="rbnormal">일반</label> &nbsp;
								<input type="radio" name="grade" value="C" id="rbemp" />
								<label for="rbemp">직원</label> &nbsp;
								<input type="radio" name="grade" value="D" id="rbguest" />
								<label for="rbguest">손님</label> &nbsp;
							</td>						
						
						</tr>
						<tr>
							<td>도시코드</td>
							<td><%=tag %></td>						
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