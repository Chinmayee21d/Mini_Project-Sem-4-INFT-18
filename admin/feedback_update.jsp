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
String id=request.getParameter("b");
String b=request.getParameter("uid");
String c=request.getParameter("fb");
String d=request.getParameter("sd");
int z=s.stm.executeUpdate("update feedback set u_id='"+b+"',feedback='"+c+"',s_date='"+d+"' where f_id='"+id+"'");
out.println("<script>alert('Data Added Successfully..!');document.location='feedback_view.jsp'</script>");
}
%>