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
String g=request.getParameter("pid");
String c=request.getParameter("rt");
String d=request.getParameter("rv");
String e=request.getParameter("uid");
String f=request.getParameter("prd");
int z=s.stm.executeUpdate("update product_review set pr_id='"+g+"',ratings='"+c+"',review='"+d+"',u_id='"+e+"',prv_date='"+f+"' where prr_id='"+b+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='product_reviews_view.jsp'</script>");
}
%>