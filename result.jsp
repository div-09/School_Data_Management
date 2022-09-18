<%@page import="java.sql.*"%>
<html>
<body bgcolor=cornsilk text=black>
<form>
<center>
<h1><u>RESULT</u></h2>
<table>
<tr>
<td>Enter Roll No</td>
<td><input type=text name=txtrno size=10></td>
</tr>
</table>
<br></br>
<input type=Submit name=bshow value=SEARCH>
<br></br>
<a href = project.jsp>
return back
</a>
<%
String r=request.getParameter("bshow");
if("SEARCH".equals(r))
{
int rollno=Integer.parseInt(request.getParameter("txtrno"));
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nbc");
Statement state=con.createStatement();
String q="Select* from marks where rno="+rollno;
ResultSet res=state.executeQuery(q);
if(!res.next())
out.write("<h2>Not found</h2>");
else
{
%>
Name <input type=text value=<% out.write(res.getString("name"));%>>
<p>
Class<input type=text value=<% out.write(res.getString("class"));%>>
<p>
Section<input type=text value=<% out.write(res.getString("section"));%>>
<p>
Subject 1<input type=text value=<% out.write(res.getString("sub1"));%>>
<p>
Marks<input type=text value=<% out.write(res.getString("marks1"));%>>
<p>
Subject 2<input type=text value=<% out.write(res.getString("sub2"));%>>
<p>
Marks<input type=text value=<% out.write(res.getString("marks2"));%>>
<p>
Subject 3<input type=text value=<% out.write(res.getString("sub3"));%>>
<p>
Marks<input type=text value=<% out.write(res.getString("marks3"));%>>
<p>
Subject 4<input type=text value=<% out.write(res.getString("sub4"));%>>
<p>
Marks<input type=text value=<% out.write(res.getString("marks4"));%>>
<p>
Subject 5<input type=text value=<% out.write(res.getString("sub5"));%>>
<p>
Marks<input type=text value=<% out.write(res.getString("marks5"));%>>
<%}
}
catch(Exception obj)
{
out.write(obj.getMessage());
}
}
%>
</tr>

<hr>
</body>
</center>

</html>