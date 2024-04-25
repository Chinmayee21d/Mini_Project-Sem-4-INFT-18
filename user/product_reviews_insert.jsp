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
String c=request.getParameter("rt");
String d=request.getParameter("rv");
String e=request.getParameter("uid");
String f=request.getParameter("prd");
int z=s.stm.executeUpdate("insert into product_review values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='product_reviews_view.jsp'</script>");
}
%>