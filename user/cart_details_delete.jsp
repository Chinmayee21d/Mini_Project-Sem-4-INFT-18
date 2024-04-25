<title>Processing...!</title>
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
String id=request.getParameter("id"); 
int z=s.stm.executeUpdate("delete from cart_details where crt_id='"+id+"'");
out.println("<script>alert('Product Removed From Cart');document.location='cart_details_view.jsp';</script>");
}
%>