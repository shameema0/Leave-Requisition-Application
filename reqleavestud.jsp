<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*,java.util.*,java.io.*"%>
<html>
<style>
 body{
background-color:#e7e7e7;
}
div#box{
background-color:white;
height:170px;
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
  
  
  <center>
  <div id="box"> 

<%
String ndays = request.getParameter("days");
String fdate = request.getParameter("selectedfromDate");
String tdate = request.getParameter("selectedtoDate");
String name = request.getParameter("name");
out.println("<h2>Welcome Student "+name+"</h2>");
  String message="Request sent successfully";
  
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
	Statement stmt=con.createStatement();
	String s1="update stud set ldays='" + ndays + "',frdate='" + fdate + "',todate='" + tdate + "' where name='" + name + "';";
	stmt.executeUpdate(s1);
	out.println("<script>");
            out.println("alert('" + message + "');");
            out.println("</script>");	
	
    } 
	catch (Exception e)
	{
        out.println(e);
    } 



%>

<h2>Back to login</h2>
<form action="login.html" method="get">
    <button type="submit" class="button">Login</button>
	</form>
	</div>
	</center>
	  </body>
	  </html>