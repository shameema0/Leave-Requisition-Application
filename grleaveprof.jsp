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
 <%String username=request.getParameter("uname");
out.println("<h2>Grant or Reject leave by Professor "+username+"</h2>");%>  
<%
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
	
			ResultSet rs1=stmt.executeQuery("select sid,name,role,ldays,frdate,todate FROM stud WHERE ldays IS NOT NULL AND profname = '" + name1 + "' AND leavests IS NULL;");
			out.println("<b>Profid</b>"+" "+"<b>Profname</b>"+" "+"<b>Role</b>"+" "+"<b>Nodays</b>"+" "+"<b>From</b>"+" "+"<b>To</b><br>");
			while(rs1.next())
			{
				
				out.println(rs1.getString(1)+" "+rs1.getString(2)+" "+rs1.getString(3)+" "+rs1.getString(4)+" "+rs1.getString(5)+" "+rs1.getString(6)+"<br>");
				
			}
			}
			out.println("<br>");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
%>
<form action="confirmleaveprof.jsp">

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