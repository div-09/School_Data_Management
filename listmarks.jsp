<%@page import="java.sql.*"%>
<html>
<body>
<form>
<center>
<h2>List of Students</h2>
<table border=2 width=1200>
<tr>
<td>Roll no</td><td>Name</td><td>Class</td><td>Section</td><td>Subject 1</td>
<td>Marks1</td><td>Subject 2</td><td>Marks2</td><td>Subject 3</td><td>Marks3</td>
<td>Subject 4</td><td>Marks4</td><td>Subject 5</td><td>Marks5</td>
</tr>
<a href = project.jsp>
return back
</a>
<br></br>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nbc");
Statement state=con.createStatement();

String q="select* from marks";
ResultSet res=state.executeQuery(q);
while(res.next())
{
%>
<tr>
<td><% out.write(res.getString("rno"));%></td>
<td><% out.write(res.getString("name"));%></td>
<td><% out.write(res.getString("class"));%></td>
<td><% out.write(res.getString("section"));%></td>
<td><% out.write(res.getString("sub1"));%></td>
<td><% out.write(res.getString("marks1"));%></td>
<td><% out.write(res.getString("sub2"));%></td>
<td><% out.write(res.getString("marks2"));%></td>
<td><% out.write(res.getString("sub3"));%></td>
<td><% out.write(res.getString("marks3"));%></td>
<td><% out.write(res.getString("sub4"));%></td>
<td><% out.write(res.getString("marks4"));%></td>
<td><% out.write(res.getString("sub5"));%></td>
<td><% out.write(res.getString("marks5"));%></td>
</tr>
<%
}
}
catch(Exception obj)
{
out.write(obj.getMessage());
}
%>
</center>
</body>
</html>