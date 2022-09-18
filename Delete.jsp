<%@page import="java.sql.*"%>
<html>
<body bgcolor=cornsilk text=red>
<form>
<center>
<h2 style=bgcolor:red>
<u>DELETE MARKS</u>
</h2>
<table>
<tr>
<td>Enter roll no.</td>
<td><input type=text name=txtrno size=10></td>
</tr>
</table>
<br>
<br>
<input type=submit name=delete value=DELETE>
<br></br>
<a href = project.jsp>
return back
</a>
<%
String r=request.getParameter("delete");
if("DELETE".equals(r))
{
int rno=Integer.parseInt(request.getParameter("txtrno"));
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nbc");
Statement state=con.createStatement();
String q="select * from marks where rno="+rno;
ResultSet res=state.executeQuery(q);
if(!res.next())
	out.write("<h2>Not found</h2>");
else
{
	q="delete from marks where rno="+rno;
	state.executeUpdate(q);
	out.write("<h2>Successfully Deleted</h2>");
}
}
catch(Exception obj)
{
out.write(obj.getMessage());
}
}
%>
</center>
</body>
</html>