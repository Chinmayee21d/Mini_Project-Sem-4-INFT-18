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
String b=request.getParameter("cname");
String c=request.getParameter("cdesc");
int z=s.stm.executeUpdate("update category set ct_name='"+b+"',ct_description='"+c+"' where ct_id='"+id+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='category_view.jsp'</script>");
}
%>