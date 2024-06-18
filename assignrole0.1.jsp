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
  <h2>Unassigned Role Details</h2>
  <%try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select name,dept,year from reg where role='None'");
			while(rs.next())
			{
				out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+"<br>");
				
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		} %>
		<form action="assignrole.jsp">
<center>
  <div id="box">		
<h2>Unassigned Roles</h2>
  <b>Name</b>
      <input type="text" placeholder="Enter Name" name="name" required><br/><br />
      <b>Dept</b>
      <input type="text" placeholder="Enter dept" name="dept" required>
        <br /><br />
		<b>Year</b>
		<input type="text" placeholder="Enter year" name="year" required>
        <br /><br />
		<b>Role Assigned</b>  
     <input type="radio" name="role" value="Professor" required>Professor
<input type="radio" name="role" value="Student" required> Student
        <br /><br />
      <button type="submit" class="button">Assign Role</button>
	  </div>
	  </center>
	  </form>