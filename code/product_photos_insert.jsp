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
String b=request.getParameter("pid");
String c=request.getParameter("pp1");
String d=request.getParameter("pp2");
String e=request.getParameter("pp3");
int z=s.stm.executeUpdate("insert into product_photos values(null,'"+b+"','"+c+"','"+d+"','"+e+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='product_photos_view.jsp'</script>");
}
%>