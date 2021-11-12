<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String menu_id = request.getParameter("menu_id");
	System.out.println("menuupdate.jsp:" + menu_id);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css">
</head>
<body>
<main>
	<h2>메뉴수정: menuwrite.jsp</h2>
	<form action="/mboard?cmd=MENUUPDATE" method="POST">
		<table>
			<tr>
				<td colspan="2" class="right">
					<a href="/mboard?cmd=MENULIST">메뉴리스트</a>
				</td>
			</tr>	
			 <tr>
				<td>메뉴번호</td>
				<td><input type="text" name="menu_id" value=<%=menu_id %> /></td>
			</tr>	
			<tr>
				<td>메뉴이름</td>
				<td><input type="text" name="menu_name" /></td>
			</tr>	
			<tr>
				<td colspan="text">
				<input type="submit" value="수정" />
				</td>
			</tr>	
		</table>
	</form>
	</main>
</body>
</html>