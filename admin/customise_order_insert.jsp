<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name='s' property="conn"/>
<%
String chk=request.getParameter("Submit");
if(chk==null)
{
	out.println("<script>history.back();</script>");
}
else
{
 String a=request.getParameter("uid");
 String b=request.getParameter("mon");
 String c=request.getParameter("pro");
 String d=request.getParameter("ram");
 String e=request.getParameter("ssd");
 String f=request.getParameter("hdd");
 String g=request.getParameter("cab");
 String h=request.getParameter("mb");
 String i=request.getParameter("gc");
 String j=request.getParameter("ps");
 String k=request.getParameter("kb");
 String l=request.getParameter("mou");
 String m=request.getParameter("ot");
 String n=request.getParameter("tp");
 String o=request.getParameter("od");
 String p=request.getParameter("sta");
 int z =s.stm.executeUpdate("insert into customise_details values (null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"')");
 out.println("<script>alert('added');document.location='customise_order_view.jsp'</script>");
}
%>