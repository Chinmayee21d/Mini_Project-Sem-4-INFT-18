<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
String un=request.getParameter("uname");
String ps=request.getParameter("pass");
ResultSet rs=s.stm.executeQuery("Select * from login where username='"+un+"'");
if(rs.next())
{
ResultSet rs1=s.stm.executeQuery("Select * from login where username='"+un+"' and password='"+ps+"'");
if(rs1.next())
{
ResultSet rs2=s.stm.executeQuery("Select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
if(rs2.next())
{
String utp=rs2.getString("u_type");
session.setAttribute("uname",un);
session.setAttribute("utype",utp);
if(utp.equals("admin"))
{
response.sendRedirect("admin/home.jsp");
}
else if(utp.equals("user"))
{
response.sendRedirect("user/home.jsp");
}
}
else
{
out.println("<script>alert('In-Active Account');document.location='index.jsp';</script>");
}
}
else
{
out.println("<script>alert('In-Valid Password');document.location='index.jsp';</script>");
}
}
else
{
out.println("<script>alert('InValid User or Username Not Found....!');document.location='index.jsp';</script>");
}
}
%>