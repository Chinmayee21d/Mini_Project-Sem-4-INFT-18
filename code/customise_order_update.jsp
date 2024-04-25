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
String b=request.getParameter("uid");
String y=request.getParameter("mon");
String c=request.getParameter("pro");
String d=request.getParameter("ram");
String e=request.getParameter("ssd");
String f=request.getParameter("hdd");
String w=request.getParameter("cab");
String g=request.getParameter("mb");
String h=request.getParameter("gc");
String i=request.getParameter("ps");
String j=request.getParameter("kb");
String k=request.getParameter("mou");
String l=request.getParameter("ot");
String m=request.getParameter("tp");
String n=request.getParameter("od");
String o=request.getParameter("sta");
int z=s.stm.executeUpdate("update customise_details set u_id='"+b+"',monitor='"+y+"',processor='"+c+"',ram='"+d+"',ssd='"+e+"',hdd='"+f+"',cabinet='"+w+"' ,motherboard='"+g+"',graphic_card='"+h+"',power_supply='"+i+"',keyboard='"+j+"',mouse='"+k+"',order_type='"+l+"',total_price='"+m+"',o_date='"+n+"',status='"+o+"' where co_id='"+id+"'");
out.println("<script>alert('Data Updated Successfully..!');document.location='customise_order_view.jsp'</script>");
}
%>