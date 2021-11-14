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


<div class="smalltitle" id="mysmalltitle" style="padding-left:5px">
  <h2>home</h2>
  <p><img src="/img/Penguins.jpg" alt="Nature" class="responsive" width="600" height="400"></p>
  
</div>






 <%@ include file="bottomnav.jsp" %>





</body>
</html>
