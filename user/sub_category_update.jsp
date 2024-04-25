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
String b=request.getParameter("cid");
String c=request.getParameter("scn");
String d=request.getParameter("scd");
int z=s.stm.executeUpdate("update sub_category set ct_id='"+b+"',sct_name='"+c+"',sct_description='"+d+"' where sct_id='"+id+"'");
out.println("<script>alert('Data Added Successfully..!');document.location='sub_category_view.jsp'</script>");
}
%>