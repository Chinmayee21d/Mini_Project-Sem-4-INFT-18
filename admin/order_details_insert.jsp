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
String b=request.getParameter("uid");
String c=request.getParameter("pid");
String d=request.getParameter("qu");
String e=request.getParameter("shi");
String f=request.getParameter("od");
String g=request.getParameter("ot");
String h=request.getParameter("st");
int z=s.stm.executeUpdate("insert into order_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"') ");
out.println("<script>alert('Data Added Successfully');document.location='order_details_view.jsp';</script>");
}
%>