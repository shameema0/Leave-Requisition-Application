<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*"%>
<html>
<style>
  body{
background-color:#e7e7e7;
}
div#box{
background-color:white;
height:200px;
width:350px;
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
<center>
  <div id="box">
<%
  String username = request.getParameter("uname");
  String password = request.getParameter("upass");
   String message="Invalid Credential";
   if(username.equals("s") && password.equals("n"))
			{
			response.sendRedirect("prilogin.jsp");
			}
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select pass,role from reg where usname='" + username + "'");
	String passw=" ";
	String rol=" ";
	
	
	if(rs.next())
			{
				passw = rs.getString("pass");
				rol = rs.getString("role");
				
				if(passw.equals(password))
				{
					if(rol.equals("Professor"))
					{
					out.println("<center>");
					out.println("<h2>Welcome Professor "+username+"</h2><br>");
					out.println("<a href='grleaveprof.jsp?uname=" + username+ "' class=\"button\">Grant/Reject Leave</a><br><br><br>");
					out.println("<a href='releave.jsp?uname=" + username+ "' class=\"button\">Request Leave</a>");
					out.println("<a href='leavests.jsp?uname=" + username+ "' class=\"button\">View Leave status</a>");
					}
					else
					{
						out.println("<h2>Welcome Student "+username+"</h2><br>");
						out.println("<a href='releavestu.jsp?uname=" + username+ "' class=\"button\">Request Leave</a>");
					    out.println("<a href='leaveststud.jsp?uname=" + username+ "' class=\"button\">View Leave status</a>");
					}
					
				}
				else
				{
            out.println("<script>");
            out.println("alert('" + message + "');");
            out.println("</script>");

				}
			}
			
			con.close();
    } 
	catch (Exception e)
	{
        out.println(e);
    } 
	
%>
</body>
</html>