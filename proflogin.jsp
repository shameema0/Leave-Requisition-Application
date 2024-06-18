<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*"%>
<!DOCTYPE html>
<html>
  <head></head>
  <style>
  body{
background-color:#e7e7e7;
}
div#box{
background-color:white;
height:350px;
width:400px;
 border:1px solid black;
 
 }
.button {
  background-color: black; color: white;
  border-radius: 12px;
  padding: 7px 20px;
  text-align: center
  display: inline-block;
  font-size: 16px;
  margin: 2px 2px;
  cursor: pointer;
  }
  </style>
  <body>
  <br>
  <br>
  <br>
  <br>
  
  <center>
  <div id="box">
  
   <%
   String username=request.getParameter("uname");
   out.println("<h2>Welcome Professor "+username+"</h2>");
   %>
   <form action="grleaveprof.jsp" method="get">
   <button type="submit" class="button">Grant/Reject Leave</button>
   </form>
   <form action="reqleave.html" method="get">
   <button type="submit" class="button">Request Leave</button>
   </form>
   
	  </center>
      </div>
	  </form>
	  </body>
	  </html>