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
int z=s.stm.executeUpdate("update cart_details set u_id='"+b+"',pr_id='"+c+"',quantity='"+d+"' where crt_id='"+id+"'");
out.println("<script>alert('Data Updated Successfully');document.location='cart_details_view.jsp';</script>");
}
%>