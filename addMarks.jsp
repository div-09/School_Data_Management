<%@page import="java.sql.*"%>
<html>
<body bgcolor=lightblue text=darkblue>
<form>
<h2 style=bgcolor:red>
Marks Entry
</h2>
<hr size=1 color=blue>
<table cellspacing=10>
<tr>
<td>Roll no</td>
<td><Input type=text name=txtrno size=20></td>
</tr>
<tr>
<td>Name</td>
<td><input type=text name=txtname size=20></td>
</tr>
<tr>
<td>Class</td>
<td><input type=text name=txtclass size=20></td>
</tr>
<tr>
<td>Section</td>
<td><input type=text name=txtsec size=20></td>
</tr>
<tr>
<td>Subject 1</td>
<td><input type=text name=txtsub1 size=20></td>
</tr>
<tr>
<td>Marks</td>
<td><input type=text name=txtm1 size=20></td>
</tr><tr>
<td>Subject 2</td>
<td><input type=text name=txtsub2 size=20></td>
</tr><tr>
<td>Marks</td>
<td><input type=text name=txtm2 size=20></td>
</tr><tr>
<td>Subject 3</td>
<td><input type=text name=txtsub3 size=20></td>
</tr><tr>
<td>Marks</td>
<td><input type=text name=txtm3 size=20></td>
</tr><tr>
<td>Subject 4</td>
<td><input type=text name=txtsub4 size=20></td>
</tr><tr>
<td>Marks</td>
<td><input type=text name=txtm4 size=20></td>
</tr>
<tr>
<td>Subject 5</td>
<td><input type=text name=txtsub5 size=20></td>
</tr>
<tr>
<td>Marks</td>
<td><input type=text name=txtm5 size=20></td>
</tr>
<hr>
</table>
<hr>
<input type=submit name=b1 value=SUBMIT>
<input type=reset name=r1 value=RESET>
<a href = project.jsp>
return back
</a>
<%
String r=request.getParameter("b1");
if("SUBMIT".equals(r))
{
int rno;
String name,clas,sec,sub1,sub2,sub3,sub4,sub5,m1,m2,m3,m4,m5;
rno=Integer.parseInt(request.getParameter("txtrno"));
name=request.getParameter("txtname");
clas=request.getParameter("txtclass");
sec=request.getParameter("txtsec");
sub1=request.getParameter("txtsub1");
sub2=request.getParameter("txtsub2");
sub3=request.getParameter("txtsub3");
sub4=request.getParameter("txtsub4");
sub5=request.getParameter("txtsub5");
m1=request.getParameter("txtm1");
m2=request.getParameter("txtm2");
m3=request.getParameter("txtm3");
m4=request.getParameter("txtm4");
m5=request.getParameter("txtm5");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nbc");
Statement state=con.createStatement();
String q="insert into marks values("+rno+",'"+name+"',"+clas+",'"+sec+"','"+sub1+"',"+m1+",'"+sub2+"',"+m2+",'"+sub3+"',"+m3+",'"+sub4+"',"+m4+",'"+sub5+"',"+m5+")";
state.executeUpdate(q);
out.write("<h2> Successfully Saved</h2>");
}
catch(Exception obj)
{
out.write(obj.getMessage());
}
}
%>

</body>
</html>