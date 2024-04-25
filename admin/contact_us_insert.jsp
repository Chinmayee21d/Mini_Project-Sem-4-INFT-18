<title>Processing...!</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("Submit");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String b=request.getParameter("fn");
String c=request.getParameter("ln");
String d=request.getParameter("email");
String e=request.getParameter("mobile");
String f=request.getParameter("msg");
String g=request.getParameter("rdate");
int z=s.stm.executeUpdate("insert into contact_us values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"') ");
out.println("<script>alert('Data Added Successfully');document.location='contact_us_view.jsp';</script>");
}
%>