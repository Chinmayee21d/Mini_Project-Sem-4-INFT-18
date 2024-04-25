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
String b=request.getParameter("bn");
String c=request.getParameter("upi");
String d=request.getParameter("pn");
String e=request.getParameter("am");
String f=request.getParameter("ah");
int z=s.stm.executeUpdate("insert into bank_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
out.println("<script>alert('Data Added Successfully..!');document.location='bank_details_view.jsp'</script>");
}
%>