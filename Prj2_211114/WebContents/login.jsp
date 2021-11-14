<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main>
	<h2>로그인: login.jsp</h2>
	<form action="/mboard?cmd=LOGIN" method="POST">
		<table>
			<tr>
				<td colspan="2" class="right">
					<a href="/mboard?cmd=MENULIST">회원가입</a>
				</td>
			</tr>	
			<tr>
				<td>아이디</td>
				<td><input type="text" name="corona_id" /></td>
			</tr>	
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="corona_pwd" /></td>
			</tr>	
			<tr>
				<td colspan="2">
				<input type="submit" value="로그인" />
				</td>
			</tr>	

			
		</table>
	</form>
	</main>
</body>
</html>	