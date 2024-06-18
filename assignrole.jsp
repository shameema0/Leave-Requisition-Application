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
  String name = request.getParameter("name");
  String role = request.getParameter("role");
  String dept = request.getParameter("dept");
  String year = request.getParameter("year");
  String message="Registered successfully";
  
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
	
    if(role.equals("Professor"))
	{
		PreparedStatement ps = con.prepareStatement("insert into prof(name,dept,year,role,status,cr_time,princid) values(?,?,?,?,'1',NOW(),'1')");
		ps.setString(1, name);
		ps.setString(2, dept);
		ps.setString(3, year);
		ps.setString(4, role);
		ps.executeUpdate();
		Statement stmt=con.createStatement();
		String s1="update reg set role='Professor' where name='"+name+"'";
		stmt.executeUpdate(s1);
	}
	else
	{
		if(dept.equals("CS") && year.equals("1"))
		{
			if (dept.equals("CS") && year.equals("1")) {
    PreparedStatement ps = con.prepareStatement("INSERT INTO stud(name, dept, year, role, status, cr_time, profid, profname) VALUES (?, ?, ?, ?, '1', NOW(), '1', 'sagubar')");
    ps.setString(1, name);
    ps.setString(2, dept);
    ps.setString(3, year);
    ps.setString(4, role);
    ps.executeUpdate();

    Statement stmt = con.createStatement();
    String s1 = "UPDATE reg SET role='Student' WHERE name='" + name + "'";
    stmt.executeUpdate(s1);

}


		}
		if(dept.equals("CS") && year.equals("2"))
		{
			PreparedStatement ps = con.prepareStatement("insert into stud(name,dept,year,role,status,cr_time,profid,profname) values(?,?,?,?,'1',NOW(),'3','meharajbanu')");
			ps.setString(1, name);
			ps.setString(2, dept);
			ps.setString(3, year);
			ps.setString(4, role);
			ps.executeUpdate();
			Statement stmt=con.createStatement();
			String s1="update reg set role='Student' where name='"+name+"'";
			stmt.executeUpdate(s1);
			
		}
		if(dept.equals("CS") && year.equals("3"))
		{
			PreparedStatement ps = con.prepareStatement("insert into stud(name,dept,year,role,status,cr_time,profid,profname) values(?,?,?,?,'1',NOW(),'4','shameema')");
			ps.setString(1, name);
			ps.setString(2, dept);
			ps.setString(3, year);
			ps.setString(4, role);
			ps.executeUpdate();
			Statement stmt=con.createStatement();
			String s1="update reg set role='Student' where name='"+name+"'";
			stmt.executeUpdate(s1);
			
		}
		
	}
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
	<h2>Back to login</h2>
<form action="login.html" method="get">
    <button type="submit" class="button">Login</button>
</center>
	  </form>

</body>
</html>
