<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*,java.util.*,java.io.*"%>
<html>
<style>
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
<body><center>
<%
  String usname = request.getParameter("uname");
  String pass = request.getParameter("upass");
  String name = request.getParameter("name");
  String gender=request.getParameter("gender");
  String email = request.getParameter("email");
  String mobile = request.getParameter("mobile");
  String location = request.getParameter("location");
  String address = request.getParameter("address");
  String nationality = request.getParameter("nation");
  String role = request.getParameter("role");
  String dept = request.getParameter("dept");
  String year = request.getParameter("year");
  String message="Registered successfully";
  
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
	PreparedStatement ps = con.prepareStatement("insert into reg(usname,pass,name,gender,email,mobileno,loc,address,nationality,role,dept,year,status,cr_time) values(?,?,?,?,?,?,?,?,?,?,?,?,'1',NOW())");
    ps.setString(1, usname);
    ps.setString(2, pass);
	ps.setString(3, name);
	ps.setString(4, gender);
	ps.setString(5, email);
	ps.setString(6, mobile);
	ps.setString(7, location);
	ps.setString(8, address);
	ps.setString(9, nationality);
	ps.setString(10, role);
	ps.setString(11, dept);
	ps.setString(12, year);
	ps.executeUpdate();
	
    } 
	catch (Exception e)
	{
        out.println(e);
    } 
	

%>
<br>
<script>
    alert('<%= message %>');
	
    </script>
	<h2>Login with the registered username and password</h2>
<form action="login.html" method="get">
    <button type="submit" class="button">Login</button>
</center>
	  </form>

</body>
</html>
