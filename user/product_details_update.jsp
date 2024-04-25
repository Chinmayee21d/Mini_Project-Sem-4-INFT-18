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
String b=request.getParameter("b");
String c=request.getParameter("pn");
String d=request.getParameter("pd");
String e=request.getParameter("pp");
String f=request.getParameter("ps");
int z=s.stm.executeUpdate("update product_details set sct_id='"+b+"',pr_name='"+c+"',pr_description='"+d+"',pr_aprice='"+e+"',pr_status='"+f+"' where pr_id='"+b+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='product_details_view.jsp'</script>");
}
%>