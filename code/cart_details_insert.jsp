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
out.println("<script>alert('Data Added Successfully');document.location='cart_details_view.jsp';</script>");
}
%>