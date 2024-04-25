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
String b=request.getParameter("cid");
String c=request.getParameter("scn");
String d=request.getParameter("scd");
int z=s.stm.executeUpdate("insert into sub_category values(null,'"+b+"','"+c+"','"+d+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='sub_category_view.jsp'</script>");
}
%>