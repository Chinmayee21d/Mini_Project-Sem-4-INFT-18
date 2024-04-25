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
String b=request.getParameter("shi");
String c=request.getParameter("od");
String d=request.getParameter("ot");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("insert into order_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"') ");
out.println("<script>alert('Order Placed Successfully');document.location='bank_details_form.jsp';</script>");
}
%>