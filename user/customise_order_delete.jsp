<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String b=request.getParameter("id");
int z=s.stm.executeUpdate("delete from customise_details where co_id='"+b+"' ");
out.println("<script>alert('Data Deleted Successfully');document.location='customise_order_view.jsp'</script>");
}
%>