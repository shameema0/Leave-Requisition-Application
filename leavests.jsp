<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*,java.util.*,java.io.*"%>
<html>
<head></head>
  <style>
  body{
background-color:#e7e7e7;
}
div#box{
background-color:white;
height:200px;
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
String username = request.getParameter("uname");
out.println("<h2>Welcome Professor "+username+"</h2>");
try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
			Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select name from reg where usname='" + username + "'");
	String name1=" ";
	
	if(rs.next())
			{
				name1 = rs.getString("name");
				
			ResultSet rs1=stmt.executeQuery("select leavests from prof where name='"+name1+"'");
			while(rs1.next())
			{
				out.println("<b>Leave Status: "+rs1.getString(1)+"</b><br>");
				
			}
			con.close();
		    }
		}
		catch(Exception e)
		{
			out.println(e);
		} 
%>
<h2>Back to login</h2>
<form action="login.html" method="get">
    <button type="submit" class="button">Login</button>
	</div>
</center>
      </div>
	  </form>
	  </body>
	  </html>
