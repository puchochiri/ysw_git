<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/prj2.css">

<style>

</style>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</head>
<body>

 <%@ include file="toptopnav.jsp" %>

 <%@ include file="title.jsp" %>
 <%@ include file="topnav.jsp" %>

  <main>   
   <h2>예방접종통계 : VaccineStatic.jsp</h2>
   <table>
     <tr>
       <td colspan="5" class="right" >
          <a href="/mboard?cmd=MENUWRITEFORM">메뉴추가</a>
       </td>
     </tr>
     <tr>
       <td>시도</td>
       <td>당일1차 접종통계</td>
       <td>당일2차 접종통계</td>
       <td>1차 접종 누적 통계</td>
       <td>2차 접종 누적 통계</td>
       <td>기준일</td>
     </tr>
     
<%--      // jsp 주석
			<%= request.getAttribute("menuList") %>
     == ${ requestScope.menuList }
     == ${ menuList  }
      --%>
      
      <!-- jstl의 core 문법 forEach : jsp for문과 동일 -->
    <c:forEach var="vaccineStatics" items="${ requestScope.VaccineStatics }">
     <tr>
       <td>${ vaccineStatics.get(0)  }</td>
       <td>${ vaccineStatics.get(1)  }</td>
       <td>${ vaccineStatics.get(2)  }</td>
       <td>${ vaccineStatics.get(3)  }</td>
       <td>${ vaccineStatics.get(4)  }</td>
       <td>${ vaccineStatics.get(5)  }</td>
     <!--   <td><a href="/mboard?cmd=MENUDELETE">삭제</a></td> -->
     </tr>   
   
    </c:forEach>
   </table>
   
  </main>  
   
    <%@ include file="bottomnav.jsp" %>
  
</body>
</html>