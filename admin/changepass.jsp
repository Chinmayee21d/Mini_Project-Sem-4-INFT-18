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
	String a=request.getParameter("op");
	String b=request.getParameter("np");
	String c=request.getParameter("cp");
	
	ResultSet rs=s.stm.executeQuery("Select * from login where username='"+un+"' and  password='"+a+"'");
	if(rs.next())
	{
	if(b.equals(c))
	{
	int z=s.stm.executeUpdate("update login set password='"+c+"' where username='"+un+"'");
	out.println("<script>alert('Password Changed Successfully...!');document.location='home.jsp';</script>");
	}
	else
	{
	out.println("<script>alert('Confirm Password Not Matched...!');document.location='changepassf.jsp'</script>");
	}
	}
	else
	{
	out.println("<script>alert('Wrong Password...!');document.location='changepassf.jsp'</script>");
	}
	}
	
	%>