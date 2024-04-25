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
String b=request.getParameter("uid");
String c=request.getParameter("adr");
String d=request.getParameter("lm");
String e=request.getParameter("pc");
int z=s.stm.executeUpdate("insert into shipping_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='shipping_details_view.jsp'</script>");
}
%>