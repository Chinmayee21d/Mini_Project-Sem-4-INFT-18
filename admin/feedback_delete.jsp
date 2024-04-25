<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name='s' property="conn"/>
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String did=request.getParameter("id");
int z =s.stm.executeUpdate("delete from feedback where f_id='"+did+"'");
out.println("<script>alert('Deleted...');document.location='feedback_view.jsp';</script>");
}
%>