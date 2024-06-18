<%@ page language="java" import="java.sql.*,javax.sql.*,com.mysql.cj.jdbc.*"%>
<html>
<body><head></head>
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
  
<h1>Grant\Reject leave by Principal</h1>
<%
   try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric","root","shameema05");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select profid,name,role,ldays,frdate,todate FROM prof WHERE ldays IS NOT NULL AND princid = 1 AND leavests IS NULL;");
			out.println("<b>Profid</b>"+" "+"<b>Profname</b>"+" "+"<b>Role</b>"+" "+"<b>Nodays</b>"+" "+"<b>From</b>"+" "+"<b>To</b><br>");
			while(rs.next())
			{
				
				out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+"<br>");
				
			}
			out.println("<br>");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
%>
<form action="confirmleave.jsp">

<b>Name</b>
      <input type="text" placeholder="Enter Name" name="name" required><br/><br />
	  <b>Permission</b>  
     <input type="radio" name="permission" value="Grant" required>Grant
<input type="radio" name="permission" value="Reject" required> Reject
        <br /><br />
      <button type="submit" class="button">Confirm</button>
	  </div>
	  </center>
	  </form>
</body>
</html>