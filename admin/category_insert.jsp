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
String b=request.getParameter("cname");
String c=request.getParameter("cdesc");
int z=s.stm.executeUpdate("insert into category values(null,'"+b+"','"+c+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='category_view.jsp'</script>");
}
%>