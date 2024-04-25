<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
String un=session.getAttribute("uname").toString();
String a=request.getParameter("sq");
String b=request.getParameter("sa");
int z=s.stm.executeUpdate("update login set s_question='"+a+"',s_answer='"+b+"' where username='"+un+"'");
out.println("<script>alert('Secuirty Question and Answer Updated');document.location='home.jsp';</script>");
}
%>