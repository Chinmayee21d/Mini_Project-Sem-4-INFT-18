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
String b=request.getParameter("fn");
String c=request.getParameter("ln");
String d=request.getParameter("mb");
//String e=request.getParameter("ph");
String f=request.getParameter("em");

      ResultSet rs=s.stm.executeQuery("Select * from user_details where mobile='"+d+"'");
	  if(rs.next())
	  {
	  out.println("<script>alert('Mobile Number Already Exists...!');history.back();</script>");
	  }
	  else
	  {
	  ResultSet rs1=s.stm.executeQuery("Select * from user_details where email='"+f+"' ");
	  if(rs1.next())
	  {
	    out.println("<script>alert('Email Already Exists...!');history.back();</script>");
	  }
	  else
	  {
	   int z=s.stm.executeUpdate("insert into user_details values(null,'"+b+"','"+c+"','"+d+"','no-img.png','"+f+"')");
       out.println("<script>alert('Data Added Successfully..!');document.location='user_details_view.jsp';</script>");
	  }
	  }

}
%>