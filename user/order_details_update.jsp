<title>Processing...!</title>
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
String c=request.getParameter("pid");
String d=request.getParameter("qu");
String e=request.getParameter("shi");
String f=request.getParameter("od");
String g=request.getParameter("ot");
String h=request.getParameter("st");
int z=s.stm.executeUpdate("update order_details set u_id='"+b+"',pr_id='"+c+"',quantity='"+d+"',sp_id='"+e+"',o_date='"+f+"',o_time='"+g+"',status='"+h+"' where o_id='"+id+"' ");
out.println("<script>alert('Data Updated Successfully');document.location='order_details_view.jsp';</script>");
}
%>