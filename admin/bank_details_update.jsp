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
String b=request.getParameter("bn");
String c=request.getParameter("upi");
String d=request.getParameter("pn");
String e=request.getParameter("am");
String f=request.getParameter("ah");
int z=s.stm.executeUpdate("update bank_details set b_name='"+b+"',upi='"+c+"',pin='"+d+"',amount='"+e+"',u_id='"+f+"' where b_id='"+id+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='bank_details_view.jsp'</script>");
}
%>