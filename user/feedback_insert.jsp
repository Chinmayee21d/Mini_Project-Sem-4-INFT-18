<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name='s' property="conn"/>
<%
String chk=request.getParameter("Submit");
if(chk==null)
{
	out.println("<script>history.back();</script>");
}
else
{
 String a=request.getParameter("uid");
 String b=request.getParameter("fb");
 String c=request.getParameter("sd");
 int z =s.stm.executeUpdate("insert into feedback values (null,'"+a+"','"+b+"','"+c+"')");
 out.println("<script>alert('added');document.location='feedback_view.jsp'</script>");
}
%>