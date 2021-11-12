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
     <h2>홈쇼핑 회원 등록</h2>
     <table>
       <colgroup>
         <col width="11%">
         <col width="11%">
         <col width="17%">
         <col width="24%">
         <col width="15%">
         <col width="11%">
         <col width="11%">
       </colgroup>
       <thead>
         <tr>
          <th>회원번호</th>
          <th>회원이름</th>
          <th>전화번호</th>
          <th>주소</th>
          <th>가입일자</th>
          <th>고객등급</th>
          <th>거주지역</th>
         </tr>
       </thead>
       <tbody>
         
         <%   // 회원정보 list 가져오기
         sql          = "SELECT * FROM MEMBER_TBL ";
         sql         += " ORDER BY CUSTNO ASC ";
         pstmt        = conn.prepareStatement(sql);
         ResultSet rs = pstmt.executeQuery();
         // custno,custname,phone,address,joindate,grade,city
         while(rs.next()) {  
        	 String   joindate = rs.getString("joindate").substring(0, 10);
	         String   grade    = rs.getString("grade");
   		     switch(grade) {
   		     case "A" : grade = "VIP" ;break;
   		     case "B" : grade = "일반" ;break;
   		     case "C" : grade = "직원" ;break;
   		     case "D" : grade = "손님" ;break;
   		     }
	         String   city     = rs.getString("city");
   		 %>    
         <tr>
           <td>
             <a href="./view.jsp?custno=<%=rs.getInt("custno") %>">
             <%=rs.getInt("custno") %>
             </a>
            </td>
           <td><%=rs.getString("custname") %></td>
           <td><%=rs.getString("phone") %></td>
           <td><%=rs.getString("address") %></td>
           <td><%=joindate %></td>
           <td><%=grade %></td>
           <td><%=city %></td>
         </tr>      
         <% 
         	 }  // while end
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












