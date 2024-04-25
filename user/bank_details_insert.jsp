<title>Processing...</title>
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
String b=request.getParameter("bn");
String c=request.getParameter("upi");
String d=request.getParameter("pn");
String e=request.getParameter("uid");
String f=request.getParameter("am");
int z=s.stm.executeUpdate("insert into bank_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
out.println("<script>alert('Your Payment Was Successfull..!');document.location='bank_details_view.jsp'</script>");
}
%>