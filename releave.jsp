<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*,java.util.*,java.io.*"%>
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
 <%String username=request.getParameter("uname");
out.println("<h2>Welcome Professor "+username+"</h2>");%> 
<form action="reqleave.jsp">
<h2>Leave applicaton</h2>
<b>Enter name:</b>
<input type="text" placeholder="enter Name" name="name" required><br/><br />
<b>Select no. of days for leave application:</b>
<input type="text" placeholder="enter days" name="days" ><br/><br />
<b>Select from date</b>
<input type="date" name="selectedfromDate" required><br><br>
<b>Select to date</b>
<input type="date" name="selectedtoDate" required><br><br>
<button type="submit" class="button">Request</button>

</center>
      </div>
	  </form>
	  </body>
	  </html>