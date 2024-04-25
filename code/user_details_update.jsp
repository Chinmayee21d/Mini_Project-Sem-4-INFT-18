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
String b=request.getParameter("fn");
String c=request.getParameter("ln");
String d=request.getParameter("mb");
String e=request.getParameter("ph");
String f=request.getParameter("em");
int z=s.stm.executeUpdate("update user_details set f_name='"+b+"',l_name='"+c+"',mobile='"+d+"',photo='"+e+"',email='"+f+"' where u_id='"+id+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='user_details_view.jsp'</script>");
}
%>