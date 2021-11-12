<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // http://localhost:9090/WebPrj03/memreg_process.jsp
    // ?uid=sky&pwd=&uname=&byear=&bmonth=2&bdate=

    String  uid      = request.getParameter("uid");  // input type 의 name 속성
    String  pwd      = request.getParameter("pwd");  
    String  uname    = request.getParameter("uname");  
    String  byear    = request.getParameter("byear");  
    String  bmonth   = request.getParameter("bmonth");  
    String  bdate    = request.getParameter("bdate");
    String  gender   = request.getParameter("gender");  // "M", "F"
    
    // 체크박스를 배열로 받는 병령
    String [] progs  = request.getParameterValues("prog");
    String proglist  = "";
    for(int i=0; i < progs.length ; i++ ) {
    	proglist += progs[i] +  " ";
    } 
    System.out.println(proglist);
    
    int     year     = 0;
    if( byear.equals("") || byear == null)
    	year     = 0;
    else
    	year     = Integer.parseInt(byear); 
    int     month    = Integer.parseInt(bmonth);
    int     date     =  0;
    if( bdate.equals("") || byear == null)
    	date = 0;
    else
    	date     = Integer.parseInt(bdate); 
    
    String  fmt      = "%04d-%02d-%02d";
    String  birthday = String.format(fmt, year, month, date);
    String  sex      = "";
    if( gender.equals("M") )
    	sex = "남자";    
    if( gender.equals("F") )
    	sex = "여자";
    
    
   // out.print("아이디:" + uid + "<br>");
   // out.print("암호:"   + pwd + "<br>");
%>    
<!DOCTYPE html>
<html>
 <head>  
 </head>
 <body>
   <h2>넘어온 정보</h2> 
   <ul>
     <li>아이디:<%=uid %></li>
     <li>암호:<%=pwd %></li>
     <li>이름:<%=uname %></li>
     <li>생일:<%=birthday %></li>
     <li>성별:<%=sex %></li>
     <li>괸심있는 프로그램:<%=proglist %></li>
   </ul>
 </body>
</html>    
    
    
    
    
    
    
    
    
    
    