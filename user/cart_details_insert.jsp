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
int z=s.stm.executeUpdate("insert into cart_details values(null,'"+b+"','"+c+"','"+d+"') ");
out.println("<script>alert('Product Added to Cart');document.location='order_details_form.jsp';</script>");
}
%>